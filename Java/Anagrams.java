package anagrams;
import java.util.*;

public class Anagrams {
	public static void main(String[] args) {
		String s1= "anam";
		String s2="maan";
		char[] a= s1.toCharArray();
		char[] b=s2.toCharArray();
if(a.length==b.length) {
	Arrays.sort(a);
	Arrays.sort(b);
	for(int y=0;y<a.length;y++) {
		if(a[y]==b[y]) {
	 System.out.println("Are anagrams");
}
 else {
	 System.out.println("Not anangrams");
 }
	
}
}
else {
	System.out.println("Are of different length");
}
	}

}
