package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import g.edt;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzdxd implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6627a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6628b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6629c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6630d;

    public zzdxd(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f6628b = zzhgpVar;
        this.f6629c = zzhgpVar2;
        this.f6630d = zzhgpVar3;
        this.f6627a = zzhgpVar4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x004d, code lost:
    
        if (java.lang.Integer.toString(r6).equals(g.dzm.az(g.dzm.w(r2.zzd))) != false) goto L6;
     */
    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzb() {
        dcy zzb;
        final zzavc zzavcVar = (zzavc) this.f6628b.zzb();
        final Context zza = ((zzchq) this.f6629c).zza();
        zzffo zza2 = ((zzcwd) this.f6630d).zza();
        long longValue = ((Long) this.f6627a.zzb()).longValue();
        zzges zzc = zzfin.zzc();
        int intValue = ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzcN)).intValue();
        if (intValue != -1) {
        }
        ti.f20033a.v.getClass();
        if (System.currentTimeMillis() - longValue < ((Integer) r7.f15379d.zza(zzbcn.zzcP)).intValue()) {
            zzb = zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwx
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzavc.this.zzc().zzg(zza);
                }
            });
            zzhgf.zzb(zzb);
            return zzb;
        }
        zzb = zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwy
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzavc.this.zzc().zzf(zza);
            }
        });
        zzhgf.zzb(zzb);
        return zzb;
    }
}
