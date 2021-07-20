package programs;

import java.util.Arrays;

public class Pallindrome {

	public static void main(String[] args) {
	String s = "Mamy";
	boolean m= isPallindrome(s);
	if(m) {
		System.out.println("Pallindrome");
		
	}
	else {
		System.out.println("Not a pallindrome");
	}
	
	}
	
	static boolean isPallindrome(String s) {
		s=s.toLowerCase();
		int i=0;
		int j= s.length()-1;
		while (i<j) {
			
			if (s.charAt(i)!=s.charAt(j))
				return false;
			
			i++;
			j--;
		}
		return true;
		
	}

}
