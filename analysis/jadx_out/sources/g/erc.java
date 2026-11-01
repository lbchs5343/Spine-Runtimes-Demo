package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes3.dex */
public final class erc extends zzayc implements gga {
    @Override // g.gga
    public final String zze() {
        Parcel p = p(r(), 1);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // g.gga
    public final String zzf() {
        Parcel p = p(r(), 2);
        String readString = p.readString();
        p.recycle();
        return readString;
    }
}
