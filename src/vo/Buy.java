package vo;
//�ۼ���: ���ֺ�
import java.sql.Timestamp;

public class Buy {

	private int buy_seq;
	private String custom_id;
	private String pcode;
	private int quantity;
	private Timestamp Buy_date;
	
	public Buy(int buy_seq,String custom_id,String pcode,int quantity,Timestamp Buy_date) {
		super();
		this.buy_seq=buy_seq;
		this.custom_id=custom_id;
		this.pcode=pcode;
		this.quantity=quantity;
		this.Buy_date=Buy_date;	
	}
	public Buy() {
		
	}
	public int getBuy_seq() {
		return buy_seq;
	}
	public void setBuy_seq(int buy_seq) {
		this.buy_seq = buy_seq;
	}
	public String getCustom_id() {
		return custom_id;
	}
	public void setCustom_id(String custom_id) {
		this.custom_id = custom_id;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Timestamp getBuy_date() {
		return Buy_date;
	}
	public void setBuy_date(Timestamp buy_date) {
		Buy_date = buy_date;
	}
	
}
