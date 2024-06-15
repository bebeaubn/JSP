package service;

import javax.naming.Context;
import javax.naming.InitialContext;

public class DBService {
	
	//single - ton pattern ;
	//객체1개만 생성해서 지속적으로 서비스 하자
	
	static DBService single = null;
	
	public static DBService getInstance() {
		
		// 생성되지 않았으면 생성
		
		if (single == null);
			single = new DBService();
			
			//생성된 객체정보를 반환
			
			return single;
	}
	// ds을 전역으로 만든 이유는 생성자 밖에서 사용해야할 일이 있기 때문이다. 
	
	DataSource ds;
	
	public DBService () {
		try {
			InitialContext ic = new InitialContext();
			Context ctx = (Context)ic.lookup("java:comp/env");
			ds = (DataSource)ctx.lookup("jdbc/oracle_test");
		} catch (Exception)e {
			
		}
	}
	
	//생성자에서 준비해둔 정보를 기반으로 DB에 연결
	public Connection getConnectin() {
		Connection conn = null;
		try {
			conn de.get
		}
	}

}
