package Numbers;
import java.util.Scanner;
public class AngstromNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int l=0;l<100;l++) {
		System.out.println("Enter the number to be tested:");
		Scanner x= new Scanner(System.in);
		int n=x.nextInt();
		int temp = n;
		int sum=0;
		while(temp>0) {
			int rem = temp%10;
			temp=temp/10;
			sum=sum+(rem*rem*rem);
			}
		if(sum==n) {
			System.out.println(n+ " is an Angstrom number");
			break;
		}
		else {
			System.out.println("try with another number");
		}
		}

}
}
