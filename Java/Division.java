package programs;
import java.util.*;
public class Division {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String s= "aaaabbbbcccc";
		int len= s.length();
		int n=3;
		List<String> str = new ArrayList<String>();
		if(len%n==0) {
			for(int i=0;i<len;i=i+n)	
			{
			String part = s.substring(i,i+n);
			str.add(part);
			}
			for(int j = 0;j<str.size();j++) {
			System.out.print(str.get(j)+" ");
			}
		}
		else {
			System.out.println("Cannot Divide");
		}

	}

}
