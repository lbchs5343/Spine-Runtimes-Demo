package com.google.android.gms.internal.ads;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class zzdvg {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzdvg[] f6568a;
    public static final zzdvg zza;
    public static final zzdvg zzb;
    public static final zzdvg zzc;

    static {
        zzdvg zzdvgVar = new zzdvg("NONE", 0);
        zza = zzdvgVar;
        zzdvg zzdvgVar2 = new zzdvg("SHAKE", 1);
        zzb = zzdvgVar2;
        zzdvg zzdvgVar3 = new zzdvg("FLICK", 2);
        zzc = zzdvgVar3;
        f6568a = new zzdvg[]{zzdvgVar, zzdvgVar2, zzdvgVar3};
    }

    public static zzdvg[] values() {
        return (zzdvg[]) f6568a.clone();
    }
}
