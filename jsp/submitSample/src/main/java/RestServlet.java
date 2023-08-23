
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

// old JEE
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

// Jakarta EE
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import com.google.gson.Gson;

/**
 * Servlet implementation class RestServlet
 */
@WebServlet("/RestServlet")
public class RestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RestServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("\n-------- doGet ----------");		
		
		String id = request.getParameter("id");
		String account = request.getParameter("account");
		System.out.println(id + " ," + account);
		
		// 서버 => 클라이언트 : JSON
		
		// JSON 생성
		// JSON : https://www.json.org/json-ko.html
		Map<String, String> map = new HashMap<>();
		map.put("java", "17");
		map.put("spring", "5");
		map.put("servlet", "6");
		
		// gson : https://github.com/google/gson
		// map => JSON
		Gson gson = new Gson();
		String result = gson.toJson(map);
		
		System.out.println("result : " + result);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println(result); // JSON 문자열 return
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("\n-------- doPost ----------");
		
		String id = request.getParameter("id");
		String account = request.getParameter("account");
		System.out.println(id + " ," + account);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("\n-------- doPut ----------");
		
		String data = null;
		String data2 = "";
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));

		while ((data = br.readLine()) != null) {
			data2 += data;
		}

		System.out.println(data2);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("\n-------- doDelete ----------");
		
		String data = null;
		String data2 = "";		

		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));

		while ((data = br.readLine()) != null) {
			data2 += data;
		}

		System.out.println(data2);
	}
	
	/**
	 * @see HttpServlet#doHead(HttpServletRequest, HttpServletResponse)
	 */
	protected void doHead(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("\n-------- doHead ----------");
		
		Enumeration<String> enums = request.getHeaderNames();
		
		while (enums.hasMoreElements()) {
			
			String prop = enums.nextElement();
			String val = request.getHeader(prop);
			System.out.println(prop + "=" + val);
		}
	}

	/**
	 * @see HttpServlet#doOptions(HttpServletRequest, HttpServletResponse)
	 */
	protected void doOptions(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("\n-------- doOptions ----------");
		/*
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "GET, POST");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type");
		response.setHeader("Access-Control-Max-Age", "86400");
		response.setHeader("Allow", "GET, HEAD, POST, TRACE, OPTIONS");
		*/
	}

	/**
	 * @see HttpServlet#doTrace(HttpServletRequest, HttpServletResponse)
	 */
	protected void doTrace(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("\n-------- doTrace ----------");
		
	}
	
}
