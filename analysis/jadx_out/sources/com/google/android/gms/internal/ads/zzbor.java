package com.google.android.gms.internal.ads;

import g.dcy;

/* loaded from: classes3.dex */
public final class zzbor {

    /* renamed from: a, reason: collision with root package name */
    public final zzbnu f4908a;

    /* renamed from: b, reason: collision with root package name */
    public dcy f4909b;

    public zzbor(zzbnu zzbnuVar) {
        this.f4908a = zzbnuVar;
    }

    public final void c() {
        if (this.f4909b == null) {
            final zzcao zzcaoVar = new zzcao();
            this.f4909b = zzcaoVar;
            this.f4908a.zzb(null).zzj(new zzcas() { // from class: com.google.android.gms.internal.ads.zzboo
                @Override // com.google.android.gms.internal.ads.zzcas
                public final void zza(Object obj) {
                    zzcao.this.zzc((zzbnv) obj);
                }
            }, new zzcaq() { // from class: com.google.android.gms.internal.ads.zzbop
                @Override // com.google.android.gms.internal.ads.zzcaq
                /* renamed from: zza */
                public final void mo3zza() {
                    zzcao.this.zzd(new zzbnx("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final zzbou zza(String str, zzbob zzbobVar, zzboa zzboaVar) {
        c();
        return new zzbou(this.f4909b);
    }

    public final void zzb(final String str, final zzbjr zzbjrVar) {
        c();
        this.f4909b = zzgei.zzn(this.f4909b, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzboq
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzbnv zzbnvVar = (zzbnv) obj;
                zzbnvVar.zzq(str, zzbjrVar);
                return zzgei.zzh(zzbnvVar);
            }
        }, zzcaj.zzf);
    }

    public final void zzc(final String str, final zzbjr zzbjrVar) {
        this.f4909b = zzgei.zzm(this.f4909b, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbon
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzbnv zzbnvVar = (zzbnv) obj;
                zzbnvVar.zzr(str, zzbjrVar);
                return zzbnvVar;
            }
        }, zzcaj.zzf);
    }
}
