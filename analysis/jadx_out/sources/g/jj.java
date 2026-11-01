package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class jj extends zzayc implements bhk {
    public jj(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IOutOfContextTester", iBinder);
    }

    @Override // g.bhk
    public final void zze(String str, bjq bjqVar, bjq bjqVar2) {
        Parcel r = r();
        r.writeString(str);
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        s(r, 1);
    }
}
