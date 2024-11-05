package cws.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cws.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
