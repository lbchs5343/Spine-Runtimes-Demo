package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class pw extends exk {
    public static final Parcelable.Creator<pw> CREATOR = new fbe(27);
    public final int zza;
    public final int zzb;

    public pw(int i, int i2) {
        this.zza = i;
        this.zzb = i2;
    }

    public pw(bah bahVar) {
        bahVar.getClass();
        this.zza = -1;
        this.zzb = -1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        egh.s(parcel, af);
    }
}
