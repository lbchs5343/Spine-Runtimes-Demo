package g;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class aqv implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f10670a;

    /* renamed from: b, reason: collision with root package name */
    public Runnable f10671b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10672c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10673d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f10674e;

    public aqv(fpe fpeVar) {
        this.f10673d = 2;
        this.f10672c = new Object();
        this.f10670a = new ArrayDeque();
        this.f10674e = fpeVar;
    }

    public aqv(Executor executor, int i) {
        this.f10673d = i;
        switch (i) {
            case 1:
                bff.p(executor, "executor");
                this.f10674e = executor;
                this.f10670a = new ArrayDeque();
                this.f10672c = new Object();
                break;
            default:
                this.f10674e = executor;
                this.f10670a = new ArrayDeque();
                this.f10672c = new Object();
                break;
        }
    }

    private final void h() {
        synchronized (this.f10672c) {
            Object poll = this.f10670a.poll();
            Runnable runnable = (Runnable) poll;
            this.f10671b = runnable;
            if (poll != null) {
                this.f10674e.execute(runnable);
            }
        }
    }

    private final void i(Runnable runnable) {
        synchronized (this.f10672c) {
            try {
                this.f10670a.add(new gfh(this, 23, runnable));
                if (this.f10671b == null) {
                    f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void j(Runnable runnable) {
        bff.p(runnable, "command");
        synchronized (this.f10672c) {
            this.f10670a.offer(new dsf(runnable, this));
            if (this.f10671b == null) {
                f();
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f10673d) {
            case 0:
                i(runnable);
                return;
            case 1:
                j(runnable);
                return;
            default:
                synchronized (this.f10672c) {
                    try {
                        this.f10670a.add(new dsf(this, 0, runnable));
                        if (this.f10671b == null) {
                            f();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    public final void f() {
        switch (this.f10673d) {
            case 0:
                Runnable runnable = (Runnable) this.f10670a.poll();
                this.f10671b = runnable;
                if (runnable != null) {
                    this.f10674e.execute(runnable);
                    return;
                }
                return;
            case 1:
                h();
                return;
            default:
                synchronized (this.f10672c) {
                    try {
                        Runnable runnable2 = (Runnable) this.f10670a.poll();
                        this.f10671b = runnable2;
                        if (runnable2 != null) {
                            ((fpe) this.f10674e).execute(runnable2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    public boolean g() {
        boolean z;
        synchronized (this.f10672c) {
            z = !this.f10670a.isEmpty();
        }
        return z;
    }
}
