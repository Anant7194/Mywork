package Loops;
import java.util.Scanner;
public class Factorial {

	public static void main(String[] args) {
		
		Scanner g=new Scanner(System.in);
		System.out.println("Enter the number:");
		int n = g.nextInt();
		long factOfNo =1;
		for(int i=n;i>=1;i-- )
		{
		factOfNo=factOfNo*i;
		}
		System.out.println("The factorial of the number "+ n +" is :"+ factOfNo);
		}
		
}
