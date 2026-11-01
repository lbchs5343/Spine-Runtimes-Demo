package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzchr implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzchn f5284a;

    public zzchr(zzchn zzchnVar) {
        this.f5284a = zzchnVar;
    }

    public static WeakReference zzc(zzchn zzchnVar) {
        WeakReference weakReference = zzchnVar.f5278a;
        zzhgf.zzb(weakReference);
        return weakReference;
    }

    public final WeakReference zza() {
        return zzc(this.f5284a);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* synthetic */ Object zzb() {
        return zzc(this.f5284a);
    }
}
