package Food;

import Member.MemberDto;

public class ReviewAndMember {
	ReviewDto reviewDto;
	MemberDto memberDto;
	public ReviewDto getReviewDto() {
		return reviewDto;
	}
	public void setReviewDto(ReviewDto reviewDto) {
		this.reviewDto = reviewDto;
	}
	public MemberDto getMemberDto() {
		return memberDto;
	}
	public void setMemberDto(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	@Override
	public String toString() {
		return "ReviewAndMember [reviewDto=" + reviewDto + ", memberDto=" + memberDto + "]";
	}
	
	
}
