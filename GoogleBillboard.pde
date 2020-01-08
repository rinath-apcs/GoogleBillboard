public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public final static String FILTERED_E = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

private boolean found = false;
private int index = 0;

public void setup() {            
     while (!found) {
     	index++;
     	found = isPrime(getTenDigits(index));
     }

     println(String.format("%.1f", getTenDigits(index)));
}  

public boolean isPrime(double num) {   
	for (int i = 2; i <= Math.sqrt(num); i++) {
		if (num % i == 0) return false;
	}

    return true;  
}

public double getTenDigits(int index) {
	return Double.parseDouble(FILTERED_E.substring(index, index + 10));
} 
