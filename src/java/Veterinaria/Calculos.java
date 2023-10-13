/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Veterinaria;

import java.util.List;

/**
 *
 * @author Katerine Forero
 */
public class Calculos implements Interface{

    @Override
    public int calcularEdad(List<Mascota> mascotas) {
        int sumaEdades = 0;
        for (Mascota mascota : mascotas) {
            sumaEdades += mascota.getEdad();
        }

        if (mascotas.isEmpty()) {
            return 0;
        }

        int promedioEdad = sumaEdades / mascotas.size();
        return promedioEdad;
    }    
 }