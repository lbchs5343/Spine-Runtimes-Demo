package g;

import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public abstract class bbv {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11244a;

    static {
        String g2 = cyl.g("WorkerWrapper");
        bff.e(g2, "tagWithPrefix(\"WorkerWrapper\")");
        f11244a = g2;
    }

    public static final Object b(dcy dcyVar, cg cgVar, avu avuVar) {
        Object obj;
        try {
            if (!dcyVar.isDone()) {
                gsn gsnVar = new gsn(1, awt.ab(avuVar));
                gsnVar.ac();
                dcyVar.addListener(new cqr(dcyVar, gsnVar, 0), fj.INSTANCE);
                gsnVar.y(new aqh(cgVar, dcyVar));
                return gsnVar.z();
            }
            boolean z = false;
            while (true) {
                try {
                    obj = dcyVar.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            return obj;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            bff.d(cause);
            throw cause;
        }
    }
}
