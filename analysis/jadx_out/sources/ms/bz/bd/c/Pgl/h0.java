package ms.bz.bd.c.Pgl;

import android.content.Context;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class h0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        double d2;
        Context context = pgla.f21199a.f21200b;
        try {
            Class<?> cls = Class.forName(new String(pbly.a((String) pblk.a(16777217, 0, 0L, "88e73b", new byte[]{Byte.MAX_VALUE, 105, 64, 69, 90, 113, 105, 28, 98, 54, Byte.MAX_VALUE, 63, 64, 23, 91, 39, 109, 31, 98, 62, Byte.MAX_VALUE, 110, 68, 70, 90, 44, 109, 28, 99, 51, Byte.MAX_VALUE, 111, 65, 17, 90, 112, 109, 72, 98, 100, 123, 63, 64, 69, 91, 38, 105, 28, 97, 55, Byte.MAX_VALUE, 60, 65, 20, 90, 32, 108, 75, 97, 55, 126, 104, 64, 69, 90, 35, 109, 64, 98, 100, Byte.MAX_VALUE, 111}))));
            Object newInstance = cls.getConstructor(Context.class).newInstance(context);
            Method declaredMethod = cls.getDeclaredMethod(new String(pbly.a((String) pblk.a(16777217, 0, 0L, "875264", new byte[]{Byte.MAX_VALUE, 98, 16, 19, 94, 119, 111, 71, 51, 52, Byte.MAX_VALUE, 96, 17, 20, 95, 114, 109, 65, 50, 55, 124, 101, 16, 64, 94, 116, 109, 67, 51, 48}))), String.class);
            declaredMethod.setAccessible(true);
            d2 = ((Double) declaredMethod.invoke(newInstance, new String(pbly.a((String) pblk.a(16777217, 0, 0L, "0aa034", new byte[]{119, 49, 68, 21, 91, 119, 100, 20, 102, 53, 118, 49, 69, 29, 94, 38, 101, 19, 102, 49, 118, 51, 68, 21, 90, 112, 101, 25, 103, 52, 118, 58}))))).doubleValue();
        } catch (Throwable unused) {
            d2 = 0.0d;
        }
        return Integer.toString((int) d2);
    }
}
