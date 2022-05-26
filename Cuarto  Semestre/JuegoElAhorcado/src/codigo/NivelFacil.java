
package codigo;

import java.util.HashSet;
import java.applet.AudioClip;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

public class NivelFacil extends javax.swing.JFrame {

    private int j,num,i; // NUM - PALABRA DEL ARREGLO J- NUMERO DE INTENTOS
    private int inte; // CUANTAS LETRAS SE HAN ADIVIDANO
    private String palabras[]={"CAMINO","OBISPO","RABANO","BECADO","CEBRAS","FUTBOL","FACTOR","TELECO","DECANO","DANZAS","ESPAÑA","ITALIA","CABLES","DIODOS"};
    private Heredar mus;
    public NivelFacil() {  
       initComponents();
       mus=new Heredar();
       setIconImage(new ImageIcon(getClass().getResource("/imagenes_extra_2/descarga.jpg")).getImage());
       letra_uno.setText("_");
       letra_dos.setText("_");
       letra_tres.setText("_");
       letra_cuatro.setText("_");
       letra_cinco.setText("_");
       letra_seis.setText("_");
       this.setLocationRelativeTo(null);
       j=15; // CANTIDAD DE INTENTOS
       i=1;
       inte=0; // CANTIDAD DE LETRAS ADIVINADAS
       numero.setText(String.valueOf(j)); // MUESTRA CUANTOS INTENTOS TIENE
       back.setEnabled(false); // BOTON VOLVER A MENU
       back.setVisible(false);
       crear();
    }
    
