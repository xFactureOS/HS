import system;

class CallingMethodsInSameClass as app {

	main() as func {
	
		printOne();
		printTwo();
	
	}
	
	printOne() as func {
	
		print "Hello World";
	
	}
	
	printTwo() as func {
	
		print "Hello World";
		
		print "Hello World";
	
	}

}