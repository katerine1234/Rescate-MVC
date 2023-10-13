/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Veterinaria;

/**
 *
 * @author Katerine Forero
 */
public class Canino extends Mascota{
    private int niveldeEntrenamiento;

    public int getNiveldeEntrenamiento() {
        return niveldeEntrenamiento;
    }

    public void setNiveldeEntrenamiento(int niveldeEntrenamiento) {
        this.niveldeEntrenamiento = niveldeEntrenamiento;
    }

    public Canino(int niveldeEntrenamiento, String nombre, String raza, String color, int edad) {
        super(nombre, raza, color, edad);
        this.niveldeEntrenamiento = niveldeEntrenamiento;
    }
}