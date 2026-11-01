package ms.bz.bd.c.Pgl;

import g.awf;
import java.util.TimeZone;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class k0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        String str2;
        int i;
        TimeZone timeZone;
        try {
            timeZone = TimeZone.getDefault();
            str2 = timeZone.getID();
        } catch (Throwable unused) {
            str2 = null;
        }
        try {
            i = ((timeZone.getRawOffset() / 60) / 60) / 1000;
        } catch (Throwable unused2) {
            i = 0;
            StringBuilder o = awf.o(str2);
            o.append((String) pblk.a(16777217, 0, 0L, "f15cb1", new byte[]{59}));
            o.append(i);
            return o.toString();
        }
        StringBuilder o2 = awf.o(str2);
        o2.append((String) pblk.a(16777217, 0, 0L, "f15cb1", new byte[]{59}));
        o2.append(i);
        return o2.toString();
    }
}
