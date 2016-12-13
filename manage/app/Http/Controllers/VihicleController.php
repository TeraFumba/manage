<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request\VehicleReques;
use App\Vihicles;
use \PDF;
use App\Http\Requests\VehicleRequest;
class VihicleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $vehicles = Vihicles::all();
        return view ('vihecle.index',compact('vehicles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('vihecle.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(VehicleRequest $request)
    {
        Vihicles::create($request->all());
        return redirect()->route('vihicle.index')->with('message','Vehicle has been created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $vihicles = Vihicles::findOrFail($id);

    return view('vihecle.show',compact('vihicles'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //return view ('vihecle.edit',compact('vihicles'));
        $vihicles = Vihicles::find($id);
       return View('vihecle.edit', compact('vihicles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
  /**  public function update(VehicleRequest $request, Vihicles $vehicles)
    {

        $vehicles->update($request->all());
        return redirect()->route('vihicle.index')->with('message','Vehicle has been updated successfully');
    }
     */
    public function update($id, VehicleRequest $request)
    {
        $vehicles = Vihicles::findOrFail($id);


        $input = $request->all();

        $vehicles->fill($input)->save();

        return redirect()->route('vihicle.index')->with('message','Vehicle has been updated successfully');
  }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /**public function destroy(Vihicles $vihicles)
    {
        $vihicles->delete();
        return redirect()->route('vihicle.index')->with('message','Vehicle has been Deleted successfully!');
    }
     */

    public function destroy($id)
    {
      $vihicles = Vihicles::findOrFail($id);
      $vihicles->delete();
      return redirect()->route('vihicle.index')->with('message','Vehicle has been Deleted successfully!');
    }
    public function getPDF(Vihicles $vehicle,$id)
    {
       $vihicles = Vihicles::findOrFail($id);
      $pdf =PDF::loadview('vihecle.vehicle',['vehicles'=>$vihicles]);
      return $pdf->stream('archivo.pdf');
      
    }
}
