package vo;
//�ۼ���: ���ֺ�
public class QuanSum {

	private String pcode;
	private int sum;
	
	public QuanSum(String pcode, int sum) {
		this.pcode=pcode;
		this.sum=sum;
	}
	public QuanSum() {
		
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "pcode=" + pcode + ", sum=" + sum + "\n";
	}
	
	
}
