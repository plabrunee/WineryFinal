/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

/**
 *
 * @author plabrunee
 */
public class Tipos {
    
    private int id;
    private String descripcion;

    public Tipos(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Tipos(int id, String descripcion) {
        this.id = id;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Entidades{" + "id=" + id + ", descripcion=" + descripcion + '}';
    }
    
    
    
}
