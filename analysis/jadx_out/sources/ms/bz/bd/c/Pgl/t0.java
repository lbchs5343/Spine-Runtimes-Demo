package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.v0;

/* loaded from: classes.dex */
public class t0 {

    /* renamed from: a, reason: collision with root package name */
    public static volatile t0 f21203a;

    /* renamed from: b, reason: collision with root package name */
    public String f21204b;

    class pgla implements v0.pblb {
    }

    public static t0 c() {
        if (f21203a == null) {
            synchronized (t0.class) {
                try {
                    if (f21203a == null) {
                        t0 t0Var = new t0();
                        t0Var.f21204b = null;
                        f21203a = t0Var;
                    }
                } finally {
                }
            }
        }
        return f21203a;
    }
}
