package g;

import j$.lang.Iterable;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class giq extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final EnumSet f18211a;

    /* renamed from: b, reason: collision with root package name */
    public static final EnumSet f18212b;

    static {
        hay hayVar = hay.RETURN;
        hay hayVar2 = hay.IF;
        hay hayVar3 = hay.SWITCH;
        hay hayVar4 = hay.THROW;
        f18211a = EnumSet.of(hayVar, hayVar2, hayVar3, hay.MONITOR_ENTER, hay.MONITOR_EXIT, hayVar4, hay.MOVE_EXCEPTION);
        f18212b = EnumSet.of(hayVar, hayVar4, hay.GOTO, hayVar2, hayVar3, hay.JAVA_JSR, hay.JAVA_RET);
    }

    public static void c(fza fzaVar, fza fzaVar2) {
        ArrayList arrayList = fzaVar2.ac;
        Iterator it = fzaVar.ac.iterator();
        while (it.hasNext()) {
            arrayList.add(((eek) it.next()).ay());
        }
        fzaVar2.s(fzaVar);
    }

    public static fza d(hed hedVar, fza fzaVar, fza fzaVar2) {
        fza i = i(hedVar, fzaVar2.y);
        i.w(csv.SYNTHETIC);
        l(fzaVar, fzaVar2);
        o(fzaVar, i);
        o(i, fzaVar2);
        eek s = ffb.s(fzaVar);
        if (s instanceof dog) {
            ((dog) s).aa(fzaVar2, i);
        }
        fzaVar.ad();
        i.ad();
        return i;
    }

    public static fza e(int i, HashMap hashMap) {
        fza fzaVar = (fza) hashMap.get(Integer.valueOf(i));
        if (fzaVar != null) {
            return fzaVar;
        }
        throw new gck(awf.ac(i, "Missing block: "));
    }

    public static void g(fza fzaVar) {
        for (fza fzaVar2 : fzaVar.f17685e) {
            fzaVar2.f17684d.remove(fzaVar);
            fzaVar2.ad();
        }
        Iterator it = fzaVar.f17684d.iterator();
        while (it.hasNext()) {
            ((fza) it.next()).f17685e.remove(fzaVar);
        }
        fzaVar.w(csv.REMOVE);
        fzaVar.f17685e.clear();
        fzaVar.f17684d.clear();
    }

    public static fza i(hed hedVar, int i) {
        List list = hedVar.ak;
        int i2 = hedVar.aa;
        hedVar.aa = i2 + 1;
        fza fzaVar = new fza(i2, list.size(), i);
        list.add(fzaVar);
        return fzaVar;
    }

    public static void l(fza fzaVar, fza fzaVar2) {
        fzaVar.f17684d.remove(fzaVar2);
        fzaVar2.f17685e.remove(fzaVar);
    }

    public static void m(hed hedVar) {
        for (fza fzaVar : hedVar.ak) {
            if (fzaVar.l.g(csv.REMOVE)) {
                g(fzaVar);
            }
        }
    }

    public static fza n(hed hedVar, fza fzaVar) {
        fza i = i(hedVar, fzaVar.y);
        Iterator it = new ArrayList(fzaVar.f17685e).iterator();
        while (it.hasNext()) {
            fza fzaVar2 = (fza) it.next();
            q(fzaVar2, fzaVar, i);
            fzaVar2.ad();
        }
        o(i, fzaVar);
        i.ad();
        return i;
    }

    public static void o(fza fzaVar, fza fzaVar2) {
        if (!fzaVar.f17684d.contains(fzaVar2)) {
            fzaVar.f17684d.add(fzaVar2);
        }
        if (fzaVar2.f17685e.contains(fzaVar)) {
            return;
        }
        fzaVar2.f17685e.add(fzaVar);
    }

    public static boolean p(fza fzaVar) {
        if (fzaVar.ac.isEmpty() && fzaVar.l.h() && fzaVar.f17684d.size() <= 1 && !fzaVar.f17685e.isEmpty()) {
            if (!fzaVar.l.g(csv.MTH_ENTER_BLOCK)) {
                if (!fzaVar.l.g(csv.MTH_EXIT_BLOCK) && !fzaVar.f17684d.contains(fzaVar)) {
                    if (fzaVar.f17684d.size() == 1) {
                        fza fzaVar2 = (fza) fzaVar.f17684d.get(0);
                        Iterable.b.forEach(fzaVar.f17685e, new esv(fzaVar, 0, fzaVar2));
                        l(fzaVar, fzaVar2);
                    } else {
                        Iterable.b.forEach(fzaVar.f17685e, new dmt(fzaVar, 1));
                    }
                    fzaVar.w(csv.REMOVE);
                    fzaVar.f17684d.clear();
                    fzaVar.f17685e.clear();
                    return true;
                }
            }
        }
        return false;
    }

    public static void q(fza fzaVar, fza fzaVar2, fza fzaVar3) {
        l(fzaVar, fzaVar2);
        o(fzaVar, fzaVar3);
        eek s = ffb.s(fzaVar);
        if (s instanceof dog) {
            ((dog) s).aa(fzaVar2, fzaVar3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e5, code lost:
    
        if (((g.fza) r2.get(java.lang.Integer.valueOf(((g.bgw) r10).ad()))) != r3) goto L50;
     */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(hed hedVar) {
        hay hayVar;
        fza i;
        acq acqVar = acq.p;
        if (hedVar.ar) {
            return;
        }
        hedVar.ak = new ArrayList();
        fza i2 = i(hedVar, -1);
        i2.w(csv.MTH_ENTER_BLOCK);
        hedVar.aj = i2;
        fza i3 = i(hedVar, -1);
        i3.w(csv.MTH_EXIT_BLOCK);
        hedVar.ad = i3;
        HashMap hashMap = new HashMap();
        eek[] eekVarArr = hedVar.an;
        int length = eekVarArr.length;
        eek eekVar = null;
        for (int i4 = 0; i4 < length; i4++) {
            eek eekVar2 = eekVarArr[i4];
            if (eekVar2 != null && ((hayVar = eekVar2.ah) != hay.NOP || !eekVar2.l.h())) {
                int i5 = eekVar2.ag;
                if (eekVar == null) {
                    i = i(hedVar, i5);
                    o(i2, i);
                } else {
                    hay hayVar2 = eekVar.ah;
                    if (f18212b.contains(hayVar2)) {
                        i2 = i(hedVar, i5);
                    } else {
                        EnumSet enumSet = f18211a;
                        if (!enumSet.contains(hayVar2) && !enumSet.contains(hayVar)) {
                            if (!eekVar2.l.g(csv.TRY_ENTER)) {
                                if (!eekVar.l.g(csv.TRY_LEAVE)) {
                                    if (!eekVar2.l.j(acq.bh)) {
                                        Iterator it = eekVar.l.e(acqVar).iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                if (((aef) it.next()).f10088a == eekVar.ag) {
                                                    break;
                                                }
                                            } else {
                                                Iterator it2 = eekVar2.l.e(acqVar).iterator();
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        if (((aef) it2.next()).f10089b == eekVar2.ag) {
                                                            break;
                                                        }
                                                    } else if (hayVar == hay.IF) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i = i(hedVar, i5);
                        o(i2, i);
                    }
                    hashMap.put(Integer.valueOf(i5), i2);
                    i2.ac.add(eekVar2);
                    eekVar = eekVar2;
                }
                i2 = i;
                hashMap.put(Integer.valueOf(i5), i2);
                i2.ac.add(eekVar2);
                eekVar = eekVar2;
            }
        }
        Iterator it3 = hedVar.ak.iterator();
        while (it3.hasNext()) {
            Iterator it4 = ((fza) it3.next()).ac.iterator();
            while (it4.hasNext()) {
                for (aef aefVar : ((eek) it4.next()).l.e(acqVar)) {
                    o(e(aefVar.f10088a, hashMap), e(aefVar.f10089b, hashMap));
                }
            }
        }
        Iterable.b.forEach(hedVar.ak, new esk(6));
        Iterator it5 = hedVar.ak.iterator();
        while (it5.hasNext()) {
            ArrayList arrayList = ((fza) it5.next()).ac;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                eek eekVar3 = (eek) arrayList.get(i6);
                if (eekVar3.ah == hay.MOVE_MULTI) {
                    int size2 = eekVar3.aj.size() / 2;
                    for (int i7 = 0; i7 < size2; i7++) {
                        eek eekVar4 = new eek(hay.MOVE, 1);
                        int i8 = i7 * 2;
                        eekVar4.ax((gks) eekVar3.j(i8));
                        eekVar4._an(eekVar3.j(i8 + 1));
                        eekVar4.s(eekVar3);
                        eekVar4.br(eekVar3);
                        if (i7 == 0) {
                            eekVar4.ag = eekVar3.ag;
                            arrayList.set(i6, eekVar4);
                        } else {
                            arrayList.add(i6 + i7, eekVar4);
                        }
                    }
                    i6 += size2 - 1;
                    size = arrayList.size();
                }
                i6++;
            }
        }
        if (hedVar.l.g(csv.RESOLVE_JAVA_JSR)) {
            int size3 = hedVar.ak.size();
            int i9 = 0;
            loop9: while (true) {
                List<fza> list = hedVar.ak;
                int size4 = list.size();
                for (fza fzaVar : list) {
                    if (ffb.cd(fzaVar, hay.JAVA_RET)) {
                        ffb.ci(hedVar, fzaVar, new ry(hedVar, fzaVar));
                        if (size4 != hedVar.ak.size()) {
                            int i10 = i9 + 1;
                            if (i9 > size3) {
                                throw new gck("Fail to resolve jsr instructions");
                            }
                            i9 = i10;
                        }
                    }
                }
                break loop9;
            }
        }
        Iterator it6 = hedVar.ak.iterator();
        while (it6.hasNext()) {
            Iterator it7 = ((fza) it6.next()).ac.iterator();
            while (it7.hasNext()) {
                ((eek) it7.next()).u(acqVar);
            }
        }
        Iterator it8 = hedVar.ak.iterator();
        while (it8.hasNext()) {
            Collection.b.removeIf(((fza) it8.next()).ac, new bev(8));
        }
        Collection.b.removeIf(hedVar.ak, new bev(6));
        Collection.b.removeIf(hedVar.ak, new bev(7));
        if (!hedVar.ap.isEmpty()) {
            for (fza fzaVar2 : hedVar.ak) {
                Iterator it9 = fzaVar2.ac.iterator();
                while (it9.hasNext()) {
                    coe coeVar = (coe) ((eek) it9.next()).l.k(acq.al);
                    if (coeVar != null) {
                        Iterator it10 = coeVar.f13218a.iterator();
                        while (it10.hasNext()) {
                            fza e2 = e(((aea) it10.next()).h, hashMap);
                            if (!e2.l.j(acq.ae)) {
                                List list2 = fzaVar2.f17685e;
                                if (list2.isEmpty()) {
                                    throw new gck("Unexpected missing predecessor for block: " + fzaVar2);
                                }
                                fza fzaVar3 = list2.size() == 1 ? (fza) list2.get(0) : fzaVar2;
                                if (!fzaVar3.f17684d.contains(e2)) {
                                    o(fzaVar3, e2);
                                    e2.m(new cya(fzaVar3));
                                }
                            }
                        }
                    }
                }
            }
        }
        fza fzaVar4 = hedVar.ad;
        for (fza fzaVar5 : hedVar.ak) {
            if (fzaVar5.f17684d.isEmpty() && fzaVar5 != fzaVar4) {
                o(fzaVar5, fzaVar4);
                if (ffb.cd(fzaVar5, hay.RETURN)) {
                    fzaVar5.w(csv.RETURN);
                }
            }
        }
        hedVar.ba();
        hedVar.an = null;
    }
}
