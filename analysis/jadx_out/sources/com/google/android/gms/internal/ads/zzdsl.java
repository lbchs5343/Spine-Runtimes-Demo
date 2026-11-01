package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class zzdsl {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f6454a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzdsm f6455b;

    public zzdsl(zzdsm zzdsmVar) {
        this.f6455b = zzdsmVar;
    }

    public final zzdsl zzb(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.f6454a.put(str, str2);
        }
        return this;
    }

    public final zzdsl zzc(zzfet zzfetVar) {
        zzb("aai", zzfetVar.zzw);
        zzb("request_id", zzfetVar.zzan);
        zzb("ad_format", zzfet.zza(zzfetVar.zzb));
        return this;
    }

    public final zzdsl zzd(zzfew zzfewVar) {
        zzb("gqi", zzfewVar.zzb);
        return this;
    }

    public final String zze() {
        zzdsr zzdsrVar = this.f6455b.f6456a;
        return zzdsrVar.f6471e.b(this.f6454a);
    }

    public final void zzf() {
        this.f6455b.f6457b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsj
            @Override // java.lang.Runnable
            public final void run() {
                zzdsl zzdslVar = zzdsl.this;
                zzdslVar.f6455b.f6456a.zzf(zzdslVar.f6454a);
            }
        });
    }

    public final void zzg() {
        this.f6455b.f6457b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsk
            @Override // java.lang.Runnable
            public final void run() {
                zzdsl zzdslVar = zzdsl.this;
                zzdslVar.f6455b.f6456a.zze(zzdslVar.f6454a);
            }
        });
    }
}
