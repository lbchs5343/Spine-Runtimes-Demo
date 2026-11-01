package g;

import ms.bz.bd.c.Pgl.m0;
import ms.bz.bd.c.Pgl.n0;

/* loaded from: classes.dex */
public abstract class fqa {
    public static synchronized cad a() {
        cad cadVar;
        synchronized (fqa.class) {
            m0 e2 = n0.e();
            cadVar = e2 != null ? new cad(e2) : null;
        }
        return cadVar;
    }

    public static synchronized void b() {
        synchronized (fqa.class) {
            n0.f();
        }
    }
}
