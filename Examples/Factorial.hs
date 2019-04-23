import system;

class Factorial as app {

	main() as func {
	
		var NUM_FACTS = 100;
		
		for(var i = 0; i < NUM_FACTS; i++) {

			var init = new Factorial();
		
			var text = "" + i + "! is " + init.factorial(i)
			
			print(text);

		}
	
	}
	
	factorial(n) as func {
	
		var result = 1;
		
		for(var i = 2; i <= n; i++) {
			result *= i;
		}
			
		return result;
	
	}

}

var init = new Factorial();
init.main();
