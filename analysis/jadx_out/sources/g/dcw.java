package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class dcw extends buj {
    public final AtomicReferenceFieldUpdater bf;
    public final AtomicReferenceFieldUpdater bg;
    public final AtomicReferenceFieldUpdater bh;
    public final AtomicReferenceFieldUpdater bi;
    public final AtomicReferenceFieldUpdater bj;

    public dcw(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.bf = atomicReferenceFieldUpdater;
        this.bi = atomicReferenceFieldUpdater2;
        this.bj = atomicReferenceFieldUpdater3;
        this.bg = atomicReferenceFieldUpdater4;
        this.bh = atomicReferenceFieldUpdater5;
    }

    @Override // g.buj
    public final void a(aoh aohVar, Thread thread) {
        this.bf.lazySet(aohVar, thread);
    }

    @Override // g.buj
    public final void b(aoh aohVar, aoh aohVar2) {
        this.bi.lazySet(aohVar, aohVar2);
    }

    @Override // g.buj
    public final boolean c(zi ziVar, aoh aohVar, aoh aohVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.bj;
            if (atomicReferenceFieldUpdater.compareAndSet(ziVar, aohVar, aohVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(ziVar) == aohVar);
        return false;
    }

    @Override // g.buj
    public final boolean d(zi ziVar, fxt fxtVar, fxt fxtVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.bg;
            if (atomicReferenceFieldUpdater.compareAndSet(ziVar, fxtVar, fxtVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(ziVar) == fxtVar);
        return false;
    }

    @Override // g.buj
    public final boolean e(zi ziVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.bh;
            if (atomicReferenceFieldUpdater.compareAndSet(ziVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(ziVar) == obj);
        return false;
    }
}
