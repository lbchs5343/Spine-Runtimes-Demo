package g;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public abstract class bvf implements Runnable {
    public final boolean i;
    public final /* synthetic */ bhz j;
    public final long k;
    public final long l;

    public bvf(bhz bhzVar, boolean z) {
        this.j = bhzVar;
        bhzVar.getClass();
        this.k = System.currentTimeMillis();
        this.l = SystemClock.elapsedRealtime();
        this.i = z;
    }

    public abstract void g();

    public void h() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        bhz bhzVar = this.j;
        if (bhzVar.f11618b) {
            h();
            return;
        }
        try {
            g();
        } catch (Exception e2) {
            bhzVar.j(e2, false, this.i);
            h();
        }
    }
}
