<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest

{
    /**
     * Determine if the user is authorized to make this request.
     * 
     * É por causa desse treco ai que estava false agora tem que ver o que ele significa
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     * Estava lendo sobre a validação 
     * @return array
     */
    public function rules()
    {
        return [
            'name'         => 'required',
            'description'  => 'required|min:10',
            'phone'        => 'required',
            'mobile_phone' => 'required',
            'logo'         => 'image'

        ];
    }

    public function messages()
    {
        return [
            'required' => 'Este campo :attribute é obrigatório!',
            'min'      => 'Campo deve ter no mínimo de :min caracteres!',
            'image'    => 'Arquivo não é uma imagem válida!'
        ];
    }
}
