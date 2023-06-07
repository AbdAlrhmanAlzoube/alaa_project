@extends('admin.layouts.app')
    
@section('content')
  <!--                                          -------------         MAIN        --------------                                 -->
  <div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>ADD TEACHER</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
            <form action="{{ route('admin.store_teacher') }}" method="post">
                                    @csrf
                   
            <div  class="col-sm-12">
            <label for="">asdadasd</label>
            <input  type="text" name="name" placeholder="Give a Student User Name" required="" class="form-control p_input">
            </div>

            <div  class="col-sm-12">
            <label for="">User Name</label>
            <input  type="text" name="user_name" placeholder="Give a User Name" required="" class="form-control p_input">
            </div>

            <div  class="col-sm-12">
            <label for="">Language</label>
            <input  type="text" name="language" placeholder="Give a Teacher language" required="" class="form-control p_input">
                  </div>
      
           
            <div  class="col-sm-12">
              <label for="">Birdth</label>
              <input type="date" name="dob" placeholder="Give a Teacher Birdth" required="" height="10px" class="form-control p_input">
              </div>
      
            <div  class="col-sm-12">
              <label for=""> Phone</label>
              <input  type="number" name="phone" placeholder="Give a Teacher Phone" required="" height="10px" class="form-control p_input">
              </div>
        
            <div  class="col-sm-12">
              <label for="email" class="form-label">Email </label>
             
              <input  type="email" name="email" placeholder="Give a Teacher Email" required="" height="10px" class="form-control p_input">
              </div>
                        
            <div  class="col-sm-12">
              <label for=""> Address</label>
              <input  name="address" placeholder="Give a Teacher Address" required="" height="10px" class="form-control p_input">
                </div>
      <br>
      <div class="col-md-12">
        <label for="gender" class="form-label">Gender</label><br>
        <select class="form-select" id="gender" name="gender" required>
          <option value="">Select a gender</option>
          <option value="male">Male</option>
          <option value="female">Female</option>
        
        </select>
      </div>    
    
      <br>
              <div class="col-sm-12">
                <label for="">Evaluaasdasdation</label>
                <input type="number" name="evaluation" placeholder="Give a Teacher evaluation" required="" height="10px" class="form-control p_input">
                </div>	
               <div class="col-sm-12">
                <label for="">Experience</label>
                <input   name="Cartificates" placeholder="Give a Teacher Experience" required="" height="10px" class="form-control p_input">
                </div>
               <div class="col-sm-12">
                <label for="">Image</label>
                <input type="file"   name="image" placeholder="Give a Teacher Experience" required="" height="10px" class="form-control p_input">
                </div>
               <div class="col-sm-12">
                <label for="">Certificate Image</label>
                <input  type="file"   name="certificate_img" placeholder="Give a Teacher Experience" required="" height="10px" class="form-control p_input">
                </div>
            <input  type="text" name="is_aproved" placeholder="Give a Student User Name"  class="form-control p_input" hidden>

                <div class="form-group mt_30">
                    <input type="submit" class="btn btn-primary btn-block" value="ADD">
                </div>
        </form>

                                  


@endsection
