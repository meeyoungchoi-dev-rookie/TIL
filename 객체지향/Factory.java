package 객체지향;

public abstract class Factory {
    public Item create(String name) {
        boolean creatable = this.isCreatable(name);
        if (creatable) {
            Item item = this.createItem(name);
            postprocessItem(name);
            return item;
        }

        return null;
    }

    public abstract boolean isCreatable(String name);
    public abstract Item createItem(String name);
    public abstract void postprocessItem(String name);
}
