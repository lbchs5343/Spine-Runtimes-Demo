package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbgv;
import com.google.android.gms.internal.ads.zzbgw;
import com.google.android.gms.internal.ads.zzbgy;
import com.google.android.gms.internal.ads.zzbgz;
import com.google.android.gms.internal.ads.zzbhb;
import com.google.android.gms.internal.ads.zzbhc;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbhi;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzbhl;
import com.google.android.gms.internal.ads.zzbhm;
import com.google.android.gms.internal.ads.zzbmb;
import com.google.android.gms.internal.ads.zzbmj;
import com.google.android.gms.internal.ads.zzbmk;

/* loaded from: classes3.dex */
public abstract class zh extends zzayd implements hav {
    public zh() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        ejp ejpVar = null;
        atu atuVar = null;
        switch (i) {
            case 1:
                cpu zze = zze();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ejpVar = queryLocalInterface instanceof ejp ? (ejp) queryLocalInterface : new gpc(readStrongBinder);
                }
                zzaye.zzc(parcel);
                zzl(ejpVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbgw zzb = zzbgv.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzf(zzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbgz zzb2 = zzbgy.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzg(zzb2);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                zzbhf zzb3 = zzbhe.zzb(parcel.readStrongBinder());
                zzbhc zzb4 = zzbhb.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzh(readString, zzb3, zzb4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbfn zzbfnVar = (zzbfn) zzaye.zza(parcel, zzbfn.CREATOR);
                zzaye.zzc(parcel);
                zzo(zzbfnVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    atuVar = queryLocalInterface2 instanceof atu ? (atu) queryLocalInterface2 : new atu(readStrongBinder2);
                }
                zzaye.zzc(parcel);
                zzq(atuVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbhj zzb5 = zzbhi.zzb(parcel.readStrongBinder());
                eno enoVar = (eno) zzaye.zza(parcel, eno.CREATOR);
                zzaye.zzc(parcel);
                zzj(zzb5, enoVar);
                parcel2.writeNoException();
                return true;
            case 9:
                gfp gfpVar = (gfp) zzaye.zza(parcel, gfp.CREATOR);
                zzaye.zzc(parcel);
                zzp(gfpVar);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbhm zzb6 = zzbhl.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzk(zzb6);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzbmb zzbmbVar = (zzbmb) zzaye.zza(parcel, zzbmb.CREATOR);
                zzaye.zzc(parcel);
                zzn(zzbmbVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbmk zzb7 = zzbmj.zzb(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzi(zzb7);
                parcel2.writeNoException();
                return true;
            case 15:
                dgw dgwVar = (dgw) zzaye.zza(parcel, dgw.CREATOR);
                zzaye.zzc(parcel);
                zzm(dgwVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
