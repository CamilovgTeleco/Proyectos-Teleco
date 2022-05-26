
package codigo;

import java.awt.Color;
import java.util.HashSet;
import java.applet.AudioClip; 
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.Timer;

public class NivelMedio extends javax.swing.JFrame {
    private Timer t;
    private int j,num,s,m,i; // NUMERO DE INTENTOS - PALABRA DEL ARREGLO -SEGUNDOS-MINUTOS-ORDEN DE IMAGEN
    private int inte; // CUANTAS LETRAS SE HAN ADIVIDANO
    private String palabras[]={"INTENTOS","ICONICOS","VOCACION","TANGENTE","PERREITO","OBEDECER","FABULSO","GABINETE","DALMATAS","CABALLOS","CACHETES","PANDEMIA","CIRCUITO","PROGRAMA"};
    private boolean temp;//ME AVISA SI EL TEMPORIZADOR HA SIDO INICIADO
    private boolean over;//ME AVISA SI EL TIEMPO SE ACABA
    private Heredar mus;
    public NivelMedio(){
       initComponents();
       mus=new Heredar();
       setIconImage(new ImageIcon(getClass().getResource("/imagenes_extra_2/descarga.jpg")).getImage());
       letra_uno.setText("_");
       letra_dos.setText("_");
       letra_tres.setText("_");
       letra_cuatro.setText("_");
       letra_cinco.setText("_");
       letra_seis.setText("_");
       letra_siete.setText("_");
       letra_ocho.setText("_");
       temp=false;
       over=false;
       s=0;//SEGUNDOS
       m=2;//MINUTOS
       this.setLocationRelativeTo(null);
       j=12; // CANTIDAD DE INTENTOS
       i=1;
       inte=0; // CANTIDAD DE LETRAS ADIVINADAS
       Numeros.setText(String.valueOf(j)); // MUESTRA CUANTOS INTENTOS TIENE
       Back.setEnabled(false); // BOTON VOLVER A MENU
       Back.setVisible(false);

       crear();
    }
    public void crear(){
        num=(int) Math.floor(Math.random()*(14)+0); // PARA DETERMINAR QUE PALABRA SE VA A USAR
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        letra_uno = new javax.swing.JLabel();
        letra_dos = new javax.swing.JLabel();
        letra_tres = new javax.swing.JLabel();
        letra_cuatro = new javax.swing.JLabel();
        letra_cinco = new javax.swing.JLabel();
        letra_seis = new javax.swing.JLabel();
        letra_siete = new javax.swing.JLabel();
        letra_ocho = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
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
        Back = new javax.swing.JButton();
        Salir = new javax.swing.JButton();
        Intentos = new javax.swing.JLabel();
        Numeros = new javax.swing.JLabel();
        btn = new javax.swing.JButton();
        tiempo = new javax.swing.JLabel();
        Imagen = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 0, 0));
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setMaximumSize(new java.awt.Dimension(639, 581));
        setMinimumSize(new java.awt.Dimension(639, 581));
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(639, 581));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(204, 204, 204));
        jPanel1.setOpaque(false);
        jPanel1.setLayout(new java.awt.GridLayout(1, 8));

        letra_uno.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_uno.setForeground(new java.awt.Color(255, 255, 255));
        letra_uno.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        letra_uno.setToolTipText("");
        jPanel1.add(letra_uno);

        letra_dos.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_dos.setForeground(new java.awt.Color(255, 255, 255));
        letra_dos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_dos);

        letra_tres.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_tres.setForeground(new java.awt.Color(255, 255, 255));
        letra_tres.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_tres);

        letra_cuatro.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_cuatro.setForeground(new java.awt.Color(255, 255, 255));
        letra_cuatro.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_cuatro);

        letra_cinco.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_cinco.setForeground(new java.awt.Color(255, 255, 255));
        letra_cinco.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_cinco);

        letra_seis.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_seis.setForeground(new java.awt.Color(255, 255, 255));
        letra_seis.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_seis);

        letra_siete.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_siete.setForeground(new java.awt.Color(255, 255, 255));
        letra_siete.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_siete);

        letra_ocho.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letra_ocho.setForeground(new java.awt.Color(255, 255, 255));
        letra_ocho.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jPanel1.add(letra_ocho);

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(23, 22, 370, 88));

        jPanel2.setOpaque(false);
        jPanel2.setLayout(new java.awt.GridLayout(9, 3));

        letraA.setBackground(new java.awt.Color(0, 0, 0));
        letraA.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraA.setForeground(new java.awt.Color(255, 255, 255));
        letraA.setText("A");
        letraA.setBorder(null);
        letraA.setBorderPainted(false);
        letraA.setContentAreaFilled(false);
        letraA.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraA.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraAActionPerformed(evt);
            }
        });
        jPanel2.add(letraA);

        letraB.setBackground(new java.awt.Color(0, 0, 0));
        letraB.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraB.setForeground(new java.awt.Color(255, 255, 255));
        letraB.setText("B");
        letraB.setBorder(null);
        letraB.setBorderPainted(false);
        letraB.setContentAreaFilled(false);
        letraB.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraBActionPerformed(evt);
            }
        });
        jPanel2.add(letraB);

        letraC.setBackground(new java.awt.Color(0, 0, 0));
        letraC.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraC.setForeground(new java.awt.Color(255, 255, 255));
        letraC.setText("C");
        letraC.setBorder(null);
        letraC.setBorderPainted(false);
        letraC.setContentAreaFilled(false);
        letraC.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraC.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraCActionPerformed(evt);
            }
        });
        jPanel2.add(letraC);

        letraD.setBackground(new java.awt.Color(0, 0, 0));
        letraD.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraD.setForeground(new java.awt.Color(255, 255, 255));
        letraD.setText("D");
        letraD.setBorder(null);
        letraD.setBorderPainted(false);
        letraD.setContentAreaFilled(false);
        letraD.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraD.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraDActionPerformed(evt);
            }
        });
        jPanel2.add(letraD);

        letraE.setBackground(new java.awt.Color(0, 0, 0));
        letraE.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraE.setForeground(new java.awt.Color(255, 255, 255));
        letraE.setText("E");
        letraE.setBorder(null);
        letraE.setBorderPainted(false);
        letraE.setContentAreaFilled(false);
        letraE.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraE.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraEActionPerformed(evt);
            }
        });
        jPanel2.add(letraE);

        letraF.setBackground(new java.awt.Color(0, 0, 0));
        letraF.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraF.setForeground(new java.awt.Color(255, 255, 255));
        letraF.setText("F");
        letraF.setBorder(null);
        letraF.setBorderPainted(false);
        letraF.setContentAreaFilled(false);
        letraF.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraFActionPerformed(evt);
            }
        });
        jPanel2.add(letraF);

        letraG.setBackground(new java.awt.Color(0, 0, 0));
        letraG.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraG.setForeground(new java.awt.Color(255, 255, 255));
        letraG.setText("G");
        letraG.setBorder(null);
        letraG.setBorderPainted(false);
        letraG.setContentAreaFilled(false);
        letraG.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraG.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraGActionPerformed(evt);
            }
        });
        jPanel2.add(letraG);

        letraH.setBackground(new java.awt.Color(0, 0, 0));
        letraH.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraH.setForeground(new java.awt.Color(255, 255, 255));
        letraH.setText("H");
        letraH.setBorder(null);
        letraH.setBorderPainted(false);
        letraH.setContentAreaFilled(false);
        letraH.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraH.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraHActionPerformed(evt);
            }
        });
        jPanel2.add(letraH);

        letraI.setBackground(new java.awt.Color(0, 0, 0));
        letraI.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraI.setForeground(new java.awt.Color(255, 255, 255));
        letraI.setText("I");
        letraI.setBorder(null);
        letraI.setBorderPainted(false);
        letraI.setContentAreaFilled(false);
        letraI.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraIActionPerformed(evt);
            }
        });
        jPanel2.add(letraI);

        letraJ.setBackground(new java.awt.Color(0, 0, 0));
        letraJ.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraJ.setForeground(new java.awt.Color(255, 255, 255));
        letraJ.setText("J");
        letraJ.setBorder(null);
        letraJ.setBorderPainted(false);
        letraJ.setContentAreaFilled(false);
        letraJ.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraJ.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraJActionPerformed(evt);
            }
        });
        jPanel2.add(letraJ);

        letraK.setBackground(new java.awt.Color(0, 0, 0));
        letraK.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraK.setForeground(new java.awt.Color(255, 255, 255));
        letraK.setText("K");
        letraK.setBorder(null);
        letraK.setBorderPainted(false);
        letraK.setContentAreaFilled(false);
        letraK.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraK.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraKActionPerformed(evt);
            }
        });
        jPanel2.add(letraK);

        letraL.setBackground(new java.awt.Color(0, 0, 0));
        letraL.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraL.setForeground(new java.awt.Color(255, 255, 255));
        letraL.setText("L");
        letraL.setBorder(null);
        letraL.setBorderPainted(false);
        letraL.setContentAreaFilled(false);
        letraL.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraL.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraLActionPerformed(evt);
            }
        });
        jPanel2.add(letraL);

        letraM.setBackground(new java.awt.Color(0, 0, 0));
        letraM.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraM.setForeground(new java.awt.Color(255, 255, 255));
        letraM.setText("M");
        letraM.setBorder(null);
        letraM.setBorderPainted(false);
        letraM.setContentAreaFilled(false);
        letraM.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraMActionPerformed(evt);
            }
        });
        jPanel2.add(letraM);

        letraN.setBackground(new java.awt.Color(0, 0, 0));
        letraN.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraN.setForeground(new java.awt.Color(255, 255, 255));
        letraN.setText("N");
        letraN.setBorder(null);
        letraN.setBorderPainted(false);
        letraN.setContentAreaFilled(false);
        letraN.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraNActionPerformed(evt);
            }
        });
        jPanel2.add(letraN);

        letraNN.setBackground(new java.awt.Color(0, 0, 0));
        letraNN.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraNN.setForeground(new java.awt.Color(255, 255, 255));
        letraNN.setText("Ñ");
        letraNN.setBorder(null);
        letraNN.setBorderPainted(false);
        letraNN.setContentAreaFilled(false);
        letraNN.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraNN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraNNActionPerformed(evt);
            }
        });
        jPanel2.add(letraNN);

        letraO.setBackground(new java.awt.Color(0, 0, 0));
        letraO.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraO.setForeground(new java.awt.Color(255, 255, 255));
        letraO.setText("O");
        letraO.setBorder(null);
        letraO.setBorderPainted(false);
        letraO.setContentAreaFilled(false);
        letraO.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraO.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraOActionPerformed(evt);
            }
        });
        jPanel2.add(letraO);

        letraP.setBackground(new java.awt.Color(0, 0, 0));
        letraP.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraP.setForeground(new java.awt.Color(255, 255, 255));
        letraP.setText("P");
        letraP.setBorder(null);
        letraP.setBorderPainted(false);
        letraP.setContentAreaFilled(false);
        letraP.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraPActionPerformed(evt);
            }
        });
        jPanel2.add(letraP);

        letraQ.setBackground(new java.awt.Color(0, 0, 0));
        letraQ.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraQ.setForeground(new java.awt.Color(255, 255, 255));
        letraQ.setText("Q");
        letraQ.setBorder(null);
        letraQ.setBorderPainted(false);
        letraQ.setContentAreaFilled(false);
        letraQ.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraQ.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraQActionPerformed(evt);
            }
        });
        jPanel2.add(letraQ);

        letraR.setBackground(new java.awt.Color(0, 0, 0));
        letraR.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraR.setForeground(new java.awt.Color(255, 255, 255));
        letraR.setText("R");
        letraR.setBorder(null);
        letraR.setBorderPainted(false);
        letraR.setContentAreaFilled(false);
        letraR.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraR.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraRActionPerformed(evt);
            }
        });
        jPanel2.add(letraR);

        letraS.setBackground(new java.awt.Color(0, 0, 0));
        letraS.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraS.setForeground(new java.awt.Color(255, 255, 255));
        letraS.setText("S");
        letraS.setBorder(null);
        letraS.setBorderPainted(false);
        letraS.setContentAreaFilled(false);
        letraS.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraSActionPerformed(evt);
            }
        });
        jPanel2.add(letraS);

        letraT.setBackground(new java.awt.Color(0, 0, 0));
        letraT.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraT.setForeground(new java.awt.Color(255, 255, 255));
        letraT.setText("T");
        letraT.setBorder(null);
        letraT.setBorderPainted(false);
        letraT.setContentAreaFilled(false);
        letraT.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraTActionPerformed(evt);
            }
        });
        jPanel2.add(letraT);

        letraU.setBackground(new java.awt.Color(0, 0, 0));
        letraU.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraU.setForeground(new java.awt.Color(255, 255, 255));
        letraU.setText("U");
        letraU.setBorder(null);
        letraU.setBorderPainted(false);
        letraU.setContentAreaFilled(false);
        letraU.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraU.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraUActionPerformed(evt);
            }
        });
        jPanel2.add(letraU);

        letraV.setBackground(new java.awt.Color(0, 0, 0));
        letraV.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraV.setForeground(new java.awt.Color(255, 255, 255));
        letraV.setText("V");
        letraV.setBorder(null);
        letraV.setBorderPainted(false);
        letraV.setContentAreaFilled(false);
        letraV.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraV.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraVActionPerformed(evt);
            }
        });
        jPanel2.add(letraV);

        letraW.setBackground(new java.awt.Color(0, 0, 0));
        letraW.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraW.setForeground(new java.awt.Color(255, 255, 255));
        letraW.setText("W");
        letraW.setBorder(null);
        letraW.setBorderPainted(false);
        letraW.setContentAreaFilled(false);
        letraW.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraW.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraWActionPerformed(evt);
            }
        });
        jPanel2.add(letraW);

        letraX.setBackground(new java.awt.Color(0, 0, 0));
        letraX.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraX.setForeground(new java.awt.Color(255, 255, 255));
        letraX.setText("X");
        letraX.setBorder(null);
        letraX.setBorderPainted(false);
        letraX.setContentAreaFilled(false);
        letraX.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraX.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraXActionPerformed(evt);
            }
        });
        jPanel2.add(letraX);

        letraY.setBackground(new java.awt.Color(0, 0, 0));
        letraY.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraY.setForeground(new java.awt.Color(255, 255, 255));
        letraY.setText("Y");
        letraY.setBorder(null);
        letraY.setBorderPainted(false);
        letraY.setContentAreaFilled(false);
        letraY.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraY.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraYActionPerformed(evt);
            }
        });
        jPanel2.add(letraY);

        letraZ.setBackground(new java.awt.Color(0, 0, 0));
        letraZ.setFont(new java.awt.Font("Chiller", 1, 36)); // NOI18N
        letraZ.setForeground(new java.awt.Color(255, 255, 255));
        letraZ.setText("Z");
        letraZ.setBorder(null);
        letraZ.setBorderPainted(false);
        letraZ.setContentAreaFilled(false);
        letraZ.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        letraZ.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                letraZActionPerformed(evt);
            }
        });
        jPanel2.add(letraZ);

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(28, 116, 280, 454));

        Back.setFont(new java.awt.Font("Chiller", 1, 24)); // NOI18N
        Back.setForeground(new java.awt.Color(255, 255, 255));
        Back.setText("VOLVER AL MENU");
        Back.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        Back.setBorderPainted(false);
        Back.setContentAreaFilled(false);
        Back.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        Back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BackActionPerformed(evt);
            }
        });
        getContentPane().add(Back, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 70, 196, 40));

        Salir.setFont(new java.awt.Font("Chiller", 1, 48)); // NOI18N
        Salir.setForeground(new java.awt.Color(204, 0, 0));
        Salir.setText("X");
        Salir.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        Salir.setBorderPainted(false);
        Salir.setContentAreaFilled(false);
        Salir.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        Salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SalirActionPerformed(evt);
            }
        });
        getContentPane().add(Salir, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 10, 39, 38));

        Intentos.setFont(new java.awt.Font("Chiller", 1, 24)); // NOI18N
        Intentos.setForeground(new java.awt.Color(255, 255, 255));
        Intentos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        Intentos.setText("NUMERO DE INTENTOS");
        getContentPane().add(Intentos, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 450, 210, 60));

        Numeros.setFont(new java.awt.Font("Chiller", 1, 24)); // NOI18N
        Numeros.setForeground(new java.awt.Color(255, 255, 255));
        Numeros.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(Numeros, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 490, 300, 60));

        btn.setFont(new java.awt.Font("Chiller", 1, 21)); // NOI18N
        btn.setForeground(new java.awt.Color(255, 255, 255));
        btn.setText("INICIAR");
        btn.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn.setBorderPainted(false);
        btn.setContentAreaFilled(false);
        btn.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnActionPerformed(evt);
            }
        });
        getContentPane().add(btn, new org.netbeans.lib.awtextra.AbsoluteConstraints(530, 460, 100, 40));

        tiempo.setFont(new java.awt.Font("Chiller", 1, 28)); // NOI18N
        tiempo.setForeground(new java.awt.Color(255, 255, 255));
        tiempo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(tiempo, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 20, 130, 40));
        getContentPane().add(Imagen, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 120, 217, 337));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes_extra_2/679549ac53621c4634a200849cd29bfd.gif"))); // NOI18N
        jLabel1.setMaximumSize(new java.awt.Dimension(641, 582));
        jLabel1.setMinimumSize(new java.awt.Dimension(641, 582));
        jLabel1.setPreferredSize(new java.awt.Dimension(641, 582));
        jLabel1.setRequestFocusEnabled(false);
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 850, 590));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BackActionPerformed

        Juego Pr = new Juego();
        this.setVisible(false);
        Pr.setVisible(true);
        
    }//GEN-LAST:event_BackActionPerformed

    private void letraAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraAActionPerformed
        
        analisis(letraA.getText().charAt(0)); 
    }//GEN-LAST:event_letraAActionPerformed

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

    private void letraIActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraIActionPerformed
        
        analisis(letraI.getText().charAt(0)); 
    }//GEN-LAST:event_letraIActionPerformed

    private void letraJActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraJActionPerformed
        
        analisis(letraJ.getText().charAt(0)); 
    }//GEN-LAST:event_letraJActionPerformed

    private void letraKActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraKActionPerformed
        
        analisis(letraK.getText().charAt(0)); 
    }//GEN-LAST:event_letraKActionPerformed

    private void letraLActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraLActionPerformed
        
        analisis(letraL.getText().charAt(0)); 
    }//GEN-LAST:event_letraLActionPerformed

    private void letraMActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraMActionPerformed
        
        analisis(letraM.getText().charAt(0)); 
    }//GEN-LAST:event_letraMActionPerformed

    private void letraNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraNActionPerformed
        
        analisis(letraN.getText().charAt(0)); 
    }//GEN-LAST:event_letraNActionPerformed

    private void letraNNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraNNActionPerformed
        
        analisis(letraNN.getText().charAt(0)); 
    }//GEN-LAST:event_letraNNActionPerformed

    private void letraOActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_letraOActionPerformed
        
        analisis(letraO.getText().charAt(0)); 
    }//GEN-LAST:event_letraOActionPerformed

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

    private void btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnActionPerformed
        temp=true;
        btn.setEnabled(false);
        btn.setVisible(false);
        t=new Timer(1000,new ActionListener() { 
            @Override
            public void actionPerformed(ActionEvent ae){
                if(m!=0){
                    if(s==0){
                        tiempo.setText(String.valueOf(m)+":"+"0"+String.valueOf(s));
                        s=59;
                        m--;
                    }
                    else{
                        if(s<10){
                            tiempo.setText(String.valueOf(m)+":"+"0"+String.valueOf(s));
                            
                        }
                        else{
                            tiempo.setText(String.valueOf(m)+":"+String.valueOf(s));
                        }
                        s--;
                    }
                }
                else{
                    if(s>0){
                        if(s<10){
                           tiempo.setText(String.valueOf(m)+":"+"0"+String.valueOf(s)); 
                        }
                        else{
                            tiempo.setText(String.valueOf(m)+":"+String.valueOf(s)); 
                        }
                        s--;
                    }
                    else{
                       tiempo.setText(String.valueOf(m)+":"+"0"+String.valueOf(s));  
                       t.stop();
                       over=true;
                    }
                }
            }
        }); 
        t.start();
    }//GEN-LAST:event_btnActionPerformed

    private void SalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SalirActionPerformed

        System.exit(0);
    }//GEN-LAST:event_SalirActionPerformed

    public void analisis(char n){
        boolean T=false; // ES PARA MIRAR SI LA LETRA DIGITADA ES CORRACTA O NO  
        if(temp==true){
           if(over==false){
        if(j>=1 && inte<8){ 
                
            for(int k=0;k<8;k++){ // SI LA PALABRA QUE SE INGRESO ES IGUAL A UNA LETRA DE LA PALABRA
                
                if(n==palabras[num].charAt(k)){ //N - EL BOTON DE LA LERA QUE FUE DIGITADO // CHARAT(I)RECORRER LA PALABRA
                    
                    if(k==0){
                                              
                    letra_uno.setText(String.valueOf(n));
                    inte++;
                    T=true;
                }
                else{
                    if(k==1){ 
                        letra_dos.setText(String.valueOf(n));
                        inte++;
                        T=true;
                    }
                    else{
                        if(k==2){
                            letra_tres.setText(String.valueOf(n));
                            inte++;
                            T=true;
                        }
                        else{
                            if(k==3){
                                letra_cuatro.setText(String.valueOf(n));
                                inte++;
                                T=true;
                            }
                            else{
                                if(k==4){
                                    letra_cinco.setText(String.valueOf(n));
                                    inte++;
                                    T=true;
                                }
                                else{
                                    if(k==5){
                                        letra_seis.setText(String.valueOf(n));
                                        inte++;
                                        T=true; // USTED PULSO UNA LETRA CORRECTA
                                    
                                    }
                                    else{
                                        if(k==6){
                                            letra_siete.setText(String.valueOf(n));
                                            inte++;
                                            T=true; // USTED PULSO UNA LETRA CORRECTA
                                        }
                                        else{
                                            letra_ocho.setText(String.valueOf(n));
                                            inte++;
                                            T=true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }              
            }       
            if(inte==8){ // CUANDO ADIVINA LA PLABRA ANTES D ELOS 15 INTENTOS
                Numeros.setText(""); // ETIQUETA NUMERO DE INTENTOS
                Intentos.setText("");
                mus.gano();
                Back.setVisible(true); // VOLVER A MENU
                Back.setEnabled(true); 
                over=true;
                tiempo.setVisible(false);
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
                if(j>0){
                    mus.incorrecto();
                    Imagen.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes2/"+i+".jpg")));
                    i++;    
                }
            } 
            else {
                if(inte<8){
                    mus.correcto();
                }
            }
            if(j>0){ // SI QUEDAN INTENTOS
                if(inte!=8){ // SI NO SE A ADIVINADO TODA LA PALABRA
                    Numeros.setText(String.valueOf(j));
                } 
            }
            else{ // CUANDO NO HAY MAS INTENTOS "PERDISTE"
                Numeros.setText("LA PALABRA ERA: "+palabras[num]);
                tiempo.setVisible(false);
                Imagen.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes2/"+i+".jpg")));
                Intentos.setText("HAZ PERDIDO");
                mus.perdio();
                Back.setVisible(true);
                Back.setEnabled(true);
            }    
        }
        }
            else{
                if(inte<8){
                i=12;
                Intentos.setText("TIEMPO TERMINADO");
                Numeros.setText("LA PALABRA ERA: "+palabras[num]);
                tiempo.setVisible(false);
                Imagen.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes2/"+i+".jpg")));
                mus.perdio();
                Back.setVisible(true);
                Back.setEnabled(true);
                }
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
            java.util.logging.Logger.getLogger(NivelMedio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NivelMedio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NivelMedio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NivelMedio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NivelMedio().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Back;
    private javax.swing.JLabel Imagen;
    private javax.swing.JLabel Intentos;
    private javax.swing.JLabel Numeros;
    private javax.swing.JButton Salir;
    private javax.swing.JButton btn;
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
    private javax.swing.JLabel letra_ocho;
    private javax.swing.JLabel letra_seis;
    private javax.swing.JLabel letra_siete;
    private javax.swing.JLabel letra_tres;
    private javax.swing.JLabel letra_uno;
    private javax.swing.JLabel tiempo;
    // End of variables declaration//GEN-END:variables
}
