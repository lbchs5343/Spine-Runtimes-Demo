package g;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public final class cfu extends adw {
    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // g.adw
    public final /* synthetic */ IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof ake ? (ake) queryLocalInterface : new ckg(iBinder);
    }

    @Override // g.adw
    public final int getMinApkVersion() {
        return 12451000;
    }
}
