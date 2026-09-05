package RamBasePackage.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import RamBasePackage.Entity.Student;
import RamBasePackage.Service.StudentService;
import jakarta.validation.Valid;

@Controller
public class StudentController
{
	@Autowired
	StudentService ss; 
	
	@GetMapping({"/","/home","/welcome"})
	public String welcomePage()
	{
		return "home.jsp";
	}
	
	@GetMapping({"/enrollment-form","/form","/student-form"})
	public String studentForm(Model model)
	{
		Student s1=new Student();
		model.addAttribute("student",s1);
		return "studentForm.jsp";
	}
	
	@PostMapping("/save")
	public String saveForm(@Valid @ModelAttribute("student") Student s1,
			BindingResult result,
			Model model)
	{
		if(result.hasErrors())
		{
		    return "studentForm.jsp";
		}
		//Student s1=new Student();
		try
		{
			
		Integer res=ss.save(s1);
		
		model.addAttribute("msg1",s1.getName()+" students data Submitted Successfully with id is "+ res);
		
		
		}
		catch(Exception e)
		{
			model.addAttribute("msg2",e.getMessage());
		}
		
		return "studentForm.jsp";
	}

	@GetMapping({"/display"})
	public String display(Model model)
	{
		List<Student> l=ss.display();
		model.addAttribute("list", l);
		return "display.jsp";
	}
	
	@GetMapping("/update")
	public String update(@RequestParam Integer id,Model model)
	{
		Student s=ss.findbyId(id);
		model.addAttribute("student", s);
		
		return "update.jsp";
	}
	@PostMapping("/edit")
	public String edit(@Valid @ModelAttribute("student") Student s1,
			BindingResult res,
			Model model)
	{
		if(res.hasErrors())
		{
			return "update.jsp";
		}
		try
		{
			Integer id=ss.update(s1);
			String msg1=id +"ids record will be updated successfully";
			model.addAttribute("msg1", msg1);
		}
		catch(Exception e)
		{
			model.addAttribute("msg2", e.getMessage());
			return "update.jsp";
		}
		
		List<Student> l=ss.display();
		model.addAttribute("list", l);
		return "display.jsp";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam Integer id,Model model)
	{
		ss.delete(id);
		
		List<Student> l=ss.display();
		model.addAttribute("list", l);
		return "display.jsp";
	}
	
	@GetMapping("/about")
	public String about()
	{
		return "about.jsp";
		
	}
	
	
}
