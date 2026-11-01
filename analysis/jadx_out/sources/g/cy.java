package g;

import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class cy {

    /* renamed from: a, reason: collision with root package name */
    public static final cy f13728a = new cy();

    /* renamed from: b, reason: collision with root package name */
    public final hj f13729b = new hj();

    public final void c(String str, cgf cgfVar) {
        if (str == null) {
            return;
        }
        hj hjVar = this.f13729b;
        hjVar.getClass();
        if (cgfVar == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (hjVar) {
            try {
                hjVar.f19373d++;
                if (((LinkedHashMap) hjVar.f19371b).put(str, cgfVar) != null) {
                    hjVar.f19373d--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        hjVar.r();
    }
}
