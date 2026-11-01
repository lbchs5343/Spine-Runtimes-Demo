package g;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class hcy {

    /* renamed from: a, reason: collision with root package name */
    public static final hcy f19246a = new hcy();

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f19247b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f19248c;

    /* renamed from: d, reason: collision with root package name */
    public hcy f19249d;

    public hcy() {
        this.f19247b = null;
        this.f19248c = null;
    }

    public hcy(Runnable runnable, Executor executor) {
        this.f19247b = runnable;
        this.f19248c = executor;
    }
}
