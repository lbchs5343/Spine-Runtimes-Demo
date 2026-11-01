package g;

import android.os.Parcel;
import android.os.Parcelable;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public final class gpo extends exk {
    public static final Parcelable.Creator<gpo> CREATOR = new fbe(25);
    private final int zza;
    private final int zzb;
    private final String zzc;

    public gpo() {
        this(ModuleDescriptor.MODULE_VERSION, 243799000, "23.5.0");
    }

    public gpo(int i, int i2, String str) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int i2 = this.zza;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        egh.p(parcel, 3, this.zzc);
        egh.s(parcel, af);
    }

    public final int zza() {
        return this.zzb;
    }

    public final String zzb() {
        return this.zzc;
    }
}
