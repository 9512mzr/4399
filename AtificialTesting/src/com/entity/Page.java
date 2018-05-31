package com.entity;

import java.util.List;

public class Page {
	private List<Bigquestion> b_list;
	private List<Choicequestion> c_list;
	private List<Judge_question_show> j_list;
	private List<Judge_question> Judge_questionlist;

	// 查询记录总数
    private int totalRecords;

    // 每页多少条记录
    private int pageSize;

    // 第几页
    private int pageNo;

    /**
     * @return 总页数
     * */
    public int getTotalPages(){
        return (totalRecords+pageSize-1)/pageSize;
    }

    /**
     * 计算当前页开始记录
     * @param pageSize 每页记录数
     * @param currentPage 当前第几页
     * @return 当前页开始记录号
     */
    public int countOffset(int currentPage,int pageSize){
        int offset = pageSize*(currentPage-1);
        return offset;
    }

    /**
     * @return 首页
     * */
    public int getTopPageNo(){
        return 1;
    }

    /**
     * @return 上一页
     * */
    public int getPreviousPageNo(){
        if(pageNo<=1){
            return 1;
        }
        return pageNo-1;
    }

    /**
     * @return 下一页
     * */
    public int getNextPageNo(){
        if(pageNo>=getBottomPageNo()){
            return getBottomPageNo();
        }
        return pageNo+1;
    }

    /**
     * @return 尾页
     * */
    public int getBottomPageNo(){
        return getTotalPages();
    }

	public int getTotalRecords() {
        return totalRecords;
    }

    public void setTotalRecords(int totalRecords) {
        this.totalRecords = totalRecords;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
    

    public List<Bigquestion> getB_list() {
		return b_list;
	}

	public void setB_list(List<Bigquestion> b_list) {
		this.b_list = b_list;
	}

	public List<Choicequestion> getC_list() {
		return c_list;
	}

	public void setC_list(List<Choicequestion> c_list) {
		this.c_list = c_list;
	}

	public List<Judge_question_show> getJ_list() {
		return j_list;
	}

	public void setJ_list(List<Judge_question_show> j_list) {
		this.j_list = j_list;
	}

	public List<Judge_question> getJudge_questionlist() {
		return Judge_questionlist;
	}

	public void setJudge_questionlist(List<Judge_question> judge_questionlist) {
		Judge_questionlist = judge_questionlist;
	}
	
	
}
