package g;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class ghd extends exk {
    public static final Parcelable.Creator<ghd> CREATOR = new fbe(26);
    public final String zza;
    public final int zzb;
    public final aeh zzc;
    public final int zzd;

    public ghd(String str, int i, aeh aehVar, int i2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = aehVar;
        this.zzd = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ghd) {
            ghd ghdVar = (ghd) obj;
            if (this.zza.equals(ghdVar.zza) && this.zzb == ghdVar.zzb && this.zzc.zza(ghdVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, Integer.valueOf(this.zzb), this.zzc);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        int i2 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i2);
        egh.u(parcel, 3, this.zzc, i);
        int i3 = this.zzd;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(i3);
        egh.s(parcel, af);
    }
}
