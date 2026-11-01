package g;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes3.dex */
public abstract class eye extends AtomicReference implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public static final foq f16362f;

    /* renamed from: g, reason: collision with root package name */
    public static final foq f16363g;

    static {
        int i = 9;
        f16362f = new foq(i);
        f16363g = new foq(i);
    }

    public abstract Object _bc();

    public abstract void b(Throwable th);

    public abstract void c(Object obj);

    public abstract boolean d();

    public abstract String e();

    public final void h(Thread thread) {
        Runnable runnable = (Runnable) get();
        boz bozVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof boz;
            foq foqVar = f16363g;
            if (!z2) {
                if (runnable != foqVar) {
                    break;
                }
            } else {
                bozVar = (boz) runnable;
            }
            i++;
            if (i <= 1000) {
                Thread.yield();
            } else if (runnable == foqVar || compareAndSet(runnable, foqVar)) {
                z = Thread.interrupted() || z;
                LockSupport.park(bozVar);
            }
            runnable = (Runnable) get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    public final void i() {
        foq foqVar = f16363g;
        foq foqVar2 = f16362f;
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            boz bozVar = new boz(this);
            bozVar.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, bozVar)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (((Runnable) getAndSet(foqVar2)) == foqVar) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (((Runnable) getAndSet(foqVar2)) == foqVar) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean d2 = d();
            foq foqVar = f16362f;
            if (!d2) {
                try {
                    obj = _bc();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(currentThread, foqVar)) {
                            h(currentThread);
                        }
                        b(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(currentThread, foqVar)) {
                            h(currentThread);
                        }
                        c(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(currentThread, foqVar)) {
                h(currentThread);
            }
            if (d2) {
                return;
            }
            c(obj);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        Runnable runnable = (Runnable) get();
        return awf.i(runnable == f16362f ? "running=[DONE]" : runnable instanceof boz ? "running=[INTERRUPTED]" : runnable instanceof Thread ? tn.ad("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]", ", ", e());
    }
}
