package www.silver.vo;

public class tf_commentVO {

	private String tf_comment = null;
	private String c_user = null;
	private int no = 0;

	@Override
	public String toString() {
		return "tf_commentVO [tf_comment=" + tf_comment + ", c_user=" + c_user + ", no=" + no + "]";
	}

	public String getTf_comment() {
		return tf_comment;
	}

	public void setTf_comment(String tf_comment) {
		this.tf_comment = tf_comment;
	}

	public String getC_user() {
		return c_user;
	}

	public void setC_user(String c_user) {
		this.c_user = c_user;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

}
