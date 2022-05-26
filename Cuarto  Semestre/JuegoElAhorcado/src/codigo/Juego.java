
package codigo;

import javax.swing.ImageIcon;


public class Juego extends javax.swing.JFrame {

    public Juego() {
        initComponents();
        this.setLocationRelativeTo(null);
        setIconImage(new ImageIcon(getClass().getResource("/imagenes_extra_2/descarga.jpg")).getImage());
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        medio = new javax.swing.JButton();
        dificil = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        facil = new javax.swing.JButton();
        salir2 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setIconImages(null);
        setMaximumSize(new java.awt.Dimension(540, 490));
        setMinimumSize(new java.awt.Dimension(540, 490));
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(540, 490));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        medio.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        medio.setForeground(new java.awt.Color(255, 255, 255));
        medio.setText("MEDIO");
        medio.setToolTipText("Nivel de dificutad: medio");
        medio.setBorderPainted(false);
        medio.setContentAreaFilled(false);
        medio.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        medio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                medioActionPerformed(evt);
            }
        });
        getContentPane().add(medio, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 430, 140, -1));

        dificil.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        dificil.setForeground(new java.awt.Color(255, 255, 255));
        dificil.setText("DIFÍCIL");
        dificil.setToolTipText("Nivel de dificultad: difícil");
        dificil.setBorderPainted(false);
        dificil.setContentAreaFilled(false);
        dificil.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        dificil.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dificilActionPerformed(evt);
            }
        });
        getContentPane().add(dificil, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 170, -1, -1));

        jLabel1.setFont(new java.awt.Font("Viner Hand ITC", 1, 32)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("SELECCIONA LA DIFICULTAD");
        jLabel1.setToolTipText("");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 50, -1, -1));

        facil.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        facil.setForeground(new java.awt.Color(255, 255, 255));
        facil.setText("FÁCIL");
        facil.setToolTipText("Nivel de dificultad: fácil");
        facil.setBorderPainted(false);
        facil.setContentAreaFilled(false);
        facil.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        facil.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                facilActionPerformed(evt);
            }
        });
        getContentPane().add(facil, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 140, 130, 50));

        salir2.setFont(new java.awt.Font("Chiller", 1, 48)); // NOI18N
        salir2.setForeground(new java.awt.Color(204, 0, 0));
        salir2.setText("X");
        salir2.setToolTipText("Click para salir del juego");
        salir2.setBorderPainted(false);
        salir2.setContentAreaFilled(false);
        salir2.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        salir2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                salir2ActionPerformed(evt);
            }
        });
        getContentPane().add(salir2, new org.netbeans.lib.awtextra.AbsoluteConstraints(480, 0, -1, -1));

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes_extra/d97spro-e73020d0-21fa-46b6-8968-b19728ce9c3b.gif"))); // NOI18N
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 260, -1, -1));

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes_extra_2/def.gif"))); // NOI18N
        jLabel4.setText("jLabel4");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 170, 100, 290));

        jLabel2.setBackground(new java.awt.Color(0, 0, 0));
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes_extra_2/515942b8ee6d77b4de286ba64406a0b5.gif"))); // NOI18N
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 540, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void dificilActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dificilActionPerformed
        
        NivelDificil open= new NivelDificil();
        open.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_dificilActionPerformed

    private void salir2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_salir2ActionPerformed
        
        System.exit(0);
    }//GEN-LAST:event_salir2ActionPerformed

    private void facilActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_facilActionPerformed
        
        NivelFacil open=new NivelFacil();
        open.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_facilActionPerformed

    private void medioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_medioActionPerformed
        
        NivelMedio open=new NivelMedio();
        open.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_medioActionPerformed

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
            java.util.logging.Logger.getLogger(Juego.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Juego.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Juego.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Juego.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Juego().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton dificil;
    private javax.swing.JButton facil;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JButton medio;
    private javax.swing.JButton salir2;
    // End of variables declaration//GEN-END:variables
}
