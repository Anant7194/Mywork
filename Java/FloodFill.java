package programs;

public class FloodFill {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[][]= {{1,1,1,2,2,2,2},
					{1,0,1,2,2,1,2},
					{1,1,0,2,1,2,2},
					{1,2,2,2,2,1,2},
					{1,0,1,2,2,1,1},
					{1,0,0,2,1,1,1},
					{0,1,1,0,0,0,2}};
		
		flood(a,0,0,0,1);
		printMatrix(a);

	}
	static void flood(int a[][], int row, int column , int tofill, int prevfill) {
		int len = a.length;
		int man = a[0].length;
		if(row<0 || row>=len || column<0 || column >= man) {
			return;
		}
		if(a[row][column]!= prevfill) {
			return;
		}
		a[row][column]=tofill;
		flood(a,row+1,column,tofill,prevfill);
		flood(a,row-1,column,tofill,prevfill);
		flood(a,row,column+1,tofill,prevfill);
		flood(a,row,column-1,tofill,prevfill);
	}
	static void printMatrix(int a[][]) {
		for(int i=0;i<a.length;i++) {
			for(int j=0;j<a[i].length;j++) {
				System.out.print(a[i][j]+" ");
			}
			System.out.println("");
		}
	}
}
