package g;

import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ecg extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final int f15297a;
    public final /* synthetic */ int ae;
    public final boolean af;
    public final Method ag;

    public /* synthetic */ ecg(Method method, int i, boolean z, int i2) {
        this.ae = i2;
        this.ag = method;
        this.f15297a = i;
        this.af = z;
    }

    @Override // g.kj
    public final void b(gea geaVar, Object obj) {
        switch (this.ae) {
            case 0:
                Map map = (Map) obj;
                int i = this.f15297a;
                Method method = this.ag;
                if (map == null) {
                    throw aky.am(method, i, "Field map was null.", new Object[0]);
                }
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw aky.am(method, i, "Field map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        throw aky.am(method, i, tn.ad("Field map contained null value for key '", str, "'."), new Object[0]);
                    }
                    String obj2 = value.toString();
                    if (obj2 == null) {
                        throw aky.am(method, i, "Field map value '" + value + "' converted to null by " + acq.class.getName() + " for key '" + str + "'.", new Object[0]);
                    }
                    geaVar.o(str, obj2, this.af);
                }
                return;
            case 1:
                Map map2 = (Map) obj;
                int i2 = this.f15297a;
                Method method2 = this.ag;
                if (map2 == null) {
                    throw aky.am(method2, i2, "Header map was null.", new Object[0]);
                }
                for (Map.Entry entry2 : map2.entrySet()) {
                    String str2 = (String) entry2.getKey();
                    if (str2 == null) {
                        throw aky.am(method2, i2, "Header map contained null key.", new Object[0]);
                    }
                    Object value2 = entry2.getValue();
                    if (value2 == null) {
                        throw aky.am(method2, i2, tn.ad("Header map contained null value for key '", str2, "'."), new Object[0]);
                    }
                    geaVar.p(str2, value2.toString(), this.af);
                }
                return;
            default:
                Map map3 = (Map) obj;
                int i3 = this.f15297a;
                Method method3 = this.ag;
                if (map3 == null) {
                    throw aky.am(method3, i3, "Query map was null", new Object[0]);
                }
                for (Map.Entry entry3 : map3.entrySet()) {
                    String str3 = (String) entry3.getKey();
                    if (str3 == null) {
                        throw aky.am(method3, i3, "Query map contained null key.", new Object[0]);
                    }
                    Object value3 = entry3.getValue();
                    if (value3 == null) {
                        throw aky.am(method3, i3, tn.ad("Query map contained null value for key '", str3, "'."), new Object[0]);
                    }
                    String obj3 = value3.toString();
                    if (obj3 == null) {
                        throw aky.am(method3, i3, "Query map value '" + value3 + "' converted to null by " + acq.class.getName() + " for key '" + str3 + "'.", new Object[0]);
                    }
                    geaVar.n(str3, obj3, this.af);
                }
                return;
        }
    }
}
