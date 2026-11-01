package g;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public abstract class fu extends aym implements fkq {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f17417a = AtomicIntegerFieldUpdater.newUpdater(fu.class, "cleanedAndPointers$volatile");

    /* renamed from: b, reason: collision with root package name */
    public final long f17418b;
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    public fu(long j, ggb ggbVar, int i) {
        super(ggbVar);
        this.f17418b = j;
        this.cleanedAndPointers$volatile = i << 16;
    }

    public final void c() {
        if (f17417a.incrementAndGet(this) == drx.n) {
            k();
        }
    }

    public final boolean d() {
        return f17417a.addAndGet(this, -65536) == e() && m() != null;
    }

    public abstract int e();

    public final boolean f() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        do {
            atomicIntegerFieldUpdater = f17417a;
            i = atomicIntegerFieldUpdater.get(this);
            if (i == e() && m() != null) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 65536 + i));
        return true;
    }

    @Override // g.aym
    public final boolean g() {
        return f17417a.get(this) == e() && m() != null;
    }

    public abstract void h(int i, boj bojVar);
}
