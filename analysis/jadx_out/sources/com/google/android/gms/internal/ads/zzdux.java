package com.google.android.gms.internal.ads;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class zzdux {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzdux[] f6545a;
    public static final zzdux zza;
    public static final zzdux zzb;
    public static final zzdux zzc;

    static {
        zzdux zzduxVar = new zzdux("AD_REQUESTED", 0);
        zza = zzduxVar;
        zzdux zzduxVar2 = new zzdux("AD_LOADED", 1);
        zzb = zzduxVar2;
        zzdux zzduxVar3 = new zzdux("AD_LOAD_FAILED", 2);
        zzc = zzduxVar3;
        f6545a = new zzdux[]{zzduxVar, zzduxVar2, zzduxVar3};
    }

    public static zzdux[] values() {
        return (zzdux[]) f6545a.clone();
    }
}
