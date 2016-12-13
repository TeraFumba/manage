<!DOCTYPE html>
<html>
<head>
  <title>{{$vehicles->type}}</title>
</head>
<body<h2 align="center">Your Vehicle Info </h2>

    <table style="padding-left:12px" class="table" >
      <tr><td></td></tr>
        <tr>
          <td><label >First Name: </label></td>
          <td></td>
          <td>{{$vehicles->first_name}} </td>
        </tr>
          <tr>
            <td><label >Last Name: </label></td>
            <td></td>
          <td>{{$vehicles->last_name}} </td>
        </tr>
        <tr>
          <td><label >Phone: </label></td>
          <td></td>
          <td>{{$vehicles->phone}} </td>
        </tr>
        <tr>
          <td><label >Email: </label></td>
          <td></td>
          <td>{{$vehicles->email}} </td>
        </tr>
        <tr>
          <td><label >Manufacturer: </label></td>
          <td></td>
          <td>{{$vehicles->manufacturer}} </td>
        </tr>
        <tr>
          <td><label >Type: </label></td>
          <td></td>
          <td>{{$vehicles->type}} </td>
        </tr>
        <tr>
          <td><label >Year: </label></td>
          <td></td>
          <td>{{$vehicles->year}} </td>
        </tr>
        <tr>
          <td><label >Clour: </label></td>
          <td></td>
          <td>{{$vehicles->colour}} </td>
        </tr>

    </table

  </body>
  </html>
