package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import g.aeh;
import g.bjq;
import g.bpp;
import g.cbz;
import g.eno;

/* loaded from: classes3.dex */
public abstract class zzbre extends zzayd implements zzbrf {
    public zzbre() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbrf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzbrf ? (zzbrf) queryLocalInterface : new zzbrd("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbri zzbriVar = null;
        zzbqq zzbqqVar = null;
        zzbqz zzbqzVar = null;
        zzbqt zzbqrVar = null;
        zzbrc zzbrcVar = null;
        zzbqz zzbqzVar2 = null;
        zzbrc zzbrcVar2 = null;
        zzbqw zzbqwVar = null;
        zzbqt zzbqrVar2 = null;
        if (i == 1) {
            bjq d2 = bpp.d(parcel.readStrongBinder());
            String readString = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzaye.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzaye.zza(parcel, creator);
            eno enoVar = (eno) zzaye.zza(parcel, eno.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbriVar = queryLocalInterface instanceof zzbri ? (zzbri) queryLocalInterface : new zzbrg("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback", readStrongBinder);
            }
            zzaye.zzc(parcel);
            zzh(d2, readString, bundle, bundle2, enoVar, zzbriVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 2) {
            zzbru zzf = zzf();
            parcel2.writeNoException();
            zzaye.zze(parcel2, zzf);
            return true;
        }
        if (i == 3) {
            zzbru zzg = zzg();
            parcel2.writeNoException();
            zzaye.zze(parcel2, zzg);
            return true;
        }
        if (i == 5) {
            cbz zze = zze();
            parcel2.writeNoException();
            zzaye.zzf(parcel2, zze);
            return true;
        }
        if (i == 10) {
            bpp.d(parcel.readStrongBinder());
            zzaye.zzc(parcel);
            parcel2.writeNoException();
            return true;
        }
        if (i == 11) {
            parcel.createStringArray();
            zzaye.zzc(parcel);
            parcel2.writeNoException();
            return true;
        }
        switch (i) {
            case 13:
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                aeh aehVar = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d3 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    zzbqrVar2 = queryLocalInterface2 instanceof zzbqt ? (zzbqt) queryLocalInterface2 : new zzbqr(readStrongBinder2);
                }
                zzbqt zzbqtVar = zzbqrVar2;
                zzbpm zzb = zzbpl.zzb(parcel.readStrongBinder());
                eno enoVar2 = (eno) zzaye.zza(parcel, eno.CREATOR);
                zzaye.zzc(parcel);
                zzj(readString2, readString3, aehVar, d3, zzbqtVar, zzb, enoVar2);
                parcel2.writeNoException();
                break;
            case 14:
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                aeh aehVar2 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d4 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                    zzbqwVar = queryLocalInterface3 instanceof zzbqw ? (zzbqw) queryLocalInterface3 : new zzbqu("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback", readStrongBinder3);
                }
                zzbpm zzb2 = zzbpl.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzl(readString4, readString5, aehVar2, d4, zzbqwVar, zzb2);
                parcel2.writeNoException();
                break;
            case 15:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                boolean zzs = zzs(d5);
                parcel2.writeNoException();
                parcel2.writeInt(zzs ? 1 : 0);
                break;
            case 16:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                aeh aehVar3 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d6 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    zzbrcVar2 = queryLocalInterface4 instanceof zzbrc ? (zzbrc) queryLocalInterface4 : new zzbra(readStrongBinder4);
                }
                zzbpm zzb3 = zzbpl.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzp(readString6, readString7, aehVar3, d6, zzbrcVar2, zzb3);
                parcel2.writeNoException();
                break;
            case 17:
                bjq d7 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                boolean zzt = zzt(d7);
                parcel2.writeNoException();
                parcel2.writeInt(zzt ? 1 : 0);
                break;
            case 18:
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                aeh aehVar4 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d8 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                    zzbqzVar2 = queryLocalInterface5 instanceof zzbqz ? (zzbqz) queryLocalInterface5 : new zzbqx(readStrongBinder5);
                }
                zzbpm zzb4 = zzbpl.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzm(readString8, readString9, aehVar4, d8, zzbqzVar2, zzb4);
                parcel2.writeNoException();
                break;
            case 19:
                String readString10 = parcel.readString();
                zzaye.zzc(parcel);
                zzq(readString10);
                parcel2.writeNoException();
                break;
            case 20:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                aeh aehVar5 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d9 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    zzbrcVar = queryLocalInterface6 instanceof zzbrc ? (zzbrc) queryLocalInterface6 : new zzbra(readStrongBinder6);
                }
                zzbpm zzb5 = zzbpl.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzo(readString11, readString12, aehVar5, d9, zzbrcVar, zzb5);
                parcel2.writeNoException();
                break;
            case 21:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                aeh aehVar6 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d10 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    zzbqrVar = queryLocalInterface7 instanceof zzbqt ? (zzbqt) queryLocalInterface7 : new zzbqr(readStrongBinder7);
                }
                zzbqt zzbqtVar2 = zzbqrVar;
                zzbpm zzb6 = zzbpl.zzb(parcel.readStrongBinder());
                eno enoVar3 = (eno) zzaye.zza(parcel, eno.CREATOR);
                zzaye.zzc(parcel);
                zzk(readString13, readString14, aehVar6, d10, zzbqtVar2, zzb6, enoVar3);
                parcel2.writeNoException();
                break;
            case 22:
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                aeh aehVar7 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d11 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                    zzbqzVar = queryLocalInterface8 instanceof zzbqz ? (zzbqz) queryLocalInterface8 : new zzbqx(readStrongBinder8);
                }
                zzbpm zzb7 = zzbpl.zzb(parcel.readStrongBinder());
                zzbfn zzbfnVar = (zzbfn) zzaye.zza(parcel, zzbfn.CREATOR);
                zzaye.zzc(parcel);
                zzn(readString15, readString16, aehVar7, d11, zzbqzVar, zzb7, zzbfnVar);
                parcel2.writeNoException();
                break;
            case 23:
                String readString17 = parcel.readString();
                String readString18 = parcel.readString();
                aeh aehVar8 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                bjq d12 = bpp.d(parcel.readStrongBinder());
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                    zzbqqVar = queryLocalInterface9 instanceof zzbqq ? (zzbqq) queryLocalInterface9 : new zzbqo("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback", readStrongBinder9);
                }
                zzbpm zzb8 = zzbpl.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzi(readString17, readString18, aehVar8, d12, zzbqqVar, zzb8);
                parcel2.writeNoException();
                break;
            case 24:
                bjq d13 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                boolean zzr = zzr(d13);
                parcel2.writeNoException();
                parcel2.writeInt(zzr ? 1 : 0);
                break;
        }
        return true;
    }
}
