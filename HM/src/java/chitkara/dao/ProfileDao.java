package chitkara.dao;

public class ProfileDao {
    private int id;
    private String first_name;
    private String last_name;
    private String uid;
    private String email;
    private String mobile_no;
    private String hostel_name;
    private String room_no;
    private String warden_name;
    private String batch;
    private String address;
    
    public int getId(){
        return id;
    }
    public void setId(int id)
    {
        this.id=id;
    }
    public String getFirst_name(){
        return first_name;
    }
    public void setFirst_name(String first_name)
    {
        this.first_name=first_name;
    }
    public String getLast_name(){
        return last_name;
    }
        public void setLast_name(String last_name)
    {
        this.last_name=last_name;
    }
    public String getUid() {
        return uid;
    }
    public void setUid(String uid)
    {
        this.uid=uid;
    }
    
    public String getMobile_no(){
        return mobile_no;
    }
    public void setMobile_no(String mobile_no){
        this.mobile_no=mobile_no;
    }
    public String getHostel_name(){
        return hostel_name;
    }
    public void setHostel_name(String hostel_name){
        this.hostel_name=hostel_name;
    }
    public String getRoom_no(){
        return room_no;
    }
    public void setRoom_no(String room_no){
        this.room_no=room_no;
    }
    public String getWarden_name(){
        return warden_name;
    }
    public void setWarden_name(String warden_name){
        this.warden_name=warden_name;
    }
    public String getBatch(){
        return batch;
    }
    public void setBatch(String batch){
        this.batch=batch;
    }
    
    public String getAddress(){
        return address;
    }
    public void setAddress(String address){
        this.address=address;
    }
    
    
}
