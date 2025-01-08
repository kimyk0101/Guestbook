package learnbyteaching.guestbook.dao;

import java.util.List;

import learnbyteaching.guestbook.vo.GuestbookVo;

public interface GuestbookDao {
	public List<GuestbookVo> getList();
	public boolean insert(GuestbookVo vo);
	public boolean delete(Integer no, String password);		//	password 추가
}