/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Veterinaria;

public class Felino extends Mascota {
    private String libreToxoplasmosis;

    public String getLibreToxoplasmosis() {
        return libreToxoplasmosis;
    }

    public void setLibreToxoplasmosis(String libreToxoplasmosis) {
        this.libreToxoplasmosis = libreToxoplasmosis;
    }

    public Felino(String libreToxoplasmosis, String nombre, String raza, String color, int edad) {
        super(nombre, raza, color, edad);
        this.libreToxoplasmosis = libreToxoplasmosis;
    }
}

