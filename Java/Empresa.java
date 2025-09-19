import java.util.ArrayList;

public class Empresa{
    ArrayList<Categoria> listaCategorias= new ArrayList<>();
    public ArrayList<Producto> obtenerProductosIgualDiezMil(){
        ArrayList<Producto> lista = new ArrayList<>();
        

/* 
        for (Categoria categoria : listaCategorias) {
        for (Producto producto : categoria.getListaProducto()) {
            if (producto.getPrecio() == 10000) {
                lista.add(producto);
            }
        }
        for (Categoria sub : categoria.getSubCategoria()) {
            for (Producto producto : sub.getListaProducto()) {
                if (producto.getPrecio() == 10000) {
                    lista.add(producto);
                }
            }
        }
    }
*/
        return lista;

    }

}