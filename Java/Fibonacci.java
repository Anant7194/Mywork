package Loops;

public class Fibonacci {

	public static void main(String[] args) {
		int n=6;
		int current=1;
		int previous=0;
		System.out.print(previous+ " ");
		System.out.print(current+ " ");
		for(int i = previous; i<=n-2 ; i++)
		{
			int fibo = current + previous;
			System.out.print(fibo+" ");
			previous= current;
			current = fibo;
		}

	}

}
