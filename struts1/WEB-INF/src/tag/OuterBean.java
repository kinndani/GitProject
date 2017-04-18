package tag;

public class OuterBean {
    private String name = null;
    private InnerBean inner = null;

    public InnerBean getInner() {
        return inner;
    }

    public String getName() {
        return name;
    }

    public void setInner(InnerBean inner) {
        this.inner = inner;
    }

    public void setName(String name) {
        this.name = name;
    }
}
