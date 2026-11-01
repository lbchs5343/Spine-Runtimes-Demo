package g;

import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class fth extends bkw {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicLong f17372a = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: b, reason: collision with root package name */
    public final mb f17373b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue f17374c;

    /* renamed from: g, reason: collision with root package name */
    public final Object f17375g;
    public final Semaphore h;
    public gwi j;
    public gwi k;
    public final mb l;
    public final PriorityBlockingQueue m;

    public fth(cyg cygVar) {
        super(cygVar);
        this.f17375g = new Object();
        this.h = new Semaphore(2);
        this.m = new PriorityBlockingQueue();
        this.f17374c = new LinkedBlockingQueue();
        this.f17373b = new mb(this, "Thread death: Uncaught exception on worker thread");
        this.l = new mb(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // g.bgf
    public final void _e() {
        if (Thread.currentThread() != this.j) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // g.bkw
    public final boolean n() {
        return false;
    }

    public final void o(Runnable runnable) {
        an();
        q(new gfi(this, runnable, true, "Task exception on worker thread"));
    }

    public final void p(Runnable runnable) {
        an();
        q(new gfi(this, runnable, false, "Task exception on worker thread"));
    }

    public final void q(gfi gfiVar) {
        synchronized (this.f17375g) {
            try {
                this.m.add(gfiVar);
                gwi gwiVar = this.j;
                if (gwiVar == null) {
                    gwi gwiVar2 = new gwi(this, "Measurement Worker", this.m);
                    this.j = gwiVar2;
                    gwiVar2.setUncaughtExceptionHandler(this.f17373b);
                    this.j.start();
                } else {
                    gwiVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r() {
        if (Thread.currentThread() != this.k) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final Object s(AtomicReference atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            fth fthVar = ((cyg) this.z).j;
            cyg.ak(fthVar);
            fthVar.p(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                bgm bgmVar = ((cyg) this.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.h("Interrupted waiting for ".concat(str));
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            bgm bgmVar2 = ((cyg) this.z).z;
            cyg.ak(bgmVar2);
            bgmVar2.f11520g.h("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final gfi t(Callable callable) {
        an();
        gfi gfiVar = new gfi(this, callable, false);
        if (Thread.currentThread() != this.j) {
            q(gfiVar);
            return gfiVar;
        }
        if (!this.m.isEmpty()) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.h("Callable skipped the worker queue.");
        }
        gfiVar.run();
        return gfiVar;
    }

    public final boolean u() {
        return Thread.currentThread() == this.j;
    }

    public final void v(Runnable runnable) {
        an();
        gfi gfiVar = new gfi(this, runnable, false, "Task exception on network thread");
        synchronized (this.f17375g) {
            try {
                this.f17374c.add(gfiVar);
                gwi gwiVar = this.k;
                if (gwiVar == null) {
                    gwi gwiVar2 = new gwi(this, "Measurement Network", this.f17374c);
                    this.k = gwiVar2;
                    gwiVar2.setUncaughtExceptionHandler(this.l);
                    this.k.start();
                } else {
                    gwiVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
