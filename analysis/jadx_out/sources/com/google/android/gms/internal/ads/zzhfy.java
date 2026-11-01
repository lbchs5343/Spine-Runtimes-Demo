package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzhfy implements zzhfx, zzhfr {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhfy f8735a = new zzhfy(null);

    /* renamed from: b, reason: collision with root package name */
    public final Object f8736b;

    public zzhfy(Object obj) {
        this.f8736b = obj;
    }

    public static zzhfx zza(Object obj) {
        zzhgf.zza(obj, "instance cannot be null");
        return new zzhfy(obj);
    }

    public static zzhfx zzc(Object obj) {
        return obj == null ? f8735a : new zzhfy(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return this.f8736b;
    }
}
