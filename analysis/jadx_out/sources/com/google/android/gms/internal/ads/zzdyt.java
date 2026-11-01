package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import g.evf;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdyt implements zzdyv {

    /* renamed from: a, reason: collision with root package name */
    public final Map f6693a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f6694b;

    /* renamed from: c, reason: collision with root package name */
    public final zzczh f6695c;

    public zzdyt(Map map, zzges zzgesVar, zzczh zzczhVar) {
        this.f6693a = map;
        this.f6694b = zzgesVar;
        this.f6695c = zzczhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyv
    public final dcy zzb(final zzbvx zzbvxVar) {
        this.f6695c.zzdn(zzbvxVar);
        dcy zzg = zzgei.zzg(new zzdwn(3));
        for (String str : ((String) edt.f15376a.f15379d.zza(zzbcn.zzhR)).split(",")) {
            final zzhgp zzhgpVar = (zzhgp) this.f6693a.get(str.trim());
            if (zzhgpVar != null) {
                zzg = zzgei.zzf(zzg, zzdwn.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdyr
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj) {
                        return ((zzdyv) zzhgp.this.zzb()).zzb(zzbvxVar);
                    }
                }, this.f6694b);
            }
        }
        zzgei.zzr(zzg, new evf(29, this), zzcaj.zzf);
        return zzg;
    }
}
