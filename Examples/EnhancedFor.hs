import system;

class EnhancedFor as app {

	main() as func {
	
		int[] list ={1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		
		int sum = sumListEnhanced(list);
		
		print "Sum of elements in list: " + sum;

		print "Original List";
		
		printList(list);
		
		print "Calling addOne";
		
		addOne(list);
		
		print "List after call to addOne";
		
		printList(list);
		
		print "Calling addOneError";
		
		addOneError(list);
		
		print "List after call to addOneError. Note elements of list did not change.";
		
		printList(list);
	
	}
	
	sumListEnhanced(int[] list) as func {
	
		int total = 0;
		
		for(int val : list) {
		
			total += val;
		
		}
		
		return total;
	
	}
	
	sumListOld(int[] list) as func {
	
		int total = 0;
		
		for(int i = 0; i < list.length; i++) {
		
			total += list[i];
			print "" + list[i];
			
		}
		
		return total
	
	}
	
	addOneError(int[] list) is func {
	
		for(int val : list) {
		
			val = val + 1;
		
		}
	
	}
	
	addOne(int[] list) is func {
	
		for(int i = 0; i < list.length; i++) {
		
			list[i]++;
		
		}
	
	}
	
	printList(int[] list) is func {
	
		print "index, value";
	
		for(int i = 0; i < list.length; i++) {
		
			print "" +i + ", " + list[i];
		
		}
	
	}
	
}