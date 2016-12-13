<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VehicleRequest extends FormRequest
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
          'first_name' => 'required',
          'last_name' => 'required',
          'phone' => 'required|numeric',
          'email' => 'required|email|unique:vihicles',
          'manufacturer' => 'required',
          'type' => 'required',
          'colour' => 'required',
          'year' => 'required|min:4|numeric',
          'mileage' => 'required',
            //
        ];
    }
}
