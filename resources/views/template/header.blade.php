<header id="header">

    <div id="app" class="moy2">
                        @guest
                            
                                <a class="nav-link " href="{{ route('login') }}">{{ __('Login') }}  |</a>
 
                                @if (Route::has('register'))
                                    <a class="nav-link "  href="{{ route('register') }}">{{ __('Register') }}</a>
                                @endif
                           
                        @else
                                <a class="nav-link " href="{{ asset('home') }}" >
                                    {{ Auth::user()->name }}
                                </a>
                                                {!! Form::open(['url' => 'logout']) !!}
                <button type="submit" class="logout">
                    <i class="fa fa-sign-out fa-fw"></i>
                    <span class="title">{{ trans('quickadmin::admin.partials-sidebar-logout') }}</span>
                </button>
                {!! Form::close() !!}


                        @endguest
    </div>







<h1 id="logotxt">Site Name</h1>

<figure>
<img id="logo" src="{{ asset('/media/img/logo.png')}}"/>
<figcaption></figcaption>
</figure>



</header>