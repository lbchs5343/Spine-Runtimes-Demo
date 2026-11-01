package g;

import j$.util.Objects;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class brj implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12071a;

    public /* synthetic */ brj(int i) {
        this.f12071a = i;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f12071a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f12071a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f12071a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f12071a) {
            case 0:
                return ack.l(((gks) obj).ae, hay.PHI);
            case 1:
                gks gksVar = (gks) obj;
                csv csvVar = csv.DONT_GENERATE;
                if (!gksVar.l.g(csvVar)) {
                    eek eekVar = gksVar.ae;
                    dba dbaVar = ack.f9977a;
                    if (eekVar == null || !eekVar.l.g(csvVar)) {
                        return false;
                    }
                }
                return true;
            case 2:
                return !((List) obj).isEmpty();
            case 3:
                guv guvVar = (guv) obj;
                return guvVar.j || guvVar.i.isEmpty();
            case 4:
                return ((elt) ((bne) obj).f11865a).g();
            case 5:
                return ((aea) obj).f10084g;
            case 6:
                return !((String) obj).equals("java.lang.Exception");
            case 7:
                return !((String) obj).equals("java.lang.Throwable");
            case 8:
                return ack.l(((gks) obj).ae, hay.IF);
            case 9:
                return !(((ebp) obj) instanceof hed);
            case 10:
                return !((ebh) obj).l.g(csv.DONT_GENERATE);
            case 11:
                return ((ebh) obj).bp != 0;
            case 12:
                return ((hed) obj).bk();
            case 13:
                return ((eek) obj).l.g(csv.FORCE_ASSIGN_INLINE);
            case 14:
                amj amjVar = (amj) obj;
                if (amjVar == null) {
                    return false;
                }
                return gs.q(amjVar, amjVar);
            case 15:
                return Objects.nonNull((amj) obj);
            case 16:
                return ffb.cd((fza) obj, hay.JAVA_JSR);
            case 17:
                return ((cci) obj).ak.n();
            case 18:
                return ((List) ((Map.Entry) obj).getValue()).size() > 1;
            case 19:
                return ((eek) obj).ah == hay.PHI;
            case 20:
                return ((lh) ((amj) obj)).l.g(csv.REMOVE);
            case 21:
                List list = ((adk) obj).f10047a;
                return list.size() == 1 && list.get(0) == eln.f15770g;
            case 22:
                return ((eek) obj).ah == hay.BREAK;
            case 23:
                return ((fza) obj).l.g(csv.TRY_ENTER);
            case 24:
                return ((elt) ((bne) obj).f11866b).g();
            case 25:
                return ((fza) obj).l.g(csv.EXC_TOP_SPLITTER);
            case 26:
                return !((bfz) obj).f11491e;
            default:
                return ((bfz) obj).f11491e;
        }
    }
}
