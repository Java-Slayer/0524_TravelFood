package www.silver.vo;

public class TravelFoodVO {

	private String username = null;
	private String place = null;
	private String restaurant = null;
	private String review = null;
	private String in_date = null;
	private int no = 0;
	private int likes = 0;
	private String[] filename = null;

	public String[] getFilename() {
		return filename;
	}

	public void setFilename(String[] filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "TravelFoodVO [username=" + username + ", place=" + place + ", restaurant=" + restaurant + ", review="
				+ review + ", in_date=" + in_date + ", no=" + no + ", likes=" + likes + "]";
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(String restaurant) {
		this.restaurant = restaurant;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getIn_date() {
		return in_date;
	}

	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

}
