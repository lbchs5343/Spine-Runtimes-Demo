package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class bmt extends zzayd implements gwt {
    public bmt() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static gwt a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return queryLocalInterface instanceof gwt ? (gwt) queryLocalInterface : new bty(iBinder);
    }

    @Override // g.gwt
    public final void b(adq adqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzaye.zzc(parcel);
            parcel2.writeNoException();
            return true;
        }
        if (i != 2) {
            return false;
        }
        parcel2.writeNoException();
        ClassLoader classLoader = zzaye.f4608a;
        parcel2.writeInt(1);
        return true;
    }

    @Override // g.gwt
    public final boolean zzf() {
        return true;
    }
}
