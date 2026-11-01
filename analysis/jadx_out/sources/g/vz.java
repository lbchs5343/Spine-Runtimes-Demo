package g;

import java.net.SocketTimeoutException;

/* loaded from: classes3.dex */
public final class vz extends boo {
    public final /* synthetic */ btb _at;

    public vz(btb btbVar) {
        this._at = btbVar;
    }

    public final void b() {
        if (m()) {
            throw new SocketTimeoutException("timeout");
        }
    }

    @Override // g.boo
    public final void c() {
        this._at.r(amc.CANCEL);
        ug ugVar = this._at.k;
        synchronized (ugVar) {
            long j = ugVar.v;
            long j2 = ugVar.y;
            if (j < j2) {
                return;
            }
            ugVar.y = j2 + 1;
            ugVar.h = System.nanoTime() + 1000000000;
            ugVar.f20089b.l(new lm(awf.ad(new StringBuilder(), ugVar.j, " ping"), ugVar, 1), 0L);
        }
    }
}
