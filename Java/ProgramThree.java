package programs;
import java.util.*;

public class ProgramThree {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
String s= "Grab";
String n="Brag";
s=s.toLowerCase();
n=n.toLowerCase();
char ch[]= s.toCharArray(); 
char chTwo[]= n.toCharArray() ;
Arrays.sort(chTwo);
Arrays.sort(ch);
boolean m = Arrays.equals(ch, chTwo);
if (m) {
	System.out.println("Anagrams");
}
else {
	System.out.println("Not anagrams");
}
}
}
