package com.jr.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jr.domain.RuleBooks;

public interface RuleBooksMapper {

    int addRuleBooks(RuleBooks ruleBooks);

    int deleteRuleBooksById(@Param("rID") int rID);

    int updateRuleBooks(RuleBooks ruleBooks);

    RuleBooks queryRuleBooksById(@Param("rID") Integer rID);

    List<RuleBooks> queryAllRuleBooks();

    RuleBooks queryRuleBooksByName(@Param("rName") String rName);
}
