package g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class eaw extends ob implements agh {
    public final Bundle a(String str, int i, String str2, String str3, Bundle bundle) {
        Parcel _cc = _cc();
        _cc.writeInt(i);
        _cc.writeString(str);
        _cc.writeString(str2);
        _cc.writeString(str3);
        _cc.writeString(null);
        int i2 = kz.f19577a;
        _cc.writeInt(1);
        bundle.writeToParcel(_cc, 0);
        Parcel h = h(_cc, 8);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) kz.b(h);
        h.recycle();
        return bundle2;
    }

    public final Bundle b(String str, String str2, String str3) {
        Parcel _cc = _cc();
        _cc.writeInt(3);
        _cc.writeString(str);
        _cc.writeString(str2);
        _cc.writeString(str3);
        _cc.writeString(null);
        Parcel h = h(_cc, 3);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) kz.b(h);
        h.recycle();
        return bundle;
    }

    public final Bundle l(int i, String str, String str2, Bundle bundle) {
        Parcel _cc = _cc();
        _cc.writeInt(i);
        _cc.writeString(str);
        _cc.writeString("inapp");
        _cc.writeString(str2);
        int i2 = kz.f19577a;
        _cc.writeInt(1);
        bundle.writeToParcel(_cc, 0);
        Parcel h = h(_cc, 11);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) kz.b(h);
        h.recycle();
        return bundle2;
    }

    public final Bundle m(String str, String str2) {
        Parcel _cc = _cc();
        _cc.writeInt(3);
        _cc.writeString(str);
        _cc.writeString("inapp");
        _cc.writeString(str2);
        Parcel h = h(_cc, 4);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) kz.b(h);
        h.recycle();
        return bundle;
    }

    public final Bundle n(String str, String str2, Bundle bundle) {
        Parcel _cc = _cc();
        _cc.writeInt(9);
        _cc.writeString(str);
        _cc.writeString(str2);
        int i = kz.f19577a;
        _cc.writeInt(1);
        bundle.writeToParcel(_cc, 0);
        Parcel h = h(_cc, 902);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) kz.b(h);
        h.recycle();
        return bundle2;
    }

    public final int o(int i, String str, String str2, Bundle bundle) {
        Parcel _cc = _cc();
        _cc.writeInt(i);
        _cc.writeString(str);
        _cc.writeString(str2);
        int i2 = kz.f19577a;
        _cc.writeInt(1);
        bundle.writeToParcel(_cc, 0);
        Parcel h = h(_cc, 10);
        int readInt = h.readInt();
        h.recycle();
        return readInt;
    }

    public final Bundle p(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel _cc = _cc();
        _cc.writeInt(i);
        _cc.writeString(str);
        _cc.writeString(str2);
        int i2 = kz.f19577a;
        _cc.writeInt(1);
        bundle.writeToParcel(_cc, 0);
        _cc.writeInt(1);
        bundle2.writeToParcel(_cc, 0);
        Parcel h = h(_cc, 901);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle3 = (Bundle) kz.b(h);
        h.recycle();
        return bundle3;
    }
}
