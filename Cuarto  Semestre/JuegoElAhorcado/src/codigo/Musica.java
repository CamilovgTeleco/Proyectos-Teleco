/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.applet.AudioClip;

/**
 *
 * @author Camil
 */
public class Musica{
    private AudioClip Sonido;
    
    public void correcto(){
        Sonido=java.applet.Applet.newAudioClip(getClass().getResource("/musica/correcto.wav"));
        Sonido.play();
    }
    public void incorrecto(){
       Sonido=java.applet.Applet.newAudioClip(getClass().getResource("/musica/incorrecto.wav"));
       Sonido.play(); 
    }
    public void gano(){
      Sonido=java.applet.Applet.newAudioClip(getClass().getResource("/musica/gano.wav"));
      Sonido.play();   
    }
    public void perdio(){
      Sonido=java.applet.Applet.newAudioClip(getClass().getResource("/musica/perdio.wav"));
      Sonido.play();   
    }
}
