package RamBasePackage.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import RamBasePackage.Entity.Student;
import RamBasePackage.Exception.EmailAlreadyExistsException;
import RamBasePackage.Repo.StudentRepository;

@Service
public class StudentService
{
	@Autowired
	StudentRepository sr;
	public Integer update(Student s1)
	{
		if(s1.getCourse().equals("Java Full Stack")||s1.getCourse().equals("Python Full Stack"))
		{
			s1.setDuration("6 Months");
		}
		else if(s1.getCourse().equals("Core Java")||s1.getCourse().equals("Core Python"))
		{
			s1.setDuration("1 Month");
		}
		else if(s1.getCourse().equals("Machine Learning")||s1.getCourse().equals("Data Engineer"))
		{
			s1.setDuration("12 Months");
		}
		else
		{
			s1.setDuration("2 Months");
		}
		Student s2=sr.save(s1); 
		if(s2!=null)
		{
			return s2.getId();
		}
		else
		{
			return 0;
		}
		
	}
	
	public Integer save(Student s1)
	{
		if(sr.existsByEmail(s1.getEmail()))
		{
			throw new EmailAlreadyExistsException("Email already exits");
		}
		if(s1.getCourse().equals("Java Full Stack")||s1.getCourse().equals("Python Full Stack"))
		{
			s1.setDuration("6 Months");
		}
		else if(s1.getCourse().equals("Core Java")||s1.getCourse().equals("Core Python"))
		{
			s1.setDuration("1 Month");
		}
		else if(s1.getCourse().equals("Machine Learning")||s1.getCourse().equals("Data Engineer"))
		{
			s1.setDuration("12 Months");
		}
		else
		{
			s1.setDuration("2 Months");
		}
		Student s2=sr.save(s1); 
		if(s2!=null)
		{
			return s2.getId();
		}
		else
		{
			return 0;
		}
	}
	public List<Student> display()
	{
		
		List<Student> l=sr.findAll();
		return l;
	}
	public Student findbyId(Integer id)
	{
		Optional<Student> s1=sr.findById(id);
		
		Student s=null;
		if(s1.isPresent())
		{
			s=s1.get();
		}
		return s;
		
		
	}
	
	public void delete(Integer id)
	{
		sr.deleteById(id);
	}
	
	
}
