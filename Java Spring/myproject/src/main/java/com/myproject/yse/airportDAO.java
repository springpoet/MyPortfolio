package com.myproject.yse;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myproject.dto.BookDto;
import com.myproject.dto.MemberDto;
import com.myproject.dto.TicketDto;

@Repository
public class airportDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<String> nation() {
		return this.sqlSessionTemplate.selectList("airport.main_select");
	}

	public List<Map<String, Object>> detail(String depart, String arrive, String publeYear) {
		Map<String, Object> nation = new HashMap<String, Object>();

		nation.put("depart", depart);
		nation.put("arrive", arrive);
		nation.put("publeYear", publeYear);

		return this.sqlSessionTemplate.selectList("airport.detail_view", nation);
	}

	public int sign_up(MemberDto member) {
		return this.sqlSessionTemplate.insert("airport.sing_up", member);
	}

	public String login(String id, String pw) {
		Map<String, Object> loginCheck = new HashMap<String, Object>();
		loginCheck.put("id", id);
		loginCheck.put("pw", pw);
		return this.sqlSessionTemplate.selectOne("airport.login", loginCheck);
	}

	public MemberDto loginInformation(String id) {
		return this.sqlSessionTemplate.selectOne("airport.login_infor", id);
	}

	public TicketDto ticketInformation(String ticketnum) {
		return this.sqlSessionTemplate.selectOne("airport.ticket_infor", ticketnum);

	}

	public int bookInsert(BookDto bdto) {
		return this.sqlSessionTemplate.insert("airport.book_insert", bdto);
	}

	public List<BookDto> myticket_find(String id) {
		return this.sqlSessionTemplate.selectList("airport.myticket_find", id);
	}

	public String checkDuplication(String id) {
		return this.sqlSessionTemplate.selectOne("airport.checkDuple", id);
	}
	
	public List<Map<String,Object>>D3Chart(Map<String, Object> map) {
		return this.sqlSessionTemplate.selectList("airport.d3_data", map);
	}
	
	public List<BookDto> allticket() {
		return this.sqlSessionTemplate.selectList("airport.all_view");
	}
	public int deleteTicket(String id, String ticketnum) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("ticketnum", ticketnum);
		return this.sqlSessionTemplate.delete("airport.delete", map);
	}
	

}
