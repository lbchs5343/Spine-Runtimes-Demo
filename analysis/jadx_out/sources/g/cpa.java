package g;

import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class cpa implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13260a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cci f13261b;

    public /* synthetic */ cpa(cci cciVar, int i) {
        this.f13260a = i;
        this.f13261b = cciVar;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f13260a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f13260a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f13260a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f13260a) {
            case 0:
                chf chfVar = (chf) ((Map.Entry) obj).getValue();
                if (chfVar instanceof hcd) {
                    return ((hcd) chfVar).f19216f.equals(this.f13261b);
                }
                return false;
            case 1:
                hed hedVar = (hed) obj;
                return hedVar.bk() && hedVar.am.equals(this.f13261b);
            case 2:
                hcd hcdVar = (hcd) obj;
                gqc gqcVar = hcdVar.h;
                int[] iArr = {1, 8, 16};
                gqcVar.getClass();
                int i = 0;
                while (true) {
                    if (i < 3) {
                        if ((iArr[i] & gqcVar.f18566ab) != 0) {
                            i++;
                        }
                    } else if (hcdVar.f19217g.f14709a.equals(this.f13261b.ak.f20149d)) {
                        return true;
                    }
                }
                return false;
            default:
                return ((String) obj).equals(this.f13261b.bn());
        }
    }
}
