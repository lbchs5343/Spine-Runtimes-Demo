package g;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class td implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20027a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f20028b;

    public /* synthetic */ td(int i, AtomicBoolean atomicBoolean) {
        this.f20027a = i;
        this.f20028b = atomicBoolean;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20027a) {
            case 0:
                this.f20028b.set(true);
                break;
            default:
                this.f20028b.set(true);
                break;
        }
    }
}
