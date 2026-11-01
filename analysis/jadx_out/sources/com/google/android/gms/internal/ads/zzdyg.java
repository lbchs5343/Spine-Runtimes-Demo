package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import g.gvi;

/* loaded from: classes3.dex */
public final class zzdyg extends zzbvo {

    /* renamed from: a, reason: collision with root package name */
    public final zzcao f6678a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbvx f6679b;

    public zzdyg(zzcao zzcaoVar, zzbvx zzbvxVar) {
        this.f6678a = zzcaoVar;
        this.f6679b = zzbvxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zze(gvi gviVar) {
        this.f6678a.zzd(gviVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.f6678a.zzc(new zzdyx(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f6679b));
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvx zzbvxVar) {
        this.f6678a.zzc(new zzdyx(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbvxVar));
    }
}
