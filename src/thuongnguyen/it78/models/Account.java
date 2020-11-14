package thuongnguyen.it78.models;

public class Account {
    private int accountID;
    private String accountEmail;
    private String accountPassword;
    private String accountFullName;
    private String accountNumber;
    private int accountGender;
    private String accountAddress;
    private String accountAvatar;
    private int accountRole;

    public Account() {
    }

    public Account(int accountID, String accountEmail, String accountPassword, String accountFullName, String accountNumber, int accountGender, String accountAddress, String accountAvatar, int accountRole) {
        this.accountID = accountID;
        this.accountEmail = accountEmail;
        this.accountPassword = accountPassword;
        this.accountFullName = accountFullName;
        this.accountNumber = accountNumber;
        this.accountGender = accountGender;
        this.accountAddress = accountAddress;
        this.accountAvatar = accountAvatar;
        this.accountRole = accountRole;
    }

    public Account(String accountEmail, String accountPassword, String accountFullName, String accountNumber, int accountGender, String accountAddress) {
        this.accountEmail = accountEmail;
        this.accountPassword = accountPassword;
        this.accountFullName = accountFullName;
        this.accountNumber = accountNumber;
        this.accountGender = accountGender;
        this.accountAddress = accountAddress;
    }

    public Account(int accountID, String accountFullName, String accountNumber, int accountGender, String accountAddress) {
        this.accountID = accountID;
        this.accountFullName = accountFullName;
        this.accountNumber = accountNumber;
        this.accountGender = accountGender;
        this.accountAddress = accountAddress;
    }



    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getAccountEmail() {
        return accountEmail;
    }

    public void setAccountEmail(String accountEmail) {
        this.accountEmail = accountEmail;
    }

    public String getAccountPassword() {
        return accountPassword;
    }

    public void setAccountPassword(String accountPassword) {
        this.accountPassword = accountPassword;
    }

    public String getAccountFullName() {
        return accountFullName;
    }

    public void setAccountFullName(String accountFullname) {
        this.accountFullName = accountFullname;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public int getAccountGender() {
        return accountGender;
    }

    public void setAccountGender(int accountGender) {
        this.accountGender = accountGender;
    }

    public String getAccountAddress() {
        return accountAddress;
    }

    public void setAccountAddress(String accountAddress) {
        this.accountAddress = accountAddress;
    }

    public String getAccountAvatar() {
        return accountAvatar;
    }

    public void setAccountAvatar(String accountAvatar) {
        this.accountAvatar = accountAvatar;
    }

    public int getAccountRole() {
        return accountRole;
    }

    public void setAccountRole(int accountRole) {
        this.accountRole = accountRole;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountID=" + accountID +
                ", accountEmail='" + accountEmail + '\'' +
                ", accountPassword='" + accountPassword + '\'' +
                ", accountFullName='" + accountFullName + '\'' +
                ", accountNumber='" + accountNumber + '\'' +
                ", accountGender=" + accountGender +
                ", accountAddress='" + accountAddress + '\'' +
                ", accountAvatar='" + accountAvatar + '\'' +
                ", accountRole=" + accountRole +
                '}';
    }
}
