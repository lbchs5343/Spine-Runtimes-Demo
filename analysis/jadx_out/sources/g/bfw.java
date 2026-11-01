package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class bfw {
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;
    public static final /* synthetic */ AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(bfw.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(bfw.class, Object.class, "_prev$volatile");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f11481g = AtomicReferenceFieldUpdater.newUpdater(bfw.class, Object.class, "_removedRef$volatile");

    public boolean _bk() {
        return j() instanceof epj;
    }

    public final Object j() {
        while (true) {
            Object obj = h.get(this);
            if (!(obj instanceof dpu)) {
                return obj;
            }
            ((dpu) obj).h(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        r6 = ((g.epj) r6).f15941a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r5.get(r4) == r3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final bfw k() {
        bfw bfwVar;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
            bfw bfwVar2 = (bfw) atomicReferenceFieldUpdater.get(this);
            bfwVar = bfwVar2;
            while (true) {
                bfw bfwVar3 = null;
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
                    Object obj = atomicReferenceFieldUpdater2.get(bfwVar);
                    if (obj == this) {
                        if (bfwVar2 != bfwVar) {
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, bfwVar2, bfwVar)) {
                                if (atomicReferenceFieldUpdater.get(this) != bfwVar2) {
                                    break;
                                }
                            }
                            break loop0;
                        }
                        break;
                    }
                    if (_bk()) {
                        return null;
                    }
                    if (obj == null) {
                        break loop0;
                    }
                    if (obj instanceof dpu) {
                        ((dpu) obj).h(bfwVar);
                        break;
                    }
                    if (!(obj instanceof epj)) {
                        bff.ag(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                        bfwVar3 = bfwVar;
                        bfwVar = (bfw) obj;
                    } else {
                        if (bfwVar3 != null) {
                            break;
                        }
                        bfwVar = (bfw) atomicReferenceFieldUpdater.get(bfwVar);
                    }
                }
                bfwVar = bfwVar3;
            }
        }
        return bfwVar;
    }

    public final bfw l() {
        bfw bfwVar;
        Object j = j();
        epj epjVar = j instanceof epj ? (epj) j : null;
        if (epjVar != null && (bfwVar = epjVar.f15941a) != null) {
            return bfwVar;
        }
        bff.ag(j, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (bfw) j;
    }

    public final void m(bfw bfwVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
            bfw bfwVar2 = (bfw) atomicReferenceFieldUpdater.get(bfwVar);
            if (j() != bfwVar) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(bfwVar, bfwVar2, this)) {
                if (atomicReferenceFieldUpdater.get(bfwVar) != bfwVar2) {
                    break;
                }
            }
            if (_bk()) {
                bfwVar.k();
                return;
            }
            return;
        }
    }

    public String toString() {
        return new dim(this) + '@' + fso.o(this);
    }
}
