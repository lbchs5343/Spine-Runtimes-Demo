package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class bc extends exk {
    public static final Parcelable.Creator<bc> CREATOR = new fbe(19);
    private final String zza;
    private final int zzb;

    public bc(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, this.zza);
        int i2 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i2);
        egh.s(parcel, af);
    }

    public final int zza() {
        return this.zzb;
    }

    public final String zzb() {
        return this.zza;
    }
}
