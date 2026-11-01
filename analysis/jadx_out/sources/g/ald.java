package g;

import j$.util.Collection;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ald extends baf {

    /* renamed from: b, reason: collision with root package name */
    public eln f10436b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10438d;

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f10435a = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f10437c = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public boolean f10439e = false;

    public ald(int i) {
        this.f10438d = i;
    }

    @Override // g.baf, g.byr
    public final void _ar(hed hedVar, cfm cfmVar) {
        HashSet hashSet = this.f10435a;
        if (hashSet.contains(cfmVar)) {
            hashSet.remove(cfmVar);
            List x = cfmVar.x();
            eln elnVar = this.f10436b;
            dba dbaVar = diu.f14250a;
            eek eekVar = new eek(hay.BREAK, 0);
            eekVar.w(csv.SYNTHETIC);
            eekVar.m(new ayi(elnVar));
            x.add(new gqu(eekVar));
        }
        HashSet hashSet2 = this.f10437c;
        if (hashSet2.contains(cfmVar)) {
            hashSet2.remove(cfmVar);
            Collection.b.removeIf(cfmVar.x(), new brj(20));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.baf, g.byr
    public final boolean _cs(hed hedVar, cfm cfmVar) {
        boolean z;
        eek eekVar;
        switch (this.f10438d) {
            case 0:
                if ((cfmVar instanceof foe) && !(cfmVar instanceof eln)) {
                    cfm cfmVar2 = ((bjk) cfmVar).f11698d;
                    if (!((lh) cfmVar2).l.g(csv.FALL_THROUGH)) {
                        cih v = gs.v(cfmVar2);
                        if (ffb.ah(v)) {
                            z = h(v);
                        }
                        List<amj> e2 = ((foe) cfmVar).e();
                        ArrayList arrayList = new ArrayList();
                        boolean z2 = true;
                        for (amj amjVar : e2) {
                            if (amjVar != null) {
                                fep ae = gs.ae(amjVar);
                                if (ae == null) {
                                    break;
                                } else {
                                    eek eekVar2 = ae.f16671b;
                                    if (eekVar2.ah == hay.BREAK) {
                                        cih cihVar = ae.f16670a;
                                        arrayList.add(new bns(cihVar, gs.i(cihVar, amjVar)));
                                    } else if (!eekVar2.ba()) {
                                    }
                                }
                            }
                            z2 = false;
                        }
                        if (!arrayList.isEmpty()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                bns bnsVar = (bns) it.next();
                                g(bnsVar.f11882b, bnsVar.f11881a);
                            }
                            if (!z) {
                                this.f10435a.add(cfmVar2);
                                this.f10439e = true;
                            }
                            hedVar.w(csv.REQUEST_IF_REGION_OPTIMIZE);
                        }
                        if (z2 && v != null) {
                            g(v, cfmVar2);
                            break;
                        }
                    }
                }
                break;
            default:
                List x = cfmVar.x();
                amj amjVar2 = (amj) acw.ai(x);
                if (amjVar2 instanceof cih) {
                    cih cihVar2 = (cih) amjVar2;
                    if (h(cihVar2)) {
                        if (cihVar2.c().size() > 1) {
                            eekVar = (eek) awf.q(2, cihVar2.c());
                        } else {
                            if (x.size() > 1) {
                                amj amjVar3 = (amj) awf.q(2, x);
                                if (amjVar3 instanceof cih) {
                                    eekVar = (eek) acw.ai(((cih) amjVar3).c());
                                }
                            }
                            eekVar = null;
                        }
                        if (eekVar != null && eekVar.ba()) {
                            g(cihVar2, cfmVar);
                            break;
                        }
                    }
                }
                break;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(cih cihVar, amj amjVar) {
        List c2 = cihVar.c();
        eek eekVar = (eek) acw.ai(c2);
        if (eekVar == null || eekVar.ah != hay.BREAK) {
            return;
        }
        acw.am(c2);
        if (c2.isEmpty()) {
            ((lh) cihVar).w(csv.REMOVE);
            this.f10437c.add(amjVar);
        }
    }

    public final boolean h(cih cihVar) {
        eek eekVar;
        if (cihVar == null || (eekVar = (eek) acw.ai(cihVar.c())) == null || eekVar.ah != hay.BREAK) {
            return false;
        }
        ayi ayiVar = (ayi) eekVar.l.k(acq.be);
        return ayiVar != null && ayiVar.f11057a == this.f10436b;
    }
}
