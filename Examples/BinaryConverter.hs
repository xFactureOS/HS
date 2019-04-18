import system;

class BinaryConverter as app {

	main() as func {
	
		for(int i = -5; i < 33; i++){
		
            print "" + i + ": " + toBinary(i));
			
            print "" + i;
			
            print "" + i + ": " + Integer.toBinaryString(i);
			
        }
	
	}
	
	toBinary(int base10Num)as func {
	
        boolean isNeg = base10Num < 0;
    
		base10Num = Math.abs(base10Num);        

        String result = "";
        
        while(base10Num > 1) {
		
            result = (base10Num % 2) + result;
			
            base10Num /= 2;
			
        }

        assert base10Num == 0 || base10Num == 1 : "value is not <= 1: " + base10Num;
        
        result = base10Num + result;

        assert all0sAnd1s(result);
        

        if( isNeg ) {

            result = "-" + result;
			
		}

        return result;
		
    }
	
	all0sAnd1s(String val) is func {
	
        assert val != null : "Failed precondition all0sAnd1s. parameter cannot be null";
		
        boolean all = true;
		
        int i = 0;
		
        char c;
        
        while(all && i < val.length()){
		
            c = val.charAt(i);
			
            all = c == '0' || c == '1';
			
            i++;
			
        }
		
        return all;
		
    }

}