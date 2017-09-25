<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Gate;

class AlbumUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        //$album = \App\Models\Album::find($this->id);
        /*
        if (Gate::denies('update', $album)){
           return false;
        }
         */
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
           // 'user_id' => 'required|integer|exists.albums,id',
            'name' => 'required',
            'description' => 'required'
        ];
    }
    
    public function messages()
    {
        return [
           // 'user_id' => 'required|integer|exists:albums,id',
            'name.required' => 'Nome dell\'album è obbligatorio',
            //'name.unique' => 'Nome dell\'album non è univoco',
            'description.required' => 'Descrizione obbligatoria'
        ];
    }
}
