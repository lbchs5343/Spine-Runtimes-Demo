package g;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes3.dex */
public final class rk extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final int f19905a;
    public final /* synthetic */ int ae = 0;
    public final eya af;
    public final Object ag;
    public final Method ah;

    public rk(Method method, int i, dvq dvqVar, eya eyaVar) {
        this.ah = method;
        this.f19905a = i;
        this.ag = dvqVar;
        this.af = eyaVar;
    }

    public rk(Method method, int i, eya eyaVar, String str) {
        this.ah = method;
        this.f19905a = i;
        this.af = eyaVar;
        this.ag = str;
    }

    @Override // g.kj
    public final void b(gea geaVar, Object obj) {
        int i = this.ae;
        eya eyaVar = this.af;
        Object obj2 = this.ag;
        Method method = this.ah;
        int i2 = this.f19905a;
        switch (i) {
            case 0:
                if (obj == null) {
                    return;
                }
                try {
                    geaVar.q((dvq) obj2, (sz) eyaVar.ak(obj));
                    return;
                } catch (IOException e2) {
                    throw aky.am(method, i2, "Unable to convert " + obj + " to RequestBody", e2);
                }
            default:
                Map map = (Map) obj;
                if (map == null) {
                    throw aky.am(method, i2, "Part map was null.", new Object[0]);
                }
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw aky.am(method, i2, "Part map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        throw aky.am(method, i2, tn.ad("Part map contained null value for key '", str, "'."), new Object[0]);
                    }
                    geaVar.q(dyd.aj("Content-Disposition", tn.ad("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", (String) obj2), (sz) eyaVar.ak(value));
                }
                return;
        }
    }
}
