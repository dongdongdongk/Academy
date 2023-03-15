package com.ac.home.util;

public class Pager {
	
	private Long bookNumber;
	
	
	
	public Long getBookNumber() {
		return bookNumber;
	}

	public void setBookNumber(Long bookNumber) {
		this.bookNumber = bookNumber;
	}

	//ê²??ƒ‰ ì¢…ë¥˜(?‚¬?š©?•  column)
	private String kind;
	//ê²??ƒ‰?–´
	private String search;
	
	//?•œ?˜?´ì§??— ì¶œë ¥?•  ROW?˜ ê°??ˆ˜
	private Long perPage;
	
	//?•œë¸”ëŸ­?‹¹ ì¶œë ¥?•  ë²ˆí˜¸?˜ ê°??ˆ˜
	private Long perBlock;
	
	//? „ì²? page ê°??ˆ˜
	private Long totalPage;
	
	//Clientê°? ë³´ê³ ?‹¶?? ?˜?´ì§? ë²ˆí˜¸(parameter)
	private Long page;
	
	//Table?—?„œ ì¡°íšŒ?•  ?‹œ?‘ë²ˆí˜¸
	private Long startRow;
	//Table?—?„œ ì¡°íšŒ?•  ?ë²ˆí˜¸
	private Long lastRow;
	
	//? „ì²? row?˜ ê°??ˆ˜ë¥? ?‹´?„ ë³??ˆ˜
	//private Long totalCount;
	
	private Long startNum;
	private Long lastNum;
	
	private boolean before;
	private boolean after;
	
	public Pager() {
		this.perPage=10L;
	}
	
	//startRow, lastRow ê³„ì‚° ?•˜?Š” ë©”ì„œ?“œ
	public void makeRow() {
		this.startRow = (this.getPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getPage()*this.getPerPage();
	}
	
	//startNum, lastNum
	public void makeNum(Long totalCount) {
		
		//1. ? „ì²? row?˜ ê°??ˆ˜ êµ¬í•˜ê¸?
		//2. ì´? page?˜ ê°??ˆ˜ êµ¬í•˜ê¸?
		this.totalPage = totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() != 0 ) {
			//totalPage=totalPage+1;
			//totalPage+=1;
			totalPage++;		
		}
		if(this.getPage()>totalPage) {
			this.setPage(totalPage);
		}
		//3. ?•œ ë¸”ëŸ­?— ì¶œë ¥?•  ë²ˆí˜¸?˜ ê°??ˆ˜
		
		
		//4. ì´? ë¸”ëŸ­?˜ ?ˆ˜ êµ¬í•˜ê¸?
		Long totalBlock = totalPage / this.getPerBlock();
		if(totalPage % this.getPerBlock() != 0) {
			totalBlock++;
		}
		
		//5. page ë²ˆí˜¸ë¡? ?˜„?¬ ë¸”ëŸ­ ë²ˆí˜¸ êµ¬í•˜ê¸?
		// page 1-5 curBlock 1
		// page 6-10 curBlock 2
		// page 11-15 curBlock 3
		 Long curBlock=this.getPage() / this.getPerBlock();
		 
		 if(this.getPage() % this.getPerBlock() != 0) {
			 curBlock++;
		 }
		 
		 //6. curBlock?˜ ?‹œ?‘ë²ˆí˜¸?? ?ë²ˆí˜¸ë¥? ê³„ì‚°
		 /**	curBlock	startNum	lastNum
		  * 	1			1			5
		  * 	2			6			10
		  * 	3			11			15
		  */
		 
		 this.startNum=(curBlock-1)*this.getPerBlock()+1;
		 this.lastNum=curBlock*this.getPerBlock();
		 
		 this.after=true;
		 if(curBlock==totalBlock) {
			 lastNum=totalPage;
			 this.after=false;
		 }
		 
		 if(curBlock==1) {
			 this.before=true;
		 }
		 
	}
	
	
//	public Long getTotalCount() {
//		return totalCount;
//	}
//
//	public void setTotalCount(Long totalCount) {
//		this.totalCount = totalCount;
//	}
	
	
	
	

	public Long getPerPage() {
		if(this.perPage==null || this.perPage==0) {
			this.perPage=10L;
		}
		return perPage;
	}
	
	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(search == null) {
			search="";
		}
		return search; //"%"+search+"%";
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public Long getTotalPage() {
		return totalPage;
	}

	public Long getPerBlock() {
		if(this.perBlock == null || this.perBlock<1) {
			this.perBlock=5L;
		}
		
		return perBlock;
	}

	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}

	public boolean isBefore() {
		return before;
	}

	public void setBefore(boolean before) {
		this.before = before;
	}

	public boolean isAfter() {
		return after;
	}

	public void setAfter(boolean after) {
		this.after = after;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	public Long getPage() {
		if(this.page == null || this.page<1) {
			this.page=1L;
		}
		return page;
	}
	public void setPage(Long page) {
		this.page = page;
	}
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getLastRow() {
		return lastRow;
	}
	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}
	
	
	
	

}