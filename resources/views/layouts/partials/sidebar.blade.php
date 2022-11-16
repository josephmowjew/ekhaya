 <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item {{ request()->is('dashboard')? 'active' : '' }}">
            <a class="nav-link" href="{{ route('dashboard') }}">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
         
          @if(auth()->user()->role->name == "Administrator")
            <li class="nav-item {{ request()->is('admin.roles') || request()->is('admin.users') ? 'active': '' }}">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="mdi mdi-account-outline menu-icon"></i>
                <span class="menu-title">User Management</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="{{ route('admin.users') }}">Users</a></li>
                  <li class="nav-item"> <a class="nav-link" href="{{ route('admin.roles') }}">Roles</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item {{ request()->is('reports.create') ? 'active' : '' }}">
              <a class="nav-link"  href="{{ route('reports.create') }}">
                <i class="mdi mdi-chart-bar menu-icon"></i>
                <span class="menu-title">Reports  </span>
              </a>
            </li>
          @endif
          
           @if(auth()->user()->role->name == "Feed Expert")
            <li class="nav-item {{ request()->is('feedingExperts.feeds') || request()->is('feeding-expert.feeding-schedules') ? 'active' : '' }}">
              <a class="nav-link"  href="{{ route('feedingExperts.feeds') }}">
                <i class="mdi mdi-food menu-icon"></i>
                <span class="menu-title">Feeds </span>
              </a>
            </li>
             <li class="nav-item {{ request()->is('feedingExperts.feeds') || request()->is('feeding-expert.feeding-schedules') ? 'active' : '' }}">
              <a class="nav-link"  href="{{ route('feeding-expert.feeding-schedules') }}">
                <i class="mdi mdi-food menu-icon"></i>
                <span class="menu-title">Feed Schedules </span>
              </a>
            </li>
            @endif
            @if(auth()->user()->role->name == "Ranch Manager")
              <li class="nav-item {{ request()->is('ranch-manager.purchases') || request()->is('ranch-manager.purchases.create') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('ranch-manager.purchases') }}">
                  <i class="mdi mdi-cash menu-icon"></i>
                  <span class="menu-title">Purchase Records</span>
                </a>
              </li>
              <li class="nav-item {{ request()->is('ranch-manager.events')? 'active' : '' }}">
                <a class="nav-link"  href="{{ route('ranch-manager.events') }}">
                  <i class="mdi mdi-bell-outline menu-icon"></i>
                  <span class="menu-title">Events</span>
                </a>
             </li>
              <li class="nav-item {{ request()->is('ranch-manager.farmers')? 'active' : '' }}">
                <a class="nav-link"  href="{{ route('ranch-manager.farmers') }}">
                  <i class="mdi mdi-human-male-female menu-icon"></i>
                  <span class="menu-title">Farmers</span>
                </a>
              </li>
              <li class="nav-item {{ request()->is('ranch-manager.herds')? 'active' : '' }}">
                <a class="nav-link"  href="{{ route('ranch-manager.herds') }}">
                  <i class="icon-paper menu-icon"></i>
                  <span class="menu-title">Herds</span>
                </a>
              </li>
              <li class="nav-item {{ request()->is('ranch-manager.breeds')? 'active' : '' }}">
                <a class="nav-link"  href="{{ route('ranch-manager.breeds') }}">
                  <i class="icon-paper menu-icon"></i>
                  <span class="menu-title">Cow Breeds</span>
                </a>
              </li>
            <li class="nav-item {{ request()->is('reports.create') ? 'active' : '' }}">
              <a class="nav-link"  href="{{ route('reports.create') }}">
                <i class="mdi mdi-chart-bar menu-icon"></i>
                <span class="menu-title">Reports </span>
              </a>
            </li>
            @endif
          @if(auth()->user()->role->name == "Vaccination Expert")
            <li class="nav-item {{ request()->is('vaccination-expert.vaccines')? 'active' : '' }}">
              <a class="nav-link"  href="{{ route('vaccination-expert.vaccines') }}">
                <i class="mdi mdi-eyedropper menu-icon"></i>
                <span class="menu-title">Vaccines</span>
              </a>
            </li>
            <li class="nav-item {{ request()->is('vaccination-expert.vaccination-records')? 'active' : '' }}">
              <a class="nav-link"  href="{{ route('vaccination-expert.vaccination-records') }}">
                <i class="mdi mdi-receipt menu-icon"></i>
                <span class="menu-title">Vaccination Records</span>
              </a>
            </li>
          @endif
          
        </ul>
      </nav>