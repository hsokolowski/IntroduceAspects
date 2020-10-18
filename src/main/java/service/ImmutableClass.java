package service;

import jdk.nashorn.internal.ir.annotations.Immutable;

//@Immutable
public class ImmutableClass {
    int immu = 0;

    public void setImmu(int immu) {
        this.immu = immu;
    }

    public int getImmu() {
        return immu;
    }
}
