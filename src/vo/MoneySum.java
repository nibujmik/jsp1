package vo;
//�ۼ���: ���ֺ�
import java.sql.Date;

public class MoneySum {

	private Date buy_date;
	private int sum;
	
	public MoneySum(Date buy_date, int sum) {
		this.buy_date=buy_date;
		this.sum=sum;
	} 
	public MoneySum() {
		
	}
	public Date getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "buy_date=" + buy_date + ", sum=" + sum + "\n";
	}
	
	
}
