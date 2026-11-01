package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;

/* loaded from: classes3.dex */
public abstract class zzbfx extends zzayd implements zzbfy {
    public zzbfx() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzbfy zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof zzbfy ? (zzbfy) queryLocalInterface : new zzbfw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            bjq zzf = zzf();
            parcel2.writeNoException();
            zzaye.zzf(parcel2, zzf);
            return true;
        }
        if (i == 2) {
            Uri zze = zze();
            parcel2.writeNoException();
            zzaye.zze(parcel2, zze);
            return true;
        }
        if (i == 3) {
            double zzb = zzb();
            parcel2.writeNoException();
            parcel2.writeDouble(zzb);
            return true;
        }
        if (i == 4) {
            int zzd = zzd();
            parcel2.writeNoException();
            parcel2.writeInt(zzd);
            return true;
        }
        if (i != 5) {
            return false;
        }
        int zzc = zzc();
        parcel2.writeNoException();
        parcel2.writeInt(zzc);
        return true;
    }
}
