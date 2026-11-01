package g;

import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzed;

/* loaded from: classes3.dex */
public abstract class dbh {
    public int j;
    public long k;
    public arm l;
    public boolean m;
    public long n;
    public long p;
    public boolean q;
    public int r;
    public zzadx s;
    public zzacu u;
    public long v;
    public final abb o = new abb();
    public ffr t = new ffr(12, false);

    public void f(long j) {
        this.v = j;
    }

    public abstract long g(zzed zzedVar);

    public void h(boolean z) {
        int i;
        if (z) {
            this.t = new ffr(12, false);
            this.p = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.j = i;
        this.n = -1L;
        this.v = 0L;
    }

    public abstract boolean i(zzed zzedVar, long j, ffr ffrVar);
}
