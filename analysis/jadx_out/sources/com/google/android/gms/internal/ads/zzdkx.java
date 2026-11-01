package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import g.evf;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdkx implements zzcxg {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6145a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6146b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdiy f6147c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdjd f6148d;

    public zzdkx(zzdiy zzdiyVar, zzdjd zzdjdVar, Executor executor, Executor executor2) {
        this.f6147c = zzdiyVar;
        this.f6148d = zzdjdVar;
        this.f6145a = executor;
        this.f6146b = executor2;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        if (this.f6148d.zzd()) {
            zzdiy zzdiyVar = this.f6147c;
            zzeew zzu = zzdiyVar.zzu();
            if (zzu == null && zzdiyVar.zzw() != null && ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfk)).booleanValue()) {
                dcy zzw = zzdiyVar.zzw();
                zzcao zzp = zzdiyVar.zzp();
                if (zzw == null || zzp == null) {
                    return;
                }
                zzgei.zzr(zzgei.zzl(zzw, zzp), new evf(28, this), this.f6146b);
                return;
            }
            if (zzu != null) {
                zzcfk zzr = zzdiyVar.zzr();
                zzcfk zzs = zzdiyVar.zzs();
                if (zzr == null) {
                    zzr = zzs != null ? zzs : null;
                }
                if (zzr != null) {
                    this.f6145a.execute(new zzdkv(zzr));
                }
            }
        }
    }
}
