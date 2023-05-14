package com.jr.service.impl;

import java.util.List;

import com.jr.dao.RuleBooksMapper;
import com.jr.domain.RuleBooks;
import com.jr.service.RuleBooksService;

public class RuleBooksServiceImpl implements RuleBooksService{

	private RuleBooksMapper ruleBooksMapper;

    public RuleBooksMapper getRuleBooksMapper() {
        return ruleBooksMapper;
    }

    public void setRuleBooksMapper(RuleBooksMapper ruleBooksMapper) {
        this.ruleBooksMapper = ruleBooksMapper;
    }

    public int addRuleBooks(RuleBooks ruleBooks) {
        return ruleBooksMapper.addRuleBooks(ruleBooks);
    }

    public int deleteRuleBooksById(int rID) {
        return ruleBooksMapper.deleteRuleBooksById(rID);
    }

    public int updateRuleBooks(RuleBooks ruleBooks) {

        return ruleBooksMapper.updateRuleBooks(ruleBooks);
    }

    public RuleBooks queryRuleBooksById(Integer rID) {
        return ruleBooksMapper.queryRuleBooksById(rID);
    }

    public List<RuleBooks> queryAllRuleBooks() {
        return ruleBooksMapper.queryAllRuleBooks();
    }

    public RuleBooks queryRuleBooksByName(String rName) {
        return ruleBooksMapper.queryRuleBooksByName(rName);
    }
}
