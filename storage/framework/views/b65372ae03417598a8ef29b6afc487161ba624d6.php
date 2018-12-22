<nav class="navbar navbar-expand-md navbar-dark text-white" style="background-color:#2737A6">
    <a class="navbar-brand" href="<?php echo e(url('/home')); ?>">
        <img class="img-responsive2" src="<?php echo e(asset('img/cmp.png')); ?>" style="width:70px;">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

        </ul>
        <span>Hello <?php echo e(Auth::user()->name); ?>  </span> &nbsp&nbsp

        <form id="logout-form" method="POST" action="<?php echo e(route('logout')); ?>" class="form-inline my-2 my-lg-0">
            <?php echo csrf_field(); ?>
            <button type="submit" class="btn btn-outline-primary text-white">Log out</button>
        </form>
    </div>
</nav>
<div class="nav-scroller bg-white box-shadow">
    <nav class="nav nav-underline">

        <?php if(Auth::user()->is_admin): ?>
        <a class="nav-link <?php echo e(Request::is('home*') ? 'active' : ''); ?>" href="<?php echo e(url( '/home')); ?> ">Dashboard</a>
		<a class="nav-link <?php echo e(Request::is('unresolve*') ? 'active' : ''); ?>" href="<?php echo e(url( '/unresolve')); ?> ">Unresolved_Tickets</a>
        <a class="nav-link <?php echo e(Request::is('admin/tickets*') ? 'active' : ''); ?>" href="<?php echo e(url( '/admin/tickets')); ?> ">All Tickets</a>
		
        <a class="nav-link <?php echo e(Request::is('admin/users*') ? 'active' : ''); ?>" href="<?php echo e(url( '/admin/users')); ?> ">Admins</a>
		<a class="nav-link <?php echo e(Request::is('admin/category*') ? 'active' : ''); ?>" href="<?php echo e(url( '/admin/category')); ?> ">Ticket_Categories</a>
        
        <?php else: ?>
        <a class="nav-link <?php echo e(Request::is('home*') ? 'active' : ''); ?>" href="<?php echo e(url( '/home')); ?> ">Dashboard</a>
        <a class="nav-link <?php echo e(Request::is('tickets*') ? 'active' : ''); ?>" href="<?php echo e(url( '/tickets')); ?> ">Open Ticket</a>
        <a class="nav-link <?php echo e(Request::is('mytickets*') ? 'active' : ''); ?>" href="<?php echo e(url( '/mytickets')); ?> ">My_Tickets</a>
        <a class="nav-link <?php echo e(Request::is('myresolved*') ? 'active' : ''); ?>" href="<?php echo e(url( '/myresolved')); ?> ">My_Resolved_Tickets</a>
        <a class="nav-link <?php echo e(Request::is('myunresolved*') ? 'active' : ''); ?>" href="<?php echo e(url( '/myunresolved')); ?> ">My_Unresolved_Tickets</a>
		<a class="nav-link <?php echo e(Request::is('unresolve*') ? 'active' : ''); ?>" href="<?php echo e(url( '/unresolve')); ?> ">Unresolved_Tickets</a>
        <?php endif; ?>
       
        

    </nav>
</div>