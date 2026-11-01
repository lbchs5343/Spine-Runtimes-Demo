package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzdwv {

    /* renamed from: a, reason: collision with root package name */
    public final zzhfr f6619a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f6620b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f6621c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdyd f6622d;

    public zzdwv(zzges zzgesVar, zzges zzgesVar2, zzdyd zzdydVar, zzhfr zzhfrVar) {
        this.f6620b = zzgesVar;
        this.f6621c = zzgesVar2;
        this.f6622d = zzdydVar;
        this.f6619a = zzhfrVar;
    }

    public final dcy zzc(final zzbvx zzbvxVar) {
        dcy zzf;
        String str = zzbvxVar.zzd;
        esy esyVar = ti.f20033a.z;
        boolean am = esy.am(str);
        zzges zzgesVar = this.f6621c;
        if (am) {
            zzf = zzgei.zzg(new zzdyw(1));
        } else {
            zzf = zzgei.zzf(this.f6620b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdws
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return (zzdyx) zzdwv.this.f6622d.zza(zzbvxVar).get(((Integer) edt.f15376a.f15379d.zza(zzbcn.zzfx)).intValue(), TimeUnit.SECONDS);
                }
            }), ExecutionException.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdwt
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    return zzgei.zzg(((ExecutionException) obj).getCause());
                }
            }, zzgesVar);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgei.zzf(zzf, zzdyw.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdwu
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdwv zzdwvVar = zzdwv.this;
                final zzbvx zzbvxVar2 = zzbvxVar;
                int i = callingUid;
                if (zzbvxVar2 != null) {
                    zzdwvVar.getClass();
                    Bundle bundle = zzbvxVar2.zzm;
                    if (bundle != null) {
                        bundle.putBoolean("ls", true);
                    }
                }
                return zzgei.zzn(((zzebg) zzdwvVar.f6619a.zzb()).zzc(zzbvxVar2, i), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdwr
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj2) {
                        return zzgei.zzh(new zzdyx((InputStream) obj2, zzbvx.this));
                    }
                }, zzdwvVar.f6621c);
            }
        }, zzgesVar);
    }
}
