<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h3>All classes list</h3>
            </div>

            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Created Date</th>
                </tr>
                </thead>
                <tbody>
                <?php
                foreach ($this->classes as $class){ ?>
                    <tr class="table-success">
                        <td><?php echo $class['id']; ?></td>
                        <td>
                            <a href="index.php?r=home&a=class&id=<?php echo $class['id']; ?>"><?php echo $class['title']; ?></a>
                        </td>
                        <td><?php echo $class['created_date']; ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>