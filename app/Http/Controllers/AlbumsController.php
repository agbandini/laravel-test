<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Photo;
use App\Models\Album;
use DB;
use App\Http\Requests\AlbumRequest;
use App\Http\Requests\AlbumUpdateRequest;
use Auth;
//use Illuminate\Support\Facades\Gate;
use Illuminate\Auth\Access\Gate;
use App\Policies\AlbumPolicy;

class AlbumsController extends Controller
{

    function __construct() {
        //$this->middleware('auth')->except('index');
        //$this->middleware('auth')->only('index');
    }

        public function index(Request $request){
        
        
/*      
 *      questa Ã¨ la procedura semplice per fare una query ma non 
 *      prevede protezioni verso la sql injection
 *      
 *      $sql = 'select * from albums';
 *      $where = ' where 1=1';
 *      if ($request->has('id')){
            $where .= ' and id = '.(int)$request->get('id');
        }
        if ($request->has('album_name')){
            $where .= " and album_name = '".$request->get('album_name')."'";
        }        
        $sql .= $where;
 */
        
        
       /* //senza query builder
        $sql = 'select * from albums where 1=1 ';
        $where = [];
        if ($request->has('id')){
            $where['id'] = (int)$request->get('id');
            $sql .= " and id=?";
        }
        if ($request->has('album_name')){
            $where['album_name'] = $request->get('album_name');
            $sql .= " and album_name=?";
        }          
        $sql .= " order by id desc";
        //dd($sql);
        //return DB::select($sql, array_values($where));
        $albums = DB::select($sql, array_values($where));
       return view('albums/albums',['albums' => $albums]);
        */
        
        
        /*
        //con query builder
        $queryBuilder = DB::table('albums')->orderBy('id','desc');
        if ($request->has('id')){
            $queryBuilder->where('id','=',$request->input('id'));
        }
        if ($request->has('album_name')){
            $queryBuilder->where('album_name','like','%'.$request->input('album_name').'%');
        }
        $albums = $queryBuilder->get();
        //fine qb
        return view('albums/albums',['albums' => $albums]);
        */
        
        //con il model ed eloquent
        $queryBuilder = Album::orderBy('id','desc')->withCount('photos');
        
        //aggiunta filtro sull'utenmte loggato
        $queryBuilder->where('user_id', Auth::user()->id);
        
        //$queryBuilder = Album::orderBy('id','desc')->with('photos');
        
        if ($request->has('id')){
            $queryBuilder->where('id','=',$request->input('id'));
        }
        if ($request->has('album_name')){
            $queryBuilder->where('album_name','like','%'.$request->input('album_name').'%');
        }
        $albums = $queryBuilder->paginate(env('IMG_PER_PAGE'));
        //dd($albums);
        return view('albums/albums',['albums' => $albums]);       
        
    }
    
    public function delete($id) {
        /*
         * senza query builder
         * 
         * $sql = "delete from albums where id = :id";
            //dd($id);
            return DB::delete($sql,['id' => $id]);
            //return redirect()->back();
         */

        /*
        //con querybuilder
        $res = DB::table('albums')->where('id', $id)->delete();
        return $res;
        */
        
        //con il model ed eloquent
        //primo metodo
        //$res = Album::where('id', $id)->delete();
        //return $res;
        
        //secondo metodo
        
        $album = Album::findOrFail($id);
        
        $thumbNail = $album->album_thumb;
        
        $res = $album->delete();
        $disk = config('filesystems.default');
        
        if($res){
            if($thumbNail && Storage::disk($disk)->has($thumbNail)){
                Storage::disk($disk)->delete($thumbNail);
            }
        }
        
        return ''.$res;
    }

    public function show($id) {
        $sql = "select * from albums where id = :id";
        //dd($id);
        return DB::select($sql,['id' => $id]);
        //return redirect()->back();
    }

    public function edit($id) {
       /*
        //con querybuilder
       $sql = "select id, album_name, description from albums where id = :id";
       $album = DB::select($sql,['id' => $id]);
       return view('albums/edit')->with('album',$album[0]);
       */
       
        //con il model ed eloquent
       $album = Album::find($id);
       
       //in questo modo proteggo la rotta dalla visualizzazione da perte di utenti che non sono suoi proprietari
       /*
       if($album->user->id !== Auth::user()->id){
           abort(401, 'non autorizzato');
       }
       */
       
       //in alternativa usiamo i gates (vedi AuthServiceProvider)
       /*
       if (Gate::denies('manage-album', $album)){
           abort(401, 'non autorizzato');
       }*/
       
       //dd(Auth::user()->id);
       $this->authorize('edit',$album);
       
       return view('albums/edit')->with('album',$album);
    }

