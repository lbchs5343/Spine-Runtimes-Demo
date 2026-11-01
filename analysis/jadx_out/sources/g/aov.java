package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class aov extends bfw implements era, edw, gpe {

    /* renamed from: d, reason: collision with root package name */
    public fyw f10590d;

    @Override // g.gpe
    public final boolean a() {
        return true;
    }

    @Override // g.gpe
    public final amv c() {
        return null;
    }

    public final fyw e() {
        fyw fywVar = this.f10590d;
        if (fywVar != null) {
            return fywVar;
        }
        bff.v("job");
        throw null;
    }

    @Override // g.edw
    public final void f() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        fyw e2 = e();
        while (true) {
            Object ah = e2.ah();
            if (ah instanceof aov) {
                if (ah != this) {
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = fyw.y;
                fvn fvnVar = dzm.f15130e;
                while (!atomicReferenceFieldUpdater2.compareAndSet(e2, ah, fvnVar)) {
                    if (atomicReferenceFieldUpdater2.get(e2) != ah) {
                        break;
                    }
                }
                return;
            }
            if (!(ah instanceof gpe) || ((gpe) ah).c() == null) {
                return;
            }
            while (true) {
                Object j = j();
                if (j instanceof epj) {
                    bfw bfwVar = ((epj) j).f15941a;
                    return;
                }
                if (j == this) {
                    return;
                }
                bff.ag(j, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                bfw bfwVar2 = (bfw) j;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = bfw.f11481g;
                epj epjVar = (epj) atomicReferenceFieldUpdater3.get(bfwVar2);
                if (epjVar == null) {
                    epjVar = new epj(bfwVar2);
                    atomicReferenceFieldUpdater3.set(bfwVar2, epjVar);
                }
                do {
                    atomicReferenceFieldUpdater = bfw.h;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, j, epjVar)) {
                        bfwVar2.k();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == j);
            }
        }
    }

    public dta getParent() {
        return e();
    }

    @Override // g.bfw
    public final String toString() {
        return getClass().getSimpleName() + '@' + fso.o(this) + "[job@" + fso.o(e()) + ']';
    }
}
