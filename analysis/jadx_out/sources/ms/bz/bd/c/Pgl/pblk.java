package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
public class pblk {
    public static native Object a(int i, int i2, long j, String str, Object obj);

    public static Object b(int i, int i2, long j, String str, Object obj) {
        pblb.pgla pglaVar = (pblb.pgla) pblb.f21187a.get(i);
        if (pglaVar == null) {
            throw new RuntimeException(String.format((String) a(16777217, 0, 0L, "2a6309", new byte[]{44, 115, 5, 68, 0, 42, 52, 0, 34, 103, 99, 106, 86, 7, 6, 32, 39, 65, 107, 106, 39}), Integer.valueOf(i)));
        }
        try {
            return pglaVar.b(i, i2, j, str, obj);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }
}
