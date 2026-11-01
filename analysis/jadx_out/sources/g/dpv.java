package g;

import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class dpv {
    public static /* synthetic */ boolean a(Unsafe unsafe, ail ailVar, long j, Object obj, Object obj2) {
        while (!bok.a(unsafe, ailVar, j, obj, obj2)) {
            if (unsafe.getObject(ailVar, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
