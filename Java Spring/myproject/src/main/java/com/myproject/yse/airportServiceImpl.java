package com.myproject.yse;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.dto.BookDto;
import com.myproject.dto.MemberDto;
import com.myproject.dto.TicketDto;

@Service
public class airportServiceImpl implements airportService {

	@Autowired
	airportDAO airportdao;

	@Override
	public List<String> nation() {
		return this.airportdao.nation();
	}

	@Override
	public List<Map<String, Object>> detail(String depart, String arrive, String publeYear) {
		return this.airportdao.detail(depart, arrive, publeYear);
	}

	@Override
	public int sign_up(MemberDto member) {
		return this.airportdao.sign_up(member);
	}

	@Override
	public String login(String id, String pw) {
		return this.airportdao.login(id, pw);
	}

	@Override
	public MemberDto loginInfor(String id) {
		return this.airportdao.loginInformation(id);
	}

	@Override
	public TicketDto ticketInfor(String ticketnum) {

		// TODO Auto-generated method stub
		return this.airportdao.ticketInformation(ticketnum);
	}

	@Override
	public int book_insert(BookDto bdto) {
		// TODO Auto-generated method stub
		return this.airportdao.bookInsert(bdto);
	}

	@Override
	public List<BookDto> myticket(String attribute) {
		// TODO Auto-generated method stub
		return this.airportdao.myticket_find(attribute);
	}

	@Override
	public String checkDuplicate(String id) {
		return this.airportdao.checkDuplication(id);
	}

	@Override
	public List<Map<String, Object>> ChartList() {
		// TODO Auto-generated method stub
		return this.airportdao.D3Chart(null);
	}

	@Override
	public List<BookDto> allticket() {
		// TODO Auto-generated method stub
		return this.airportdao.allticket();
	}

	@Override
	public int deleteTicket(String id, String ticketnum) {
		// TODO Auto-generated method stub
		return  this.airportdao.deleteTicket(id, ticketnum);
	}

}
