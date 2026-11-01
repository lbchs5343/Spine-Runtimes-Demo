package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbhl extends zzayd implements zzbhm {
    public zzbhl() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    public static zzbhm zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        return queryLocalInterface instanceof zzbhm ? (zzbhm) queryLocalInterface : new zzbhk("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbhv zzbhtVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
            zzbhtVar = queryLocalInterface instanceof zzbhv ? (zzbhv) queryLocalInterface : new zzbht("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd", readStrongBinder);
        }
        zzaye.zzc(parcel);
        zze(zzbhtVar);
        parcel2.writeNoException();
        return true;
    }
}
