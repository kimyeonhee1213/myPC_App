package notice.dto;

public class NoticeDTO {
	private int idx;
	private String userid;
	private String passwd;
	private String title;
	private String content;
	private String post_date;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	@Override
	public String toString() {
		return "NoticeDTO [idx=" + idx + ", " + (userid != null ? "userid=" + userid + ", " : "")
				+ (passwd != null ? "passwd=" + passwd + ", " : "") + (title != null ? "title=" + title + ", " : "")
				+ (content != null ? "notices=" + content + ", " : "")
				+ (post_date != null ? "post_date=" + post_date : "") + "]";
	}
	
	
}
