package g;

import com.google.android.gms.internal.ads.zzgcy;
import com.google.android.gms.internal.ads.zzgcz;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final class axv extends acr {
    public final AtomicReferenceFieldUpdater ck;
    public final AtomicReferenceFieldUpdater cl;
    public final AtomicReferenceFieldUpdater cm;

    /* renamed from: cn, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f11041cn;
    public final AtomicReferenceFieldUpdater co;

    public axv(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f11041cn = atomicReferenceFieldUpdater;
        this.ck = atomicReferenceFieldUpdater2;
        this.cm = atomicReferenceFieldUpdater3;
        this.cl = atomicReferenceFieldUpdater4;
        this.co = atomicReferenceFieldUpdater5;
    }

    @Override // g.acr
    public final boolean bz(zzgcy zzgcyVar, Object obj, Object obj2) {
        return zzgcz.zza(this.co, zzgcyVar, obj, obj2);
    }

    @Override // g.acr
    public final void ca(mz mzVar, mz mzVar2) {
        this.ck.lazySet(mzVar, mzVar2);
    }

    @Override // g.acr
    public final boolean cc(zzgcy zzgcyVar, hcy hcyVar, hcy hcyVar2) {
        return zzgcz.zza(this.cl, zzgcyVar, hcyVar, hcyVar2);
    }

    @Override // g.acr
    public final mz cd(zzgcy zzgcyVar) {
        return (mz) this.cm.getAndSet(zzgcyVar, mz.f19687a);
    }

    @Override // g.acr
    public final boolean ch(zzgcy zzgcyVar, mz mzVar, mz mzVar2) {
        return zzgcz.zza(this.cm, zzgcyVar, mzVar, mzVar2);
    }

    @Override // g.acr
    public final void ci(mz mzVar, Thread thread) {
        this.f11041cn.lazySet(mzVar, thread);
    }

    @Override // g.acr
    public final hcy cj(zzgcy zzgcyVar) {
        return (hcy) this.cl.getAndSet(zzgcyVar, hcy.f19246a);
    }
}
