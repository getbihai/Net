package com.jr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jr.domain.ManageBooks;
import com.jr.service.ManageBooksService;


@Controller
@RequestMapping("/managebook")
public class ManageBooksController {
	@Autowired
    @Qualifier("ManageBooksServiceImpl")
    private ManageBooksService manageBooksService;


//    查询全部的书籍，并且返回到一个书籍展示
    @RequestMapping("allManageBook")
    public String list(Model model) {
        List<ManageBooks> list = manageBooksService.queryAllManageBooks();

        model.addAttribute("list", list);
        return "allManageBook";
    }
    

    //跳转到增加书籍页面
    @RequestMapping("/toAddManageBook")
    public String toAddPager() {
        return "addManageBook";
    }

    //添加书籍的请求
    @RequestMapping("/addManageBook")
    public String addManageBook(ManageBooks manageBooks) {
        System.out.println("addManageBook___" + manageBooks);
        manageBooksService.addManageBooks(manageBooks);
        return "redirect:/managebook/allManageBook";//重定向allBook请求
    }

    //跳转到修改书籍页面
    @RequestMapping("/toUpdate")
    public String toUpdatePager(int id, Model model) {
    	ManageBooks manageBooks = manageBooksService.queryManageBooksById(id);
        model.addAttribute("QManageBooks", manageBooks);
        return "updateManageBook";
    }

    //修改书籍
    @RequestMapping("/updateManageBook")
    public String updateManageBook(ManageBooks manageBooks) {
        System.out.println("updatemanagebook====" + manageBooks);
        int i = manageBooksService.updateManageBooks(manageBooks);
        if (i > 0) {
            System.out.println("添加成功" + manageBooks);
        }
//        List<ManageBooks> books1 = bookService.queryAllBook();
        return "redirect:/managebook/allManageBook";
    }

    //删除数据
    @RequestMapping("/deleteManageBook/{mbID}")
    public String deleteManageBook(@PathVariable("mbID") int mbID) {
    	manageBooksService.deleteManageBooksById(mbID);
        return "redirect:/managebook/allManageBook";
    }

    //查询书籍
//    @RequestMapping("/queryBook")
//    public String queryManageBook(String queryBookName, Model model) {
//    	ManageBooks manageBooks = manageBooksService.queryManageBooksByName(queryBookName);
//        List<ManageBooks> list=new ArrayList<ManageBooks>();
//        list.add(manageBooks);
//
//        if(manageBooks==null){
//            list=manageBooksService.queryAllManageBooks();
//            model.addAttribute("error","未查到");
//        }
//
//        model.addAttribute("list",list);
//        return "allManageBook";
//
//
//    }

}
