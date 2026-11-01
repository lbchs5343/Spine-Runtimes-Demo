package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class hh extends bzh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fyw f19366a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19367b;

    /* renamed from: c, reason: collision with root package name */
    public final aov f19368c;

    /* renamed from: d, reason: collision with root package name */
    public amv f19369d;

    public hh(aov aovVar, fyw fywVar, Object obj) {
        this.f19366a = fywVar;
        this.f19367b = obj;
        this.f19368c = aovVar;
    }

    @Override // g.bzh
    public final void e(Object obj, Object obj2) {
        bfw bfwVar = (bfw) obj;
        boolean z = obj2 == null;
        aov aovVar = this.f19368c;
        gpe gpeVar = z ? aovVar : this.f19369d;
        if (gpeVar != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bfw.h;
            while (!atomicReferenceFieldUpdater.compareAndSet(bfwVar, this, gpeVar)) {
                if (atomicReferenceFieldUpdater.get(bfwVar) != this) {
                    return;
                }
            }
            if (z) {
                amv amvVar = this.f19369d;
                bff.d(amvVar);
                aovVar.m(amvVar);
            }
        }
    }

    @Override // g.bzh
    public final hy f(Object obj) {
        if (this.f19366a.ah() == this.f19367b) {
            return null;
        }
        return eg.f15471f;
    }
}
