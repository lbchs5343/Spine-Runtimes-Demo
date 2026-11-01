package g;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes.dex */
public final class fpj extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public cma f17201a;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    @Override // g.bgf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void _t(Object obj, Type type, Map map, ccw ccwVar) {
        Object g2;
        Class cls;
        bnu bnuVar = (bnu) this.z;
        if (this.f17201a == null) {
            this.f17201a = ccwVar.k.e(bnuVar.f11883a, bnuVar.f11884b);
        }
        if (type instanceof ParameterizedType) {
            ccwVar.l.getClass();
        }
        String str = bnuVar.f11887e;
        String str2 = bnuVar.i;
        Type type2 = bnuVar.f11883a;
        if (str != null) {
            cma cmaVar = this.f17201a;
            if (cmaVar instanceof gvz) {
                ((gvz) cmaVar).getClass();
                g2 = gvz.c(ccwVar, type2, str);
                if (ccwVar.f12658c != 1) {
                    ggl t = ccwVar.t();
                    t.f18103d = this;
                    t.f18100a = ccwVar.l;
                    ccwVar.f12658c = 0;
                    return;
                }
                if (obj == null) {
                    map.put(str2, g2);
                    return;
                }
                if (g2 == null && ((cls = bnuVar.f11884b) == Byte.TYPE || cls == Short.TYPE || cls == Float.TYPE || cls == Double.TYPE)) {
                    return;
                }
                ag(obj, g2);
                return;
            }
        }
        g2 = this.f17201a.g(ccwVar, type2, str2);
        if (ccwVar.f12658c != 1) {
        }
    }
}
