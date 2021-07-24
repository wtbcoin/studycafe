package basic.studyCafe.vo;

public class NoticeVO {

	private int notice_number;
	private String user_id;
	private int notice_pagenumber;
	private String notice_title;
	private String notice_kind;
	private String notice_time;
	private int notice_readcount;
	private String notice_content;
	private String notice_filename;
	private String notice_popup;

	public int getNotice_number() {
		return notice_number;
	}

	public void setNotice_number(int notice_number) {
		this.notice_number = notice_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getNotice_pagenumber() {
		return notice_pagenumber;
	}

	public void setNotice_pagenumber(int notice_pagenumber) {
		this.notice_pagenumber = notice_pagenumber;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_kind() {
		return notice_kind;
	}

	public void setNotice_kind(String notice_kind) {
		this.notice_kind = notice_kind;
	}

	public String getNotice_time() {
		return notice_time;
	}

	public void setNotice_time(String notice_time) {
		this.notice_time = notice_time;
	}

	public int getNotice_readcount() {
		return notice_readcount;
	}

	public void setNotice_readcount(int notice_readcount) {
		this.notice_readcount = notice_readcount;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_filename() {
		return notice_filename;
	}

	public void setNotice_filename(String notice_filename) {
		this.notice_filename = notice_filename;
	}

	public String getNotice_popup() {
		return notice_popup;
	}

	public void setNotice_popup(String notice_popup) {
		this.notice_popup = notice_popup;
	}

}
