<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class KonfigurasiRequest extends Request
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
            'tahun' => 'required|numeric',
            'kecamatan' => 'required',
            'jumlah' => 'required|numeric',
            'kepadatan' => 'required|numeric',
            'site' => 'required|numeric',
            'prakiraan' => 'required|numeric',
            'latitude' => 'required|numeric',
            'longitude' => 'required|numeric',
        ];
    }
}
