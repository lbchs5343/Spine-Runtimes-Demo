package com.google.android.gms.internal.ads;

import android.webkit.CookieManager;
import g.dcy;
import g.edt;
import g.ti;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzdxe implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6631a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6632b;

    public zzdxe(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6631a = zzhgpVar;
        this.f6632b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzfjr zzfjrVar = (zzfjr) this.f6631a.zzb();
        final CookieManager a2 = ti.f20033a.k.a();
        zzfjh zzi = zzfjb.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = a2;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) edt.f15376a.f15379d.zza(zzbcn.zzaV));
            }
        }, zzfjl.WEBVIEW_COOKIE, zzfjrVar).zzi(1L, TimeUnit.SECONDS);
        final zzfiv zzfivVar = new zzfiv() { // from class: com.google.android.gms.internal.ads.zzdxa
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                return "";
            }
        };
        return zzi.zzc(Exception.class, new zzgdp(zzfivVar) { // from class: com.google.android.gms.internal.ads.zzfjc
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh("");
            }
        }).zza();
    }
}
