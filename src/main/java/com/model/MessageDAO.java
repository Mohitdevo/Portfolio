package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBconnection;

public class MessageDAO {

    public boolean saveMessage(MessageData md) {

        boolean status = false;

        try (Connection con =
                DBconnection.getConnection();

             PreparedStatement ps =
                con.prepareStatement(
                "INSERT INTO contact_messages(name,email,message) VALUES(?,?,?)")) {

            ps.setString(1, md.getName());
            ps.setString(2, md.getEmail());
            ps.setString(3, md.getMessage());

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public List<MessageData> viewMessages() {

        List<MessageData> list =new ArrayList<>();
                
        try (Connection con =DBconnection.getConnection();
                
             PreparedStatement ps =con.prepareStatement(
                
                "SELECT * FROM contact_messages ORDER BY message_time DESC")) {

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                MessageData md =
                        new MessageData();

                md.setSno(rs.getInt("sno"));
                md.setName(rs.getString("name"));
                md.setEmail(rs.getString("email"));
                md.setMessage(rs.getString("message"));
                md.setMessageTime(
                        rs.getTimestamp("message_time"));

                list.add(md);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public boolean deleteMessage(int sno) {

        boolean status = false;

        try (Connection con =
                DBconnection.getConnection();

             PreparedStatement ps =
                con.prepareStatement(
                "DELETE FROM contact_messages WHERE sno=?")) {

            ps.setInt(1, sno);

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}