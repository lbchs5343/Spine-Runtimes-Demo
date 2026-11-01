package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeqv implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzffo f7402a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7403b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdqi f7404c;

    /* renamed from: d, reason: collision with root package name */
    public final String f7405d;

    public zzeqv(zzges zzgesVar, zzdqi zzdqiVar, zzffo zzffoVar, String str) {
        this.f7403b = zzgesVar;
        this.f7404c = zzdqiVar;
        this.f7402a = zzffoVar;
        this.f7405d = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7403b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzequ
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeqv zzeqvVar = zzeqv.this;
                zzdqi zzdqiVar = zzeqvVar.f7404c;
                return new zzeqw(zzdqiVar.zzb(zzeqvVar.f7402a.zzf, zzeqvVar.f7405d), zzdqiVar.zza());
            }
        });
    }
}
