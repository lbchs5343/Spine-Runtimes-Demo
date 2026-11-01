package ms.bz.bd.c.Pgl;

/* loaded from: classes.dex */
public class o1 {

    /* renamed from: a, reason: collision with root package name */
    public static volatile o1 f21184a;

    private o1() {
    }

    public static o1 b() {
        if (f21184a == null) {
            synchronized (o1.class) {
                try {
                    if (f21184a == null) {
                        f21184a = new o1();
                    }
                } finally {
                }
            }
        }
        return f21184a;
    }
}
