package com.ourtour.tourapp.reply;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	ReplyDAOImpl rep;
	@Override
	public int insert(ReplyDTO dto) {
		return rep.insert(dto);
	}

	@Override
	public List<ReplyDTO> select(int boardNo) {
		return rep.select(boardNo);
	}

	@Override
	public int delete(int replyNo) {
		return 0;
	}

}
