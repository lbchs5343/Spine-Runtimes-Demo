package g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class gus extends exk {
    public static final Parcelable.Creator<gus> CREATOR = new cqu(1);
    Bundle zza;
    cqg[] zzb;
    int zzc;
    csf zzd;

    public gus() {
    }

    public gus(Bundle bundle, cqg[] cqgVarArr, int i, csf csfVar) {
        this.zza = bundle;
        this.zzb = cqgVarArr;
        this.zzc = i;
        this.zzd = csfVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.ac(parcel, 1, this.zza);
        egh.ah(parcel, 2, this.zzb, i);
        int i2 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        egh.u(parcel, 4, this.zzd, i);
        egh.s(parcel, af);
    }
}
