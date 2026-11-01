package ms.bz.bd.c.Pgl;

import java.util.ArrayList;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class n extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        int i;
        int f2;
        int e2;
        m1 d2 = m1.d(pgla.f21199a.f21200b);
        d2.getClass();
        try {
            if (h1.d() != null) {
                try {
                    synchronized (d2) {
                        f2 = d2.f();
                        e2 = d2.e();
                    }
                    i = (f2 * 10000) + e2;
                } catch (Exception unused) {
                    i = -10001;
                }
                d2.f21173c.add(Integer.valueOf(i));
                try {
                    int size = d2.f21173c.size();
                    if (size <= 20) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList(d2.f21173c.subList(size - 10, size));
                    d2.f21173c.clear();
                    d2.f21173c = arrayList;
                    return null;
                } catch (Throwable unused2) {
                    return null;
                }
            }
        } catch (Throwable unused3) {
        }
        pblk.a(16777217, 0, 0L, "82df2d", new byte[]{42, 56, 18, 17, 6, 51, 61, 22, 33, 53, 33, 18, 22, 6, 25, 118, 41, 10, 6, 34, 40, 36, 2, 1, 62, 103, 41, 26, 59, 49, 105, 57, 25, 82, 15, 114, 56, 24, 50, 36, 38, 37, 25, 22});
        return null;
    }
}
