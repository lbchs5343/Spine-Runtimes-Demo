package ms.bz.bd.c.Pgl;

import java.util.ArrayList;
import java.util.List;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class o extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        m1 d2 = m1.d(pgla.f21199a.f21200b);
        synchronized (d2) {
            int size = d2.f21173c.size();
            if (size <= 0) {
                return new int[0];
            }
            if (size == 1) {
                return new int[]{((Integer) d2.f21173c.get(0)).intValue()};
            }
            try {
                ArrayList arrayList = d2.f21173c;
                int i = size - 10;
                if (i <= 0) {
                    i = 0;
                }
                List subList = arrayList.subList(i, size);
                int[] iArr = new int[subList.size()];
                for (int i2 = 0; i2 < subList.size(); i2++) {
                    iArr[i2] = ((Integer) subList.get(i2)).intValue();
                }
                return iArr;
            } catch (Throwable unused) {
                return new int[0];
            }
        }
    }
}
