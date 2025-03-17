class Employee{
	private String name;
	private Date dob;
	private Date jd;
	
	Employee(String name,Date dob, Date jd){
		this.name = name;
		this.dob = dob;
		this.jd = jd;
		System.out.println("The Employee is initialized");
	}
	public void setDob(Date dob){
		this.dob = dob;
	}
	public String getName(){return name;}
	public Date getJD(){ return jd;}
	
	public void checkS(Employee e2){
		if(this.jd.getYear()<= e2.getJD().getYear()){
			if(this.jd.getMonth() <= e2.getJD().getMonth()){
				if(this.jd.getDay() <= e2.getJD().getDay()){
					System.out.println(this.name+" is Senior");
				}
				else{
					System.out.println(e2.getName()+" is Senior");
				}
			}
			else{
					System.out.println(e2.getName()+" is Senior");
				}
		}
		else{
					System.out.println(e2.getName()+" is Senior");
			}
	}
	
	public void showDetails(){
		System.out.println(name);
		dob.showDate();
		jd.showDate();
	}
}