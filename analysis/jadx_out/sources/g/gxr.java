package g;

import j$.util.Objects;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class gxr {

    /* renamed from: a, reason: collision with root package name */
    public final gxr f18968a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18969b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18970c;

    public gxr(String str, gxr gxrVar, String str2) {
        this.f18969b = str;
        this.f18968a = gxrVar;
        this.f18970c = str2;
    }

    public static synchronized gxr d(dwg dwgVar, String str) {
        synchronized (gxr.class) {
            try {
                gxr gxrVar = (gxr) ((HashMap) dwgVar.h.i).get(str);
                if (gxrVar != null) {
                    return gxrVar;
                }
                int lastIndexOf = str.lastIndexOf(46);
                gxr gxrVar2 = lastIndexOf == -1 ? new gxr(str, null, str) : new gxr(str, d(dwgVar, str.substring(0, lastIndexOf)), str.substring(lastIndexOf + 1));
                ((HashMap) dwgVar.h.i).put(gxrVar2.f18969b, gxrVar2);
                return gxrVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gxr)) {
            return false;
        }
        return Objects.equals(this.f18969b, ((gxr) obj).f18969b);
    }

    public final int hashCode() {
        return this.f18969b.hashCode();
    }

    public final String toString() {
        return this.f18969b;
    }
}
