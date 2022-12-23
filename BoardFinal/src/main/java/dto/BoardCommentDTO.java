package dto;

/**
 * @author ITSC
 *
 */
public class BoardCommentDTO {
	private int cno;
	private int bno;
	private String comment;
	private String writer;
	private String date;
	private int clike;
	private int chate;

	public BoardCommentDTO() {
	}

	public BoardCommentDTO(int cno, int bno, String comment, String writer, String date, int clike, int chate) {
		super();
		this.cno = cno;
		this.bno = bno;
		this.comment = comment;
		this.writer = writer;
		this.date = date;
		this.clike = clike;
		this.chate = chate;
	}

	public BoardCommentDTO(int bno, String comment, String writer) {
		super();
		this.bno = bno;
		this.comment = comment;
		this.writer = writer;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getLike() {
		return clike;
	}

	public void setLike(int clike) {
		this.clike = clike;
	}

	public int getHate() {
		return chate;
	}

	public void setHate(int chate) {
		this.chate = chate;
	}

	@Override
	public String toString() {
		return "BoardCommentDTO [cno=" + cno + ", bno=" + bno + ", comment=" + comment + ", writer=" + writer
				+ ", date=" + date + ", like=" + clike + ", hate=" + chate + "]";
	}

	
	
	
}
