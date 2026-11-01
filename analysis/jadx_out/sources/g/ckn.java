package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class ckn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13035a = AtomicReferenceFieldUpdater.newUpdater(ckn.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile = new xr(8, false);

    public final Object b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13035a;
            xr xrVar = (xr) atomicReferenceFieldUpdater.get(this);
            Object h = xrVar.h();
            if (h != xr.f20312c) {
                return h;
            }
            xr k = xrVar.k();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, xrVar, k) && atomicReferenceFieldUpdater.get(this) == xrVar) {
            }
        }
    }

    public final boolean c(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13035a;
            xr xrVar = (xr) atomicReferenceFieldUpdater.get(this);
            int i = xrVar.i(runnable);
            if (i == 0) {
                return true;
            }
            if (i == 1) {
                xr k = xrVar.k();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, xrVar, k) && atomicReferenceFieldUpdater.get(this) == xrVar) {
                }
            } else if (i == 2) {
                return false;
            }
        }
    }

    public final void d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13035a;
            xr xrVar = (xr) atomicReferenceFieldUpdater.get(this);
            if (xrVar.j()) {
                return;
            }
            xr k = xrVar.k();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, xrVar, k) && atomicReferenceFieldUpdater.get(this) == xrVar) {
            }
        }
    }

    public final int e() {
        xr xrVar = (xr) f13035a.get(this);
        xrVar.getClass();
        long j = xr.f20311b.get(xrVar);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j)));
    }
}
