package modelo;

public class LeeProducto {


    public static class guardarProductos {
        private String sesionID;
        private Producto producto;
        private int unidades;

        public guardarProductos(String sesionID, Producto producto, int unidades) {
            this.sesionID = sesionID;
            this.producto = producto;
            this.unidades = unidades;
        }

        public String getSesionID() {
            return sesionID;
        }

        public void setSesionID(String sesionID) {
            this.sesionID = sesionID;
        }

        public Producto getProducto() {
            return producto;
        }

        public void setProducto(Producto producto) {
            this.producto = producto;
        }

        public int getUnidades() {
            return unidades;
        }

        public void setUnidades(int unidades) {
            this.unidades = unidades;
        }

        
    }
}
