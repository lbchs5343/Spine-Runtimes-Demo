package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class ekj extends exk {
    public static final Parcelable.Creator<ekj> CREATOR = new cqu(9);
    private final boolean zza;
    private final String zzb;
    private final int zzc;
    private final int zzd;

    public ekj(boolean z, String str, int i, int i2) {
        this.zza = z;
        this.zzb = str;
        this.zzc = acr.ax(i) - 1;
        int i3 = 1;
        int[] iArr = {1, 2, 3};
        int i4 = 0;
        while (true) {
            if (i4 >= 3) {
                break;
            }
            int i5 = iArr[i4];
            int i6 = i5 - 1;
            if (i5 == 0) {
                throw null;
            }
            if (i6 == i2) {
                i3 = i5;
                break;
            }
            i4++;
        }
        this.zzd = i3 - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        boolean z = this.zza;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.p(parcel, 2, this.zzb);
        int i2 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        int i3 = this.zzd;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(i3);
        egh.s(parcel, af);
    }

    public final String zza() {
        return this.zzb;
    }

    public final boolean zzb() {
        return this.zza;
    }

    public final int zzc() {
        int i = this.zzd;
        int[] iArr = {1, 2, 3};
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = iArr[i2];
            int i4 = i3 - 1;
            if (i3 == 0) {
                throw null;
            }
            if (i4 == i) {
                return i3;
            }
        }
        return 1;
    }

    public final int zzd() {
        return acr.ax(this.zzc);
    }
}
