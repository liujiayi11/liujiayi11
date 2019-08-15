package cn.sz.gl.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sz.gl.pojo.Account;
import cn.sz.gl.pojo.Book;
import cn.sz.gl.pojo.Users;
import cn.sz.gl.service.IAccountService;
import cn.sz.gl.service.IBookService;
import cn.sz.gl.service.IUserService;
import cn.sz.gl.util.BalanceLessException;
import cn.sz.gl.util.StoreHouseLessException;

@Controller
@RequestMapping("/uc")
public class UserController {

	@Autowired
	private IUserService userServiceImpl;
	@Autowired
	private IAccountService accService;
	@Autowired
	private IBookService bookService;
	
	
	
	@RequestMapping(value="login")
	public String islogin(Users u,HttpServletRequest request){
		
		Users users = userServiceImpl.islogin(u);
		if(users!=null){
			request.getSession().setAttribute("myusers", users);
			return "redirect:/bc/findall";
		}
		return "login";
	}
	
	@RequestMapping(value="findaccount")
	public String findAccountByUser(HttpServletRequest request,Model model,Integer bookid){
		Users u = (Users) request.getSession().getAttribute("myusers");
		Book book = bookService.findBookById(bookid);
		model.addAttribute("book", book);
		return "book_prebuy";
	}
	
	@ResponseBody
	@RequestMapping(value="fa",method=RequestMethod.POST)
	public List<Account> findAccount(HttpServletRequest request){
		Users u = (Users) request.getSession().getAttribute("myusers");
		List<Account> acclist = accService.findAccByUserid(u.getUserid());
		return acclist;
	}
	
	@RequestMapping(value="findbalance",method=RequestMethod.POST)
	public void findBalanceByAccid(Integer accid,HttpServletResponse response) throws IOException{
		Double balance = accService.findBalanceByAccid(accid);
		PrintWriter out = response.getWriter();
		out.print(balance);
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="buybook",method=RequestMethod.POST)
	public String buybook(Integer bookid,Integer accid,Model model){
		System.out.println("buybook...");
		String s ="";
		try {
			boolean flag = userServiceImpl.buybook(bookid,accid);
			s="购买成功";
			model.addAttribute("s", s);
		} catch (StoreHouseLessException e) {
			s=e.getMessage();
			model.addAttribute("s", s);
			return "zf";
		} catch (BalanceLessException e) {
			s=e.getMessage();
			model.addAttribute("s", s);
			return "zf";
		}
		return "zf";
	}
	
	
}
