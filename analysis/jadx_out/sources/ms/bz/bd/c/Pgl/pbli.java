package ms.bz.bd.c.Pgl;

import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class pbli extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        try {
            Class<?> cls = Class.forName((String) pblk.a(16777217, 0, 0L, "76f47c", new byte[]{37, 59, 24, 14, 27, 103, 122, 22, 57, 96, 52, 59, 28, 68, 70, 97, 51, 20, 121, 117, 51, 59, 1, 65, 70, 86, 16, 57, 50, 112, 49, 59, 7, 75, 60, 117, 51, 52, 56, 106, 50, 49, 13, 84, 56, 102, 59, 1, 62, 96, 35, 38, 52, 68, 9, 100, 32, 18, 37}));
            Method declaredMethod = cls.getDeclaredMethod((String) pblk.a(16777217, 0, 0L, "3390f8", new byte[]{47, 48, 88, 79, 120, 60, 30, 23, Byte.MAX_VALUE, 85, 49, 52, 88}), null);
            declaredMethod.setAccessible(true);
            Object newInstance = cls.newInstance();
            if (newInstance != null ? ((Boolean) declaredMethod.invoke(newInstance, null)).booleanValue() : false) {
                return (String) pblk.a(16777217, 0, 0L, "500771", new byte[]{42, 55, 84, 118, 27, 35, 36});
            }
            return null;
        } catch (Throwable unused) {
            pblk.a(16777217, 0, 0L, "6214c1", new byte[]{32, 49, 68});
            return null;
        }
    }
}
