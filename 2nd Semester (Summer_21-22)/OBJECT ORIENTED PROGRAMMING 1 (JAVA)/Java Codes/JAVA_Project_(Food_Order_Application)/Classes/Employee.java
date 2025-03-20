package Classes;
import java.lang.*;

public class Employee{
	private String empId;
	private String empName;
	private double salary;
	
	public void setEmpId(String empId){
		this.empId = empId;
		}
	public void setEmpName(String empName){
		this.empName = empName;
		}
	public void setSalary(double salary){
		this.salary = salary;
		}
	
	public String getEmpId(){
		return empId;
		} 
	public String getEmpName(){
		return empName;
		}
	public double getSalary(){
		return salary;
		}
}