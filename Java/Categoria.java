import java.util.ArrayList;

public class Categoria {
    ArrayList<Categoria> subCategoria = new ArrayList<>();
    ArrayList<Producto> listaProducto = new ArrayList<>();
    private String nombre;

    public Categoria(ArrayList<Categoria> subCategoria, ArrayList<Producto> listaProducto, String nombre) {
        this.subCategoria = subCategoria;
        this.listaProducto = listaProducto;
        this.nombre = nombre;
    }

    public ArrayList<Categoria> getSubCategoria() {
        return subCategoria;
    }

    public void setSubCategoria(ArrayList<Categoria> subCategoria) {
        this.subCategoria = subCategoria;
    }

    public ArrayList<Producto> getListaProducto() {
        return listaProducto;
    }

    public void setListaProducto(ArrayList<Producto> listaProducto) {
        this.listaProducto = listaProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
       
}
