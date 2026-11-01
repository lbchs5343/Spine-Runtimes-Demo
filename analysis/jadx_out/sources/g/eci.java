package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class eci extends zzayc implements fvh {
    public eci(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks", iBinder);
    }

    @Override // g.fvh
    public final void a(boolean z) {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 5);
    }

    @Override // g.fvh
    public final void zze() {
        s(r(), 4);
    }

    @Override // g.fvh
    public final void zzg() {
        s(r(), 3);
    }

    @Override // g.fvh
    public final void zzh() {
        s(r(), 2);
    }

    @Override // g.fvh
    public final void zzi() {
        s(r(), 1);
    }
}
