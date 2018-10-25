<?php

class Manager {

    /**
     * @return array
     */
	public static function getAllClasses(){
        $sql = 'SELECT * FROM classes';

        return Model::get($sql);
    }

    /**
     * @param $id
     * @return array
     */
    public static function getStudentsByClass($id){
        $sql = "SELECT u.* FROM `users` u
                  JOIN user_role_student s ON s.user_id = u.id
                WHERE s.class_id = $id";

        return Model::get($sql);
    }

    /**
     * @param $id
     * @return array
     */
    public static function getTeachersByClass($id){
        $sql = "SELECT u.*, c.title AS course FROM `users` u
                  JOIN user_role_teacher t ON t.user_id = u.id
                  JOIN teacher_course tc ON tc.teacher_id = u.id
                  JOIN courses c ON c.id = tc.course_id
                WHERE t.class_id = $id GROUP BY u.id";

        return Model::get($sql);
    }

    /**
     * @param $id
     * @return array
     */
    public static function getScheduleByClass($id){
        $sql = "SELECT s.*, cl.title, co.title AS course FROM `schedules` s
                  JOIN classes cl ON cl.id = s.class_id
                  JOIN courses co ON co.id = s.course_id
                WHERE s.class_id = $id
                ORDER BY weekday, hour";

        return Model::get($sql);
    }
}