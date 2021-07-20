package sortings;

public class BubbleSort {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] a= {0,-1,9,6,3,2,-3,5};
		int n = a.length;
		boolean sorted=true;
		int count=0;
		for (int i=0;i<n-1;i++)
		{
		for(int j=0;j<n-1-i;j++) {
			
			if(a[j]>a[j+1]) {
				int temp=a[j];
					a[j]=a[j+1];
					a[j+1]=temp;
					sorted=false;
				}
		}
		if(sorted) 
		{
		break;
		}
		for(int k:a) {
			System.out.print(k+" ");
		}
		System.out.println();
		 count++;
		}
		System.out.println("the number of steps involved: "+count);
		System.out.println("Sorted Array:");
		for(int r=0;r<n;r++) {
		System.out.print(a[r]+" ");
		}
		System.out.println();
		//Print using for each loop
		for(int t:a) {
			
			System.out.print(t+" ");
		} 

	}

}
