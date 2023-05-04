package com.ourtour.tourapp.reply;
import java.util.List;
public interface ReplyDAO {
	List<ReplyDTO> select(int boardNo);
	int insert(ReplyDTO rep);
	public int delete(int replyNo);
}
