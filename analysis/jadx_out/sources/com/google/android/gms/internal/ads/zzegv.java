package com.google.android.gms.internal.ads;

import g.bzv;
import g.dcy;
import g.edt;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzegv implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzcwo f6943a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f6944b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcqh f6945c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdsh f6946d;

    /* renamed from: e, reason: collision with root package name */
    public final zzegc f6947e;

    /* renamed from: f, reason: collision with root package name */
    public final zzges f6948f;

    public zzegv(zzcqh zzcqhVar, zzegc zzegcVar, zzcwo zzcwoVar, ScheduledExecutorService scheduledExecutorService, zzges zzgesVar, zzdsh zzdshVar) {
        this.f6945c = zzcqhVar;
        this.f6947e = zzegcVar;
        this.f6943a = zzcwoVar;
        this.f6944b = scheduledExecutorService;
        this.f6948f = zzgesVar;
        this.f6946d = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        return this.f6948f.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzegt
            @Override // java.util.concurrent.Callable
            public final Object call() {
                final zzegv zzegvVar = zzegv.this;
                final zzfff zzfffVar2 = zzfffVar;
                final zzfet zzfetVar2 = zzfetVar;
                zzegvVar.getClass();
                return zzegvVar.f6945c.zzb(new zzcsg(zzfffVar2, zzfetVar2, null), new zzcqy(zzfffVar2.zza.zza.zza(), new Runnable() { // from class: com.google.android.gms.internal.ads.zzegs
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzegv zzegvVar2 = zzegv.this;
                        zzgei.zzr(zzgei.zzo(zzegvVar2.f6947e.zza(zzfffVar2, zzfetVar2), r2.zzR, TimeUnit.SECONDS, zzegvVar2.f6944b), new bzv(1, zzegvVar2), zzegvVar2.f6948f);
                    }
                })).mo14zza();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        zzbhp zza = zzfffVar.zza.zza.zza();
        boolean zzb = this.f6947e.zzb(zzfffVar, zzfetVar);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlH)).booleanValue()) {
            String str = zza != null ? "1" : "0";
            zzdsh zzdshVar = this.f6946d;
            zzdshVar.zzb().put("has_dbl", str);
            zzdshVar.zzb().put("crdb", true == zzb ? "1" : "0");
        }
        return zza != null && zzb;
    }
}
