package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class ghm {

    /* renamed from: a, reason: collision with root package name */
    public final hed f18165a;

    /* renamed from: b, reason: collision with root package name */
    public final bei f18166b;

    static {
        dsr.k(ghm.class);
    }

    public ghm(hed hedVar, bei beiVar) {
        this.f18165a = hedVar;
        this.f18166b = beiVar;
    }

    public static gxv c(hed hedVar, fza fzaVar) {
        eek s = ffb.s(fzaVar);
        if (s == null || s.ah != hay.IF) {
            return null;
        }
        bgw bgwVar = (bgw) s;
        gxv gxvVar = new gxv(hedVar, new eii(new evf(bgwVar)), bgwVar._br, bgwVar.x);
        ((fon) gxvVar.f18978b).c(fzaVar);
        return gxvVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static gxv d(hed hedVar, fza fzaVar, gxv gxvVar) {
        fza bv;
        gxv gxvVar2;
        fza fzaVar2;
        fza fzaVar3 = (fza) gxvVar.f18979c;
        fza fzaVar4 = (fza) gxvVar.f18981e;
        if (Objects.equals(fzaVar3, fzaVar4)) {
            gxv gxvVar3 = new gxv(gxvVar, (fza) null);
            gxvVar3.i = fzaVar3;
            return gxvVar3;
        }
        csv csvVar = csv.RETURN;
        if (fzaVar3.l.g(csvVar) && fzaVar4.l.g(csvVar)) {
            gxvVar.i = null;
            return gxvVar;
        }
        if (fzaVar3 == fzaVar4) {
            bv = fzaVar3;
        } else if (fzaVar4 == null) {
            bv = null;
        } else {
            BitSet v = ffb.v(hedVar);
            v.or(fzaVar3.i);
            v.set(fzaVar3.x);
            BitSet v2 = ffb.v(hedVar);
            v2.or(fzaVar4.i);
            v2.set(fzaVar4.x);
            BitSet v3 = ffb.v(hedVar);
            v3.or(v);
            v3.and(v2);
            v3.clear(hedVar.ad.x);
            bv = ffb.bv(hedVar, v3);
            if (bv == null) {
                BitSet v4 = ffb.v(hedVar);
                v4.or(fzaVar3.i);
                v4.or(fzaVar4.i);
                v4.clear(hedVar.ad.x);
                BitSet v5 = ffb.v(hedVar);
                for (fza fzaVar5 : ffb.bj(hedVar, v4)) {
                    if (fzaVar5.f17685e.size() >= 2) {
                        BitSet v6 = ffb.v(hedVar);
                        BitSet v7 = ffb.v(hedVar);
                        if (fzaVar5 == fzaVar4) {
                            v7.set(fzaVar5.x);
                        }
                        if (fzaVar5 == fzaVar3) {
                            v6.set(fzaVar5.x);
                        }
                        for (fza fzaVar6 : fzaVar5.f17685e) {
                            if (ffb.ac(fzaVar3, fzaVar6)) {
                                v6.set(fzaVar6.x);
                            }
                            if (ffb.ac(fzaVar4, fzaVar6)) {
                                v7.set(fzaVar6.x);
                            }
                        }
                        if (v7.cardinality() != 0 && v6.cardinality() != 0) {
                            fza bv2 = ffb.bv(hedVar, v7);
                            fza bv3 = ffb.bv(hedVar, v6);
                            if (bv2 == null || bv2 != bv3) {
                                v5.set(fzaVar5.x);
                            }
                        }
                    }
                }
                bv = ffb.ap(ffb.bj(hedVar, v5), true);
                if (bv == null) {
                    bv = ffb.z(hedVar, fzaVar3, fzaVar4);
                }
            }
        }
        gxvVar.i = bv;
        boolean m = m(gxvVar, fzaVar3);
        boolean m2 = m(gxvVar, fzaVar4);
        if (m && m2) {
            return null;
        }
        if (!m2) {
            if (m) {
                gxvVar2 = new gxv(gxv.j(gxvVar), fzaVar4);
                gxvVar2.i = fzaVar3;
            }
            if (((fza) gxvVar.i) == null) {
                fza j = j(hedVar, (fza) gxvVar.f18979c);
                fza j2 = j(hedVar, (fza) gxvVar.f18981e);
                if (j == null && j2 != null) {
                    gxvVar.i = j2;
                } else if (j != null && j2 == null) {
                    gxvVar.i = j;
                } else if (j != null && j == j2) {
                    gxvVar.i = j;
                }
            }
            fzaVar2 = (fza) gxvVar.i;
            if ((fzaVar2 == null || fzaVar.z.contains(fzaVar2)) ? false : fzaVar.f17684d.contains(fzaVar2)) {
                gxvVar.i = null;
            }
            return gxvVar;
        }
        gxvVar2 = new gxv(gxvVar, fzaVar3);
        gxvVar2.i = fzaVar4;
        gxvVar = gxvVar2;
        if (((fza) gxvVar.i) == null) {
        }
        fzaVar2 = (fza) gxvVar.i;
        if (fzaVar2 == null) {
            if ((fzaVar2 == null || fzaVar.z.contains(fzaVar2)) ? false : fzaVar.f17684d.contains(fzaVar2)) {
            }
            return gxvVar;
        }
        if ((fzaVar2 == null || fzaVar.z.contains(fzaVar2)) ? false : fzaVar.f17684d.contains(fzaVar2)) {
        }
        return gxvVar;
    }

    public static fza e(fza fzaVar) {
        List list = fzaVar.f17684d;
        if (list.size() > 2 || list.size() == 0) {
            return null;
        }
        fza fzaVar2 = (fza) list.get(0);
        if (list.size() == 1) {
            return fzaVar2;
        }
        fza fzaVar3 = (fza) list.get(1);
        csv csvVar = csv.EXC_BOTTOM_SPLITTER;
        boolean g2 = fzaVar2.l.g(csvVar);
        boolean g3 = fzaVar3.l.g(csvVar);
        if (!g2 && !g3) {
            return null;
        }
        if (g2 && g3) {
            return null;
        }
        if (g2) {
            fzaVar2 = fzaVar3;
        }
        return fzaVar2.ac.isEmpty() ? e(fzaVar2) : fzaVar2;
    }

    public static gxv f(gxv gxvVar, fza fzaVar) {
        if (fzaVar.f17685e.size() != 1) {
            fon fonVar = (fon) gxvVar.f18978b;
            List list = fzaVar.f17685e;
            fonVar.getClass();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!fonVar.d((fza) it.next())) {
                    return null;
                }
            }
        }
        return h(gxvVar, fzaVar);
    }

    public static void g(gxv gxvVar) {
        fon fonVar = (fon) gxvVar.f18978b;
        Set set = (Set) gxvVar.f18977a;
        if (fonVar.f17143b.cardinality() > 1) {
            Iterator it = ((fon) gxvVar.f18978b).iterator();
            while (true) {
                fdz fdzVar = (fdz) it;
                if (!fdzVar.hasNext()) {
                    break;
                }
                fza fzaVar = (fza) fdzVar.next();
                if (fzaVar != gxvVar.l()) {
                    fzaVar.w(csv.ADDED_TO_REGION);
                }
            }
        }
        if (!set.isEmpty()) {
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                ((fza) it2.next()).w(csv.ADDED_TO_REGION);
            }
            set.clear();
        }
        Iterator it3 = ((List) gxvVar.f18982f).iterator();
        while (it3.hasNext()) {
            ((eek) it3.next()).w(csv.FORCE_ASSIGN_INLINE);
        }
    }

    public static gxv h(gxv gxvVar, fza fzaVar) {
        ArrayList arrayList;
        int size;
        hed hedVar = (hed) gxvVar.f18983g;
        if (fzaVar == null) {
            return null;
        }
        if (fzaVar.l.j(acq.at)) {
            return null;
        }
        csv csvVar = csv.ADDED_TO_REGION;
        if (fzaVar.l.g(csvVar)) {
            return null;
        }
        eek s = ffb.s(fzaVar);
        if (s != null && s.ah == hay.IF) {
            return c(hedVar, fzaVar);
        }
        fza e2 = e(fzaVar);
        if (e2 == null) {
            return null;
        }
        boolean z = true;
        if (e2.f17685e.size() != 1 || e2.l.g(csvVar)) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = fzaVar.ac;
        if (!arrayList3.isEmpty()) {
            Iterator it = arrayList3.iterator();
            boolean z2 = true;
            while (it.hasNext()) {
                eek eekVar = (eek) it.next();
                gks gksVar = eekVar.ai;
                if (gksVar != null && (size = (arrayList = gksVar.f18326a.f20178d).size()) != 0) {
                    eek eekVar2 = ((gsh) arrayList.get(0)).ae;
                    if (ffb.af(fzaVar, eekVar2) || ffb.af(e2, eekVar2)) {
                        if (size > 1) {
                            arrayList2.add(eekVar);
                        } else {
                            z2 = false;
                        }
                    }
                }
                z = false;
            }
            z = z2;
        }
        if (!z) {
            return null;
        }
        gxv c2 = c(hedVar, e2);
        if (c2 == null) {
            return h(gxvVar, e2);
        }
        ((List) c2.f18982f).addAll(arrayList2);
        return c2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0147, code lost:
    
        if ((r6 ? g.ffb.ch(r2, (g.fza) r3.f18981e) : g.ffb.ch(r0, (g.fza) r3.f18979c)) == false) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static gxv i(gxv gxvVar) {
        boolean z;
        eii eiiVar;
        fdz fdzVar;
        fza fzaVar = (fza) gxvVar.f18979c;
        fza fzaVar2 = (fza) gxvVar.f18979c;
        fza fzaVar3 = (fza) gxvVar.f18981e;
        if (fzaVar == fzaVar3 || ffb.ao(fzaVar) || ffb.ao(fzaVar3)) {
            return null;
        }
        gxv f2 = f(gxvVar, fzaVar);
        if (f2 != null) {
            z = true;
        } else {
            f2 = f(gxvVar, fzaVar3);
            if (f2 == null) {
                return null;
            }
            z = false;
        }
        boolean isEmpty = ((List) f2.f18982f).isEmpty();
        if (!isEmpty) {
            Iterator it = ((fon) gxvVar.f18978b).iterator();
            do {
                fdzVar = (fdz) it;
                if (fdzVar.hasNext()) {
                }
            } while (!((fza) fdzVar.next()).l.g(csv.LOOP_START));
            return gxvVar;
        }
        if (ffb.ch(fzaVar3, (fza) f2.f18979c) || ffb.ch(fzaVar2, (fza) f2.f18981e)) {
            f2 = gxv.j(f2);
        }
        boolean ch = ffb.ch(fzaVar, (fza) f2.f18979c);
        boolean ch2 = ffb.ch(fzaVar3, (fza) f2.f18981e);
        if (!ch && !ch2) {
            if (fzaVar.z.size() == 1 && fzaVar.z.contains(fzaVar3)) {
                return null;
            }
            if (fzaVar3.z.size() == 1 && fzaVar3.z.contains(fzaVar)) {
                return null;
            }
            if (ffb.ac(f2.l(), ffb.cf(z ? fzaVar3 : fzaVar))) {
                f2 = i(f2);
                if (f2 != null) {
                    if (ffb.ch(fzaVar3, (fza) f2.f18979c) || ffb.ch(fzaVar2, (fza) f2.f18981e)) {
                        f2 = gxv.j(f2);
                    }
                }
                return gxvVar;
            }
            gxv f3 = f(gxvVar, fzaVar);
            gxv f4 = f(gxvVar, fzaVar3);
            if (f3 == null || f4 == null || !f3.l().i.equals(f4.l().i)) {
                return null;
            }
            gxv i = i(f3);
            if (i != null) {
                f3 = i;
            }
            fza fzaVar4 = (fza) f3.f18981e;
            gxv i2 = i(f4);
            if (i2 != null) {
                f4 = i2;
            }
            fza fzaVar5 = (fza) f4.f18981e;
            fza fzaVar6 = (fza) f3.f18979c;
            fza fzaVar7 = (fza) f4.f18979c;
            if (fzaVar6 == fzaVar7 && fzaVar4 == fzaVar5) {
                return k(gxvVar, f3, f4);
            }
            if (fzaVar6 == fzaVar5 && fzaVar4 == fzaVar7) {
                return k(gxvVar, f3, gxv.j(f4));
            }
            return null;
        }
        if (!isEmpty) {
            if (!((ch && !z) || (ch2 && z))) {
                ((List) gxvVar.f18982f).clear();
                return gxvVar;
            }
        }
        fza fzaVar8 = (fza) f2.f18981e;
        fza fzaVar9 = (fza) f2.f18979c;
        hed hedVar = (hed) gxvVar.f18983g;
        Set set = (Set) gxvVar.f18977a;
        if (z) {
            fzaVar8 = l(fzaVar3, fzaVar8, set, hedVar);
        } else {
            fzaVar9 = l(fzaVar, fzaVar9, set, hedVar);
        }
        ath athVar = z ? ath.AND : ath.OR;
        eii eiiVar2 = (eii) gxvVar.h;
        eii eiiVar3 = (eii) f2.h;
        if (eiiVar2.f15587a == athVar) {
            eiiVar = new eii(eiiVar2);
            eiiVar.f15588b.add(eiiVar3);
        } else {
            eiiVar = new eii(athVar, Arrays.asList(eiiVar2, eiiVar3));
        }
        gxv gxvVar2 = new gxv(hedVar, eiiVar, fzaVar9, fzaVar8);
        gxvVar2.m(gxvVar, f2);
        gxv i3 = i(gxvVar2);
        return i3 != null ? i3 : gxvVar2;
    }

    public static fza j(hed hedVar, fza fzaVar) {
        if (fzaVar == null) {
            return null;
        }
        for (fza fzaVar2 : ffb.bj(hedVar, fzaVar.i)) {
            eng engVar = (eng) fzaVar2.l.k(acq.bh);
            if (engVar != null) {
                aea aeaVar = engVar.f15859a;
                if (fzaVar.ae(aeaVar.j.f18787a)) {
                    return ffb.bu(hedVar, aeaVar);
                }
            }
        }
        return null;
    }

    public static gxv k(gxv gxvVar, gxv gxvVar2, gxv gxvVar3) {
        gxv gxvVar4 = new gxv((hed) gxvVar.f18983g, new eii(ath.TERNARY, Arrays.asList((eii) gxvVar.h, (eii) gxvVar2.h, (eii) gxvVar3.h)), (fza) gxvVar2.f18979c, (fza) gxvVar2.f18981e);
        gxvVar4.m(gxvVar, gxvVar2, gxvVar3);
        g(gxvVar4);
        return gxvVar4;
    }

    public static fza l(fza fzaVar, fza fzaVar2, Set set, hed hedVar) {
        if (fzaVar == fzaVar2) {
            return fzaVar2;
        }
        if (ffb.bz(fzaVar, fzaVar2)) {
            set.add(fzaVar);
            return fzaVar2;
        }
        if (ffb.ar(fzaVar, fzaVar2)) {
            fzaVar.w(csv.REMOVE);
            set.add(fzaVar);
            return fzaVar2;
        }
        fza z = ffb.z(hedVar, fzaVar, fzaVar2);
        if (z != null) {
            Objects.requireNonNull(set);
            ffb.at(hedVar, fzaVar, z, new agx(13, set));
            ffb.at(hedVar, fzaVar2, z, new agx(13, set));
            set.remove(z);
            return z;
        }
        fza cf = ffb.cf(fzaVar);
        fza cf2 = ffb.cf(fzaVar2);
        if (!cf.equals(cf2) && !ffb.bz(cf, cf2)) {
            throw new gck("Unexpected merge pattern");
        }
        set.add(fzaVar);
        set.add(fzaVar2);
        while (true) {
            fzaVar = ffb.az(fzaVar, Boolean.FALSE, true);
            if (fzaVar == null) {
                break;
            }
            set.add(fzaVar);
        }
        while (true) {
            fzaVar2 = ffb.az(fzaVar2, Boolean.FALSE, true);
            if (fzaVar2 == null) {
                return cf2;
            }
            set.add(fzaVar2);
        }
    }

    public static boolean m(gxv gxvVar, fza fzaVar) {
        boolean z = false;
        if (fzaVar.l.g(csv.LOOP_START) && fzaVar.f17685e.size() == 1) {
            fza fzaVar2 = (fza) fzaVar.f17685e.get(0);
            if (fzaVar2.l.g(csv.LOOP_END)) {
                acq acqVar = acq.at;
                List<gcv> e2 = fzaVar.l.e(acqVar);
                List e3 = fzaVar2.l.e(acqVar);
                loop0: for (gcv gcvVar : e2) {
                    Iterator it = e3.iterator();
                    while (it.hasNext()) {
                        if (gcvVar == ((gcv) it.next())) {
                            break loop0;
                        }
                    }
                }
            }
        }
        fza fzaVar3 = (fza) gxvVar.i;
        if (fzaVar3 != null) {
            return fzaVar == fzaVar3;
        }
        List list = fzaVar.f17685e;
        fon fonVar = (fon) gxvVar.f18978b;
        Iterator it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            }
            fza fzaVar4 = (fza) it2.next();
            if (!fzaVar4.l.g(csv.LOOP_END) && !fonVar.d(ffb.bx(fzaVar4))) {
                break;
            }
        }
        return !z;
    }
}
