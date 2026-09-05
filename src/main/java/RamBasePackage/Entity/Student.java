package RamBasePackage.Entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

@Entity
public class Student 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@NotBlank(message="Name is Required")
	private String name;
	
	@NotBlank(message="Email is required")
	@Email(message="Enter valid Email")
	@Column(unique=true)
	private String email;
	
	@NotBlank(message="Password is Required")
	@Size(min=6,message="Password must contain 6 character")
	private String password;
	
	
	@NotBlank(message="Qulification is required")
	private String qulification;
	
	@NotBlank(message="Mobile no is required")
	@Pattern(
			regexp="^[6-9]\\d{9}$",
			message="Enter valid 10 digit number")
	private String mobileno;
	
	@NotBlank(message="course required ")
	private String course;
	
	@NotBlank(message="Gender is required")
	private String gender;
	
	
	private String duration;
	
	@NotBlank(message="Address is required")
	@Size(min=10,message="Message should contain minimum 10 alphabets")
	private String address;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQulification() {
		return qulification;
	}

	public void setQulification(String qulification) {
		this.qulification = qulification;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", qulification=" + qulification + ", mobileno=" + mobileno + ", course=" + course + ", gender="
				+ gender + ", duration=" + duration + ", address=" + address + "]";
	}
	
	

}
