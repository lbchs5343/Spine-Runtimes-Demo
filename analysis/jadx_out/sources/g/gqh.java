package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;

/* loaded from: classes3.dex */
public final class gqh extends zzayd implements gga {

    /* renamed from: a, reason: collision with root package name */
    public final String f18571a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18572b;

    public gqh(String str, String str2) {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        this.f18571a = str;
        this.f18572b = str2;
    }

    public static gga c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof gga ? (gga) queryLocalInterface : new erc("com.google.android.gms.ads.internal.client.IMuteThisAdReason", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            parcel2.writeNoException();
            parcel2.writeString(this.f18571a);
            return true;
        }
        if (i != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeString(this.f18572b);
        return true;
    }

    @Override // g.gga
    public final String zze() {
        return this.f18571a;
    }

    @Override // g.gga
    public final String zzf() {
        return this.f18572b;
    }
}
