package g;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.p0;
import ms.bz.bd.c.Pgl.p1;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pbly;
import ms.bz.bd.c.Pgl.pgla;

/* loaded from: classes.dex */
public final class dqo extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        TelephonyManager telephonyManager;
        Context context = pgla.f21199a.f21200b;
        synchronized (p0.class) {
            String str2 = p0.f21185a;
            if (str2 != null) {
                return p1.a(str2);
            }
            try {
                telephonyManager = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable unused) {
            }
            if (telephonyManager == null) {
                throw new NullPointerException("null TM");
            }
            Method declaredMethod = telephonyManager.getClass().getDeclaredMethod(new String(pbly.a("6765744465766963654964")), null);
            declaredMethod.setAccessible(true);
            p0.f21185a = (String) declaredMethod.invoke(telephonyManager, null);
            return p1.a(p0.f21185a);
        }
    }
}
