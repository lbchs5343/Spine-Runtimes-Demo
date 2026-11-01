package g;

import android.os.Parcel;

/* loaded from: classes3.dex */
public final class fa extends ob {
    public final bjq a(bpp bppVar, String str, int i, bpp bppVar2) {
        Parcel _cd = _cd();
        bon.d(_cd, bppVar);
        _cd.writeString(str);
        _cd.writeInt(i);
        bon.d(_cd, bppVar2);
        return dub.e(_ce(_cd, 3));
    }

    public final bjq b(bpp bppVar, String str, int i, bpp bppVar2) {
        Parcel _cd = _cd();
        bon.d(_cd, bppVar);
        _cd.writeString(str);
        _cd.writeInt(i);
        bon.d(_cd, bppVar2);
        return dub.e(_ce(_cd, 2));
    }
}
