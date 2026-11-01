package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class cjw extends ob implements brv {
    public cjw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver", 3);
    }

    @Override // g.brv
    public final void zzd(Bundle bundle) {
        Parcel _cd = _cd();
        m.e(_cd, bundle);
        i(_cd, 1);
    }
}
