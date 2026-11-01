package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class cnd extends exk {
    public static final Parcelable.Creator<cnd> CREATOR = new rj(12);
    final int zaa;
    final IBinder zab;
    private final nk zac;
    private final boolean zad;
    private final boolean zae;

    public cnd(int i, IBinder iBinder, nk nkVar, boolean z, boolean z2) {
        this.zaa = i;
        this.zab = iBinder;
        this.zac = nkVar;
        this.zad = z;
        this.zae = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cnd)) {
            return false;
        }
        cnd cndVar = (cnd) obj;
        return this.zac.equals(cndVar.zac) && ffb.w(zab(), cndVar.zab());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int i2 = this.zaa;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.az(parcel, 2, this.zab);
        egh.u(parcel, 3, this.zac, i);
        boolean z = this.zad;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zae;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.s(parcel, af);
    }

    public final nk zaa() {
        return this.zac;
    }

    public final fmp zab() {
        IBinder iBinder = this.zab;
        if (iBinder == null) {
            return null;
        }
        int i = drn.f14673a;
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        return queryLocalInterface instanceof fmp ? (fmp) queryLocalInterface : new caq(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 1);
    }

    public final boolean zac() {
        return this.zad;
    }

    public final boolean zad() {
        return this.zae;
    }
}
