package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzhfv implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public zzhgg f8731a;

    public static void zza(zzhgg zzhggVar, zzhgg zzhggVar2) {
        zzhfv zzhfvVar = (zzhfv) zzhggVar;
        if (zzhfvVar.f8731a != null) {
            throw new IllegalStateException();
        }
        zzhfvVar.f8731a = zzhggVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzhgg zzhggVar = this.f8731a;
        if (zzhggVar != null) {
            return zzhggVar.zzb();
        }
        throw new IllegalStateException();
    }
}
