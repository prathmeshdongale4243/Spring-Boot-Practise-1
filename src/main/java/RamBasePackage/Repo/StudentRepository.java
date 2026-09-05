package RamBasePackage.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import RamBasePackage.Entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>
{

	Boolean existsByEmail(String email);
}
