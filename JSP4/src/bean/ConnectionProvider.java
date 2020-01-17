package bean;  
import java.sql.*;  
import static bean.Provider.*;  
  
public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{    
String dbURL="jdbc:mysql://db4free.net:3306/sanna422?serverTimezone=UTC";                             
String dbID="sanna422";
String dbPassword="dlsehtkfkd422";
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection(dbURL,dbID,dbPassword);  
}catch(Exception e){}  
}  
  
public static Connection getCon(){  
    return con;  
}  
  
}  