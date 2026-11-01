package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes3.dex */
public final class chw extends ci {

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f12905e;

    /* renamed from: f, reason: collision with root package name */
    public Object f12906f;
    public Exception h;
    public boolean j;

    /* renamed from: g, reason: collision with root package name */
    public final Object f12907g = new Object();
    public final ja i = new ja(5);

    @Override // g.ci
    public final boolean a() {
        boolean z;
        synchronized (this.f12907g) {
            try {
                z = false;
                if (this.j && !this.f12905e && this.h == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // g.ci
    public final Exception b() {
        Exception exc;
        synchronized (this.f12907g) {
            exc = this.h;
        }
        return exc;
    }

    @Override // g.ci
    public final Object c() {
        Object obj;
        synchronized (this.f12907g) {
            try {
                ckd.an("Task is not yet complete", this.j);
                if (this.f12905e) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.h;
                if (exc != null) {
                    throw new bji(exc);
                }
                obj = this.f12906f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // g.ci
    public final boolean d() {
        boolean z;
        synchronized (this.f12907g) {
            z = this.j;
        }
        return z;
    }

    public final void k() {
        if (this.j) {
            int i = aqb.f10644a;
            if (!d()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception b2 = b();
        }
    }

    public final void l(Exception exc) {
        ckd.w(exc, "Exception must not be null");
        synchronized (this.f12907g) {
            k();
            this.j = true;
            this.h = exc;
        }
        this.i.g(this);
    }

    public final void m(Object obj) {
        synchronized (this.f12907g) {
            k();
            this.j = true;
            this.f12906f = obj;
        }
        this.i.g(this);
    }

    public final void n() {
        synchronized (this.f12907g) {
            try {
                if (this.j) {
                    this.i.g(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        synchronized (this.f12907g) {
            try {
                if (this.j) {
                    return;
                }
                this.j = true;
                this.f12905e = true;
                this.i.g(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
