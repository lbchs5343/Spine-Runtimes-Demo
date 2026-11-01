package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbpf extends zzayd implements zzbpg {
    public zzbpf() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzbpg zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzbpg ? (zzbpg) queryLocalInterface : new zzbpe("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String readString = parcel.readString();
            zzaye.zzc(parcel);
            zzbpj zzb = zzb(readString);
            parcel2.writeNoException();
            zzaye.zzf(parcel2, zzb);
            return true;
        }
        if (i == 2) {
            String readString2 = parcel.readString();
            zzaye.zzc(parcel);
            boolean zze = zze(readString2);
            parcel2.writeNoException();
            parcel2.writeInt(zze ? 1 : 0);
            return true;
        }
        if (i == 3) {
            String readString3 = parcel.readString();
            zzaye.zzc(parcel);
            zzbrf zzc = zzc(readString3);
            parcel2.writeNoException();
            zzaye.zzf(parcel2, zzc);
            return true;
        }
        if (i != 4) {
            return false;
        }
        String readString4 = parcel.readString();
        zzaye.zzc(parcel);
        boolean zzd = zzd(readString4);
        parcel2.writeNoException();
        parcel2.writeInt(zzd ? 1 : 0);
        return true;
    }
}
