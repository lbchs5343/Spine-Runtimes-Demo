package g;

import android.os.Parcel;

/* loaded from: classes3.dex */
public final class dlw extends ob implements ddw {
    @Override // g.ddw
    public final int zzc() {
        Parcel _ce = _ce(_cd(), 2);
        int readInt = _ce.readInt();
        _ce.recycle();
        return readInt;
    }

    @Override // g.ddw
    public final bjq zzd() {
        return dub.e(_ce(_cd(), 1));
    }
}
