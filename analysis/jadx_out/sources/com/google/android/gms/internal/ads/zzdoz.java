package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbbs;

/* loaded from: classes3.dex */
public final class zzdoz implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6337a;

    public zzdoz(zzhgp zzhgpVar) {
        this.f6337a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbbs.zza.EnumC0207zza enumC0207zza = ((zzcwd) this.f6337a).zza().zzo.zza == 3 ? zzbbs.zza.EnumC0207zza.REWARDED_INTERSTITIAL : zzbbs.zza.EnumC0207zza.REWARD_BASED_VIDEO_AD;
        zzhgf.zzb(enumC0207zza);
        return enumC0207zza;
    }
}
