package com.ourtour.tourapp.reply;
import java.util.List;
public interface ReplyService {
	int insert(ReplyDTO rep);
	List<ReplyDTO> select(int boardNo);
	public int delete(int replyNo);
}
