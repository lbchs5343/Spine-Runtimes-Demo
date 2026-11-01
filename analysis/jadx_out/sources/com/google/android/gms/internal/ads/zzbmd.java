package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;
import g.cbz;

/* loaded from: classes3.dex */
public abstract class zzbmd extends zzayd implements zzbme {
    public zzbmd() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbmh zzbmfVar;
        if (i == 3) {
            cbz zzb = zzb();
            parcel2.writeNoException();
            zzaye.zzf(parcel2, zzb);
            return true;
        }
        if (i == 4) {
            zzd();
            parcel2.writeNoException();
            return true;
        }
        if (i == 5) {
            bjq d2 = bpp.d(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbmfVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzbmfVar = queryLocalInterface instanceof zzbmh ? (zzbmh) queryLocalInterface : new zzbmf("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback", readStrongBinder);
            }
            zzaye.zzc(parcel);
            zzf(d2, zzbmfVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 6) {
            bjq d3 = bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            zze(d3);
            parcel2.writeNoException();
            return true;
        }
        if (i != 7) {
            return false;
        }
        zzbfv zzc = zzc();
        parcel2.writeNoException();
        zzaye.zzf(parcel2, zzc);
        return true;
    }
}
