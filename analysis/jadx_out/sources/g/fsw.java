package g;

import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fsw extends grb {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f17353a = dsr.k(fsw.class);

    public final void b(eos eosVar, amj amjVar) {
        g(eosVar, amjVar);
        amjVar.b(this, eosVar);
    }

    public final void c(eos eosVar, amj amjVar) {
        grs grsVar = (grs) eosVar;
        grsVar.aa();
        b(eosVar, amjVar);
        grsVar.ab();
    }

    public final void d(eos eosVar, dsj dsjVar, hcd hcdVar) {
        boolean z;
        Object obj;
        if (hcdVar != null) {
            z = hcdVar.f19216f.bi();
        } else {
            aht l = this.n.l.l(dsjVar.f14711d.f20149d);
            z = l != null && afo.af(l.f10239d, 16384);
        }
        if (z) {
            if (hcdVar != null) {
                eosVar.b(hcdVar);
            }
            eosVar.d(dsjVar.f14710b);
            return;
        }
        r(eosVar, dsjVar);
        if (hcdVar == null || !this.m.bx(afa.INFO)) {
            return;
        }
        ghr ghrVar = (ghr) hcdVar.l.k(ao.x);
        if (ghrVar == null || (obj = ghrVar.f18176f) == null) {
            return;
        }
        eosVar.d(" /* ").d(obj.toString()).d(" */");
    }

    public final void e(eos eosVar, aea aeaVar) {
        ejh ejhVar = this.l;
        gez gezVar = ejhVar.f15649b;
        amj amjVar = aeaVar.f10081d;
        if (amjVar == null) {
            return;
        }
        grs grsVar = (grs) eosVar;
        grsVar.ae("} catch (");
        if (aeaVar.m()) {
            ejhVar.f15651d.o(grsVar, cwx.v);
        } else {
            Iterator it = aeaVar.f10082e.iterator();
            if (it.hasNext()) {
                y(grsVar, (ve) it.next());
            }
            while (it.hasNext()) {
                grsVar.d(" | ");
                y(grsVar, (ve) it.next());
            }
        }
        grsVar.a(' ');
        gsh gshVar = aeaVar.f10083f;
        hed hedVar = this.m;
        if (gshVar == null) {
            grsVar.d(MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
        } else if (gshVar instanceof gks) {
            vm vmVar = ((gks) gshVar).f18326a;
            if (grsVar instanceof flc) {
                grsVar.g(cmw.h(hedVar, vmVar));
            }
            grsVar.d(gezVar.n(vmVar.u()));
        } else {
            if (!(gshVar instanceof add)) {
                throw new gck("Unexpected arg type in catch block: " + gshVar + ", class: " + gshVar.getClass().getSimpleName());
            }
            add addVar = (add) gshVar;
            gezVar.getClass();
            String str = addVar.f10031a;
            if (!gezVar.f18010g) {
                str = gezVar.j(str);
                addVar.f10031a = str;
            }
            grsVar.d(str);
        }
        grsVar.d(") {");
        int i = aeaVar.h;
        if (i >= 0 && (grsVar instanceof flc)) {
            grsVar.f(new ahw(i));
        }
        bzu.d(grsVar, hedVar, aeaVar.i);
        c(grsVar, amjVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(goe goeVar, eos eosVar, boolean z) {
        amj amjVar;
        if (z) {
            ((grs) eosVar).ac(goeVar.ac());
        } else {
            eosVar.e(goeVar.ac());
        }
        boolean g2 = goeVar.l.g(csv.COMMENT_OUT);
        if (g2) {
            eosVar.d("// ");
        }
        eosVar.d("if (");
        new fto(this.l, this.k).c(eosVar, new dfa(0), goeVar.aa);
        eosVar.d(") {");
        grs grsVar = (grs) eosVar;
        if (grsVar instanceof flc) {
            List list = goeVar.f15618ab;
            if (!list.isEmpty()) {
                eek s = ffb.s((fza) list.get(0));
                ahw.c(eosVar, s);
                bzu.d(eosVar, this.m, s);
            }
        }
        c(eosVar, goeVar.h);
        if (g2) {
            grsVar.ae("// }");
        } else {
            grsVar.ad('}');
        }
        amj amjVar2 = goeVar.f18486g;
        if (gs.z(amjVar2)) {
            eosVar.d(" else ");
            if (((lh) amjVar2).l.g(csv.ELSE_IF_CHAIN)) {
                if (amjVar2 instanceof eys) {
                    ArrayList arrayList = ((eys) amjVar2).f16387g;
                    if (arrayList.size() == 1) {
                        Object obj = arrayList.get(0);
                        while (true) {
                            amjVar = (amj) obj;
                            if (!(amjVar instanceof eys)) {
                                break;
                            }
                            ArrayList arrayList2 = ((eys) amjVar).f16387g;
                            if (arrayList2.size() != 1) {
                                break;
                            } else {
                                obj = arrayList2.get(0);
                            }
                        }
                        if (amjVar instanceof goe) {
                            g(eosVar, amjVar);
                            f((goe) amjVar, eosVar, false);
                            return;
                        }
                    }
                }
                amjVar = null;
                if (amjVar instanceof goe) {
                }
            }
            eosVar.a('{');
            c(eosVar, amjVar2);
            if (g2) {
                grsVar.ae("// }");
            } else {
                grsVar.ad('}');
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(eos eosVar, amj amjVar) {
        cug cugVar = (cug) ((lh) amjVar).l.k(acq.l);
        if (cugVar != null) {
            Iterator it = cugVar.f13526a.iterator();
            while (it.hasNext()) {
                ejb ejbVar = (ejb) it.next();
                ((grs) eosVar).ag();
                if (ejbVar.f15628a) {
                    eosVar.d("final ");
                }
                ac(eosVar, ejbVar.f15632e);
                eosVar.a(' ');
                t(eosVar, ejbVar);
                eosVar.a(';');
                bzu.d(eosVar, this.m, ejbVar.h().f20177c);
            }
        }
    }
}
