package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.bjq;
import g.bpp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class zzbzg extends zzayd implements zzbzh {
    public zzbzg() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static zzbzh zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof zzbzh ? (zzbzh) queryLocalInterface : new zzbzf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbze zzbzeVar = null;
        switch (i) {
            case 1:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzbzl zzbzlVar = (zzbzl) zzaye.zza(parcel, zzbzl.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    zzbzeVar = queryLocalInterface instanceof zzbze ? (zzbze) queryLocalInterface : new zzbzc("com.google.android.gms.ads.internal.signals.ISignalCallback", readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzf(d2, zzbzlVar, zzbzeVar);
                parcel2.writeNoException();
                return true;
            case 2:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzk(d3);
                parcel2.writeNoException();
                return true;
            case 3:
                bpp.d(parcel.readStrongBinder());
                bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, null);
                return true;
            case 4:
                bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, null);
                return true;
            case 5:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                bjq d4 = bpp.d(parcel.readStrongBinder());
                zzbtv zzb = zzbtu.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzm(createTypedArrayList, d4, zzb);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList createTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                bjq d5 = bpp.d(parcel.readStrongBinder());
                zzbtv zzb2 = zzbtu.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzl(createTypedArrayList2, d5, zzb2);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbue zzbueVar = (zzbue) zzaye.zza(parcel, zzbue.CREATOR);
                zzaye.zzc(parcel);
                zzg(zzbueVar);
                parcel2.writeNoException();
                return true;
            case 8:
                bjq d6 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzj(d6);
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList createTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                bjq d7 = bpp.d(parcel.readStrongBinder());
                zzbtv zzb3 = zzbtu.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzi(createTypedArrayList3, d7, zzb3);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList createTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                bjq d8 = bpp.d(parcel.readStrongBinder());
                zzbtv zzb4 = zzbtu.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzh(createTypedArrayList4, d8, zzb4);
                parcel2.writeNoException();
                return true;
            case 11:
                bjq d9 = bpp.d(parcel.readStrongBinder());
                bjq d10 = bpp.d(parcel.readStrongBinder());
                String readString = parcel.readString();
                bjq d11 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                bjq zze = zze(d9, d10, readString, d11);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zze);
                return true;
            default:
                return false;
        }
    }
}
