package com.google.android.gms.internal.ads;

import g.adq;
import g.edt;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzcyv extends zzdcc implements zzcxg, zzcyl {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f5823a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfet f5824b;

    public zzcyv(Set set, zzfet zzfetVar) {
        super(set);
        this.f5823a = new AtomicBoolean();
        this.f5824b = zzfetVar;
    }

    public final void c() {
        adq adqVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhx)).booleanValue() && this.f5823a.compareAndSet(false, true) && (adqVar = this.f5824b.zzae) != null && adqVar.zza == 3) {
            m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcyu
                @Override // com.google.android.gms.internal.ads.zzdcb
                public final void zza(Object obj) {
                    ((zzcyx) obj).zzh(zzcyv.this.f5824b.zzae);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzg() {
        if (this.f5824b.zzb == 1) {
            c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        int i = this.f5824b.zzb;
        if (i == 2 || i == 5 || i == 4 || i == 6 || i == 7) {
            c();
        }
    }
}
