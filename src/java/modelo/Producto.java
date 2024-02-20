package modelo;

public class Producto {

    private String codigo;
    private String nombre;
    private double precio;
    private String Rutaimg;
    private String descripcion;
    private String categoria;
    private int unidades;
    private String sesion;

    public Producto(String codigo,String nombre, double precio, String Rutaimg, String descripcion, String categoria) {
        this.nombre = nombre;
        this.precio = precio;
        this.Rutaimg = Rutaimg;
        this.descripcion = descripcion;
        this.categoria = categoria;
           this.codigo = codigo;
    }
    
    public Producto(String sesion, String nombre, int unidades, double precio){
        this.sesion=sesion;
        this.nombre = nombre;
        this.unidades = unidades;
        this.precio = precio;
        
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getRutaimg() {
        return Rutaimg;
    }

    public void setRutaimg(String Rutaimg) {
        this.Rutaimg = Rutaimg;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getUnidades() {
        return unidades;
    }

    public void setUnidades(int unidades) {
        this.unidades = unidades;
    }

    public String getSesion() {
        return sesion;
    }

    public void setSesion(String sesion) {
        this.sesion = sesion;
    }
    

} 