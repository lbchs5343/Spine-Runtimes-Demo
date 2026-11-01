package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbah;
import com.google.android.gms.internal.ads.zzbai;
import com.google.android.gms.internal.ads.zzbdh;
import com.google.android.gms.internal.ads.zzbdi;
import com.google.android.gms.internal.ads.zzbto;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbtr;
import com.google.android.gms.internal.ads.zzbts;
import com.google.android.gms.internal.ads.zzbwo;
import com.google.android.gms.internal.ads.zzbwp;

/* loaded from: classes3.dex */
public abstract class afk extends zzayd implements deq {
    public afk() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static deq zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof deq ? (deq) queryLocalInterface : new hi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        ejp ejpVar = null;
        bzx bzxVar = null;
        gpa gpaVar = null;
        gwt gwtVar = null;
        gb gbVar = null;
        atu atuVar = null;
        dyo dyoVar = null;
        fbj fbjVar = null;
        switch (i) {
            case 1:
                bjq zzn = zzn();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzn);
                return true;
            case 2:
                zzx();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzaa = zzaa();
                parcel2.writeNoException();
                ClassLoader classLoader = zzaye.f4608a;
                parcel2.writeInt(zzaa ? 1 : 0);
                return true;
            case 4:
                aeh aehVar = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                zzaye.zzc(parcel);
                boolean zzab = zzab(aehVar);
                parcel2.writeNoException();
                parcel2.writeInt(zzab ? 1 : 0);
                return true;
            case 5:
                zzz();
                parcel2.writeNoException();
                return true;
            case 6:
                zzB();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ejpVar = queryLocalInterface instanceof ejp ? (ejp) queryLocalInterface : new gpc(readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzD(ejpVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    fbjVar = queryLocalInterface2 instanceof fbj ? (fbj) queryLocalInterface2 : new dej(readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzG(fbjVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzX();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzA();
                parcel2.writeNoException();
                return true;
            case 12:
                eno zzg = zzg();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzg);
                return true;
            case 13:
                eno enoVar = (eno) zzaye.zza(parcel, eno.CREATOR);
                zzaye.zzc(parcel);
                zzF(enoVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbtp zzb = zzbto.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzM(zzb);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbts zzb2 = zzbtr.zzb(parcel.readStrongBinder());
                String readString = parcel.readString();
                zzaye.zzc(parcel);
                zzQ(zzb2, readString);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 19:
                zzbdi zzb3 = zzbdh.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzO(zzb3);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    dyoVar = queryLocalInterface3 instanceof dyo ? (dyo) queryLocalInterface3 : new hcf("com.google.android.gms.ads.internal.client.IAdClickListener", readStrongBinder3);
                }
                zzaye.zzc(parcel);
                zzC(dyoVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    atuVar = queryLocalInterface4 instanceof atu ? (atu) queryLocalInterface4 : new atu(readStrongBinder4);
                }
                zzaye.zzc(parcel);
                zzac(atuVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zzg2 = zzaye.zzg(parcel);
                zzaye.zzc(parcel);
                zzN(zzg2);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zzZ = zzZ();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzaye.f4608a;
                parcel2.writeInt(zzZ ? 1 : 0);
                return true;
            case 24:
                zzbwp zzb4 = zzbwo.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzS(zzb4);
                parcel2.writeNoException();
                return true;
            case 25:
                String readString2 = parcel.readString();
                zzaye.zzc(parcel);
                zzT(readString2);
                parcel2.writeNoException();
                return true;
            case 26:
                cbz zzl = zzl();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzl);
                return true;
            case 29:
                cpm cpmVar = (cpm) zzaye.zza(parcel, cpm.CREATOR);
                zzaye.zzc(parcel);
                zzU(cpmVar);
                parcel2.writeNoException();
                return true;
            case 30:
                fsf fsfVar = (fsf) zzaye.zza(parcel, fsf.CREATOR);
                zzaye.zzc(parcel);
                zzK(fsfVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 32:
                fbj zzj = zzj();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzj);
                return true;
            case 33:
                ejp zzi = zzi();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzi);
                return true;
            case 34:
                boolean zzg3 = zzaye.zzg(parcel);
                zzaye.zzc(parcel);
                zzL(zzg3);
                parcel2.writeNoException();
                return true;
            case 35:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    gbVar = queryLocalInterface5 instanceof gb ? (gb) queryLocalInterface5 : new acd(readStrongBinder5);
                }
                zzaye.zzc(parcel);
                zzE(gbVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzd = zzd();
                parcel2.writeNoException();
                zzaye.zze(parcel2, zzd);
                return true;
            case 38:
                String readString3 = parcel.readString();
                zzaye.zzc(parcel);
                zzR(readString3);
                parcel2.writeNoException();
                return true;
            case 39:
                gby gbyVar = (gby) zzaye.zza(parcel, gby.CREATOR);
                zzaye.zzc(parcel);
                zzI(gbyVar);
                parcel2.writeNoException();
                return true;
            case 40:
                zzbai zze = zzbah.zze(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzH(zze);
                parcel2.writeNoException();
                return true;
            case 41:
                gcq zzk = zzk();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzk);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    gwtVar = queryLocalInterface6 instanceof gwt ? (gwt) queryLocalInterface6 : new bty(readStrongBinder6);
                }
                zzaye.zzc(parcel);
                zzP(gwtVar);
                parcel2.writeNoException();
                return true;
            case 43:
                aeh aehVar2 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    gpaVar = queryLocalInterface7 instanceof gpa ? (gpa) queryLocalInterface7 : new cxz("com.google.android.gms.ads.internal.client.IAdLoadCallback", readStrongBinder7);
                }
                zzaye.zzc(parcel);
                zzy(aehVar2, gpaVar);
                parcel2.writeNoException();
                return true;
            case 44:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzW(d2);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    bzxVar = queryLocalInterface8 instanceof bzx ? (bzx) queryLocalInterface8 : new eif("com.google.android.gms.ads.internal.client.IFullScreenContentCallback", readStrongBinder8);
                }
                zzaye.zzc(parcel);
                zzJ(bzxVar);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zzY = zzY();
                parcel2.writeNoException();
                ClassLoader classLoader3 = zzaye.f4608a;
                parcel2.writeInt(zzY ? 1 : 0);
                return true;
        }
    }
}
