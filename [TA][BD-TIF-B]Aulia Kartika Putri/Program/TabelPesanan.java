/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package coba;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.table.DefaultTableModel;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.awt.Color;

/**
 *
 * @author izzahfaiqputri
 */
public class TabelPesanan extends javax.swing.JFrame {

    /**
     * Creates new form DataPesanan
     */
    public TabelPesanan() {
       initComponents();
        UpdateTabel();
        btnSave.setEnabled(false);        
        btnCancel.setEnabled(false);
        setTextFieldsEditable(false);
        jTable1.getSelectionModel().addListSelectionListener(event -> {
        if (!event.getValueIsAdjusting() && jTable1.getSelectedRow() != -1) {
            loadSelectedRowDataToFields(); 
        }
        ButSearch.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            ButSearchActionPerformed(evt);
        }
    });
    });
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextField_orderid = new javax.swing.JTextField();
        jTextField_userid = new javax.swing.JTextField();
        jTextField_driverid = new javax.swing.JTextField();
        jTextField_timeorder = new javax.swing.JTextField();
        jTextField_amounts = new javax.swing.JTextField();
        jTextField_status = new javax.swing.JTextField();
        ButSearch = new javax.swing.JButton();
        jTextField_Search = new javax.swing.JTextField();
        ButNext = new javax.swing.JButton();
        ButLast = new javax.swing.JButton();
        ButPrev = new javax.swing.JButton();
        ButFirst = new javax.swing.JButton();
        btnNew = new javax.swing.JButton();
        btnEdit2 = new javax.swing.JButton();
        btnDel = new javax.swing.JButton();
        btnSave = new javax.swing.JButton();
        btnCancel = new javax.swing.JButton();
        btnBack = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(244, 194, 194));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "order_id", "time_order", "order_status", "user_id", "driver_id", "amounts"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jLabel1.setText("ID Pesanan");

        jLabel2.setText("Waktu Pesan");

        jLabel3.setText("ID User");

        jLabel4.setText("Status");

        jLabel5.setText("Jumlah Pesanan");

        jLabel6.setText("ID Driver");

        jTextField_orderid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField_orderidActionPerformed(evt);
            }
        });

        jTextField_driverid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField_driveridActionPerformed(evt);
            }
        });

        ButSearch.setText("Search");
        ButSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButSearchActionPerformed(evt);
            }
        });

        jTextField_Search.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField_SearchActionPerformed(evt);
            }
        });

        ButNext.setText(">");
        ButNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButNextActionPerformed(evt);
            }
        });

        ButLast.setText(">>");
        ButLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButLastActionPerformed(evt);
            }
        });

        ButPrev.setText("<");
        ButPrev.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButPrevActionPerformed(evt);
            }
        });

        ButFirst.setText("<<");
        ButFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ButFirstActionPerformed(evt);
            }
        });

        btnNew.setText("New");
        btnNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNewActionPerformed(evt);
            }
        });

        btnEdit2.setText("Edit");
        btnEdit2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEdit2ActionPerformed(evt);
            }
        });

        btnDel.setText("Delete");
        btnDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDelActionPerformed(evt);
            }
        });

        btnSave.setText("Save");
        btnSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSaveActionPerformed(evt);
            }
        });

        btnCancel.setText("Cancel");
        btnCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelActionPerformed(evt);
            }
        });

        btnBack.setBackground(new java.awt.Color(244, 194, 194));
        btnBack.setText("<< back");
        btnBack.setContentAreaFilled(false);
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(37, 37, 37)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel6)
                                    .addComponent(jLabel3))
                                .addGap(18, 18, 18)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jTextField_userid, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jTextField_orderid, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jTextField_driverid, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(ButFirst, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(ButPrev, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(78, 78, 78)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel5)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel4))
                                .addGap(18, 18, 18))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addGap(87, 87, 87)
                                .addComponent(btnNew)
                                .addGap(18, 18, 18)
                                .addComponent(btnEdit2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btnDel)
                                .addGap(110, 110, 110)))
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 57, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btnCancel))
                            .addComponent(jTextField_status, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jTextField_timeorder, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(ButNext, javax.swing.GroupLayout.PREFERRED_SIZE, 53, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(27, 27, 27)
                                .addComponent(ButLast, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jTextField_amounts, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(btnBack)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 615, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jTextField_Search, javax.swing.GroupLayout.PREFERRED_SIZE, 531, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(ButSearch)))))
                .addContainerGap(21, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ButSearch)
                    .addComponent(jTextField_Search, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(13, 13, 13)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(ButFirst)
                            .addComponent(ButPrev)
                            .addComponent(ButNext)
                            .addComponent(ButLast))
                        .addGap(19, 19, 19)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField_orderid, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1)
                            .addComponent(jTextField_status, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(15, 15, 15))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel4)
                        .addGap(18, 18, 18)))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jTextField_timeorder, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel2))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jTextField_userid, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel3)))
                .addGap(17, 17, 17)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(jTextField_amounts, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextField_driverid, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addGap(17, 17, 17)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnNew)
                    .addComponent(btnEdit2)
                    .addComponent(btnDel)
                    .addComponent(btnSave)
                    .addComponent(btnCancel))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnBack)
                .addContainerGap(15, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ButSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButSearchActionPerformed
            String searchQuery = jTextField_Search.getText().trim(); 
            String connectionUrl =
            "jdbc:sqlserver://GLADYSABELVG:1433;" +
            "database=SAMFOOD;" +
            "user=Gladys Abel;" +
            "password=231525;" +
            "encrypt=true;" +
            "trustServerCertificate=true;" +
            "loginTimeout=30;";
    try (Connection connection = DriverManager.getConnection(connectionUrl);
         PreparedStatement statement = connection.prepareStatement(
                 searchQuery.isEmpty() ? "SELECT * FROM orders" : "SELECT * FROM orders WHERE order_id LIKE ?"
         )) {

        if (!searchQuery.isEmpty()) {
            statement.setString(1, "%" + searchQuery + "%"); 
        }

        try (ResultSet r = statement.executeQuery()) {
            DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
            model.setRowCount(0); 

            while (r.next()) {
              
                Object[] row = {
                    r.getInt("order_id"),
                    r.getString("User_Id"),
                    r.getString("driver_id"),
                    r.getString("order_status"),
                    r.getString("time_order"),
                    r.getString("amounts"),
                };
                model.addRow(row);
                
            }

            if (model.getRowCount() > 0) {
                currentRow = 0; 
                jTable1.setRowSelectionInterval(currentRow, currentRow);
                updateFieldsTabel();
            } else {
                clearTextFields(); 
            }

            updateTombol(); 
        }
    } catch (SQLException e) {
        e.printStackTrace();
        javax.swing.JOptionPane.showMessageDialog(this, "Terjadi kesalahan saat mencari data.", "Error", javax.swing.JOptionPane.ERROR_MESSAGE);
    }
    }//GEN-LAST:event_ButSearchActionPerformed

    private void ButNextActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButNextActionPerformed
        if (currentRow < jTable1.getRowCount() - 1) { 
        currentRow++;
        jTable1.setRowSelectionInterval(currentRow, currentRow); 
        updateFieldsTabel();
    }
    updateTombol(); 
    }//GEN-LAST:event_ButNextActionPerformed

    private void ButLastActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButLastActionPerformed
        currentRow = jTable1.getRowCount() - 1; 
        jTable1.setRowSelectionInterval(currentRow, currentRow); 
        updateFieldsTabel(); 
        updateTombol();      // TODO add your handling code here:
    }//GEN-LAST:event_ButLastActionPerformed

    private void ButPrevActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButPrevActionPerformed
        if (currentRow > 0) { 
        currentRow--;
        jTable1.setRowSelectionInterval(currentRow, currentRow); 
        updateFieldsTabel(); 
    }
    updateTombol(); 
    }//GEN-LAST:event_ButPrevActionPerformed

    private void ButFirstActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ButFirstActionPerformed
    currentRow = 0; 
    jTable1.setRowSelectionInterval(currentRow, currentRow); 
    updateFieldsTabel(); 
    updateTombol(); 
    }//GEN-LAST:event_ButFirstActionPerformed

    private void btnNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNewActionPerformed
        toggleadd = true; 
        setTextFieldsEditable(true);
        clearTextFields();
        btnSave.setEnabled(true);        
        btnCancel.setEnabled(true);
    }//GEN-LAST:event_btnNewActionPerformed

    private void btnEditActionPerformed(java.awt.event.ActionEvent evt) {                                        
        
    }                                       
