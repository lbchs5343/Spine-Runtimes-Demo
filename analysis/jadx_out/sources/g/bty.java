package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class bty extends zzayc implements gwt {
    public bty(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener", iBinder);
    }

    @Override // g.gwt
    public final void b(adq adqVar) {
        Parcel r = r();
        zzaye.zzd(r, adqVar);
        s(r, 1);
    }

    @Override // g.gwt
    public final boolean zzf() {
        Parcel p = p(r(), 2);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
