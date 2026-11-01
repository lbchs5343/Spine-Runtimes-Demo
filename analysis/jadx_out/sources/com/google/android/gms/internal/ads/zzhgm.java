package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzhgm implements zzhgg {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8742a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile zzhgg f8743b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f8744c;

    public static zzhgg zza(zzhgg zzhggVar) {
        if ((zzhggVar instanceof zzhgm) || (zzhggVar instanceof zzhfw)) {
            return zzhggVar;
        }
        zzhgm zzhgmVar = new zzhgm();
        zzhgmVar.f8744c = f8742a;
        zzhgmVar.f8743b = zzhggVar;
        return zzhgmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        Object obj = this.f8744c;
        if (obj != f8742a) {
            return obj;
        }
        zzhgg zzhggVar = this.f8743b;
        if (zzhggVar == null) {
            return this.f8744c;
        }
        Object zzb = zzhggVar.zzb();
        this.f8744c = zzb;
        this.f8743b = null;
        return zzb;
    }
}
