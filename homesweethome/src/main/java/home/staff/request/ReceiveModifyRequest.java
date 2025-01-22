package home.staff.request;

import home.staff.dto.ReceiveVO;

public class ReceiveModifyRequest {

    private int rcno; // 보호 동물 번호 (필수)
    private String spot; // 발견 장소
    private String picture; // 발견 사진 URL 또는 경로
    private String cantername; // 인계 센터 이름
    private String eid; // 사원 번호

    // 유효성 검증
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

    // ReceiveVO로 변환
    public ReceiveVO toReceiveVO() {
        ReceiveVO receive = new ReceiveVO();
        receive.setRcno(rcno); // rcno는 필수
        receive.setSpot(spot);
        receive.setPicture(picture);
        receive.setCantername(cantername);
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
}
