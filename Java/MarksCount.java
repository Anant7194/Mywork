package programs;
import java.util.Scanner;
public class MarksCount {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter your String: ");
		String s = sc.next();
		int count=0;
		for(int i=0;i< s.length();i++) {
			if((s.charAt(i)=='/')||(s.charAt(i)==';')||(s.charAt(i)=='!')||
			(s.charAt(i)=='.')||(s.charAt(i)==',')||(s.charAt(i)=='_')||(s.charAt(i)=='-')||(s.charAt(i)=='?')) {
				}
			count++;
			}
		System.out.println(count);
	}
}
