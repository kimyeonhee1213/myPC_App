package pboard.dto;

import java.util.Date;

public class PBoardCommentDTO {
	private int comment_num;
	private int pboard_num;
	private String writer;
	private String content;
	private Date reg_date;
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public int getPboard_num() {
		return pboard_num;
	}
	public void setPboard_num(int pboard_num) {
		this.pboard_num = pboard_num;
	}
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "PBoardCommentDTO [comment_num=" + comment_num + ", pboard_num=" + pboard_num + ", "
				+ (writer != null ? "writer=" + writer + ", " : "")
				+ (content != null ? "content=" + content + ", " : "")
				+ (reg_date != null ? "reg_date=" + reg_date : "") + "]";
	}
	
	
	
}
