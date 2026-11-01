package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.abz;

/* loaded from: classes3.dex */
public abstract class zzbah extends zzayd implements zzbai {
    public zzbah() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzbai zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return queryLocalInterface instanceof zzbai ? (zzbai) queryLocalInterface : new zzbag("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbaf zzbadVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbadVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzbadVar = queryLocalInterface instanceof zzbaf ? (zzbaf) queryLocalInterface : new zzbad(readStrongBinder);
            }
            zzaye.zzc(parcel);
            zzd(zzbadVar);
        } else if (i == 2) {
            parcel.readInt();
            zzaye.zzc(parcel);
        } else {
            if (i != 3) {
                return false;
            }
            abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
            zzaye.zzc(parcel);
            zzc(abzVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
