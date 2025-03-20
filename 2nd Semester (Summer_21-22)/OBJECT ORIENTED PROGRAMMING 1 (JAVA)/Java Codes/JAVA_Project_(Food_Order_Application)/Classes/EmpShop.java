package Classes;
import java.lang.*;
import interfaces.*;

public class EmpShop implements EmployeeOperation{
	
	private Employee employee[] = new Employee [20];
	
	public void insertEmployee(Employee e)
	{
		int flag = 0;
		for(int i=0; i<employee.length; i++)
		{
			if(employee[i] == null)
			{
				employee[i] = e;
				flag = 1;
				break;
			}
		}
		if(flag == 1)
		{
			System.out.println("Employee Inserted");
		}
		else
		{
			System.out.println("Can Not Insert");
		}
	}
	
	public void removeEmployee(Employee e)
	{
		int flag = 0;
		for(int i=0; i<employee.length; i++)
		{
			if(employee[i] == e)
			{
				employee[i] = null;
				flag = 1;
				break;
			}
		}
		if(flag == 1){
			System.out.println("Employee Removed");
			}
		else{
			System.out.println("Can Not Remove");
			}
	}
	public void showAllEmployees(){
		
		System.out.println("=================================================");
		
		for(Employee e : employee){
			if(e != null){
				System.out.println("Employee Name: "+ e.getEmpName());
				System.out.println("Employee ID: "+ e.getEmpId());
				System.out.println("Salary: "+ e.getSalary());
				System.out.println();
			}
		}
		System.out.println("=================================================");
	}
	public Employee getEmployee(String empId)
	{
		Employee e = null;
		
		for(int i=0; i<employee.length; i++)
		{
			if(employee[i] != null)
			{
				if(employee[i].getEmpId().equals(empId))
				{
					e = employee[i];
					break;
				}
			}
		}
		if(e != null)
		{
			System.out.println("Employee Found");
		}
		else
		{
			System.out.println("Employee Not Found");
		}
		return e;
	}
}