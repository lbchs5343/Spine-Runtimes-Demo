package g;

import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public final class vi extends axr implements and {

    /* renamed from: a, reason: collision with root package name */
    public static final vi f20158a;

    /* renamed from: b, reason: collision with root package name */
    public static final vi f20159b;

    /* renamed from: c, reason: collision with root package name */
    public static final vi f20160c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f20161d;

    static {
        int i = 1;
        f20160c = new vi(i, 0);
        f20158a = new vi(i, 1);
        f20159b = new vi(i, 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vi(int i, int i2) {
        super(i);
        this.f20161d = i2;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        switch (this.f20161d) {
            case 0:
                erz erzVar = (erz) obj;
                if (erzVar instanceof cpk) {
                    return (cpk) erzVar;
                }
                return null;
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                bff.p(entry, "<name for destructuring parameter 0>");
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                StringBuilder l = tn.l(str, " : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    bff.e(value, "toString(this)");
                }
                l.append(value);
                return l.toString();
            default:
                pe peVar = (pe) obj;
                bff.p(peVar, "it");
                return peVar.getClass().getSimpleName();
        }
    }
}
