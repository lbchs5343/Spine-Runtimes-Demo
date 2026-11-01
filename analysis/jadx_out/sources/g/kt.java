package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class kt extends zzayc implements cbz {
    public kt(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IVideoController", iBinder);
    }

    @Override // g.cbz
    public final float zze() {
        throw null;
    }

    @Override // g.cbz
    public final float zzf() {
        throw null;
    }

    @Override // g.cbz
    public final float zzg() {
        throw null;
    }

    @Override // g.cbz
    public final fvh zzi() {
        fvh eciVar;
        Parcel p = p(r(), 11);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            eciVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            eciVar = queryLocalInterface instanceof fvh ? (fvh) queryLocalInterface : new eci(readStrongBinder);
        }
        p.recycle();
        return eciVar;
    }

    @Override // g.cbz
    public final void zzm(fvh fvhVar) {
        Parcel r = r();
        zzaye.zzf(r, fvhVar);
        s(r, 8);
    }
}
