package 객체지향;

public class MainEntry {
    public static void main(String[] args) {
       Factory factory = new ItemFactory();
       Item item = factory.create("sword");
       if (item != null) {
         item.use();
       } 

       Item item2= factory.create("sword");
       if (item2 != null) {
        item2.use();
       } 

       Item item3 = factory.create("sword");
       if (item3 != null) {
        item3.use();
       } 

       Item item4 = factory.create("sword");
       if (item4 != null) {
        item4.use();
       } 

       Item item5 = factory.create("sword");
       if (item5 != null) {
        item5.use();
       }
       
       factory.create("shield");
       factory.create("shield");
       factory.create("shield");
       factory.create("shield");

       factory.create("bow");
       factory.create("bow");
       factory.create("bow");
    }
    
}
