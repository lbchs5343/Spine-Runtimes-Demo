package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.aeh;
import g.bjq;
import g.bpp;
import g.cbz;
import g.eno;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class zzbpi extends zzayd implements zzbpj {
    public zzbpi() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        zzbpm zzbpkVar;
        zzbpm zzbpkVar2;
        zzbpm zzbpkVar3;
        zzbpm zzbpkVar4;
        zzbpm zzbpkVar5;
        zzbpm zzbpkVar6;
        zzbpm zzbpkVar7;
        zzbpm zzbpkVar8;
        zzbpm zzbpmVar = null;
        switch (i) {
            case 1:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                eno enoVar = (eno) zzaye.zza(parcel, eno.CREATOR);
                aeh aehVar = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbpkVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface instanceof zzbpm ? (zzbpm) queryLocalInterface : new zzbpk(readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzu(d2, enoVar, aehVar, readString, zzbpkVar);
                parcel2.writeNoException();
                return true;
            case 2:
                bjq zzn = zzn();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzn);
                return true;
            case 3:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                aeh aehVar2 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbpkVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar2 = queryLocalInterface2 instanceof zzbpm ? (zzbpm) queryLocalInterface2 : new zzbpk(readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzx(d3, aehVar2, readString2, zzbpkVar2);
                parcel2.writeNoException();
                return true;
            case 4:
                zzI();
                parcel2.writeNoException();
                return true;
            case 5:
                zzo();
                parcel2.writeNoException();
                return true;
            case 6:
                bjq d4 = bpp.d(parcel.readStrongBinder());
                eno enoVar2 = (eno) zzaye.zza(parcel, eno.CREATOR);
                aeh aehVar3 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzbpkVar3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar3 = queryLocalInterface3 instanceof zzbpm ? (zzbpm) queryLocalInterface3 : new zzbpk(readStrongBinder3);
                }
                zzaye.zzc(parcel);
                zzv(d4, enoVar2, aehVar3, readString3, readString4, zzbpkVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                aeh aehVar4 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzbpkVar4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar4 = queryLocalInterface4 instanceof zzbpm ? (zzbpm) queryLocalInterface4 : new zzbpk(readStrongBinder4);
                }
                zzaye.zzc(parcel);
                zzy(d5, aehVar4, readString5, readString6, zzbpkVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                zzE();
                parcel2.writeNoException();
                return true;
            case 9:
                zzF();
                parcel2.writeNoException();
                return true;
            case 10:
                bjq d6 = bpp.d(parcel.readStrongBinder());
                aeh aehVar5 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString7 = parcel.readString();
                zzbwu zzb = zzbwt.zzb(parcel.readStrongBinder());
                String readString8 = parcel.readString();
                zzaye.zzc(parcel);
                zzp(d6, aehVar5, readString7, zzb, readString8);
                parcel2.writeNoException();
                return true;
            case 11:
                aeh aehVar6 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString9 = parcel.readString();
                zzaye.zzc(parcel);
                zzs(aehVar6, readString9);
                parcel2.writeNoException();
                return true;
            case 12:
                zzL();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzN = zzN();
                parcel2.writeNoException();
                ClassLoader classLoader = zzaye.f4608a;
                parcel2.writeInt(zzN ? 1 : 0);
                return true;
            case 14:
                bjq d7 = bpp.d(parcel.readStrongBinder());
                aeh aehVar7 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzbpkVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar5 = queryLocalInterface5 instanceof zzbpm ? (zzbpm) queryLocalInterface5 : new zzbpk(readStrongBinder5);
                }
                zzbfn zzbfnVar = (zzbfn) zzaye.zza(parcel, zzbfn.CREATOR);
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                zzaye.zzc(parcel);
                zzz(d7, aehVar7, readString10, readString11, zzbpkVar5, zzbfnVar, createStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzaye.zzf(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzaye.zzf(parcel2, null);
                return true;
            case 17:
                Bundle zze = zze();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zze);
                return true;
            case 18:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzf);
                return true;
            case 19:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzg);
                return true;
            case 20:
                aeh aehVar8 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                zzaye.zzc(parcel);
                zzB(aehVar8, readString12, readString13);
                parcel2.writeNoException();
                return true;
            case 21:
                bjq d8 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzD(d8);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzaye.f4608a;
                parcel2.writeInt(0);
                return true;
            case 23:
                bjq d9 = bpp.d(parcel.readStrongBinder());
                zzbwu zzb2 = zzbwt.zzb(parcel.readStrongBinder());
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                zzaye.zzc(parcel);
                zzr(d9, zzb2, createStringArrayList2);
                parcel2.writeNoException();
                return true;
            case 24:
                zzbgs zzi = zzi();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzi);
                return true;
            case 25:
                boolean zzg2 = zzaye.zzg(parcel);
                zzaye.zzc(parcel);
                zzG(zzg2);
                parcel2.writeNoException();
                return true;
            case 26:
                cbz zzh = zzh();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzh);
                return true;
            case 27:
                zzbpv zzk = zzk();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzk);
                return true;
            case 28:
                bjq d10 = bpp.d(parcel.readStrongBinder());
                aeh aehVar9 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString14 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzbpkVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar6 = queryLocalInterface6 instanceof zzbpm ? (zzbpm) queryLocalInterface6 : new zzbpk(readStrongBinder6);
                }
                zzaye.zzc(parcel);
                zzA(d10, aehVar9, readString14, zzbpkVar6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                bjq d11 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzK(d11);
                parcel2.writeNoException();
                return true;
            case 31:
                bjq d12 = bpp.d(parcel.readStrongBinder());
                zzblt zzb3 = zzbls.zzb(parcel.readStrongBinder());
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzblz.CREATOR);
                zzaye.zzc(parcel);
                zzq(d12, zzb3, createTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                bjq d13 = bpp.d(parcel.readStrongBinder());
                aeh aehVar10 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString15 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzbpkVar7 = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar7 = queryLocalInterface7 instanceof zzbpm ? (zzbpm) queryLocalInterface7 : new zzbpk(readStrongBinder7);
                }
                zzaye.zzc(parcel);
                zzC(d13, aehVar10, readString15, zzbpkVar7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbru zzl = zzl();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzl);
                return true;
            case 34:
                zzbru zzm = zzm();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzm);
                return true;
            case 35:
                bjq d14 = bpp.d(parcel.readStrongBinder());
                eno enoVar3 = (eno) zzaye.zza(parcel, eno.CREATOR);
                aeh aehVar11 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString16 = parcel.readString();
                String readString17 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzbpkVar8 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar8 = queryLocalInterface8 instanceof zzbpm ? (zzbpm) queryLocalInterface8 : new zzbpk(readStrongBinder8);
                }
                zzaye.zzc(parcel);
                zzw(d14, enoVar3, aehVar11, readString16, readString17, zzbpkVar8);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbpp zzj = zzj();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzj);
                return true;
            case 37:
                bjq d15 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzJ(d15);
                parcel2.writeNoException();
                return true;
            case 38:
                bjq d16 = bpp.d(parcel.readStrongBinder());
                aeh aehVar12 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                String readString18 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpmVar = queryLocalInterface9 instanceof zzbpm ? (zzbpm) queryLocalInterface9 : new zzbpk(readStrongBinder9);
                }
                zzaye.zzc(parcel);
                zzt(d16, aehVar12, readString18, zzbpmVar);
                parcel2.writeNoException();
                return true;
            case 39:
                bjq d17 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzH(d17);
                parcel2.writeNoException();
                return true;
        }
    }
}
