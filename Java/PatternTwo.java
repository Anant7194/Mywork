package patterns;
import java.util.Scanner;
public class PatternTwo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner K= new Scanner(System.in);
		int p = K.nextInt();
		for(int i=1;i<=p;i++) {
			for(int j=p;j>=i;j--) {
			System.out.print("* ");
			}
		System.out.println("");
		}

	}

}
