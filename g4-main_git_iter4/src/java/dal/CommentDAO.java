package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Comment;

public class CommentDAO extends DBContext {

    public List<Comment> getAllComment() {
        List<Comment> list = new ArrayList<>();
        String sql = "select * from CommentReviewer";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Comment> getAllReport() {
        List<Comment> list = new ArrayList<>();
        String sql = "select * from CommentReviewer";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertComment(String name, String details) {
        String sql = "INSERT INTO swp.`CommentReviewer` (name, details) VALUES (?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, details);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertCommentReport(String name, String details, String report) {
        String sql = "INSERT INTO swp.`CommentReviewer` (name, details, report) VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, details);
            ps.setString(3, report);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteComment(String id) {
        String sql = "delete from CommentReviewer where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Comment getCommentByID(String id) {
        String sql = "select * from CommentReviewer where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Comment(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateComment(String id, String name, String details, String report, String reportDescription) {
        String sql = "update CommentReviewer\n"
                + "set name = ?,\n"
                + "details = ?,\n"
                + "report = ?, \n"
                + "reportDescription = ?\n"
                + "where id = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, details);
            ps.setString(3, report);
            ps.setString(4, reportDescription);
            ps.setString(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        CommentDAO dao = new CommentDAO();
//        List<Comment> list = dao.getAllComment();
//        for (Comment c : list) {
//            System.out.println(c);
//        }
//        List<Comment> list = dao.getAllReport();
//        for (Comment c : list) {
//            System.out.println(c);
//        }
//        dao.insertComment("abc", "abc");
        dao.deleteComment("8");
//        dao.updateComment("7", "hkhkhk", "This is awesome website. I would love to comeback again.", "valid", "correct");
//        Comment c = dao.getCommentByID("6");
//        System.out.println(c);
    }

}
