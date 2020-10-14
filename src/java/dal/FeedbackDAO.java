/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Feedback;

/**
 *
 * @author thuy
 */
public class FeedbackDAO extends BaseDAO {

    public boolean addFeedback(Feedback fb) {
        String sql = "insert into Feedback values (?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, fb.getName());
            statement.setString(2, fb.getEmail());
            statement.setString(3, fb.getPhone());
            statement.setString(4, fb.getCompany());
            statement.setString(5, fb.getMess());
            statement.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
