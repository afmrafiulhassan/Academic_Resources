class A{ 
	A(){System.out.print("A");} 
}

class B extends A{
	B(){
		super();
		System.out.print("B");
		A a = new A();
	}
}

class C extends B{
	private B b;
	C(){
		super();
		System.out.print("C");
		b = new B();
	}
}

public class D{
	public static void main(String args[]){
		C c = new C();		
	}
}