package g;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class gnl {

    /* renamed from: a, reason: collision with root package name */
    public final cbr f18455a;

    /* renamed from: b, reason: collision with root package name */
    public final deg f18456b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f18457c = new AtomicBoolean();

    public gnl(cbr cbrVar, deg degVar) {
        this.f18455a = cbrVar;
        this.f18456b = degVar;
    }

    public final boolean d(String str, Throwable th) {
        if (!this.f18457c.compareAndSet(false, true)) {
            return false;
        }
        this.f18456b.d(str, th);
        return true;
    }
}
