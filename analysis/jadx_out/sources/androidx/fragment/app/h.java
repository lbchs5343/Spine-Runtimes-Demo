package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.cxh;

/* loaded from: classes.dex */
public class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new cxh(1);
    final Bundle mState;

    public h(Bundle bundle) {
        this.mState = bundle;
    }

    public h(Parcel parcel, ClassLoader classLoader) {
        Bundle readBundle = parcel.readBundle();
        this.mState = readBundle;
        if (classLoader == null || readBundle == null) {
            return;
        }
        readBundle.setClassLoader(classLoader);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mState);
    }
}
