package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public abstract class cpj extends zzayd implements cpu {
    public cpj() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            aeh aehVar = (aeh) zzaye.zza(parcel, aeh.CREATOR);
            zzaye.zzc(parcel);
            zzg(aehVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 2) {
            String zze = zze();
            parcel2.writeNoException();
            parcel2.writeString(zze);
            return true;
        }
        if (i == 3) {
            boolean zzi = zzi();
            parcel2.writeNoException();
            ClassLoader classLoader = zzaye.f4608a;
            parcel2.writeInt(zzi ? 1 : 0);
            return true;
        }
        if (i == 4) {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
            return true;
        }
        if (i != 5) {
            return false;
        }
        aeh aehVar2 = (aeh) zzaye.zza(parcel, aeh.CREATOR);
        int readInt = parcel.readInt();
        zzaye.zzc(parcel);
        zzh(aehVar2, readInt);
        parcel2.writeNoException();
        return true;
    }
}
