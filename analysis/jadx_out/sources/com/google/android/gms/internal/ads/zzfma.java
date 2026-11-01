package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.aik;
import g.bxs;
import g.deq;
import g.dzg;
import g.ghd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzfma extends zzayd implements dzg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfmg f7997a;

    public zzfma(zzfmg zzfmgVar) {
        super("com.google.android.gms.ads.internal.client.IAdPreloader");
        this.f7997a = zzfmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        aik bxsVar;
        switch (i) {
            case 1:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(ghd.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    bxsVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    bxsVar = queryLocalInterface instanceof aik ? (aik) queryLocalInterface : new bxs("com.google.android.gms.ads.internal.client.IAdPreloadCallback", readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzi(createTypedArrayList, bxsVar);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString = parcel.readString();
                zzaye.zzc(parcel);
                boolean zzl = zzl(readString);
                parcel2.writeNoException();
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 3:
                String readString2 = parcel.readString();
                zzaye.zzc(parcel);
                zzbxc zzg = zzg(readString2);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzg);
                return true;
            case 4:
                String readString3 = parcel.readString();
                zzaye.zzc(parcel);
                boolean zzj = zzj(readString3);
                parcel2.writeNoException();
                parcel2.writeInt(zzj ? 1 : 0);
                return true;
            case 5:
                String readString4 = parcel.readString();
                zzaye.zzc(parcel);
                zzbaf zze = zze(readString4);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zze);
                return true;
            case 6:
                String readString5 = parcel.readString();
                zzaye.zzc(parcel);
                boolean zzk = zzk(readString5);
                parcel2.writeNoException();
                parcel2.writeInt(zzk ? 1 : 0);
                return true;
            case 7:
                String readString6 = parcel.readString();
                zzaye.zzc(parcel);
                deq zzf = zzf(readString6);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzf);
                return true;
            case 8:
                zzbpg zzf2 = zzbpf.zzf(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzh(zzf2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }

    @Override // g.dzg
    public final zzbaf zze(String str) {
        return this.f7997a.zza(str);
    }

    @Override // g.dzg
    public final deq zzf(String str) {
        return this.f7997a.zzb(str);
    }

    @Override // g.dzg
    public final zzbxc zzg(String str) {
        return this.f7997a.zzc(str);
    }

    @Override // g.dzg
    public final void zzh(zzbpg zzbpgVar) {
        this.f7997a.zze(zzbpgVar);
    }

    @Override // g.dzg
    public final synchronized void zzi(List list, aik aikVar) {
        this.f7997a.zzf(list, aikVar);
    }

    @Override // g.dzg
    public final boolean zzj(String str) {
        return this.f7997a.zzg(str);
    }

    @Override // g.dzg
    public final boolean zzk(String str) {
        return this.f7997a.zzh(str);
    }

    @Override // g.dzg
    public final boolean zzl(String str) {
        return this.f7997a.zzi(str);
    }
}
