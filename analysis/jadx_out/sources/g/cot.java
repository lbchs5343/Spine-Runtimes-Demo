package g;

import java.io.PrintStream;

/* loaded from: classes3.dex */
public abstract class cot {

    /* renamed from: a, reason: collision with root package name */
    public static final aop f13244a;

    /* renamed from: b, reason: collision with root package name */
    public static final eth f13245b;

    static {
        aop aopVar;
        String[] strArr = {"System.out", "stdout", "sysout"};
        String property = System.getProperty("slf4j.internal.report.stream");
        if (property != null && !property.isEmpty()) {
            int i = 0;
            while (true) {
                if (i >= 3) {
                    aopVar = aop.Stderr;
                    break;
                } else {
                    if (strArr[i].equalsIgnoreCase(property)) {
                        aopVar = aop.Stdout;
                        break;
                    }
                    i++;
                }
            }
        } else {
            aopVar = aop.Stderr;
        }
        f13244a = aopVar;
        String property2 = System.getProperty("slf4j.internal.verbosity");
        f13245b = (property2 == null || property2.isEmpty()) ? eth.INFO : property2.equalsIgnoreCase("ERROR") ? eth.ERROR : property2.equalsIgnoreCase("WARN") ? eth.WARN : eth.INFO;
    }

    public static final void c(String str) {
        if (eth.WARN.levelInt >= f13245b.levelInt) {
            e().println("SLF4J(W): " + str);
        }
    }

    public static final void d(String str, Throwable th) {
        e().println("SLF4J(E): " + str);
        e().println("SLF4J(E): Reported exception:");
        th.printStackTrace(e());
    }

    public static PrintStream e() {
        return f13244a.ordinal() != 1 ? System.err : System.out;
    }

    public static void f(String str) {
        if (eth.INFO.levelInt >= f13245b.levelInt) {
            e().println("SLF4J(I): " + str);
        }
    }
}
