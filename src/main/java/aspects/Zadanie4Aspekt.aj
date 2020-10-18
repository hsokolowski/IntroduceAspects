package aspects;



public aspect Zadanie4Aspekt {
    pointcut p11(): //execution(@Immutable ).set*(..));
//           execution(@Immutable * *.*.set*(..));
//           execution(@Immutable) && execution(* *.*.set*(..));
//           execution(@Immutable *.*.*(..));
            @within(jdk.nashorn.internal.ir.annotations.Immutable) && execution(* *.*.set*(..));
//            execution(* *.*.set*(..));

//    pointcut p12(): execution(* *.*.set*(..));
//    declare error: p11()  : "Set in Ummutable Class not allowed.";
}
