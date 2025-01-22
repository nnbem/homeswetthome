package home.staff.request;

import java.util.Date;

import home.staff.dto.ReceiveVO;

public class ReceiveRegistRequest {

    private int rcno; // 보호 동물 번호
    private String spot; // 발견 장소
    private String picture; // 발견 사진
    private String cantername; // 인계 센터 이름
    private String eid; // 사원 번호
    private Date regDate; // 등록 날짜

    public ReceiveRegistRequest() {
        this.regDate = new Date(); // 기본값으로 현재 날짜 설정
    }

    public ReceiveVO toReceiveVO() {
        ReceiveVO receive = new ReceiveVO();
        receive.setRcno(rcno);
        receive.setSpot(spot);
        receive.setPicture(picture);
        receive.setCantername(cantername);
        receive.setRegDate(regDate);
        receive.setEid(eid);
        return receive;
    }

    // Getters and Setters
    public int getRcno() {
        return rcno;
    }

    public void setRcno(int rcno) {
        this.rcno = rcno;
    }

    public String getSpot() {
        return spot;
    }

    public void setSpot(String spot) {
        this.spot = spot;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getCantername() {
        return cantername;
    }

    public void setCantername(String cantername) {
        this.cantername = cantername;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public void validate() {
        if (rcno <= 0) {
            throw new IllegalArgumentException("유효하지 않은 보호 동물 번호입니다.");
        }
        if (spot == null || spot.trim().isEmpty()) {
            throw new IllegalArgumentException("발견 장소는 필수 입력 항목입니다.");
        }
        if (cantername == null || cantername.trim().isEmpty()) {
            throw new IllegalArgumentException("인계 센터 이름은 필수 입력 항목입니다.");
        }
        if (eid == null || eid.trim().isEmpty()) {
            throw new IllegalArgumentException("사원 번호는 필수 입력 항목입니다.");
        }
    }
}
