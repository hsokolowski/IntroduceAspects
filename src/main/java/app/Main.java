package app;

//import aspects.Zadanie3Aspekt;
import aspects.Zadanie3Aspekt;
import model.BotModel;
import model.MumiaModel;
import service.ImmutableClass;
import service.PrintService;

public class Main {
    public static void main(String[] args) {
//        System.out.println("App started");
//        UserService userService = new UserService();
//        userService.addUser("x","pass","x@gmail.com");
//        if (userService.verify("x","pass")) {
//            //System.out.println("successful user verification");
//        }
//        floaty();
//        String a= "a";
//        float b = floaty(a);
//        Parametry2(a, a);
//        PrintService.print();
//        MumiaModel mumia = new MumiaModel();
//        mumia.setAbc(a);
        BotModel bot = new BotModel();
        bot.setBot(1);

//        float2("a","a");
        System.out.println("Last time: "+ Zadanie3Aspekt.isChanged(bot));
        bot.getBot();
        System.out.println("Last time: "+ Zadanie3Aspekt.isChanged(bot));

        ImmutableClass immutable = new ImmutableClass();
//        immutable.setImmu(2); //was 0
//        System.out.println(immutable.getImmu());
    }

    public static float floaty(){
        System.out.println("M - float");
        return (float) 2.0;
    }
    public static float floaty(String s){
        System.out.println("M - string parameter z floatem");
        return (float) 3.0;
    }
    public static void Parametry2(String s,String ss){
        System.out.println("M - 2 parametry string");
    }

    public static float float2(String s, String s2){
        System.out.println("M - float z 2 parametrami na którego nie zadziała aspekt");
        return (float) 4.0;
    }
}