private boolean toggleDel = false;
    private void btnDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDelActionPerformed
        btnSave.setEnabled(true);
    btnCancel.setEnabled(true);

   
    btnNew.setEnabled(false);
    btnEdit2.setEnabled(false);
    btnDel.setEnabled(false);

    
    jTextField_orderid.setForeground(Color.RED);
    jTextField_userid.setForeground(Color.RED);
    jTextField_driverid.setForeground(Color.RED);
    jTextField_status.setForeground(Color.RED);
    jTextField_timeorder.setForeground(Color.RED);
    jTextField_amounts.setForeground(Color.RED);

    toggleDel = true; 
    }//GEN-LAST:event_btnDelActionPerformed

    private void btnSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSaveActionPerformed
        if (toggleadd) { 
        String orderid = jTextField_orderid.getText().trim();
        String userid = jTextField_userid.getText().trim();
        String driverid = jTextField_driverid.getText().trim();
        String status = jTextField_status.getText().trim();
        String timeorder = jTextField_timeorder.getText().trim();
        String amounts = jTextField_amounts.getText().trim();
       
        if (orderid.isEmpty() || userid.isEmpty() || driverid.isEmpty() || status.isEmpty() || timeorder.isEmpty()|| amounts.isEmpty()) {
            javax.swing.JOptionPane.showMessageDialog(this, "Semua kolom harus diisi!", "Peringatan", javax.swing.JOptionPane.WARNING_MESSAGE);
            return;
        }

        String connectionUrl =
            "jdbc:sqlserver://GLADYSABELVG:1433;" +
            "database=SAMFOOD;" +
            "user=Gladys Abel;" +
            "password=231525;" +
            "encrypt=true;" +
            "trustServerCertificate=true;" +
            "loginTimeout=30;";
        String insertQuery = "INSERT INTO orders (order_id, time_order, order_status, User_Id, driver_id, amounts) VALUES (?, ?, ?, ?, ?,?)";

        try (Connection connection = DriverManager.getConnection(connectionUrl);
             PreparedStatement s = connection.prepareStatement(insertQuery)) {

            
            s.setInt(1, Integer.parseInt(orderid));
            s.setInt(2, Integer.parseInt(userid));
            s.setInt(3, Integer.parseInt(driverid));
            s.setString(4, status);
            s.setString(5, timeorder);
            s.setInt(6, Integer.parseInt(amounts));

           
            s.executeUpdate();
            javax.swing.JOptionPane.showMessageDialog(this, "Data berhasil ditambahkan!", "Sukses", javax.swing.JOptionPane.INFORMATION_MESSAGE);

            
            toggleadd = false;
            btnSave.setEnabled(false);
            btnCancel.setEnabled(false);
            jTextField_userid.setEditable(false);
            UpdateTabel(); 
        } catch (SQLException e) {
            e.printStackTrace();
            javax.swing.JOptionPane.showMessageDialog(this, "Terjadi kesalahan saat menambahkan data.", "Error", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }else if (toggleEdit) {
        
        updateData();
        
        }else if (toggleDel) { 
            String idUser = jTextField_userid.getText().trim();

            if (idUser.isEmpty()) {
                javax.swing.JOptionPane.showMessageDialog(this, "Tidak ada data yang dipilih untuk dihapus.", "Peringatan", javax.swing.JOptionPane.WARNING_MESSAGE);
                return;
        }

        String deleteQuery = "DELETE FROM orders WHERE order_id= ?";
        String connectionUrl =
            "jdbc:sqlserver://GLADYSABELVG:1433;" +
            "database=SAMFOOD;" +
            "user=Gladys Abel;" +
            "password=231525;" +
            "encrypt=true;" +
            "trustServerCertificate=true;" +
            "loginTimeout=30;";
        try (Connection connection = DriverManager.getConnection(connectionUrl);
             PreparedStatement statement = connection.prepareStatement(deleteQuery)) {

           
            statement.setInt(1, Integer.parseInt(idUser));

           
            statement.executeUpdate();
            javax.swing.JOptionPane.showMessageDialog(this, "Data berhasil dihapus!", "Sukses", javax.swing.JOptionPane.INFORMATION_MESSAGE);

           
            toggleDel = false;
            btnSave.setEnabled(false);
            btnCancel.setEnabled(false);
            resetTextFieldColors();
             btnNew.setEnabled(true);
            btnEdit2.setEnabled(true);
            btnDel.setEnabled(true);
            UpdateTabel();
        } catch (SQLException e) {
            e.printStackTrace();
            javax.swing.JOptionPane.showMessageDialog(this, "Terjadi kesalahan saat menghapus data.", "Error", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }
        resetTextFieldColors();
        setTextFieldsEditable(false); 

                                               
    }//GEN-LAST:event_btnSaveActionPerformed

    private void btnCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelActionPerformed
        
    }//GEN-LAST:event_btnCancelActionPerformed
    private boolean toggleEdit = false;
    private void btnEdit2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEdit2ActionPerformed
        if (jTable1.getSelectedRow() != -1) { 
            jTextField_orderid.setForeground(Color.RED);
            jTextField_userid.setForeground(Color.RED);
            jTextField_driverid.setForeground(Color.RED);
            jTextField_status.setForeground(Color.RED);
            jTextField_timeorder.setForeground(Color.RED);
            jTextField_amounts.setForeground(Color.RED);
            toggleEdit = true;
            btnSave.setEnabled(true);
            btnCancel.setEnabled(true); 
            setTextFieldsEditable(true);
            jTextField_userid.setEditable(false); 
        } else {
            javax.swing.JOptionPane.showMessageDialog(this, "Silakan pilih data yang ingin diedit.", "Edit Data", javax.swing.JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btnEdit2ActionPerformed
                                

    private void jTextField_orderidActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField_orderidActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField_orderidActionPerformed

    private void jTextField_driveridActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField_driveridActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField_driveridActionPerformed

    private void jTextField_SearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField_SearchActionPerformed

    }//GEN-LAST:event_jTextField_SearchActionPerformed

    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
        MenuAdmin menuadmin1 = new MenuAdmin();
        menuadmin1.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnBackActionPerformed

    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(TabelPesanan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TabelPesanan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TabelPesanan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TabelPesanan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new TabelPesanan().setVisible(true);
                String connectionUrl =
            "jdbc:sqlserver://GLADYSABELVG:1433;" +
            "database=SAMFOOD;" +
            "user=Gladys Abel;" +
            "password=231525;" +
            "encrypt=true;" +
            "trustServerCertificate=true;" +
            "loginTimeout=30;";
        try {
           
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

          
            Connection connection = DriverManager.getConnection(connectionUrl);

            System.out.println("Koneksi berhasil!");

            
            connection.close();

        } catch (ClassNotFoundException e) {
            System.err.println("Driver tidak ditemukan: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Koneksi gagal: " + e.getMessage());
        }
            }
        });
    }

    private boolean toggleNavigating = false; 
    ResultSet allRS;
    boolean toggleInserted;
    private int currentRow = 0; 
    private DefaultTableModel searchModel; 
    private boolean toggleadd = false;
    
    private void UpdateTabel() {
    String query = "SELECT * FROM orders"; 
    String connectionUrl =
            "jdbc:sqlserver://GLADYSABELVG:1433;" +
            "database=SAMFOOD;" +
            "user=Gladys Abel;" +
            "password=231525;" +
            "encrypt=true;" +
            "trustServerCertificate=true;" +
            "loginTimeout=30;";
    try {
        Connection connection = DriverManager.getConnection(connectionUrl);
        PreparedStatement statement = connection.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        allRS = statement.executeQuery(); 

        
        DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
        model.setRowCount(0); 

        while (allRS.next()) {
            Object[] row = {
                allRS.getInt("order_id"), 
                allRS.getString("time_order"),
                allRS.getString("order_status"),
                allRS.getInt("User_Id"),
                allRS.getInt("driver_id"),
                allRS.getInt("amounts")
            };
            model.addRow(row);
        }

        
        if (model.getRowCount() > 0) {
            allRS.first(); 
            loadSelectedRowDataToFields(); 
            
            ButPrev.setEnabled(false);
            ButFirst.setEnabled(false);
            ButNext.setEnabled(true);
            ButLast.setEnabled(true);
        }

    } catch (SQLException e) {
        System.err.println("Error saat mengisi tabel: " + e.getMessage());
    }
}
    private void loadSelectedRowDataToFields() {
    try {
       
        if (allRS != null && !allRS.isAfterLast() && !allRS.isBeforeFirst()) {
            jTextField_orderid.setText(allRS.getString("order_id")); 
            jTextField_userid.setText(allRS.getString("User_Id")); 
            jTextField_driverid.setText(allRS.getString("driver_id")); 
            jTextField_status.setText(allRS.getString("order_status")); 
            jTextField_timeorder.setText(allRS.getString("time_order")); 
            jTextField_amounts.setText(allRS.getString("amounts")); 
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    
}
    private void updateData() {
        String orderid = jTextField_orderid.getText().trim();
        String userid = jTextField_userid.getText().trim();
        String driverid = jTextField_driverid.getText().trim();
        String status = jTextField_status.getText().trim();
        String timeorder = jTextField_timeorder.getText().trim();
        String amounts = jTextField_amounts.getText().trim();

    if (orderid.isEmpty() || userid.isEmpty() || driverid.isEmpty() || status.isEmpty() || timeorder.isEmpty() || amounts.isEmpty()) {
        javax.swing.JOptionPane.showMessageDialog(this, "Semua kolom harus diisi!", "Peringatan", javax.swing.JOptionPane.WARNING_MESSAGE);
        return;
    }
    }
    private void clearTextFields() {
        jTextField_orderid.setText("");
        jTextField_userid.setText("");
        jTextField_driverid.setText("");
        jTextField_status.setText("");
        jTextField_timeorder.setText("");
        jTextField_amounts.setText("");
    }
    private void resetTextFieldColors() {
    jTextField_orderid.setForeground(Color.BLACK);
    jTextField_userid.setForeground(Color.BLACK);
    jTextField_driverid.setForeground(Color.BLACK);
    jTextField_status.setForeground(Color.BLACK);
    jTextField_timeorder.setForeground(Color.BLACK);
    jTextField_amounts.setForeground(Color.BLACK);
}   
    private void updateTombol() {
    ButNext.setEnabled(currentRow < jTable1.getRowCount() - 1);
    ButPrev.setEnabled(currentRow > 0);
    ButLast.setEnabled(currentRow < jTable1.getRowCount() - 1);
    ButFirst.setEnabled(currentRow > 0);
}
    private void updateFieldsTabel() {
   int selectedRow = jTable1.getSelectedRow();
    if (selectedRow != -1) {
        jTextField_orderid.setText(jTable1.getValueAt(selectedRow, 0) != null ? jTable1.getValueAt(selectedRow, 0).toString() : "");
        jTextField_userid.setText(jTable1.getValueAt(selectedRow, 3) != null ? jTable1.getValueAt(selectedRow, 3).toString() : "");
        jTextField_driverid.setText(jTable1.getValueAt(selectedRow, 4) != null ? jTable1.getValueAt(selectedRow, 4).toString() : "");
        jTextField_status.setText(jTable1.getValueAt(selectedRow, 2) != null ? jTable1.getValueAt(selectedRow, 2).toString() : "");
        jTextField_timeorder.setText(jTable1.getValueAt(selectedRow, 1) != null ? jTable1.getValueAt(selectedRow, 1).toString() : "");
        jTextField_amounts.setText(jTable1.getValueAt(selectedRow, 5) != null ? jTable1.getValueAt(selectedRow, 5).toString() : "");
    }
}
    private void setTextFieldsEditable(boolean editable) {
    jTextField_orderid.setEditable(editable);
    jTextField_userid.setEditable(editable);
    jTextField_driverid.setEditable(editable);
    jTextField_status.setEditable(editable);
    jTextField_timeorder.setEditable(editable);
    jTextField_amounts.setEditable(editable);
}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton ButFirst;
    private javax.swing.JButton ButLast;
    private javax.swing.JButton ButNext;
    private javax.swing.JButton ButPrev;
    private javax.swing.JButton ButSearch;
    private javax.swing.JButton btnBack;
    private javax.swing.JButton btnCancel;
    private javax.swing.JButton btnDel;
    private javax.swing.JButton btnEdit2;
    private javax.swing.JButton btnNew;
    private javax.swing.JButton btnSave;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField_Search;
    private javax.swing.JTextField jTextField_amounts;
    private javax.swing.JTextField jTextField_driverid;
    private javax.swing.JTextField jTextField_orderid;
    private javax.swing.JTextField jTextField_status;
    private javax.swing.JTextField jTextField_timeorder;
    private javax.swing.JTextField jTextField_userid;
    // End of variables declaration//GEN-END:variables
}
     
