package g;

import android.os.Bundle;
import android.os.Parcel;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class bay extends dzk implements brv {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f11203a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11204b;

    public bay() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
        this.f11203a = new AtomicReference();
    }

    public static final Object c(Class cls, Bundle bundle) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        return cls.cast(obj);
    }

    public final Bundle d(long j) {
        Bundle bundle;
        synchronized (this.f11203a) {
            if (!this.f11204b) {
                try {
                    this.f11203a.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f11203a.get();
        }
        return bundle;
    }

    @Override // g.dzk
    public final boolean t(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) m.c(parcel, Bundle.CREATOR);
        m.d(parcel);
        zzd(bundle);
        parcel2.writeNoException();
        return true;
    }

    @Override // g.brv
    public final void zzd(Bundle bundle) {
        synchronized (this.f11203a) {
            try {
                try {
                    this.f11203a.set(bundle);
                    this.f11204b = true;
                } finally {
                    this.f11203a.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
