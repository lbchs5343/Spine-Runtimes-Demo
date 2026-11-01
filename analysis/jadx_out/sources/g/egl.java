package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class egl implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15492a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15493b;

    public /* synthetic */ egl(int i, Object obj) {
        this.f15492a = i;
        this.f15493b = obj;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f15492a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f15492a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f15492a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f15492a) {
            case 0:
                return !((ebh) obj).l.g(csv.DONT_GENERATE) || ((ggg) this.f15493b).f18080c;
            case 1:
                return !((ArrayList) ((fzn) this.f15493b).f17730e).contains(((gks) obj).ae);
            case 2:
                return Objects.equals(((adz) ((eek) obj)).f10070a, (dsj) this.f15493b);
            case 3:
                return Objects.equals(((hcd) obj).f19215e.e(), (cwx) this.f15493b);
            case 4:
                return ((afa) ((Map.Entry) obj).getKey()).ordinal() <= ((afa) this.f15493b).ordinal();
            case 5:
                return ((String) ((gay) obj).f17830c.f14569g).equals((String) this.f15493b);
            case 6:
                return ((HashSet) ((evf) this.f15493b).f16224f).contains((fza) obj);
            case 7:
                amj amjVar = (amj) this.f15493b;
                gjz gjzVar = (gjz) obj;
                if (amjVar == gjzVar.f18288b) {
                    return true;
                }
                if (amjVar instanceof cfm) {
                    return gs.ag(amjVar, gjzVar.f18287a);
                }
                return false;
            case 8:
                return ((gks) obj) == ((gks) this.f15493b);
            case 9:
                return ((abi) obj) == ((abi) this.f15493b);
            case 10:
                fza fzaVar = (fza) obj;
                hed hedVar = (hed) ((fpd) this.f15493b).f17190f;
                return fzaVar.equals(hedVar.aj) || fzaVar.equals(hedVar.ad);
            case 11:
                return ((ArrayList) this.f15493b).contains((fza) obj);
            default:
                return ((amh) this.f15493b).f10470c.q((vm) obj).f11491e;
        }
    }
}
