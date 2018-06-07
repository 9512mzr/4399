package com.entity;

import java.util.List;

public class Page {
	private List<Bigquestion> b_list;
	private List<Choicequestion> c_list;
	private List<Judge_question_show> j_list;
	private List<Judge_question> Judge_questionlist;
	private List<Teacher> teacherList;
	private List<Journal> journalList;

	// 鏌ヨ璁板綍鎬绘暟
    private int totalRecords;

    // 姣忛〉澶氬皯鏉¤褰�
    private int pageSize;

    // 绗嚑椤�
    private int pageNo;

    /**
     * @return 鎬婚〉鏁�
     * */
    public int getTotalPages(){
        return (totalRecords+pageSize-1)/pageSize;
    }

    /**
     * 璁＄畻褰撳墠椤靛紑濮嬭褰�
     * @param pageSize 姣忛〉璁板綍鏁�
     * @param currentPage 褰撳墠绗嚑椤�
     * @return 褰撳墠椤靛紑濮嬭褰曞彿
     */
    public int countOffset(int currentPage,int pageSize){
        int offset = pageSize*(currentPage-1);
        return offset;
    }

    /**
     * @return 棣栭〉
     * */
    public int getTopPageNo(){
        return 1;
    }

    /**
     * @return 涓婁竴椤�
     * */
    public int getPreviousPageNo(){
        if(pageNo<=1){
            return 1;
        }
        return pageNo-1;
    }

    /**
     * @return 涓嬩竴椤�
     * */
    public int getNextPageNo(){
        if(pageNo>=getBottomPageNo()){
            return getBottomPageNo();
        }
        return pageNo+1;
    }

    /**
     * @return 灏鹃〉
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

	public List<Teacher> getTeacherList() {
		return teacherList;
	}

	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}

	public List<Journal> getJournalList() {
		return journalList;
	}

	public void setJournalList(List<Journal> journalList) {
		this.journalList = journalList;
	}
	
	
}
