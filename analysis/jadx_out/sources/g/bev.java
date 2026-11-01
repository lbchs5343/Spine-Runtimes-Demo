package g;

import j$.util.Objects;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class bev implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11412a;

    public /* synthetic */ bev(int i) {
        this.f11412a = i;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f11412a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f11412a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f11412a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        fza fzaVar;
        fza fzaVar2;
        switch (this.f11412a) {
            case 0:
                return ((vm) obj).f20177c.l.g(csv.METHOD_ARGUMENT);
            case 1:
                return !((eue) ((Map.Entry) obj).getValue()).e();
            case 2:
                dba dbaVar = erm.f16030a;
                return true;
            case 3:
                guv guvVar = (guv) obj;
                return guvVar.f18788b.isEmpty() || guvVar.i.isEmpty();
            case 4:
                return ((fza) obj).l.g(csv.REMOVE);
            case 5:
                return !((fza) obj).ac.isEmpty();
            case 6:
                fza fzaVar3 = (fza) obj;
                if (!fzaVar3.ac.isEmpty() || !fzaVar3.f17685e.isEmpty() || !fzaVar3.f17684d.isEmpty()) {
                    return false;
                }
                if (fzaVar3.l.g(csv.MTH_ENTER_BLOCK)) {
                    return false;
                }
                return !fzaVar3.l.g(csv.MTH_EXIT_BLOCK);
            case 7:
                return giq.p((fza) obj);
            case 8:
                eek eekVar = (eek) obj;
                if (!eekVar.l.h()) {
                    return false;
                }
                hay hayVar = eekVar.ah;
                return hayVar == hay.GOTO || hayVar == hay.NOP;
            case 9:
                return true;
            case 10:
                gwz gwzVar = ((hed) obj).am.bd().ad;
                gwzVar.getClass();
                return gwzVar == gwz.PROCESS_COMPLETE || gwzVar == gwz.GENERATED_AND_UNLOADED;
            case 11:
                cdv cdvVar = (cdv) obj;
                if (cdvVar.b() != pk.VAR_REF) {
                    return false;
                }
                fbu fbuVar = (fbu) cdvVar;
                if (fbuVar.f16533a.f13147d != 0) {
                    return false;
                }
                dba dbaVar2 = cci.f12630c;
                if (dbaVar2.af()) {
                    dbaVar2.v(fbuVar, "Var reference '{}' incorrect (ref pos is zero) and was removed from metadata");
                }
                return true;
            case 12:
                return enz.h((amj) obj);
            case 13:
                gks gksVar = (gks) obj;
                eek eekVar2 = gksVar.ae;
                if (eekVar2 == null || eekVar2.ah == hay.PHI || gksVar.f18326a.u().f15633f.size() > 1) {
                    return false;
                }
                return eekVar2.l.g(csv.DONT_GENERATE);
            case 14:
                return ((Integer) ((Map.Entry) obj).getValue()).intValue() > 3;
            case 15:
                return !((List) obj).isEmpty();
            case 16:
                return ((eek) obj).aj.size() == 1;
            case 17:
                return ((hcd) obj).h.be();
            case 18:
                cwx cwxVar = ((hcd) obj).f19215e;
                cwxVar.getClass();
                return cwxVar instanceof aoe;
            case 19:
                return !((hcd) obj).h.bb();
            case 20:
                return ((hcd) obj).f19217g.f14712e.equals("$VALUES");
            case 21:
                return ((hcd) obj).h.be();
            case 22:
                return !((hcd) obj).h.be();
            case 23:
                return ((Integer) ((Map.Entry) obj).getValue()).intValue() > 1;
            case 24:
                mw mwVar = (mw) obj;
                return (mwVar.f19678b != hbg.BACK_EDGE || (fzaVar = mwVar.f19677a) == (fzaVar2 = mwVar.f19679f) || fzaVar2.f17687g.get(fzaVar.x)) ? false : true;
            case 25:
                return ((mw) obj).f19678b == hbg.CROSS_EDGE;
            case 26:
                cwx type = ((fog) obj).getType();
                type.getClass();
                return type instanceof btl;
            case 27:
                return bue.class.isInstance((fog) obj);
            case 28:
                return Objects.nonNull((cwx) obj);
            default:
                return ((cwx) obj).h();
        }
    }
}
