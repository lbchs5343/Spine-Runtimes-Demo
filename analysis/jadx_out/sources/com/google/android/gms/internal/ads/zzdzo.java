package com.google.android.gms.internal.ads;

import android.os.Binder;
import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public final class zzdzo {

    /* renamed from: a, reason: collision with root package name */
    public final zzhfr f6711a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f6712b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f6713c;

    /* renamed from: d, reason: collision with root package name */
    public final zzeaj f6714d;

    public zzdzo(zzges zzgesVar, zzges zzgesVar2, zzeaj zzeajVar, zzhfr zzhfrVar) {
        this.f6712b = zzgesVar;
        this.f6713c = zzgesVar2;
        this.f6714d = zzeajVar;
        this.f6711a = zzhfrVar;
    }

    public final dcy zzc(final zzbvb zzbvbVar) {
        String str = zzbvbVar.zzf;
        esy esyVar = ti.f20033a.z;
        boolean am = esy.am(str);
        zzges zzgesVar = this.f6713c;
        dcy zzg = am ? zzgei.zzg(new zzdyw(1, "Ads service proxy force local")) : zzgei.zzf(zzgei.zzk(new zzgdo() { // from class: com.google.android.gms.internal.ads.zzdzl
            @Override // com.google.android.gms.internal.ads.zzgdo
            public final dcy zza() {
                zzdzo zzdzoVar = zzdzo.this;
                zzbvb zzbvbVar2 = zzbvbVar;
                zzdzoVar.getClass();
                return zzdzoVar.f6714d.zza(zzbvbVar2, ((Long) edt.f15376a.f15379d.zza(zzbcn.zzlk)).longValue());
            }
        }, this.f6712b), ExecutionException.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzm
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                Throwable th = (ExecutionException) obj;
                if (th.getCause() != null) {
                    th = th.getCause();
                }
                return zzgei.zzg(th);
            }
        }, zzgesVar);
        final int callingUid = Binder.getCallingUid();
        return zzgei.zzf(zzg, zzdyw.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzn
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdzo zzdzoVar = zzdzo.this;
                return ((zzebq) zzdzoVar.f6711a.zzb()).zzb(zzbvbVar, callingUid);
            }
        }, zzgesVar);
    }
}