    public void crear(){
        
        num=(int) Math.floor(Math.random()*(14)+0); // PARA DETERMINAR QUE PALABRA SE VA A USAR
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        letraA = new javax.swing.JButton();
        letraB = new javax.swing.JButton();
        letraC = new javax.swing.JButton();
        letraD = new javax.swing.JButton();
        letraE = new javax.swing.JButton();
        letraF = new javax.swing.JButton();
        letraG = new javax.swing.JButton();
        letraH = new javax.swing.JButton();
        letraI = new javax.swing.JButton();
        letraJ = new javax.swing.JButton();
        letraK = new javax.swing.JButton();
        letraL = new javax.swing.JButton();
        letraM = new javax.swing.JButton();
        letraN = new javax.swing.JButton();
        letraNN = new javax.swing.JButton();
        letraO = new javax.swing.JButton();
        letraP = new javax.swing.JButton();
        letraQ = new javax.swing.JButton();
        letraR = new javax.swing.JButton();
        letraS = new javax.swing.JButton();
        letraT = new javax.swing.JButton();
        letraU = new javax.swing.JButton();
        letraV = new javax.swing.JButton();
        letraW = new javax.swing.JButton();
        letraX = new javax.swing.JButton();
        letraY = new javax.swing.JButton();
        letraZ = new javax.swing.JButton();
        numero = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        letra_uno = new javax.swing.JLabel();
        letra_dos = new javax.swing.JLabel();
        letra_tres = new javax.swing.JLabel();
        letra_cuatro = new javax.swing.JLabel();
        letra_cinco = new javax.swing.JLabel();
        letra_seis = new javax.swing.JLabel();
        back = new javax.swing.JButton();
        intentos = new javax.swing.JLabel();
        Imagen = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(641, 535));
        setMinimumSize(new java.awt.Dimension(641, 353));
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(641, 535));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setOpaque(false);
        jPanel1.setLayout(new java.awt.GridLayout(9, 3));

        letraA.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraA.setText("A");
        letraA.setToolTipText("");
        letraA.setBorderPainted(false);
        letraA.setContentAreaFilled(false);
        letraA.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraA.setDefaultCapable(false);
        letraA.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraAActionPerformed(evt);
            }
        });
        jPanel1.add(letraA);

        letraB.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraB.setText("B");
        letraB.setToolTipText("");
        letraB.setBorderPainted(false);
        letraB.setContentAreaFilled(false);
        letraB.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraB.setDefaultCapable(false);
        letraB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraBActionPerformed(evt);
            }
        });
        jPanel1.add(letraB);

        letraC.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraC.setText("C");
        letraC.setToolTipText("");
        letraC.setBorderPainted(false);
        letraC.setContentAreaFilled(false);
        letraC.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraC.setDefaultCapable(false);
        letraC.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraCActionPerformed(evt);
            }
        });
        jPanel1.add(letraC);

        letraD.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraD.setText("D");
        letraD.setToolTipText("");
        letraD.setBorderPainted(false);
        letraD.setContentAreaFilled(false);
        letraD.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraD.setDefaultCapable(false);
        letraD.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraDActionPerformed(evt);
            }
        });
        jPanel1.add(letraD);

        letraE.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraE.setText("E");
        letraE.setToolTipText("");
        letraE.setBorderPainted(false);
        letraE.setContentAreaFilled(false);
        letraE.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraE.setDefaultCapable(false);
        letraE.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraEActionPerformed(evt);
            }
        });
        jPanel1.add(letraE);

        letraF.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraF.setText("F");
        letraF.setToolTipText("");
        letraF.setBorderPainted(false);
        letraF.setContentAreaFilled(false);
        letraF.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraF.setDefaultCapable(false);
        letraF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraFActionPerformed(evt);
            }
        });
        jPanel1.add(letraF);

        letraG.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraG.setText("G");
        letraG.setToolTipText("");
        letraG.setBorderPainted(false);
        letraG.setContentAreaFilled(false);
        letraG.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraG.setDefaultCapable(false);
        letraG.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraGActionPerformed(evt);
            }
        });
        jPanel1.add(letraG);

        letraH.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraH.setText("H");
        letraH.setToolTipText("");
        letraH.setBorderPainted(false);
        letraH.setContentAreaFilled(false);
        letraH.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraH.setDefaultCapable(false);
        letraH.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraHActionPerformed(evt);
            }
        });
        jPanel1.add(letraH);

        letraI.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraI.setText("I");
        letraI.setToolTipText("");
        letraI.setBorderPainted(false);
        letraI.setContentAreaFilled(false);
        letraI.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraI.setDefaultCapable(false);
        letraI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraIActionPerformed(evt);
            }
        });
        jPanel1.add(letraI);

        letraJ.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraJ.setText("J");
        letraJ.setToolTipText("");
        letraJ.setBorderPainted(false);
        letraJ.setContentAreaFilled(false);
        letraJ.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraJ.setDefaultCapable(false);
        letraJ.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraJActionPerformed(evt);
            }
        });
        jPanel1.add(letraJ);

        letraK.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraK.setText("K");
        letraK.setToolTipText("");
        letraK.setBorderPainted(false);
        letraK.setContentAreaFilled(false);
        letraK.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraK.setDefaultCapable(false);
        letraK.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraKActionPerformed(evt);
            }
        });
        jPanel1.add(letraK);

        letraL.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraL.setText("L");
        letraL.setToolTipText("");
        letraL.setBorderPainted(false);
        letraL.setContentAreaFilled(false);
        letraL.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraL.setDefaultCapable(false);
        letraL.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraLActionPerformed(evt);
            }
        });
        jPanel1.add(letraL);

        letraM.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraM.setText("M");
        letraM.setToolTipText("");
        letraM.setBorderPainted(false);
        letraM.setContentAreaFilled(false);
        letraM.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraM.setDefaultCapable(false);
        letraM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraMActionPerformed(evt);
            }
        });
        jPanel1.add(letraM);

        letraN.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraN.setText("N");
        letraN.setToolTipText("");
        letraN.setBorderPainted(false);
        letraN.setContentAreaFilled(false);
        letraN.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraN.setDefaultCapable(false);
        letraN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraNActionPerformed(evt);
            }
        });
        jPanel1.add(letraN);

        letraNN.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraNN.setText("Ñ");
        letraNN.setToolTipText("");
        letraNN.setBorderPainted(false);
        letraNN.setContentAreaFilled(false);
        letraNN.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraNN.setDefaultCapable(false);
        letraNN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraNNActionPerformed(evt);
            }
        });
        jPanel1.add(letraNN);

        letraO.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraO.setText("O");
        letraO.setToolTipText("");
        letraO.setBorderPainted(false);
        letraO.setContentAreaFilled(false);
        letraO.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraO.setDefaultCapable(false);
        letraO.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraOActionPerformed(evt);
            }
        });
        jPanel1.add(letraO);

        letraP.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraP.setText("P");
        letraP.setToolTipText("");
        letraP.setBorderPainted(false);
        letraP.setContentAreaFilled(false);
        letraP.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraP.setDefaultCapable(false);
        letraP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraPActionPerformed(evt);
            }
        });
        jPanel1.add(letraP);

        letraQ.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraQ.setText("Q");
        letraQ.setToolTipText("");
        letraQ.setBorderPainted(false);
        letraQ.setContentAreaFilled(false);
        letraQ.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraQ.setDefaultCapable(false);
        letraQ.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraQActionPerformed(evt);
            }
        });
        jPanel1.add(letraQ);

        letraR.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraR.setText("R");
        letraR.setToolTipText("");
        letraR.setBorderPainted(false);
        letraR.setContentAreaFilled(false);
        letraR.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraR.setDefaultCapable(false);
        letraR.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraRActionPerformed(evt);
            }
        });
        jPanel1.add(letraR);

        letraS.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraS.setText("S");
        letraS.setToolTipText("");
        letraS.setBorderPainted(false);
        letraS.setContentAreaFilled(false);
        letraS.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraS.setDefaultCapable(false);
        letraS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraSActionPerformed(evt);
            }
        });
        jPanel1.add(letraS);

        letraT.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraT.setText("T");
        letraT.setToolTipText("");
        letraT.setBorderPainted(false);
        letraT.setContentAreaFilled(false);
        letraT.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraT.setDefaultCapable(false);
        letraT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraTActionPerformed(evt);
            }
        });
        jPanel1.add(letraT);

        letraU.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraU.setText("U");
        letraU.setToolTipText("");
        letraU.setBorderPainted(false);
        letraU.setContentAreaFilled(false);
        letraU.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraU.setDefaultCapable(false);
        letraU.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraUActionPerformed(evt);
            }
        });
        jPanel1.add(letraU);

        letraV.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraV.setText("V");
        letraV.setToolTipText("");
        letraV.setBorderPainted(false);
        letraV.setContentAreaFilled(false);
        letraV.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraV.setDefaultCapable(false);
        letraV.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraVActionPerformed(evt);
            }
        });
        jPanel1.add(letraV);

        letraW.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraW.setText("W");
        letraW.setToolTipText("");
        letraW.setBorderPainted(false);
        letraW.setContentAreaFilled(false);
        letraW.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraW.setDefaultCapable(false);
        letraW.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraWActionPerformed(evt);
            }
        });
        jPanel1.add(letraW);

        letraX.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraX.setText("X");
        letraX.setToolTipText("");
        letraX.setBorderPainted(false);
        letraX.setContentAreaFilled(false);
        letraX.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraX.setDefaultCapable(false);
        letraX.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraXActionPerformed(evt);
            }
        });
        jPanel1.add(letraX);

        letraY.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraY.setText("Y");
        letraY.setToolTipText("");
        letraY.setBorderPainted(false);
        letraY.setContentAreaFilled(false);
        letraY.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraY.setDefaultCapable(false);
        letraY.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraYActionPerformed(evt);
            }
        });
        jPanel1.add(letraY);

        letraZ.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letraZ.setText("Z");
        letraZ.setToolTipText("");
        letraZ.setBorderPainted(false);
        letraZ.setContentAreaFilled(false);
        letraZ.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraZ.setDefaultCapable(false);
        letraZ.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraZActionPerformed(evt);
            }
        });
        jPanel1.add(letraZ);

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 116, 300, 410));

        numero.setFont(new java.awt.Font("Viner Hand ITC", 1, 18)); // NOI18N
        numero.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        numero.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        getContentPane().add(numero, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 480, 310, 50));

        jButton1.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        jButton1.setText("X");
        jButton1.setBorderPainted(false);
        jButton1.setContentAreaFilled(false);
        jButton1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(590, 0, -1, 50));

        jPanel2.setOpaque(false);
        jPanel2.setLayout(new java.awt.GridLayout(1, 0));

        letra_uno.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letra_uno.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel2.add(letra_uno);

        letra_dos.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letra_dos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel2.add(letra_dos);

        letra_tres.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letra_tres.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel2.add(letra_tres);

        letra_cuatro.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letra_cuatro.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel2.add(letra_cuatro);

        letra_cinco.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letra_cinco.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel2.add(letra_cinco);

        letra_seis.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        letra_seis.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel2.add(letra_seis);

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 372, 50));

        back.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        back.setText("Volver al menu");
        back.setBorderPainted(false);
        back.setContentAreaFilled(false);
        back.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backActionPerformed(evt);
            }
        });
        getContentPane().add(back, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 50, 220, 50));

        intentos.setFont(new java.awt.Font("Viner Hand ITC", 1, 24)); // NOI18N
        intentos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        intentos.setText("Numero de intentos");
        getContentPane().add(intentos, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 430, 270, 50));

        Imagen.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(Imagen, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 90, 230, 345));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes_extra_2/fad.gif"))); // NOI18N
        jLabel1.setText("jLabel1");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(-150, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void letraNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraNActionPerformed
        
        analisis(letraN.getText().charAt(0)); // LLAMADO DE FUNCION Y CONVERSION DE STRING A CHAR
    }//GEN-LAST:event_letraNActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        
        System.exit(0);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void letraAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraAActionPerformed
       
        analisis(letraA.getText().charAt(0));  
    }//GEN-LAST:event_letraAActionPerformed

    private void letraIActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraIActionPerformed
        
        analisis(letraI.getText().charAt(0));
    }//GEN-LAST:event_letraIActionPerformed

    private void letraNNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraNNActionPerformed
        
        analisis(letraNN.getText().charAt(0));
    }//GEN-LAST:event_letraNNActionPerformed

    private void letraBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraBActionPerformed
        
        analisis(letraB.getText().charAt(0)); 
    }//GEN-LAST:event_letraBActionPerformed

    private void letraCActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraCActionPerformed
        
        analisis(letraC.getText().charAt(0)); 
    }//GEN-LAST:event_letraCActionPerformed

    private void letraDActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraDActionPerformed
        
        analisis(letraD.getText().charAt(0));
    }//GEN-LAST:event_letraDActionPerformed

    private void letraEActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraEActionPerformed
         
        analisis(letraE.getText().charAt(0));
    }//GEN-LAST:event_letraEActionPerformed

    private void letraFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraFActionPerformed
        
        analisis(letraF.getText().charAt(0));
    }//GEN-LAST:event_letraFActionPerformed

    private void letraGActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraGActionPerformed
        
        analisis(letraG.getText().charAt(0));
    }//GEN-LAST:event_letraGActionPerformed

    private void letraHActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraHActionPerformed
        
        analisis(letraH.getText().charAt(0));
    }//GEN-LAST:event_letraHActionPerformed

    private void letraJActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraJActionPerformed
       
        analisis(letraJ.getText().charAt(0));
    }//GEN-LAST:event_letraJActionPerformed

    private void letraOActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraOActionPerformed
        
        analisis(letraO.getText().charAt(0));
    }//GEN-LAST:event_letraOActionPerformed

    private void letraKActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraKActionPerformed
        
        analisis(letraK.getText().charAt(0));
    }//GEN-LAST:event_letraKActionPerformed

    private void letraLActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraLActionPerformed
        
        analisis(letraL.getText().charAt(0));
    }//GEN-LAST:event_letraLActionPerformed

    private void letraMActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraMActionPerformed
        
        analisis(letraM.getText().charAt(0));
    }//GEN-LAST:event_letraMActionPerformed

    private void letraPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraPActionPerformed
        
        analisis(letraP.getText().charAt(0));
    }//GEN-LAST:event_letraPActionPerformed

    private void letraQActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraQActionPerformed
        
        analisis(letraQ.getText().charAt(0));
    }//GEN-LAST:event_letraQActionPerformed

    private void letraRActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraRActionPerformed
        
        analisis(letraR.getText().charAt(0));
    }//GEN-LAST:event_letraRActionPerformed

    private void letraSActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraSActionPerformed
        
        analisis(letraS.getText().charAt(0));
    }//GEN-LAST:event_letraSActionPerformed

    private void letraTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraTActionPerformed
        
        analisis(letraT.getText().charAt(0));
    }//GEN-LAST:event_letraTActionPerformed

    private void letraUActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraUActionPerformed
        
        analisis(letraU.getText().charAt(0));
    }//GEN-LAST:event_letraUActionPerformed

    private void letraVActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraVActionPerformed
       
        analisis(letraV.getText().charAt(0));
    }//GEN-LAST:event_letraVActionPerformed

    private void letraWActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraWActionPerformed
        
        analisis(letraW.getText().charAt(0));
    }//GEN-LAST:event_letraWActionPerformed

    private void letraXActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraXActionPerformed
        
        analisis(letraX.getText().charAt(0));
    }//GEN-LAST:event_letraXActionPerformed

    private void letraYActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraYActionPerformed
        
        analisis(letraY.getText().charAt(0));
    }//GEN-LAST:event_letraYActionPerformed

    private void letraZActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraZActionPerformed
        
        analisis(letraZ.getText().charAt(0));
    }//GEN-LAST:event_letraZActionPerformed

    private void backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backActionPerformed
        
        Juego c=new Juego(); // BOTON VOLVER A MENU
        c.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_backActionPerformed

    public void analisis(char n){
        boolean T=false; // ES PARA MIRAR SI LA LETRA DIGITADA ES CORRACTA O NO  
        if(j>=1 && inte<6){    
            for(int i=0;i<6;i++){ // SI LA PALABRA QUE SE INGRESO ES IGUAL A UNA LETRA DE LA PALABRA
                
                if(n==palabras[num].charAt(i)){ //N - EL BOTON DE LA LERA QUE FUE DIGITADO // CHARAT(I)RECORRER LA PALABRA
                    
                    if(i==0){
                                              
                    letra_uno.setText(String.valueOf(n));
                    inte++;
                    T=true;
                }
                else{
                    if(i==1){ 
                        
                        letra_dos.setText(String.valueOf(n));
                        inte++;
                        T=true;
                    }
                    else{
                        if(i==2){
                            letra_tres.setText(String.valueOf(n));
                            inte++;
                            T=true;
                        }
                        else{
                            if(i==3){
                                letra_cuatro.setText(String.valueOf(n));
                                inte++;
                                T=true;
                            }
                            else{
                                if(i==4){
                                    letra_cinco.setText(String.valueOf(n));
                                    inte++;
                                    T=true;
                                }
                                else{
                                    if(i==5){
                                        letra_seis.setText(String.valueOf(n));
                                        inte++;
                                        T=true; // USTED PULSO UNA LETRA CORRECTA
                                    
                                    } 
                                }
                            }
                        }
                    }
                }
            }   
            }   
            if(inte==6){ // CUANDO ADIVINA LA PLABRA ANTES D ELOS 15 INTENTOS
                numero.setText(""); // ETIQUETA NUMERO DE INTENTOS
                mus.gano();
                intentos.setText("");
                back.setVisible(true); // VOLVER A MENU
                back.setEnabled(true); 
                JOptionPane.showMessageDialog(null,"ADIVINASTE");
        }
            
            switch(n){ // INHABILITAR LA LETRA QUE SE PRESIONO " N LETRA QUE SE PRECIONO"
                
                case 'A': letraA.setEnabled(false);
                    break;
                
                case 'B': letraB.setEnabled(false);
                    break;
                
                case 'C': letraC.setEnabled(false);
                    break;  
                
                case 'D': letraD.setEnabled(false);
                    break;
                
                case 'E':letraE.setEnabled(false);
                    break;
                
                case 'F':letraF.setEnabled(false);
                    break;
                
                case 'G':letraG.setEnabled(false);
                    break;
                
                case 'H':letraH.setEnabled(false);
                    break;
                
                case 'I':letraI.setEnabled(false);
                    break;
                
                case 'J':letraJ.setEnabled(false);
                    break;
                
                case 'K':letraK.setEnabled(false);
                    break;
                
                case 'L':letraL.setEnabled(false);
                    break;
                
                case 'M':letraM.setEnabled(false);
                    break;
                
                case 'N':letraN.setEnabled(false);
                    break;
                
                case 'Ñ':letraNN.setEnabled(false);
                    break;
                
                case 'O':letraO.setEnabled(false);
                    break;
                
                case 'P':letraP.setEnabled(false);
                    break;
                
                case 'Q':letraQ.setEnabled(false);
                    break;
                
                case 'R':letraR.setEnabled(false);
                    break;
                
                case 'S':letraS.setEnabled(false);
                    break;
                
                case 'T':letraT.setEnabled(false);
                    break;
                
                case 'U':letraU.setEnabled(false);
                    break;
                
                case 'V':letraV.setEnabled(false);
                    break;
                
                case 'W':letraW.setEnabled(false);
                    break;
                
                case 'X':letraX.setEnabled(false);
                    break;
                
                case'Y':letraY.setEnabled(false);
                    break;
                
                case 'Z':letraZ.setEnabled(false);
                    break;
                
                default:
                    break;
            }
            if (T==false){ // USTED DIGITO UNA LETRA QUE NO ES CORRECTA
                    j--; // RESTA UN INTENTO
                if(j>=1){
                    mus.incorrecto();
                    Imagen.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/"+i+".jpg")));
                    i++;
                }
            } else {
               if(inte<6){
               mus.correcto();
               }
            }
            if(j>0){ // SI QUEDAN INTENTOS
                if(inte!=6){ // SI NO SE A ADIVINADO TODA LA PALABRA
                
            numero.setText(String.valueOf(j));} 
                
            } else{ // CUANDO NO HAY MAS INTENTOS "PERDISTE"
                i=15;
                Imagen.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/"+i+".jpg")));
                numero.setText("LA PALABRA ERA: "+palabras[num]);
                intentos.setText("HAZ PERDIDO");
                mus.perdio();
                back.setVisible(true);
                back.setEnabled(true); 
            }    
        }
    }
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
            java.util.logging.Logger.getLogger(NivelFacil.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NivelFacil.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NivelFacil.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NivelFacil.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NivelFacil().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Imagen;
    private javax.swing.JButton back;
    private javax.swing.JLabel intentos;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JButton letraA;
    private javax.swing.JButton letraB;
    private javax.swing.JButton letraC;
    private javax.swing.JButton letraD;
    private javax.swing.JButton letraE;
    private javax.swing.JButton letraF;
    private javax.swing.JButton letraG;
    private javax.swing.JButton letraH;
    private javax.swing.JButton letraI;
    private javax.swing.JButton letraJ;
    private javax.swing.JButton letraK;
    private javax.swing.JButton letraL;
    private javax.swing.JButton letraM;
    private javax.swing.JButton letraN;
    private javax.swing.JButton letraNN;
    private javax.swing.JButton letraO;
    private javax.swing.JButton letraP;
    private javax.swing.JButton letraQ;
    private javax.swing.JButton letraR;
    private javax.swing.JButton letraS;
    private javax.swing.JButton letraT;
    private javax.swing.JButton letraU;
    private javax.swing.JButton letraV;
    private javax.swing.JButton letraW;
    private javax.swing.JButton letraX;
    private javax.swing.JButton letraY;
    private javax.swing.JButton letraZ;
    private javax.swing.JLabel letra_cinco;
    private javax.swing.JLabel letra_cuatro;
    private javax.swing.JLabel letra_dos;
    private javax.swing.JLabel letra_seis;
    private javax.swing.JLabel letra_tres;
    private javax.swing.JLabel letra_uno;
    private javax.swing.JLabel numero;
    // End of variables declaration//GEN-END:variables
}
