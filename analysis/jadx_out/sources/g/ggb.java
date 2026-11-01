package g;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes.dex */
public final class ggb extends fu {
    public final djo n;
    public final /* synthetic */ AtomicReferenceArray o;

    public ggb(long j, ggb ggbVar, djo djoVar, int i) {
        super(j, ggbVar, i);
        this.n = djoVar;
        this.o = new AtomicReferenceArray(drx.n * 2);
    }

    @Override // g.fu
    public final int e() {
        return drx.n;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0059, code lost:
    
        s(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x005c, code lost:
    
        if (r0 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x005e, code lost:
    
        g.bff.d(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0061, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    @Override // g.fu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(int i, boj bojVar) {
        int i2 = drx.n;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        this.o.get(i * 2);
        while (true) {
            Object p = p(i);
            boolean z2 = p instanceof cjq;
            djo djoVar = this.n;
            if (z2 || (p instanceof axx)) {
                if (t(p, i, z ? drx.o : drx.f14684b)) {
                    s(i, null);
                    r(i, !z);
                    if (z) {
                        bff.d(djoVar);
                        return;
                    }
                    return;
                }
            } else {
                if (p == drx.o || p == drx.f14684b) {
                    break;
                }
                if (p != drx.r && p != drx.i) {
                    if (p == drx.m || p == drx.f14687e || p == drx.f14688f) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + p).toString());
                }
            }
        }
    }

    public final Object p(int i) {
        return this.o.get((i * 2) + 1);
    }

    public final void q(int i, Object obj) {
        this.o.set((i * 2) + 1, obj);
    }

    public final void r(int i, boolean z) {
        if (z) {
            djo djoVar = this.n;
            bff.d(djoVar);
            djoVar.ad((this.f17418b * drx.n) + i);
        }
        c();
    }

    public final void s(int i, Object obj) {
        this.o.set(i * 2, obj);
    }

    public final boolean t(Object obj, int i, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.o;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }
}
