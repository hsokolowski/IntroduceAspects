package aspects;

public aspect Zadanie1Aspekt {

    pointcut p3(): execution(float * (..));
    pointcut p4(): execution(* * (String));
    pointcut p5(): execution(* *(*,*));
    pointcut p6(): execution(public * service.*Service.*(..));;
    pointcut p7(): execution(!public * model.*.set*(..));
    pointcut p8(): execution(@Deprecated * model.*.*(..));
    pointcut p9(): p3() && !p5();
    pointcut p10(): execution (* app.*.*(..))&& !(execution (* app.*.set*(..)) || execution(* app.*.get*(..)));

    before():p3() {
        System.out.println("BEFORE.float");
    }
    before():p4() {
        System.out.println("BEFORE.string");
    }
    before():p5() {
        System.out.println("BEFORE.2parametry");
    }
    before():p6() {
        System.out.println("BEFORE.publicService");
    }
    before():p7() {
        System.out.println("BEFORE.nonPublicSetModel");
    }
    before():p8() {
        System.out.println("BEFORE.deprecated");
    }
    before():p9() {
        System.out.println("BEFORE.methodFloatButNotWith2Parameters");
    }
    before():p10() {
        System.out.println("BEFORE.TIME");
    }

    Object around () : p10() {
        long time = System.nanoTime();
        Object ret = proceed();
        System.out.println("AROUND." + (System.nanoTime() - time));
        return ret;
    }

}
