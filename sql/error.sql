




select classes.id as "class id", classes.name as "class", teachers.name as "teacher", teachers.subject from classes inner join teachers ON classes.teacher_id=teachers.id where(select count(classes.id) from classes inner join teachers ON classes.teacher_id=teachers.id group by classes.teacher_id having count(classes.id)>1 order by classes.name asc;) group by classes.teacher_id,classes.id order by classes.name asc; 



select classes.id as "class id",count(classes.teacher_id), classes.name as "class", teachers.name as "teacher", teachers.subject from classes inner join teachers ON classes.teacher_id=teachers.id where classes.teacher_id in (select count(classes.teacher_id) from classes inner join teachers ON classes.teacher_id=teachers.id group by classes.teacher_id having count(classes.teacher_id)>=1 order by classes.name asc) group by classes.teacher_id,classes.id order by classes.name asc;
/*error*/



select classes.id as "class id",count(classes.teacher_iselect classes.id as "class id", classes.name as "class", teachers.name as "teacher", teachers.subject from classes inner join teachers ON classes.teacher_id=teachers.id  group by classes.teacher_id,classes.id order by classes.name asc;d), classes.name as "class", teachers.name as "teacher", teachers.subject from classes inner join teachers ON classes.teacher_id=teachers.id where classes.teacher_id in (select classes.name, count(classes.teacher_id) from classes GROUP by teacher_id having count(classes.teacher_id)>1) group by classes.teacher_id,classes.id order by classes.name asc;

select classes.name, count(classes.teacher_id) from classes GROUP by teacher_id having count(classes.teacher_id)>1;


select classes.id as "class id",count(classes.teacher_id), classes.name as "class", teachers.name as "teacher", teachers.subject from classes inner join teachers ON classes.teacher_id=teachers.id where classes.teacher_id in
(select count(classes.teacher_id) from classes GROUP by teacher_id having count(classes.teacher_id)>=2);


