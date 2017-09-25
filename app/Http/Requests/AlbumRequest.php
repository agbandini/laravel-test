<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AlbumRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
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
            'name' => 'required|unique:albums,album_name',
            'description' => 'required',
            'album_thumb' => 'required|image'
        ];
    }
    
    public function messages()
    {
        return [
           // 'user_id' => 'required|integer|exists:albums,id',
            'name.required' => 'Nome dell\'album è obbligatorio',
            'name.unique' => 'Nome dell\'album non è univoco',
            'description.required' => 'Descrizione obbligatoria',
            'album_thumb.required' => 'Immagine album obbligatoria'
        ];
    }
    
}
