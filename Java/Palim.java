package programs;
import java.util.*;
public class Palim {

	public static void main(String[] args) {
	Scanner x= new Scanner(System.in);
	System.out.println("Enter the number to be checked: ");
	int n=x.nextInt();
	int rem;
	int sum=0;
	int temp =n;
	while (n>0) {
		rem = n%10;
		sum= (sum*10)+rem;
		n = n/10;
	}
	if(sum==temp) {
		System.out.println("Number is pallindrome");
		
	}
	else {
		System.out.println("Number is not pallindrome");
	}
	}
}
