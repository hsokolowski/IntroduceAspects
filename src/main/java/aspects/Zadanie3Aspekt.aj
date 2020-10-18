package aspects;

import model.BotModel;
import model.*;

public aspect Zadanie3Aspekt {
    declare parents: model.* implements Zad3;

    public long Zad3.time;

    public long Zad3.getLastExecutionTime() {
        return time;
    }

    Object around(Zad3 zad3interface): execution(* model.*(..)) && this(zad3interface) {
        long start = System.nanoTime();
        Object returnValue = proceed(zad3interface);
        long end = System.nanoTime();
        zad3interface.time = end - start;

        return returnValue;
    }
    public static long isChanged(Object o) {
        return ((Zad3) o).time;
    }

}