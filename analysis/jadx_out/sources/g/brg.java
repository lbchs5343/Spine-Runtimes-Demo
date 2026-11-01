package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class brg extends exk {
    public static final Parcelable.Creator<brg> CREATOR = new rj(10);
    private final int zaa;
    private final int zab;
    private final int zac;
    private final long zad;
    private final long zae;
    private final String zaf;
    private final String zag;
    private final int zah;
    private final int zai;

    @Deprecated
    public brg(int i, int i2, int i3, long j, long j2, String str, String str2, int i4) {
        this(i, i2, i3, j, j2, str, str2, i4, -1);
    }

    public brg(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = j;
        this.zae = j2;
        this.zaf = str;
        this.zag = str2;
        this.zah = i4;
        this.zai = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zab;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = this.zac;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i4);
        long j = this.zad;
        egh.aq(parcel, 4, 8);
        parcel.writeLong(j);
        long j2 = this.zae;
        egh.aq(parcel, 5, 8);
        parcel.writeLong(j2);
        egh.p(parcel, 6, this.zaf);
        egh.p(parcel, 7, this.zag);
        int i5 = this.zah;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(i5);
        int i6 = this.zai;
        egh.aq(parcel, 9, 4);
        parcel.writeInt(i6);
        egh.s(parcel, af);
    }
}
