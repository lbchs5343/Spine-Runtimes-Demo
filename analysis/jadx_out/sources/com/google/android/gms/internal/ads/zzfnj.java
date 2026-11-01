package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzfnj {

    /* renamed from: a, reason: collision with root package name */
    public final String f8060a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8061b;

    public zzfnj(String str, String str2) {
        this.f8060a = str;
        this.f8061b = str2;
    }

    public static zzfnj zza(String str, String str2) {
        zzfor.zzb(str, "Name is null or empty");
        zzfor.zzb(str2, "Version is null or empty");
        return new zzfnj(str, str2);
    }

    public final String zzb() {
        return this.f8060a;
    }

    public final String zzc() {
        return this.f8061b;
    }
}
