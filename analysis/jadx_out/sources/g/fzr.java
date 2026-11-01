package g;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public final class fzr extends eit {
    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.appset.internal.IAppSetService";
    }

    @Override // g.adw
    public final boolean ao() {
        return true;
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.appset.service.START";
    }

    @Override // g.adw
    public final /* synthetic */ IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appset.internal.IAppSetService");
        return queryLocalInterface instanceof gl ? (gl) queryLocalInterface : new gl(iBinder);
    }

    @Override // g.adw
    public final cqg[] getApiFeatures() {
        return vp.f20188b;
    }

    @Override // g.adw
    public final int getMinApkVersion() {
        return 212800000;
    }

    @Override // g.adw
    public final boolean usesClientTelemetry() {
        return true;
    }
}
