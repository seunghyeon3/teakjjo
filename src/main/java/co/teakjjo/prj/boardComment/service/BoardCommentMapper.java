package co.teakjjo.prj.boardComment.service;

import java.util.List;

public interface BoardCommentMapper {
	List<BoardCommentVO> boardCommentList(String newsboard_id);
	int boardCommentInsert(BoardCommentVO boardcomment);
	int boardCommentDelete(String boardcomment_id);
}