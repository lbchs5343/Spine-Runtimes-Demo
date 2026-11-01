package g;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class cqg extends exk {
    public static final Parcelable.Creator<cqg> CREATOR = new fbe(15);
    private final String zza;

    @Deprecated
    private final int zzb;
    private final long zzc;

    public cqg(String str, int i, long j) {
        this.zza = str;
        this.zzb = i;
        this.zzc = j;
    }

    public cqg(String str, long j) {
        this.zza = str;
        this.zzc = j;
        this.zzb = -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cqg) {
            cqg cqgVar = (cqg) obj;
            if (((getName() != null && getName().equals(cqgVar.getName())) || (getName() == null && cqgVar.getName() == null)) && getVersion() == cqgVar.getVersion()) {
                return true;
            }
        }
        return false;
    }

    public String getName() {
        return this.zza;
    }

    public long getVersion() {
        long j = this.zzc;
        return j == -1 ? this.zzb : j;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{getName(), Long.valueOf(getVersion())});
    }

    public final String toString() {
        ffr ffrVar = new ffr(this);
        ffrVar.x(getName(), abn.EXTRA_UA_APP_NAME);
        ffrVar.x(Long.valueOf(getVersion()), "version");
        return ffrVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, getName());
        int i2 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i2);
        long version = getVersion();
        egh.aq(parcel, 3, 8);
        parcel.writeLong(version);
        egh.s(parcel, af);
    }
}
