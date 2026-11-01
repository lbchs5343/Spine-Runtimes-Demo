package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbhe extends zzayd implements zzbhf {
    public zzbhe() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    public static zzbhf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
        return queryLocalInterface instanceof zzbhf ? (zzbhf) queryLocalInterface : new zzbhd("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbgs zzbgqVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzbgqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            zzbgqVar = queryLocalInterface instanceof zzbgs ? (zzbgs) queryLocalInterface : new zzbgq(readStrongBinder);
        }
        zzaye.zzc(parcel);
        zze(zzbgqVar);
        parcel2.writeNoException();
        return true;
    }
}
