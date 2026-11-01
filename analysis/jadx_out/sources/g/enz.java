package g;

import j$.util.Collection;
import j$.util.Map;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class enz extends baf implements avy {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15881c;

    /* renamed from: b, reason: collision with root package name */
    public static final enz f15880b = new enz(0);

    /* renamed from: a, reason: collision with root package name */
    public static final enz f15879a = new enz(1);

    public /* synthetic */ enz(int i) {
        this.f15881c = i;
    }

    public static boolean br(hed hedVar, eek eekVar, eek eekVar2) {
        int i;
        int i2;
        eek aa;
        int i3;
        if (hedVar.l.g(csv.USE_LINES_HINTS) && (i = eekVar.bp) != (i2 = eekVar2.bp)) {
            if (i != 0 && i2 != 0) {
                gks gksVar = eekVar.ai;
                if (gksVar == null || eekVar2.ai == null) {
                    return false;
                }
                abi q = gksVar.f18326a.q();
                abi q2 = eekVar2.ai.f18326a.q();
                if (q2 == null || q != q2) {
                    return false;
                }
                HashMap hashMap = new HashMap(q.aj.size());
                for (gsh gshVar : q.aj) {
                    gshVar.getClass();
                    if ((gshVar instanceof gks) && (aa = ((gks) gshVar).aa()) != null && (i3 = aa.bp) != 0) {
                        Map.b.merge(hashMap, Integer.valueOf(i3), 1, new ebe());
                    }
                }
                Iterator it = hashMap.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Integer) ((Map.Entry) it.next()).getValue()).intValue() >= 2) {
                    }
                }
                return false;
            }
            if (e(eekVar) || e(eekVar2)) {
                return false;
            }
        }
        return true;
    }

    public static fza d(amj amjVar) {
        if (!(amjVar instanceof eys)) {
            return null;
        }
        eys eysVar = (eys) amjVar;
        if (eysVar.f16387g.size() != 1) {
            return null;
        }
        amj amjVar2 = (amj) eysVar.f16387g.get(0);
        if (!(amjVar2 instanceof fza)) {
            return null;
        }
        fza fzaVar = (fza) amjVar2;
        if (fzaVar.ac.size() == 1) {
            return fzaVar;
        }
        return null;
    }

    public static boolean e(eek eekVar) {
        if (eekVar.ah == hay.TERNARY) {
            return true;
        }
        for (int i = 0; i < eekVar.aj.size(); i++) {
            gsh j = eekVar.j(i);
            j.getClass();
            if ((j instanceof cly) && e(((cly) j).f13104a)) {
                return true;
            }
        }
        return false;
    }

    public static void g(List list, fza fzaVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fza fzaVar2 = (fza) it.next();
            if (fzaVar2 != fzaVar) {
                fzaVar2.ac.clear();
                fzaVar2.w(csv.REMOVE);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean h(amj amjVar) {
        if (((lh) amjVar).l.g(csv.DONT_GENERATE)) {
            return true;
        }
        if (amjVar instanceof fza) {
            return ((fza) amjVar).ac.isEmpty();
        }
        if (((amjVar instanceof cab) && ((cab) amjVar).z == null) || !(amjVar instanceof cfm)) {
            return false;
        }
        Iterator it = ((cfm) amjVar).x().iterator();
        while (it.hasNext()) {
            if (!h((amj) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean j(hed hedVar, cfm cfmVar) {
        eek eekVar;
        gks gksVar;
        abi q;
        gsh b2;
        if (cfmVar instanceof goe) {
            goe goeVar = (goe) cfmVar;
            if (!goeVar.l.g(csv.ELSE_IF_CHAIN)) {
                amj amjVar = goeVar.h;
                amj amjVar2 = goeVar.f18486g;
                if (amjVar != null) {
                    gks gksVar2 = null;
                    if (amjVar2 == null) {
                        fza d2 = d(amjVar);
                        if (d2 != null && (gksVar = (eekVar = (eek) d2.ac.get(0)).ai) != null && gksVar.f18326a.f20178d.size() == 1 && (q = gksVar.f18326a.q()) != null) {
                            List list = q.aj;
                            if (list.size() == 2) {
                                Iterator it = list.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    gsh gshVar = (gsh) it.next();
                                    if (!gksVar.x(gshVar)) {
                                        gksVar2 = (gks) gshVar;
                                        break;
                                    }
                                }
                                if (gksVar2 != null) {
                                    eek aa = gksVar2.aa();
                                    if (hedVar.bk() || ((hedVar.am.bi() && hedVar.al.m()) || (aa == null || !aa.as() ? !eekVar.ai.y(gksVar2) : br(hedVar, eekVar, aa)))) {
                                        fza fzaVar = (fza) goeVar.f15618ab.get(0);
                                        if (goeVar.f11698d.f(goeVar, fzaVar)) {
                                            if (aa == null || !aa.as()) {
                                                b2 = gksVar2.b();
                                            } else {
                                                vm vmVar = aa.ai.f18326a;
                                                if (vmVar.f20178d.size() == 1 && vmVar.q() == q) {
                                                    fpd.l(hedVar, aa);
                                                }
                                                b2 = gsh.ah(aa);
                                            }
                                            dwk dwkVar = new dwk(goeVar.aa, q.ai.b(), gsh.ah(eekVar), b2);
                                            dwkVar.y();
                                            fpd.q(hedVar, q);
                                            fpd.j(hedVar, eekVar);
                                            con.b(d2, eekVar);
                                            fzaVar.ac.clear();
                                            dwkVar._bs();
                                            fzaVar.ac.add(dwkVar);
                                            g(goeVar.f15618ab, fzaVar);
                                            eak.av(hedVar);
                                            return false;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        fza d3 = d(amjVar);
                        fza d4 = d(amjVar2);
                        if (d3 != null && d4 != null) {
                            List list2 = goeVar.f15618ab;
                            if (!list2.isEmpty()) {
                                fza fzaVar2 = (fza) list2.get(0);
                                eek eekVar2 = (eek) d3.ac.get(0);
                                eek eekVar3 = (eek) d4.ac.get(0);
                                if (br(hedVar, eekVar2, eekVar3)) {
                                    gks gksVar3 = eekVar2.ai;
                                    gks gksVar4 = eekVar3.ai;
                                    if (gksVar3 != null && gksVar4 != null) {
                                        abi q2 = gksVar3.f18326a.q();
                                        abi q3 = gksVar4.f18326a.q();
                                        if (q2 != null && q2 == q3 && goeVar.f11698d.f(goeVar, fzaVar2)) {
                                            con.b(d3, eekVar2);
                                            con.b(d4, eekVar3);
                                            if (q2.aj.size() == 2) {
                                                gksVar3 = q2.ai;
                                                fpd.j(hedVar, eekVar2);
                                            } else {
                                                q2._ax(gksVar4);
                                            }
                                            dwk dwkVar2 = new dwk(goeVar.aa, gksVar3, gsh.ah(eekVar2), gsh.ah(eekVar3));
                                            dwkVar2.bp = Math.max(goeVar.ac(), Math.max(eekVar2.bp, eekVar3.bp));
                                            eekVar2.ai = null;
                                            fpd.j(hedVar, eekVar3);
                                            fzaVar2.ac.clear();
                                            dwkVar2._bs();
                                            fzaVar2.ac.add(dwkVar2);
                                            g(list2, fzaVar2);
                                            return true;
                                        }
                                    } else if (!hedVar.bg()) {
                                        hay hayVar = eekVar2.ah;
                                        hay hayVar2 = hay.RETURN;
                                        if (hayVar == hayVar2 && eekVar3.ah == hayVar2) {
                                            gsh j = eekVar2.j(0);
                                            gsh j2 = eekVar3.j(0);
                                            j.getClass();
                                            boolean z = j instanceof ekh;
                                            j2.getClass();
                                            if (z == (j2 instanceof ekh) && goeVar.f11698d.f(goeVar, fzaVar2)) {
                                                con.b(d3, eekVar2);
                                                con.b(d4, eekVar3);
                                                csv csvVar = csv.RETURN;
                                                d3.v(csvVar);
                                                d4.v(csvVar);
                                                dwk dwkVar3 = new dwk(goeVar.aa, null, j, j2);
                                                eek eekVar4 = new eek(hayVar2, 1);
                                                gsh ah = gsh.ah(dwkVar3);
                                                ah.f(j.j());
                                                eekVar4._an(ah);
                                                fzaVar2.ac.clear();
                                                eekVar4._bs();
                                                fzaVar2.ac.add(eekVar4);
                                                fzaVar2.w(csvVar);
                                                g(list2, fzaVar2);
                                                return true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // g.baf, g.byr
    public void _ar(hed hedVar, cfm cfmVar) {
        switch (this.f15881c) {
            case 0:
                if (!(cfmVar instanceof cab)) {
                    if (!(cfmVar instanceof eln)) {
                        if (cfmVar instanceof eys) {
                            eys eysVar = (eys) cfmVar;
                            ArrayList arrayList = eysVar.f16387g;
                            if (!arrayList.isEmpty()) {
                                Object obj = (amj) arrayList.get(arrayList.size() - 1);
                                List e2 = ((lh) obj).l.e(acq.t);
                                if (!e2.isEmpty()) {
                                    azi aziVar = (azi) e2.get(0);
                                    fza fzaVar = aziVar.f11109b;
                                    eek eekVar = aziVar.f11108a;
                                    if (fzaVar.equals(obj)) {
                                        if (obj instanceof fza) {
                                            ArrayList arrayList2 = ((fza) obj).ac;
                                            if (arrayList2.isEmpty()) {
                                                arrayList2.add(eekVar);
                                                break;
                                            }
                                        }
                                        eysVar.h(new gqu(Collections.singletonList(eekVar)));
                                        break;
                                    }
                                }
                            }
                        }
                    } else {
                        eln elnVar = (eln) cfmVar;
                        dba dbaVar = diu.f14250a;
                        Iterator it = elnVar.i.iterator();
                        while (it.hasNext()) {
                            amj amjVar = ((adk) it.next()).f10048b;
                            fon fonVar = new fon(hedVar);
                            buj.bb(hedVar, new fdl(2, new agx(5, fonVar)), amjVar);
                            buj.bb(hedVar, new bsj(amjVar, fonVar, elnVar), amjVar);
                        }
                        break;
                    }
                } else {
                    cab cabVar = (cab) cfmVar;
                    fza fzaVar2 = cabVar.z;
                    fza fzaVar3 = cabVar.i;
                    if (fzaVar3 != null && fzaVar2 != null) {
                        ArrayList arrayList3 = fzaVar2.ac;
                        ArrayList arrayList4 = fzaVar3.ac;
                        arrayList4.addAll(arrayList3);
                        arrayList3.clear();
                        arrayList3.addAll(arrayList4);
                        fzaVar2.w(csv.ALLOW_MULTIPLE_INSNS_LOOP_COND);
                        arrayList4.clear();
                        cabVar.i = null;
                        break;
                    }
                }
                break;
        }
    }

    @Override // g.avy
    public boolean _bq(hed hedVar, cfm cfmVar) {
        if (!j(hedVar, cfmVar)) {
            return false;
        }
        eak.av(hedVar);
        return true;
    }

    @Override // g.baf, g.byr
    public boolean _cs(hed hedVar, cfm cfmVar) {
        fza fzaVar;
        eii f2;
        switch (this.f15881c) {
            case 1:
                if (!j(hedVar, cfmVar)) {
                    return true;
                }
                hedVar.w(csv.REQUEST_CODE_SHRINK);
                return true;
            case 2:
                if ((cfmVar instanceof cab) && (fzaVar = ((cab) cfmVar).z) != null) {
                    if (!fzaVar.l.g(csv.ALLOW_MULTIPLE_INSNS_LOOP_COND) && fzaVar.ac.size() != 1) {
                        hedVar.bs("Incorrect condition in loop: " + fzaVar);
                    }
                }
                return true;
            case 3:
                if (!(cfmVar instanceof eys)) {
                    return true;
                }
                Collection.b.removeIf(((eys) cfmVar).f16387g, new bev(12));
                return true;
            case 4:
                if (cfmVar instanceof goe) {
                    goe goeVar = (goe) cfmVar;
                    if (gs.z(goeVar.f18486g)) {
                        if (gs.z(goeVar.h)) {
                            if (hedVar.l.g(csv.USE_LINES_HINTS)) {
                                int at = gs.at(goeVar.h);
                                int at2 = gs.at(goeVar.f18486g);
                                if (at != 0 && at2 != 0) {
                                    if (at > at2) {
                                        eak.ab(goeVar);
                                    }
                                }
                            }
                            eii eiiVar = goeVar.aa;
                            if (eiiVar != null && (f2 = eii.f(eiiVar)) != goeVar.aa) {
                                goeVar.aa = f2;
                                if (f2 != null && f2.f15587a == ath.NOT) {
                                    eak.ab(goeVar);
                                }
                            }
                            int ba = gs.ba(goeVar.h);
                            int ba2 = gs.ba(goeVar.f18486g);
                            if (eak.am(hedVar, goeVar.f18486g)) {
                                if (eak.am(hedVar, goeVar.h) && ba2 < ba) {
                                    eak.ab(goeVar);
                                } else if (ba2 == 1) {
                                    boolean y = gs.y(goeVar);
                                    if (y && hedVar.bg()) {
                                        if (ack.l(gs.ac(goeVar.f18486g), hay.THROW)) {
                                            eak.ab(goeVar);
                                        }
                                    } else if (ba > 2 && (!y || ba >= 4)) {
                                        eak.ab(goeVar);
                                    }
                                }
                            }
                            amj amjVar = goeVar.h;
                            boolean q = amjVar == null ? false : gs.q(amjVar, amjVar);
                            amj amjVar2 = goeVar.f18486g;
                            if ((amjVar2 == null ? false : gs.q(amjVar2, amjVar2)) && (!q || ba2 < ba)) {
                                eak.ab(goeVar);
                            } else if (eak.au(goeVar.h) && !eak.au(goeVar.f18486g) && !q) {
                                eak.ab(goeVar);
                            } else if (gs.as(goeVar.f18486g)) {
                                eak.ab(goeVar);
                            }
                        } else {
                            eak.ab(goeVar);
                        }
                    }
                    if (!eak.am(hedVar, goeVar.h)) {
                        epk epkVar = goeVar.f18486g;
                        if (epkVar instanceof eys) {
                            ArrayList arrayList = ((eys) epkVar).f16387g;
                            if (arrayList.size() == 1 && (arrayList.get(0) instanceof goe)) {
                                epk epkVar2 = (amj) arrayList.get(0);
                                csv csvVar = csv.ELSE_IF_CHAIN;
                                ((lh) epkVar2).w(csvVar);
                                ((lh) epkVar).w(csvVar);
                            }
                        }
                    }
                }
                return true;
            default:
                return super._cs(hedVar, cfmVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x000e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x000e A[SYNTHETIC] */
    @Override // g.baf, g.byr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void bq(hed hedVar, cih cihVar) {
        boolean bh;
        int i;
        switch (this.f15881c) {
            case 5:
                for (eek eekVar : cihVar.c()) {
                    gks gksVar = eekVar.ai;
                    hay hayVar = eekVar.ah;
                    if (gksVar != null) {
                        vm vmVar = gksVar.f18326a;
                        boolean z = false;
                        if (vmVar != null) {
                            ArrayList arrayList = vmVar.f20178d;
                            if (!arrayList.isEmpty()) {
                                bh = vmVar.t() ? false : acw.bh(arrayList, new egm(this, hedVar));
                                if (bh) {
                                    int i2 = axo.f11031a[hayVar.ordinal()];
                                    if (!(i2 == 8 || i2 == 9)) {
                                        if (eekVar.as() || (i = asj.f10747a[hayVar.ordinal()]) == 1 || i == 2) {
                                            eekVar.w(csv.REMOVE);
                                            eekVar.w(csv.DONT_GENERATE);
                                        }
                                        if (!z) {
                                            eekVar.ai = null;
                                            hedVar.at.remove(vmVar);
                                            Iterator it = vmVar.f20178d.iterator();
                                            while (it.hasNext()) {
                                                ((gks) it.next()).f18326a = null;
                                            }
                                        }
                                    }
                                    z = true;
                                    if (!z) {
                                    }
                                }
                            }
                        }
                        bh = true;
                        if (bh) {
                        }
                    }
                }
                break;
        }
    }
}
