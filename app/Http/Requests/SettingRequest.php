<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class SettingRequest extends Request
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
            'maxgen' => 'required|numeric',
            'pc' => 'required|numeric',
            'pm' => 'required|numeric',
        ];
    }

    public function messages()
    {
        return [
            'maxgen.required' => 'Max. Generasi tidak boleh kosong / nol minimal = 1',
            'maxgen.numeric' => 'Max. Generasi harus angka',
            'pc.required' => 'Probabilitas Crossover tidak boleh kosong / nol minimal = 1',
            'pc.numeric' => 'Probabilitas Crossover harus angka',
            'pm.required' => 'Probabilitas Mutation tidak boleh kosong / nol minimal = 1',
            'pm.numeric' => 'Probabilitas Mutation harus angka',
        ];
    }
}
