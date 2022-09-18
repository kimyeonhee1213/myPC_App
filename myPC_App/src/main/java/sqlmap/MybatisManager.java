package sqlmap;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisManager {
	private static SqlSessionFactory instance;
	
	/*
	 * 생성자는 보통 public인데 여기서는 private처리함. 따라서 외부에서 접근이 안된다.
	 * new해서 접근 안되기 때문에 getInstance()우회 접근한다.
	 * 웹은 사용자들이 많기 때문에 접속할 때 마다 MybatisManager m=new MybatisManager();
	 * 을 실행하면 메모리가 늘어나기 때문에 다수의 인스턴스 생성을 막고  하나의 인스턴스만 생성시켜
	 * 처리한다. 즉, 이러한 기법을 싱글톤패턴기법 이라 한다.
	 *  
	 *  */
	private MybatisManager() {}
	public static SqlSessionFactory getInstance() {
		Reader reader = null;
		try {
			//xml을 읽어들이는 메소드
			reader = Resources.getResourceAsReader("sqlmap/sqlMapConfig.xml");
			instance = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(reader != null) reader.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return instance;
	}
	

}
