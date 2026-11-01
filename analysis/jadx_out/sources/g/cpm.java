package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class cpm extends exk {
    public static final Parcelable.Creator<cpm> CREATOR = new fbe(29);
    public final boolean zza;
    public final boolean zzb;
    public final boolean zzc;

    public cpm(cxt cxtVar) {
        this(cxtVar.f13712a, cxtVar.f13713b, cxtVar.f13714c);
    }

    public cpm(boolean z, boolean z2, boolean z3) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzb;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.zzc;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(z3 ? 1 : 0);
        egh.s(parcel, af);
    }
}
