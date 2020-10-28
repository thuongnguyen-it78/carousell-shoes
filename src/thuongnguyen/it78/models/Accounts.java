package thuongnguyen.it78.models;

public class Accounts {
    private int account_id;
    private String account_email;
    private String account_password;
    private String account_fullname;
    private int account_gender;
    private String account_address;
    private String account_avatar;
    private int account_rule;

    public Accounts(int account_id, String account_email, String account_password, String account_fullname, int account_gender, String account_address, String account_avatar, int account_rule) {
        this.account_id = account_id;
        this.account_email = account_email;
        this.account_password = account_password;
        this.account_fullname = account_fullname;
        this.account_gender = account_gender;
        this.account_address = account_address;
        this.account_avatar = account_avatar;
        this.account_rule = account_rule;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getAccount_email() {
        return account_email;
    }

    public void setAccount_email(String account_email) {
        this.account_email = account_email;
    }

    public String getAccount_password() {
        return account_password;
    }

    public void setAccount_password(String account_password) {
        this.account_password = account_password;
    }

    public String getAccount_fullname() {
        return account_fullname;
    }

    public void setAccount_fullname(String account_fullname) {
        this.account_fullname = account_fullname;
    }

    public int getAccount_gender() {
        return account_gender;
    }

    public void setAccount_gender(int account_gender) {
        this.account_gender = account_gender;
    }

    public String getAccount_address() {
        return account_address;
    }

    public void setAccount_address(String account_address) {
        this.account_address = account_address;
    }

    public String getAccount_avatar() {
        return account_avatar;
    }

    public void setAccount_avatar(String account_avatar) {
        this.account_avatar = account_avatar;
    }

    public int getAccount_rule() {
        return account_rule;
    }

    public void setAccount_rule(int account_rule) {
        this.account_rule = account_rule;
    }

    @Override
    public String toString() {
        return "Accounts{" +
                "account_id=" + account_id +
                ", account_email='" + account_email + '\'' +
                ", account_password='" + account_password + '\'' +
                ", account_fullname='" + account_fullname + '\'' +
                ", account_gender=" + account_gender +
                ", account_address='" + account_address + '\'' +
                ", account_avatar='" + account_avatar + '\'' +
                ", account_rule=" + account_rule +
                '}';
    }
}
