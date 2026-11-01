package com.google.android.gms.internal.ads;

import g.aoy;
import g.edt;
import g.fdy;
import g.ti;
import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
/* loaded from: classes3.dex */
public class zzcav {

    /* renamed from: f, reason: collision with root package name */
    public final zzcao f5137f;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicInteger f5138g;

    public zzcav() {
        zzcao zzcaoVar = new zzcao();
        this.f5137f = zzcaoVar;
        this.f5138g = new AtomicInteger(0);
        zzgei.zzr(zzcaoVar, new aoy(this), zzcaj.zzf);
    }

    @Deprecated
    public final int zze() {
        return this.f5138g.get();
    }

    @Deprecated
    public final void zzg() {
        this.f5137f.zzd(new Exception());
    }

    @Deprecated
    public final void zzh(Throwable th, String str) {
        this.f5137f.zzd(th);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhq)).booleanValue()) {
            ti.f20033a.f20034ab.zzv(th, str);
        }
    }

    @Deprecated
    public final void zzi(Object obj) {
        this.f5137f.zzc(obj);
    }

    @Deprecated
    public final void zzj(zzcas zzcasVar, zzcaq zzcaqVar) {
        zzgei.zzr(this.f5137f, new fdy(zzcasVar, 25, zzcaqVar), zzcaj.zzf);
    }
}
