package ms.bz.bd.c.Pgl;

import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class a0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        try {
            Method method = Class.forName((String) pblk.a(16777217, 0, 0L, "46a29d", new byte[]{38, 59, 31, 8, 4, 106, 35, 18, 52, 99, 43, 55, 23, 8, 11, 124, 53, 4, 53, 97, 107, 39, 23, 72, 21, 124, 37, 89, 61, 110, 107, 25, 33, 100})).getMethod((String) pblk.a(16777217, 0, 0L, "49a12e", new byte[]{36}), null);
            if (method != null) {
                return (Long) method.invoke(null, null);
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
