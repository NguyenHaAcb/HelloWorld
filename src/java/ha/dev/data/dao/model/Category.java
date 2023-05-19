package ha.dev.data.dao.model;

public class Category {

    private int id;
    private String name;
    private String img;
    private String description;

    public Category(String name, String img) {
        super();
        this.name = name;
        this.img = img;

    }

    public Category(int id, String name, String img) {
        super();
        this.id = id;
        this.name = name;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getimg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

  
  
}
