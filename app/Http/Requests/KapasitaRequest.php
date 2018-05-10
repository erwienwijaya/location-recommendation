<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class KapasitaRequest extends Request
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
            'bandwidth' => 'required|numeric',
            'qpsk' => 'required|numeric',
            'qam16' => 'required|numeric',
            'qam64' => 'required|numeric',
        ];
    }
}
