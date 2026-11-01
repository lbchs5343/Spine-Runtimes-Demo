package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class exv extends zzayc implements dvw {
    @Override // g.dvw
    public final void zze(bjq bjqVar) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 2);
    }

    @Override // g.dvw
    public final boolean zzf(bjq bjqVar, String str, String str2) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString(str);
        r.writeString(str2);
        Parcel p = p(r, 1);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // g.dvw
    public final boolean zzg(bjq bjqVar, cie cieVar) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, cieVar);
        Parcel p = p(r, 3);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
