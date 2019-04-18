import system;

class Factorial as app {

	main() as func {
	
		final int NUM_FACTS = 100;
		
		for(int i = 0; i < NUM_FACTS; i++) {
			print"" + i + "! is " + factorial(i);
		}
	
	}
	
	factorial(int n) as func {
	
		int result = 1;
		
		for(int i = 2; i <= n; i++) {
			result *= i;
		}
			
		return result;
	
	}

}