package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;
import g.cbz;

/* loaded from: classes3.dex */
public abstract class zzbfu extends zzayd implements zzbfv {
    public zzbfu() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbhg zzbhgVar;
        switch (i) {
            case 2:
                float zze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 3:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzj(d2);
                parcel2.writeNoException();
                return true;
            case 4:
                bjq zzi = zzi();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzi);
                return true;
            case 5:
                float zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeFloat(zzg);
                return true;
            case 6:
                float zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeFloat(zzf);
                return true;
            case 7:
                cbz zzh = zzh();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzh);
                return true;
            case 8:
                boolean zzl = zzl();
                parcel2.writeNoException();
                ClassLoader classLoader = zzaye.f4608a;
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbhgVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    zzbhgVar = queryLocalInterface instanceof zzbhg ? (zzbhg) queryLocalInterface : new zzbhg("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener", readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzm(zzbhgVar);
                parcel2.writeNoException();
                return true;
            case 10:
                boolean zzk = zzk();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzaye.f4608a;
                parcel2.writeInt(zzk ? 1 : 0);
                return true;
            default:
                return false;
        }
    }
}
