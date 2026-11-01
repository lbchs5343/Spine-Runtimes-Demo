package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import g.gvi;

/* loaded from: classes3.dex */
public final class zzdyf extends zzbvo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdyh f6677a;

    public zzdyf(zzdyh zzdyhVar) {
        this.f6677a = zzdyhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zze(gvi gviVar) {
        this.f6677a.f6683f.zzd(gviVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        zzdyh zzdyhVar = this.f6677a;
        zzdyhVar.f6683f.zzc(new zzdyx(autoCloseInputStream, zzdyhVar.f6682e));
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvx zzbvxVar) {
        this.f6677a.f6683f.zzc(new zzdyx(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbvxVar));
    }
}
