package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzhfw implements zzhgg, zzhfr {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8732a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile zzhgg f8733b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f8734c = f8732a;

    public zzhfw(zzhgg zzhggVar) {
        this.f8733b = zzhggVar;
    }

    public static zzhfr zza(zzhgg zzhggVar) {
        return zzhggVar instanceof zzhfr ? (zzhfr) zzhggVar : new zzhfw(zzhggVar);
    }

    public static zzhgg zzc(zzhgg zzhggVar) {
        return zzhggVar instanceof zzhfw ? zzhggVar : new zzhfw(zzhggVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        Object obj = this.f8734c;
        Object obj2 = f8732a;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                Object obj3 = this.f8734c;
                if (obj3 != obj2) {
                    return obj3;
                }
                Object zzb = this.f8733b.zzb();
                Object obj4 = this.f8734c;
                if (obj4 != obj2 && obj4 != zzb) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + zzb + ". This is likely due to a circular dependency.");
                }
                this.f8734c = zzb;
                this.f8733b = null;
                return zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
