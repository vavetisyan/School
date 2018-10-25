<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h3>Students list</h3>
            </div>

            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Middle Name</th>
                    <th>Email</th>
                    <th>Birthday</th>
                </tr>
                </thead>
                <tbody>
                <?php
                foreach ($this->students as $key => $student){ ?>
                    <tr class="table-danger">
                        <td><?php echo $key+1; ?></td>
                        <td><?php echo $student['first_name']; ?></td>
                        <td><?php echo $student['last_name']; ?></td>
                        <td><?php echo $student['middle_name']; ?></td>
                        <td><?php echo $student['email']; ?></td>
                        <td><?php echo $student['birthday']; ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h3>Teachers list</h3>
            </div>

            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Middle Name</th>
                    <th>Email</th>
                    <th>Birthday</th>
                    <th>Course</th>
                </tr>
                </thead>
                <tbody>
                <?php
                foreach ($this->teachers as $key => $teacher){ ?>
                    <tr class="table-success">
                        <td><?php echo $key+1; ?></td>
                        <td><?php echo $teacher['first_name']; ?></td>
                        <td><?php echo $teacher['last_name']; ?></td>
                        <td><?php echo $teacher['middle_name']; ?></td>
                        <td><?php echo $teacher['email']; ?></td>
                        <td><?php echo $teacher['birthday']; ?></td>
                        <td><?php echo $teacher['course']; ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="page-header">
        <h3>Schedule</h3>
    </div>
    <div class="row">
    <?php foreach ($this->schedule as $key => $schedule){ ?>
        <div class="col-md-6">
            <table class="table">
                <thead>
                <tr>
                    <th>Hour</th>
                    <th><?php echo $key; ?> day</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($schedule as $value){ ?>
                    <tr class="table-warning">
                        <td><?php echo $value['hour']; ?></td>
                        <td><?php echo $value['course']; ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    <?php } ?>
    </div>
</div>