package g;

import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class egm implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15494a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ hed f15495b;

    public /* synthetic */ egm(enz enzVar, hed hedVar) {
        this.f15495b = hedVar;
    }

    public /* synthetic */ egm(hed hedVar) {
        this.f15495b = hedVar;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f15494a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f15494a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f15494a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f15494a) {
            case 0:
                fza fzaVar = (fza) obj;
                if (fzaVar.l.g(csv.REMOVE)) {
                    if (!fzaVar.f17685e.isEmpty() || !fzaVar.f17684d.isEmpty()) {
                        dec.f14038a.t(fzaVar, "Block {} not deleted, method: {}", this.f15495b);
                        break;
                    } else {
                        guv guvVar = (guv) fzaVar.l.k(acq.aa);
                        if (guvVar != null) {
                            guvVar.f18788b.remove(fzaVar);
                            break;
                        }
                    }
                }
                break;
            default:
                gks gksVar = (gks) obj;
                csv csvVar = csv.REMOVE;
                if (!gksVar.l.g(csvVar)) {
                    eek eekVar = gksVar.ae;
                    if (eekVar != null && eekVar.ah == hay.CONSTRUCTOR) {
                        if (eekVar.l.j(acq.j)) {
                            ebp r = this.f15495b.am.f12631ab.f14930b.r((eew) eekVar);
                            hed hedVar = r instanceof hed ? (hed) r : null;
                            if (hedVar != null) {
                                if (hedVar.l.j(acq.f9982ab)) {
                                    int aq = eekVar.aq(gksVar);
                                    List az = hedVar.az();
                                    if (aq >= 0 && aq < az.size()) {
                                        gks gksVar2 = (gks) az.get(aq);
                                        if (gksVar2.l.g(csvVar) && gksVar.j().equals(gksVar2.j())) {
                                            gksVar.w(csv.DONT_GENERATE);
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                break;
        }
        return true;
    }
}
