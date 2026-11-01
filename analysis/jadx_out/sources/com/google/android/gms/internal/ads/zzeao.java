package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import g.gvi;

/* loaded from: classes3.dex */
public final class zzeao extends zzbvl {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzeap f6746a;

    public zzeao(zzeap zzeapVar) {
        this.f6746a = zzeapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze(gvi gviVar) {
        this.f6746a.f6751f.zzd(gviVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.f6746a.f6751f.zzc(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
