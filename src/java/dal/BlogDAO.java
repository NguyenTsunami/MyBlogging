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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;

/**
 *
 * @author thuy
 */
public class BlogDAO extends BaseDAO {

    public ArrayList<String> getCategoryList() {
        ArrayList<String> list = new ArrayList<>();

        String sql = "select distinct category"
                + " from Blog";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("category"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Blog> getTop3RecentBlogs() {
        ArrayList<Blog> list = new ArrayList<>();
        SimpleDateFormat df = new SimpleDateFormat("MMMM dd, yyyy");

        String sql = "select top 3 id, title, img, content, datepub, category"
                + " from [Blog]"
                + " order by datepub desc";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Blog c = new Blog(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("img"),
                        rs.getString("content"),
                        df.format(rs.getDate("datepub").getTime()),
                        rs.getString("category"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Blog getBlogViaID(int id) {
        Blog blog = new Blog();
        SimpleDateFormat df = new SimpleDateFormat("MMMM dd, yyyy");

        String sql = "select id, title, img, content, datepub, category"
                + " from [Blog]"
                + " where id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                blog = new Blog(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("img"),
                        rs.getString("content"),
                        df.format(rs.getDate("datepub").getTime()),
                        rs.getString("category"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return blog;
    }

    public ArrayList<Blog> getBlogsViaCategory(String category) {
        ArrayList<Blog> list = new ArrayList<>();
        SimpleDateFormat df = new SimpleDateFormat("MMMM dd, yyyy");

        String sql = "select id, title, img, content, datepub, category"
                + " from [Blog]"
                + " where category like ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, category);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("img"),
                        rs.getString("content"),
                        df.format(rs.getDate("datepub").getTime()),
                        rs.getString("category"));
                list.add(blog);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
