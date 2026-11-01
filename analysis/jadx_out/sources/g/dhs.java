package g;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class dhs implements ewr {
    public static final Parcelable.Creator<dhs> CREATOR = new akv();
    private final long point;

    private dhs(long j) {
        this.point = j;
    }

    public /* synthetic */ dhs(long j, akv akvVar) {
        this(j);
    }

    public static dhs from(long j) {
        return new dhs(j);
    }

    public static dhs now() {
        return from(fau.c().getTimeInMillis());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dhs) && this.point == ((dhs) obj).point;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.point)});
    }

    @Override // g.ewr
    public boolean isValid(long j) {
        return j >= this.point;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.point);
    }
}
