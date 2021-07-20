package programs;

public class GameTheory {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[]= {1,5,7,3,2,4};
		System.out.println(MaxCoin(a,0,5));

	}
	static int MaxCoin(int a[], int l , int r) {
		
		if(l+1==r) {
			return Math.max(a[l],a[r]);
		}
		else {
			return Math.max(a[l]+Math.min(MaxCoin(a,l+2,r),MaxCoin(a,l+1,r-1))
			,a[r]+Math.min(MaxCoin(a,l+1,r-1),MaxCoin(a,l,r-2)));
		}
	}

}
