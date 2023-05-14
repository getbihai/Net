package com.jr.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jr.domain.RuleBooks;
import com.jr.service.RuleBooksService;


@Controller
@RequestMapping("/rulebook")
public class RuleBooksController {

	@Autowired
    @Qualifier("RuleBooksServiceImpl")
    private RuleBooksService ruleBooksService;


//    查询全部的书籍，并且返回到一个书籍展示
    @RequestMapping("allRuleBook")
    public String list(Model model) {
        List<RuleBooks> list = ruleBooksService.queryAllRuleBooks();
        model.addAttribute("list", list);
        return "allRuleBook";
    }
    

    //跳转到增加书籍页面
    @RequestMapping("/toAddRuleBook")
    public String toAddPager() {
        return "addRuleBook";
    }

    //添加书籍的请求
    @RequestMapping("/addRuleBook")
    public String addRuleBook(RuleBooks ruleBooks) {
//        System.out.println("addBook___" + books);
        ruleBooksService.addRuleBooks(ruleBooks);
        return "redirect:/rulebook/allRuleBook";//重定向allBook请求
    }

    //跳转到修改书籍页面
    @RequestMapping("/toUpdate")
    public String toUpdatePager(Integer rID, Model model) {
    	System.out.println("rID="+rID);
    	RuleBooks ruleBooks = ruleBooksService.queryRuleBooksById(rID);
        model.addAttribute("QRuleBook", ruleBooks);
        return "updateRuleBook";
    }

    //修改书籍
    @RequestMapping("/updateRuleBook")
    public String updateRuleBook(RuleBooks ruleBooks) {
        System.out.println("updaterulebook====" + ruleBooks);
        int i = ruleBooksService.updateRuleBooks(ruleBooks);
        if (i > 0) {
            System.out.println("添加成功" + ruleBooks);
        }
//        List<RuleBooks> books1 = bookService.queryAllBook();
        return "redirect:/rulebook/allRuleBook";
    }

    //删除数据
    @RequestMapping("/deleteRuleBook/{rID}")
    public String deleteRuleBook(@PathVariable("rID") int rID) {
    	ruleBooksService.deleteRuleBooksById(rID);
        return "redirect:/rulebook/allRuleBook";
    }

    //查询书籍
    @RequestMapping("/queryRuleBook")
    public String queryRuleBook(String queryRuleBookName, Model model) {
    	RuleBooks ruleBooks = ruleBooksService.queryRuleBooksByName(queryRuleBookName);
        List<RuleBooks> list=new ArrayList<RuleBooks>();
        list.add(ruleBooks);

        if(ruleBooks==null){
            list=ruleBooksService.queryAllRuleBooks();
            model.addAttribute("error","未查到");
        }

        model.addAttribute("list",list);
        return "allRuleBook";
    }
}
