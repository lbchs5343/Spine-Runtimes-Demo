package g;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final class kc extends eg {
    public final AtomicReferenceFieldUpdater at;
    public final AtomicIntegerFieldUpdater au;

    public kc(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.at = atomicReferenceFieldUpdater;
        this.au = atomicIntegerFieldUpdater;
    }

    @Override // g.eg
    public final void ai(com.google.android.gms.internal.ads.q qVar, Set set) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.at;
            if (atomicReferenceFieldUpdater.compareAndSet(qVar, null, set)) {
                return;
            }
            if (atomicReferenceFieldUpdater.get(qVar) != null && atomicReferenceFieldUpdater.get(qVar) != null) {
                return;
            }
        }
    }

    @Override // g.eg
    public final int ao(com.google.android.gms.internal.ads.q qVar) {
        return this.au.decrementAndGet(qVar);
    }
}
