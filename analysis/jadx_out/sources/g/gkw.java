package g;

import java.lang.reflect.AccessibleObject;

/* loaded from: classes3.dex */
public abstract class gkw {

    /* renamed from: b, reason: collision with root package name */
    public static final gkw f18328b;

    /* JADX WARN: Removed duplicated region for block: B:5:0x001f  */
    static {
        gkw gnuVar;
        if (byw.f12473a >= 9) {
            try {
                gnuVar = new gnu(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
            } catch (NoSuchMethodException unused) {
            }
            if (gnuVar == null) {
                gnuVar = new bvp();
            }
            f18328b = gnuVar;
        }
        gnuVar = null;
        if (gnuVar == null) {
        }
        f18328b = gnuVar;
    }

    public abstract boolean a(Object obj, AccessibleObject accessibleObject);
}
