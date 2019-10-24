import java.sql.*;

import com.mysql.cj.jdbc.Driver;


public class PracticeJDBC {

    public static void main(String[] args) {

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );

            Statement stmt = connection.createStatement();
            String sql = "SELECT * FROM albums limit 5";
            ResultSet resultSet = stmt.executeQuery(sql);

            while(resultSet.next()){
                System.out.println(resultSet.getLong("release_date"));
                System.out.println(resultSet.getString("artist"));
                System.out.println( resultSet.getString("name"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
