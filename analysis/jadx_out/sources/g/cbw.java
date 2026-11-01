package g;

import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzbw;

/* loaded from: classes3.dex */
public abstract class cbw {
    public final int v;
    public final zzad w;
    public final int x;
    public final zzbw y;

    public cbw(int i, zzbw zzbwVar, int i2) {
        this.x = i;
        this.y = zzbwVar;
        this.v = i2;
        this.w = zzbwVar.zzb(i2);
    }

    public abstract int s();

    public abstract boolean t(cbw cbwVar);
}
