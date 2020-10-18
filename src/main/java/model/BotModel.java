package model;

public class BotModel {
    int bot;

    @Deprecated
    public int getBot() {
        System.out.println("M - getBot Deprecated");
        return bot;
    }

    public void setBot(int bot) {
        System.out.println("M - setBot public");
        this.bot = bot;
        setBotDouble(bot,bot);
    }
    void setBotDouble(int a, int b)
    {
        System.out.println("M - setBot private");
        this.bot= a+b;
    }
}
