package g;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class fxg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ csp f17571a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17572b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f17573c;

    public /* synthetic */ fxg(csp cspVar, AtomicReference atomicReference, int i) {
        this.f17572b = i;
        this.f17571a = cspVar;
        this.f17573c = atomicReference;
    }

    private final void d() {
        synchronized (this.f17573c) {
            try {
                try {
                    AtomicReference atomicReference = this.f17573c;
                    cyg cygVar = (cyg) this.f17571a.z;
                    atomicReference.set(Integer.valueOf(cygVar.f13747e.k(cygVar.at().x(), gad.n)));
                } finally {
                    this.f17573c.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void e() {
        synchronized (this.f17573c) {
            try {
                try {
                    AtomicReference atomicReference = this.f17573c;
                    cyg cygVar = (cyg) this.f17571a.z;
                    atomicReference.set(Boolean.valueOf(cygVar.f13747e.g(cygVar.at().x(), gad.ag)));
                } finally {
                    this.f17573c.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void f() {
        String str;
        synchronized (this.f17573c) {
            try {
                try {
                    AtomicReference atomicReference = this.f17573c;
                    cyg cygVar = (cyg) this.f17571a.z;
                    dsd dsdVar = cygVar.f13747e;
                    String x = cygVar.at().x();
                    tw twVar = gad.h;
                    if (x == null) {
                        dsdVar.getClass();
                        str = (String) twVar.h(null);
                    } else {
                        str = (String) twVar.h(dsdVar.f14698b.c(x, twVar.f20078d));
                    }
                    atomicReference.set(str);
                } finally {
                    this.f17573c.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void g() {
        synchronized (this.f17573c) {
            try {
                try {
                    AtomicReference atomicReference = this.f17573c;
                    cyg cygVar = (cyg) this.f17571a.z;
                    atomicReference.set(Long.valueOf(cygVar.f13747e.o(cygVar.at().x(), gad.ae)));
                } finally {
                    this.f17573c.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17572b) {
            case 0:
                e();
                return;
            case 1:
                f();
                return;
            case 2:
                g();
                return;
            case 3:
                d();
                return;
            default:
                synchronized (this.f17573c) {
                    try {
                        try {
                            AtomicReference atomicReference = this.f17573c;
                            cyg cygVar = (cyg) this.f17571a.z;
                            atomicReference.set(Double.valueOf(cygVar.f13747e.p(cygVar.at().x(), gad.bf)));
                        } finally {
                            this.f17573c.notify();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
