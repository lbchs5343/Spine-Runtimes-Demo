package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class h extends zzuf {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f3962a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final Object f3963b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3964c;

    public h(zzbv zzbvVar, Object obj, Object obj2) {
        super(zzbvVar);
        this.f3963b = obj;
        this.f3964c = obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzbv
    public final int zza(Object obj) {
        Object obj2;
        if (f3962a.equals(obj) && (obj2 = this.f3964c) != null) {
            obj = obj2;
        }
        return this.f8899d.zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzbv
    public final zzbt zzd(int i, zzbt zzbtVar, boolean z) {
        this.f8899d.zzd(i, zzbtVar, z);
        if (Objects.equals(zzbtVar.zzb, this.f3964c) && z) {
            zzbtVar.zzb = f3962a;
        }
        return zzbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzbv
    public final zzbu zze(int i, zzbu zzbuVar, long j) {
        this.f8899d.zze(i, zzbuVar, j);
        if (Objects.equals(zzbuVar.zzb, this.f3963b)) {
            zzbuVar.zzb = zzbu.zza;
        }
        return zzbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzbv
    public final Object zzf(int i) {
        Object zzf = this.f8899d.zzf(i);
        return Objects.equals(zzf, this.f3964c) ? f3962a : zzf;
    }
}
