@extends('layouts.auth_user')

@section('content')
  <nav class="navbar navbar-expand navbar-dark bg-dark static-top" >

    <a class="navbar-brand mr-1" href="index.html">Artistik Song Book</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <span class="badge badge-danger">9+</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
          <a class="dropdown-item" href="#">This part is not available</a>
          
        </div>
      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <span class="badge badge-danger">7</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
          <a class="dropdown-item" href="#">This part is not available</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i> {{Auth::user()->name}}
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        
          <a class="dropdown-item" href="" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->

    <ul class="sidebar navbar-nav">

      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">This part is not available</h6>
          <!-- <a class="dropdown-item" href="#">Login</a>
          <a class="dropdown-item" href="#">Register</a>
          <a class="dropdown-item" href="#">Forgot Password</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Other Pages:</h6>
          <a class="dropdown-item" href="#">404 Page</a>
          <a class="dropdown-item" href="#">Blank Page</a> -->
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Reports</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-table"></i>
          <span>Audit Trail</span></a>
      </li>
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Overview</li>
        </ol>

        <!-- Icon Cards-->
      <!--   <div class="row">
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">26 New Messages!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-list"></i>
                </div>
                <div class="mr-5">11 New Tasks!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-shopping-cart"></i>
                </div>
                <div class="mr-5">123 New Orders!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">13 New Tickets!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>
 -->

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-10"> <i class="fas fa-table"></i>
            Song Book</div>
                <div class="col-md-2">
                    <button class="form-control btn btn-danger" data-toggle="modal" data-target="#ModalSong"><i class="fas fa-plus-circle"></i> Music</button>
                </div>
              </div>
            </div>
           
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr style="font-size:13px;">
                    <th style="display:none;"></th>
                    <th>Song Title</th>
                    <th>Song Artist</th>
                    <th>Song Lyrics</th>
                    <th>When Created</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                </thead>
                
                <tbody>
                  
                  @foreach($active_songs as $fetch_active_songs)
                    <tr>
                      <td style="display:none;">{{$fetch_active_songs->songlist_id}}</td>
                      <td style="font-size:13px;">{{$fetch_active_songs->title}}</td>
                      <td style="font-size:13px;">{{$fetch_active_songs->artist}}</td>
                      <td style=" width:30%; font-size:13px; text-align: justify;">{{$fetch_active_songs->lyrics}}</td>
                      <td style="font-size:13px;">{{$fetch_active_songs->when_created}}</td>
                      <td style="font-size:13px;">{{$fetch_active_songs->songlist_status}}</td>
                      <td>
                        <button class="btn btn-primary btn_edit_music" data-toggle="modal" data-target="#UpdateModalSong" data-attri-edit-music="{{$fetch_active_songs->songlist_id}}"><i class="far fa-edit"></i></button> &nbsp;&nbsp;

                        <button class="btn btn-danger btn_deactivate_music"  data-attri-deactivate-music="{{$fetch_active_songs->songlist_id}}"><i class="far fa-trash-alt"></i></button>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
               
              </table>
            </div>
          </div>
          
        </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Artistik Song Book 2019</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->


  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="{{ url('/auth/logout') }}">Logout</a>
        </div>
      </div>
    </div>
  </div>



  <div class="modal fade" id="ModalSong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Add New Song?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form method="POST" action="/add_song">
          <div class="modal-body">
             <div class="container-fluid">
               <div class="row">
                  <input type="hidden" class="token" name="_token" value="{{ csrf_token() }}">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="title"><b>Title:</b></label>
                      <input type="text" class="form-control" id="song_title">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="artist"><b>Artist:</b></label>
                      <input type="text" class="form-control" id="song_artist">
                    </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="comment"><b>Lyrics:</b></label>
                  <textarea class="form-control" rows="5" id="song_lyrics"></textarea>
                </div>
             </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-danger btn_add_music" type="button">Submit</button>
          </div>
        </form>
      </div>
    </div>
  </div>


  <div class="modal fade" id="UpdateModalSong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Update The Song?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form>
          <div class="modal-body">
             <div class="container-fluid">
               <div class="row">
                  <input type="hidden" class="token" name="_token" value="{{ csrf_token() }}">
                  <input type="hidden" id="edit_hidden_ids_for_songs" value="" name="">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="title"><b>Title:</b></label>
                      <input type="text" class="form-control" id="edit_song_title">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="artist"><b>Artist:</b></label>
                      <input type="text" class="form-control" id="edit_song_artist">
                    </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="comment"><b>Lyrics:</b></label>
                  <textarea class="form-control" rows="5" id="edit_song_lyrics"></textarea>
                </div>
             </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-danger btn_update_song" type="button">Submit</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</div>
@endsection
