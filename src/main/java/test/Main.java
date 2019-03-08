package test;


public class Main {
	
	public static void main(String[] args) {
		Parent parent = new Parent();
		Child child = new Child();
		Parent p = (Parent)child;
		Child c = (Child)parent;///
		Parent p1 = child;
		//Child c1 = parent;
	
	}
	

}
