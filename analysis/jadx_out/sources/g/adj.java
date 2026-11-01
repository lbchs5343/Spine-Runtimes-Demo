package g;

import j$.util.Objects;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class adj {

    /* renamed from: b, reason: collision with root package name */
    public final fnq f10044b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10045c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f10046d = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Object f10043a = new Object();

    static {
        cyl.g("WorkTimer");
    }

    public adj(fnq fnqVar) {
        this.f10044b = fnqVar;
    }

    public final void e(gxm gxmVar) {
        synchronized (this.f10043a) {
            try {
                if (((dws) this.f10045c.remove(gxmVar)) != null) {
                    cyl f2 = cyl.f();
                    Objects.toString(gxmVar);
                    f2.getClass();
                    this.f10046d.remove(gxmVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
