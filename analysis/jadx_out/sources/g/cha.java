package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbpf;
import com.google.android.gms.internal.ads.zzbpg;

/* loaded from: classes3.dex */
public final class cha extends zzayc implements gis {
    @Override // g.gis
    public final zzbpg getAdapterCreator() {
        Parcel p = p(r(), 2);
        zzbpg zzf = zzbpf.zzf(p.readStrongBinder());
        p.recycle();
        return zzf;
    }

    @Override // g.gis
    public final gpo getLiteSdkVersion() {
        Parcel p = p(r(), 1);
        gpo gpoVar = (gpo) zzaye.zza(p, gpo.CREATOR);
        p.recycle();
        return gpoVar;
    }
}
