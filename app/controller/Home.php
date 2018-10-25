<?php

class Home extends Controller {

    public function indexAction(){
        $classes = Manager::getAllClasses();

        $this->render('home/index', ['classes' => $classes]);
    }

    public function classAction(){
        $id = $this->getParam('id');

        if(empty($id)){
            $this->deny('Wrong parameter');
        }

        $students = Manager::getStudentsByClass($id);
        $teachers = Manager::getTeachersByClass($id);
        $schedule = Manager::getScheduleByClass($id);

        $schedule_group = [];

        foreach ($schedule as $value){
            $schedule_group[$value['weekday']][] = $value;
        }

        $this->render('home/class', [
            'students' => $students,
            'teachers' => $teachers,
            'schedule' => $schedule_group
        ]);
    }

}