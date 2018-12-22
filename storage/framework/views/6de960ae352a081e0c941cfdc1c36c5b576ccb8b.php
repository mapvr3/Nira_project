 
<?php $__env->startSection('external-css'); ?>
<link href="<?php echo e(asset('css/userdashboard.css')); ?>" rel="stylesheet"> 
<?php $__env->stopSection(); ?> 

<?php echo $__env->make('layouts.user-dashboard-nav', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?> 

<?php $__env->startSection('content'); ?>
<body class="bg-light">

    <main role="main" class="container">
        <div id="page-wrapper" class="col-md-12">
            <div class="row justify-content-end">
                <div class="col-sm-2">
                    <h1 class="page-header">
                        <?php if(!Auth::user()->is_admin): ?>
                        <a href="<?php echo e(url('/tickets')); ?>" class="btn btn-md" role="button" style="background:#443FFF;color:white;font-size:16px; font-weight:bold"
                            aria-pressed="true">
                            <span class="fa fa-ticket"></span> Open New Ticket
                        </a>
				
                        <?php endif; ?>
                    </h1>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-sm-4">
                    <div class="card" style="">
                        <div class="card-header text-right" style="background:#2737A6;color:white; font-size:17px; font-weight:bold;">Total Tickets</div>
                        <div class="card-body">
                            <div>
                                <div style="float:left">
                                    <i class="fa fa-list-ul" style="font-size:50px; color:#2737A6"></i>
                                </div>
                                <div class=" " style="float:right">
                                    <div class="huge">
                                        <h1 style="color:#2737A6">
                                            <strong><?php echo e($totalTickets); ?></strong>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div style="clear:both ">
                                <a href="#" class="btn btn-outline-primary btn-sm">View details</a>
                            </div>
                            -->
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card" style="">
                        <div class="card-header text-right" style="background:#2737A6;color:white; font-size:17px; font-weight:bold;">Opened Tickets</div>

                        <div class="card-body ">
                            <div>
                                <div style="float:left ">
                                    <i class="fa fa-envelope-open-o" style="font-size:50px; color:#2737A6"></i>
                                </div>
                                <div class=" " style="float:right">
                                    <div class="huge">
                                        <h1 style="color:#2737A6">
                                            <strong><?php echo e($totalTicketsOpen); ?></strong>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div style="clear:both;">
                                <a href="# " class="btn btn-outline-primary btn-sm ">View details</a>
                            </div>
                            -->
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card " style="">
                        <div class="card-header text-right" style="background:#2737A6;color:white; font-size:17px; font-weight:bold;">Closed Tickets</div>
                        <div class="card-body ">
                            <div>
                                <div style="float:left ">
                                    <i class="fa fa-close" style="font-size:50px; color:#2737A6"></i>
                                </div>
                                <div class=" " style="float:right ">
                                    <div class="huge">
                                        <h1 style="color:#2737A6">
                                            <strong><?php echo e($totalTicketsClosed); ?></strong>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div style="clear:both ">
                                <a href="# " class="btn btn-outline-primary btn-sm">View details</a>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </div>

            <br>
            <br> <?php if($tickets->isEmpty()): ?>
            <p>No Tickets have been created.</p>
            <?php else: ?>
            <div class="card-body">
                <table class="table table-responsive-md table-hover">
                    <thead style="background:#2737A6;color:white; font-size:17px; font-weight:bold;">
                        <tr>
                            <th>Ticket ID</th>
                            <th> Title</th>
                            <th> Category</th>
                            <th> Status</th>
                            <th> Date Opened</th>
                            
                            <th> Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $tickets; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ticket): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td>
                                <a href="<?php echo e(url('tickets/'. $ticket->ticket_id)); ?>">
                                    <?php echo e($ticket->ticket_id); ?>

                                </a>
                            </td>
                            <td>
                                <?php echo e($ticket->title); ?>

                            </td>
                            <td>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> <?php if($category->id === $ticket->category_id): ?> <?php echo e($category->name); ?> <?php endif; ?> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </td>
                            <td>
                                <?php if($ticket->status === 'Open'): ?>
                                <span class="label label-success text-success"><?php echo e($ticket->status); ?></span>
                                <?php else: ?>
                                <span class="label label-danger text-danger"><?php echo e($ticket->status); ?></span>
                                <?php endif; ?>
                            </td>
                            <td><?php echo e($ticket->created_at->format('F d, Y H:i')); ?></td>
                            
                            <td>
                                <form action="<?php echo e(url('tickets/'. $ticket->ticket_id)); ?>" method="GET">
                                    <button type="submit" class="btn btn-sm" style="background:#2737A6;color:white;font-weight:bold">More Details</button>
                                </form>
                            </td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </tbody>
                </table>

                <?php echo e($tickets->render()); ?>

            </div>
            <?php endif; ?>

        </div>
    </main>

    <?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>