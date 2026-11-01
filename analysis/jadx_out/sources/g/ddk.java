package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbpg;

/* loaded from: classes3.dex */
public abstract class ddk extends zzayd implements gis {
    public static gis asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
        return queryLocalInterface instanceof gis ? (gis) queryLocalInterface : new cha("com.google.android.gms.ads.internal.client.ILiteSdkInfo", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            gpo liteSdkVersion = getLiteSdkVersion();
            parcel2.writeNoException();
            zzaye.zze(parcel2, liteSdkVersion);
            return true;
        }
        if (i != 2) {
            return false;
        }
        zzbpg adapterCreator = getAdapterCreator();
        parcel2.writeNoException();
        zzaye.zzf(parcel2, adapterCreator);
        return true;
    }
}
