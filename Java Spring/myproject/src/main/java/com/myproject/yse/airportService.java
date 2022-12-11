package com.myproject.yse;

import java.util.List;
import java.util.Map;

import com.myproject.dto.BookDto;
import com.myproject.dto.MemberDto;
import com.myproject.dto.TicketDto;

public interface airportService {

	List<String> nation();

	List<Map<String, Object>> detail(String depart, String arrive, String publeYear);

	int sign_up(MemberDto member);

	String login(String id, String pw);

	MemberDto loginInfor(String id);

	TicketDto ticketInfor(String ticketnum);

	int book_insert(BookDto bdto);

	List<BookDto> myticket(String attribute);

	String checkDuplicate(String id);
	
	List<Map<String, Object>>ChartList();
	
	List<BookDto> allticket();
	
	int deleteTicket(String id, String ticketnum);
	

}
