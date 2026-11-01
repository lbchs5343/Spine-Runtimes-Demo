package g;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public class wh {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f20210b = AtomicIntegerFieldUpdater.newUpdater(wh.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f20211c;

    public wh(Throwable th, boolean z) {
        this.f20211c = th;
        this._handled$volatile = z ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f20211c + ']';
    }
}
