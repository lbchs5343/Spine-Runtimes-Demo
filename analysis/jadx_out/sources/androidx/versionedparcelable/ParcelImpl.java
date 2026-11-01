package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import g.dud;
import g.fue;
import g.fvt;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new dud(24);
    private final fue mParcel;

    public ParcelImpl(Parcel parcel) {
        this.mParcel = new fvt(parcel).l();
    }

    public ParcelImpl(fue fueVar) {
        this.mParcel = fueVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public <T extends fue> T getVersionedParcel() {
        return (T) this.mParcel;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new fvt(parcel).i(this.mParcel);
    }
}
