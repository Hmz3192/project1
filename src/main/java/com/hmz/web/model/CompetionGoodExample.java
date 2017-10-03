package com.hmz.web.model;

import java.util.ArrayList;
import java.util.List;

public class CompetionGoodExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CompetionGoodExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andGoodIdIsNull() {
            addCriterion("good_id is null");
            return (Criteria) this;
        }

        public Criteria andGoodIdIsNotNull() {
            addCriterion("good_id is not null");
            return (Criteria) this;
        }

        public Criteria andGoodIdEqualTo(Integer value) {
            addCriterion("good_id =", value, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdNotEqualTo(Integer value) {
            addCriterion("good_id <>", value, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdGreaterThan(Integer value) {
            addCriterion("good_id >", value, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("good_id >=", value, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdLessThan(Integer value) {
            addCriterion("good_id <", value, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdLessThanOrEqualTo(Integer value) {
            addCriterion("good_id <=", value, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdIn(List<Integer> values) {
            addCriterion("good_id in", values, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdNotIn(List<Integer> values) {
            addCriterion("good_id not in", values, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdBetween(Integer value1, Integer value2) {
            addCriterion("good_id between", value1, value2, "goodId");
            return (Criteria) this;
        }

        public Criteria andGoodIdNotBetween(Integer value1, Integer value2) {
            addCriterion("good_id not between", value1, value2, "goodId");
            return (Criteria) this;
        }

        public Criteria andWatchTimeIsNull() {
            addCriterion("watch_time is null");
            return (Criteria) this;
        }

        public Criteria andWatchTimeIsNotNull() {
            addCriterion("watch_time is not null");
            return (Criteria) this;
        }

        public Criteria andWatchTimeEqualTo(Integer value) {
            addCriterion("watch_time =", value, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeNotEqualTo(Integer value) {
            addCriterion("watch_time <>", value, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeGreaterThan(Integer value) {
            addCriterion("watch_time >", value, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("watch_time >=", value, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeLessThan(Integer value) {
            addCriterion("watch_time <", value, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeLessThanOrEqualTo(Integer value) {
            addCriterion("watch_time <=", value, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeIn(List<Integer> values) {
            addCriterion("watch_time in", values, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeNotIn(List<Integer> values) {
            addCriterion("watch_time not in", values, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeBetween(Integer value1, Integer value2) {
            addCriterion("watch_time between", value1, value2, "watchTime");
            return (Criteria) this;
        }

        public Criteria andWatchTimeNotBetween(Integer value1, Integer value2) {
            addCriterion("watch_time not between", value1, value2, "watchTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeIsNull() {
            addCriterion("now_time is null");
            return (Criteria) this;
        }

        public Criteria andNowTimeIsNotNull() {
            addCriterion("now_time is not null");
            return (Criteria) this;
        }

        public Criteria andNowTimeEqualTo(Integer value) {
            addCriterion("now_time =", value, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeNotEqualTo(Integer value) {
            addCriterion("now_time <>", value, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeGreaterThan(Integer value) {
            addCriterion("now_time >", value, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("now_time >=", value, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeLessThan(Integer value) {
            addCriterion("now_time <", value, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeLessThanOrEqualTo(Integer value) {
            addCriterion("now_time <=", value, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeIn(List<Integer> values) {
            addCriterion("now_time in", values, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeNotIn(List<Integer> values) {
            addCriterion("now_time not in", values, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeBetween(Integer value1, Integer value2) {
            addCriterion("now_time between", value1, value2, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowTimeNotBetween(Integer value1, Integer value2) {
            addCriterion("now_time not between", value1, value2, "nowTime");
            return (Criteria) this;
        }

        public Criteria andNowPriceIsNull() {
            addCriterion("now_price is null");
            return (Criteria) this;
        }

        public Criteria andNowPriceIsNotNull() {
            addCriterion("now_price is not null");
            return (Criteria) this;
        }

        public Criteria andNowPriceEqualTo(String value) {
            addCriterion("now_price =", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceNotEqualTo(String value) {
            addCriterion("now_price <>", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceGreaterThan(String value) {
            addCriterion("now_price >", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceGreaterThanOrEqualTo(String value) {
            addCriterion("now_price >=", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceLessThan(String value) {
            addCriterion("now_price <", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceLessThanOrEqualTo(String value) {
            addCriterion("now_price <=", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceLike(String value) {
            addCriterion("now_price like", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceNotLike(String value) {
            addCriterion("now_price not like", value, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceIn(List<String> values) {
            addCriterion("now_price in", values, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceNotIn(List<String> values) {
            addCriterion("now_price not in", values, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceBetween(String value1, String value2) {
            addCriterion("now_price between", value1, value2, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowPriceNotBetween(String value1, String value2) {
            addCriterion("now_price not between", value1, value2, "nowPrice");
            return (Criteria) this;
        }

        public Criteria andNowUserIsNull() {
            addCriterion("now_user is null");
            return (Criteria) this;
        }

        public Criteria andNowUserIsNotNull() {
            addCriterion("now_user is not null");
            return (Criteria) this;
        }

        public Criteria andNowUserEqualTo(String value) {
            addCriterion("now_user =", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserNotEqualTo(String value) {
            addCriterion("now_user <>", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserGreaterThan(String value) {
            addCriterion("now_user >", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserGreaterThanOrEqualTo(String value) {
            addCriterion("now_user >=", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserLessThan(String value) {
            addCriterion("now_user <", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserLessThanOrEqualTo(String value) {
            addCriterion("now_user <=", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserLike(String value) {
            addCriterion("now_user like", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserNotLike(String value) {
            addCriterion("now_user not like", value, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserIn(List<String> values) {
            addCriterion("now_user in", values, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserNotIn(List<String> values) {
            addCriterion("now_user not in", values, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserBetween(String value1, String value2) {
            addCriterion("now_user between", value1, value2, "nowUser");
            return (Criteria) this;
        }

        public Criteria andNowUserNotBetween(String value1, String value2) {
            addCriterion("now_user not between", value1, value2, "nowUser");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}