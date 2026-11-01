package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes3.dex */
public final class dej extends zzayc implements fbj {
    public dej(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IAppEventListener", iBinder);
    }

    @Override // g.fbj
    public final void zzc(String str, String str2) {
        Parcel r = r();
        r.writeString(str);
        r.writeString(str2);
        s(r, 1);
    }
}
