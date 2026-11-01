package g;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class bsj extends baf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ amj f12116a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eln f12117b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fon f12118c;

    public bsj(amj amjVar, fon fonVar, eln elnVar) {
        this.f12116a = amjVar;
        this.f12118c = fonVar;
        this.f12117b = elnVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.baf, g.byr
    public final void _ar(hed hedVar, cfm cfmVar) {
        if (cfmVar != this.f12116a) {
            amj amjVar = (amj) acw.ai(cfmVar.x());
            if (amjVar instanceof fza) {
                Iterator it = ((fza) amjVar).f17684d.iterator();
                while (it.hasNext()) {
                    if (!this.f12118c.d((fza) it.next())) {
                    }
                }
                return;
            }
            return;
        }
        if (((lh) cfmVar).l.g(csv.FALL_THROUGH) || gs.q(cfmVar, cfmVar)) {
            return;
        }
        List x = cfmVar.x();
        eek eekVar = new eek(hay.BREAK, 0);
        eekVar.w(csv.SYNTHETIC);
        eekVar.m(new ayi(this.f12117b));
        x.add(new gqu(eekVar));
    }
}
