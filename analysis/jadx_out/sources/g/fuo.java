package g;

import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class fuo {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f17438a = dsr.k(fuo.class);
    public ExecutorService i;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f17442e = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final AtomicInteger f17444g = new AtomicInteger(ur.f20117c);
    public final AtomicInteger h = new AtomicInteger(0);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f17440c = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f17441d = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public final Object f17443f = new Object();

    /* renamed from: b, reason: collision with root package name */
    public int f17439b = 0;

    public final void j(Runnable runnable) {
        AtomicBoolean atomicBoolean = this.f17441d;
        if (atomicBoolean.get()) {
            return;
        }
        try {
            runnable.run();
            this.h.incrementAndGet();
        } catch (Error unused) {
            if (atomicBoolean.get()) {
                return;
            }
            atomicBoolean.set(true);
            this.i.shutdownNow();
        } catch (Exception e2) {
            f17438a.l("Unhandled task exception:", e2);
        }
    }

    public final void k(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        this.f17439b = arrayList.size() + this.f17439b;
        this.f17442e.add(new ehk(cct.PARALLEL, arrayList));
    }

    public final void l() {
        synchronized (this.f17443f) {
            try {
                if (this.f17440c.get() || this.i != null) {
                    throw new IllegalStateException("Already executing");
                }
                String str = evh.f16225a;
                this.i = Executors.newFixedThreadPool(1, new cjr("task-s"));
                this.f17440c.set(true);
                this.f17441d.set(false);
                this.h.set(0);
                this.i.execute(new fvi(25, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m() {
        synchronized (this.f17443f) {
            try {
                this.f17440c.set(false);
                this.f17441d.set(true);
                ExecutorService executorService = this.i;
                if (executorService != null) {
                    executorService.shutdown();
                    this.i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
