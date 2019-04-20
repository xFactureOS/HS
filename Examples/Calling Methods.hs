import system;

class CallingMethods as app {

	main() as func {
	
		var init = new CallingMethods();
		
		init.printOne();
		init.printOne();
		init.printTwo();
	
	}
	
	printOne() as func {
	
		print "Hello World";
	
	}
	
	printTwo() as func {
	
		print "Hello World";
		
		print "Hello World";
	
	}

}

var init = new CallingMethods();
init.main();