    public function store($id, AlbumUpdateRequest $req) {
        /*
         * senza querybuilder
        //dd($req);
        //dd(request()->all());
        $data = request()->only(['name','description']);
        $data['id'] = $id;
        //dd($data);
        $sql = 'update albums set album_name =:name, description =:description where id=:id';
        $res = DB::update($sql,$data);
        //dd($res);
        $messaggio = $res ? 'Album '.$id.' aggiornato con successo!':'Errore aggiornamento';
        session()->flash('message',$messaggio);
        return redirect()->route('albums');        
         */
        /*
        //con queryBuilder
        $res = DB::table('albums')->where('id', $id)->update(
            ['album_name' => request()->input('name'),
             'description' => request()->input('description')]
        );
        $messaggio = $res ? 'Album '.$id.' aggiornato con successo!':'Errore aggiornamento';
        session()->flash('message',$messaggio);
        return redirect()->route('albums');  
        */
        
        //con il model ed eloquent
        
        /*
        //primo metodo
        $res = Album::where('id', $id)->update(
            ['album_name' => request()->input('name'),
             'description' => request()->input('description')]
        );
        $messaggio = $res ? 'Album '.$id.' aggiornato con successo!':'Errore aggiornamento';
        session()->flash('message',$messaggio);
        return redirect()->route('albums');         
        */
        
        //secondo metodo
        //dd($req);
        
        
        
        $album = Album::find($id);
        
        if (Gate::denies('manage-album', $album)){
           abort(401, 'non autorizzato');
        }
        
        $album->album_name = $req->input('name');
        $album->description = $req->input('description');
        $album->user_id = $req->user()->id;
        $this->processFile($id, $req, $album);
        
        $res = $album->save();

        $messaggio = $res ? 'Album '.$id.' aggiornato con successo!':'Errore aggiornamento';
        session()->flash('message',$messaggio);
        return redirect()->route('albums');     
    }
    
    public function processFile($id, Request $req, &$album){
        if(!$req->hasFile('album_thumb')){
            return false;
        }
        
        $file = $req->file('album_thumb');
        if(!$file->isValid()){
            return false;
        }
        //$fileName = $file->store(env('ALBUM_THUMB_DIR'));
        $fileName = $id .'.'.$file->extension();
        $file->storeAs(env('ALBUM_THUMB_DIR'),$fileName);
        //$album->album_thumb = $fileName;
        $album->album_thumb = env('ALBUM_THUMB_DIR') ."/". $fileName;      
        return true;
        
    }
    
    public function create() {
        $album = new Album();
        return view('albums/createAlbum',['album'=>$album]);
        //dd($id);
        //return DB::select($sql,['id' => $id]);
        //return redirect()->back();
    }

    public function save(AlbumRequest $request){
        /*
         * senza queryBuilder
        $data = request()->only(['name','description']);
        $data['user_id'] = 1;
        $sql = 'insert into albums (album_name, description, user_id)';
        $sql .= 'values (:name, :description, :user_id)';
        $res = DB::insert($sql,$data);         
         */
        
        /*
        //con querybuilder
        $res = DB::table('albums')->insert(
            [
                'user_id' => 1,
                'album_name' => request()->input('name'),
             'description' => request()->input('description')]
        );
        
        $messaggio = $res ? 'Album inserito!':'Errore inserimento';
        session()->flash('message',$messaggio);
        return redirect()->route('albums');
        */
        
        // con il model ed eloquent (sostituiamo inser con create per vedere anche questo metodo
        // nella calsse album si avvalora fillable con i nomi dei campi che devono essere scritti
        // il metodo create Ã¨ piu sicuro
        
        /*
        //primo metodo
        $res = Album::create(
            ['user_id' => 1,
             'album_name' => request()->input('name'),
             'description' => request()->input('description')]
        );
        */
        
        //secondo metodo (nessun argomento da passare alla funziona save)
        /*
        $album = new Album();
        $album->album_name = request()->input('name');
        $album->description = request()->input('description');
        $album->user_id = 1;
        $album->album_thumb = '';
        $res = $album->save();
        if ($res){
            if($this->processFile($album->id, request(), $album)){
                $album->save();
            }
        }
        */
        //terzo metodo (con la validazione albumRequest passata come argomento della function)
        $album = new Album();
        $album->album_name = $request->input('name');
        $album->description = $request->input('description');
        $album->user_id = $request->user()->id;
        $album->album_thumb = '';
        $res = $album->save();
        if ($res){
            if($this->processFile($album->id, $request, $album)){
                $album->save();
            }
        }        
        
        $messaggio = $res ? 'Album inserito!':'Errore inserimento';
        session()->flash('message',$messaggio);
        return redirect()->route('albums');   
    }
    
    public function getImages(Album $album){
        //dd($album);
        //$images = Photo::where('album_id', $album->id)->get();
        $images = Photo::where('album_id', $album->id)->paginate(env('IMG_PER_PAGE'));
        return view('images.albumimages', compact('album','images'));
    }
    

    
}
