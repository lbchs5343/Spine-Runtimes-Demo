package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fra extends pj implements byr {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f17272a = dsr.k(fra.class);

    public static boolean b(hed hedVar, gsh gshVar, gks gksVar) {
        cwx bo;
        cwx j = gshVar.j();
        cwx j2 = gksVar.j();
        if (j.bm()) {
            List c2 = j.c();
            if (c2 != null && c2.size() == 1) {
                cwx cwxVar = (cwx) c2.get(0);
                if (!cwxVar.equals(j2)) {
                    if (cwxVar instanceof btl) {
                        gksVar.f(cwxVar);
                        return true;
                    }
                    if (!cwx.be(hedVar.am.f12631ab, cwxVar, j2) && ((bo = cwxVar.bo()) == null || cwxVar.bl() != be.EXTENDS || !cwx.be(hedVar.am.f12631ab, bo, j2))) {
                        f17272a.q("Generic type differs: '{}' and '{}' in {}", cwxVar, j2, hedVar);
                    }
                }
            }
            return false;
        }
        boolean z = gshVar instanceof gks;
        if (z && j.m()) {
            aaw aawVar = new aaw(evh.p(j.l()), Collections.singletonList(j2));
            if (z) {
                gks gksVar2 = (gks) gshVar;
                vm vmVar = gksVar2.f18326a;
                cwx m = vmVar != null ? vmVar.m() : gksVar2.l.g(csv.IMMUTABLE_TYPE) ? gksVar2.h : null;
                if (m != null && !m.equals(aawVar)) {
                    return j2.equals(cwx.t);
                }
            }
            gshVar.f(aawVar);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[LOOP:0: B:2:0x0008->B:12:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(hed hedVar, cab cabVar, gks gksVar) {
        boolean az;
        Iterator it = gksVar.f18326a.f20178d.iterator();
        while (it.hasNext()) {
            eek eekVar = ((gks) it.next()).ae;
            if (eekVar != null) {
                fza o = ffb.o(hedVar, eekVar, hedVar.ak);
                if (o == null) {
                    f17272a.a(eekVar, " LoopRegionVisitor: instruction not found: {}, mth: {}", hedVar);
                } else {
                    az = gs.az(o, cabVar);
                    if (az) {
                        return false;
                    }
                }
            }
            az = false;
            if (az) {
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(hed hedVar, cab cabVar, gks gksVar) {
        boolean az;
        eek aa = gksVar.aa();
        if (aa == null) {
            return true;
        }
        eek eekVar = aa.ai.ae;
        if (eekVar != null) {
            fza o = ffb.o(hedVar, eekVar, hedVar.ak);
            if (o != null) {
                az = gs.az(o, cabVar);
                if (az) {
                    if (!(aa instanceof abi)) {
                        return true;
                    }
                    Iterator it = ((abi) aa).aj.iterator();
                    while (it.hasNext()) {
                        if (!d(hedVar, cabVar, (gks) ((gsh) it.next()))) {
                        }
                    }
                    return true;
                }
                return false;
            }
            f17272a.a(eekVar, " LoopRegionVisitor: instruction not found: {}, mth: {}", hedVar);
        }
        az = false;
        if (az) {
        }
        return false;
    }

    public static boolean e(eek eekVar, String str, String str2) {
        if (eekVar == null || eekVar.ah != hay.INVOKE) {
            return false;
        }
        hdc hdcVar = (hdc) eekVar;
        ayu ayuVar = hdcVar.ad;
        eqp eqpVar = hdcVar.f19257ab;
        if ((eqpVar != eqp.INTERFACE && eqpVar != eqp.VIRTUAL) || !ayuVar.f11077e.equals(str2)) {
            return false;
        }
        if (str == null) {
            return true;
        }
        return ayuVar.f11076d.f20147b.equals(str);
    }

    @Override // g.byr
    public final void _ar(hed hedVar, cfm cfmVar) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x01fe, code lost:
    
        if (c(r14, r15, r10) == false) goto L162;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:201:0x039e A[LOOP:5: B:199:0x0398->B:201:0x039e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03b6 A[LOOP:6: B:204:0x03b0->B:206:0x03b6, LOOP_END] */
    /* JADX WARN: Type inference failed for: r2v3, types: [g.eek, g.lh] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2, types: [g.buj] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3, types: [g.k] */
    /* JADX WARN: Type inference failed for: r4v7, types: [g.cdd] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // g.byr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean _cs(hed hedVar, cfm cfmVar) {
        eii eiiVar;
        gks gksVar;
        vm vmVar;
        gks gksVar2;
        Iterator it;
        Iterator it2;
        eek eekVar;
        eek eekVar2;
        gks gksVar3;
        vm vmVar2;
        gks _ay;
        eek aa;
        gks gksVar4;
        gks gksVar5;
        eek eekVar3;
        eek aa2;
        if (cfmVar instanceof cab) {
            cab cabVar = (cab) cfmVar;
            if (!cabVar.f12536g && (eiiVar = cabVar.aa) != null) {
                ?? s = ffb.s(ffb.bx(cabVar.h.f17903d));
                ?? r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                r4 = 0;
                if (s != null && (gksVar3 = s.ai) != null && (vmVar2 = gksVar3.f18326a) != null && vmVar2.t()) {
                    List list = gksVar3.f18326a.f20179e;
                    if (list == null) {
                        list = Collections.EMPTY_LIST;
                    }
                    if (list.size() == 1) {
                        abi abiVar = (abi) list.get(0);
                        if (abiVar.aj.size() == 2) {
                            List list2 = abiVar.aj;
                            if ((list2.size() == 0 ? false : ack.k(list2, gksVar3)) && gksVar3.f18326a.f20178d.size() == 1) {
                                gks gksVar6 = abiVar.ai;
                                if (eiiVar.i().contains(gksVar6) && !gksVar6.f18326a.t() && (aa = (_ay = abiVar._ay(0)).aa()) != null) {
                                    if (!aa.l.g(csv.DONT_GENERATE) && _ay.f18326a.f20178d.size() == 1 && c(hedVar, cabVar, gksVar6)) {
                                        ArrayList arrayList = new ArrayList();
                                        s.h(arrayList);
                                        Iterator it3 = arrayList.iterator();
                                        while (it3.hasNext()) {
                                            try {
                                                if (d(hedVar, cabVar, (gks) it3.next())) {
                                                }
                                            } catch (StackOverflowError unused) {
                                                throw new blf("LoopRegionVisitor.assignOnlyInLoop endless recursion");
                                            }
                                        }
                                        csv csvVar = csv.DONT_GENERATE;
                                        aa.w(csvVar);
                                        s.w(csvVar);
                                        if ((s instanceof ame) && ((ame) s).f10465d == bvj.ADD) {
                                            gsh j = s.j(1);
                                            j.getClass();
                                            if ((j instanceof ekh) && ((ekh) j).f15702a == 1 && aa.ah == hay.CONST) {
                                                gsh j2 = aa.j(0);
                                                j2.getClass();
                                                if ((j2 instanceof ekh) && ((ekh) aa.j(0)).f15702a == 0) {
                                                    gsh j3 = s.j(0);
                                                    j3.getClass();
                                                    if (j3 instanceof gks) {
                                                        ArrayList arrayList2 = ((gks) j3).f18326a.f20178d;
                                                        if (arrayList2.size() == 3) {
                                                            hay hayVar = hay.IF;
                                                            dba dbaVar = ack.f9977a;
                                                            Iterator it4 = arrayList2.iterator();
                                                            while (true) {
                                                                if (!it4.hasNext()) {
                                                                    gksVar4 = null;
                                                                    break;
                                                                }
                                                                gksVar4 = (gks) it4.next();
                                                                eek eekVar4 = gksVar4.ae;
                                                                if (eekVar4 != null && eekVar4.ah == hayVar) {
                                                                    break;
                                                                }
                                                            }
                                                            if (gksVar4 != null) {
                                                                hay hayVar2 = hay.AGET;
                                                                Iterator it5 = arrayList2.iterator();
                                                                while (true) {
                                                                    if (!it5.hasNext()) {
                                                                        gksVar5 = null;
                                                                        break;
                                                                    }
                                                                    gksVar5 = (gks) it5.next();
                                                                    eek eekVar5 = gksVar5.ae;
                                                                    if (eekVar5 != null && eekVar5.ah == hayVar2) {
                                                                        break;
                                                                    }
                                                                }
                                                                if (gksVar5 != null && (eekVar3 = gksVar5.ae) != null) {
                                                                    Iterator it6 = eekVar3.aj.iterator();
                                                                    while (true) {
                                                                        if (it6.hasNext()) {
                                                                            gsh gshVar = (gsh) it6.next();
                                                                            gshVar.getClass();
                                                                            if (gshVar instanceof cly) {
                                                                                break;
                                                                            }
                                                                        } else if (eiiVar.h()) {
                                                                            evf evfVar = eiiVar.f15589c;
                                                                            bgw bgwVar = (bgw) evfVar.f16224f;
                                                                            if (bgwVar.y == ges.LT && bgwVar.j(0) == gksVar4) {
                                                                                gsh m = evfVar.m();
                                                                                m.getClass();
                                                                                if (m instanceof cly) {
                                                                                    aa2 = ((cly) m).f13104a;
                                                                                } else if (m instanceof gks) {
                                                                                    aa2 = ((gks) m).aa();
                                                                                }
                                                                                if (aa2 != null && aa2.ah == hay.ARRAY_LENGTH && aa2.j(0).equals(eekVar3.j(0))) {
                                                                                    gks gksVar7 = eekVar3.ai;
                                                                                    if (gksVar7 == null) {
                                                                                        if (eekVar3.l.g(csv.WRAPPED)) {
                                                                                            gsh ai = ffb.ai(hedVar, eekVar3);
                                                                                            if (ai == null || ai.ae == null) {
                                                                                                hedVar.bu("checkArrayForEach: Wrapped insn not found: " + eekVar3);
                                                                                            } else {
                                                                                                gks bm = hedVar.bm(ai.j());
                                                                                                eek eekVar6 = ai.ae;
                                                                                                eekVar6.f(ai, bm.b());
                                                                                                eekVar6._bs();
                                                                                                gksVar7 = bm;
                                                                                                gks gksVar8 = s.ai;
                                                                                                csv csvVar2 = csv.DONT_GENERATE;
                                                                                                gksVar8.w(csvVar2);
                                                                                                gksVar4.w(csvVar2);
                                                                                                m.w(csvVar2);
                                                                                                eekVar3.w(csvVar2);
                                                                                                ((bgw) evfVar.f16224f).w(csvVar2);
                                                                                                r4 = new cdd(aa2.j(0), gksVar7);
                                                                                                r4.bh(cabVar);
                                                                                                gks gksVar9 = aa2.ai;
                                                                                                if (gksVar9 != null) {
                                                                                                    Iterator it7 = gksVar9.f18326a.f20178d.iterator();
                                                                                                    while (it7.hasNext()) {
                                                                                                        eek eekVar7 = ((gks) it7.next()).ae;
                                                                                                        if (eekVar7 != null) {
                                                                                                            if (!eekVar7.l.g(csv.DONT_GENERATE)) {
                                                                                                                break;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                aa2.w(csv.DONT_GENERATE);
                                                                                                fpd.l(hedVar, aa2);
                                                                                                eak.av(hedVar);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    hedVar.w(csv.REQUEST_IF_REGION_OPTIMIZE);
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
                                        }
                                        if (r4 == 0) {
                                            r4 = new k(aa, s);
                                        }
                                        cabVar.j = r4;
                                        hedVar.w(csv.REQUEST_IF_REGION_OPTIMIZE);
                                    }
                                }
                            }
                        }
                    }
                }
                ArrayList i = eiiVar.i();
                if (i.size() == 1 && (vmVar = (gksVar = (gks) i.get(0)).f18326a) != null && !vmVar.t()) {
                    ArrayList arrayList3 = vmVar.f20178d;
                    eek aa3 = gksVar.aa();
                    if (arrayList3.size() == 2 && e(aa3, null, "iterator()Ljava/util/Iterator;")) {
                        gsh j4 = aa3.j(0);
                        eek eekVar8 = ((gks) arrayList3.get(0)).ae;
                        eek eekVar9 = ((gks) arrayList3.get(1)).ae;
                        if (e(eekVar8, "java.util.Iterator", "hasNext()Z") && e(eekVar9, "java.util.Iterator", "next()Ljava/lang/Object;")) {
                            ArrayList arrayList4 = new ArrayList();
                            if (eekVar9.l.g(csv.WRAPPED)) {
                                gsh ai2 = ffb.ai(hedVar, eekVar9);
                                if (ai2 == null || (eekVar = ai2.ae) == null) {
                                    f17272a.t(eekVar9, " checkIterableForEach: Wrapped insn not found: {}, mth: {}", hedVar);
                                    return true;
                                }
                                fza o = ffb.o(hedVar, eekVar, hedVar.ak);
                                if (o != null && gs.az(o, cabVar)) {
                                    if (eekVar.ah == hay.CHECK_CAST) {
                                        gksVar2 = eekVar.ai;
                                        if (gksVar2 != null && b(hedVar, j4, gksVar2)) {
                                            gsh ai3 = ffb.ai(hedVar, eekVar);
                                            if (ai3 == null || (eekVar2 = ai3.ae) == null) {
                                                arrayList4.add(eekVar);
                                            } else {
                                                eekVar2.f(ai3, gksVar2);
                                            }
                                            csv csvVar3 = csv.DONT_GENERATE;
                                            aa3.w(csvVar3);
                                            aa3.ai.w(csvVar3);
                                            it = arrayList4.iterator();
                                            while (it.hasNext()) {
                                                eek eekVar10 = (eek) it.next();
                                                eekVar10.ai = null;
                                                eekVar10.w(csv.DONT_GENERATE);
                                            }
                                            it2 = arrayList3.iterator();
                                            while (it2.hasNext()) {
                                                ((gks) it2.next()).w(csv.DONT_GENERATE);
                                            }
                                            cdd cddVar = new cdd(j4, gksVar2);
                                            cddVar.bh(cabVar);
                                            cabVar.j = cddVar;
                                        }
                                    } else {
                                        gks gksVar10 = eekVar9.ai;
                                        if (gksVar10 != null) {
                                            gksVar10.v(csv.REMOVE);
                                            eekVar9.w(csv.DONT_GENERATE);
                                            if (b(hedVar, j4, gksVar10)) {
                                                eekVar.f(ai2, gksVar10);
                                                gksVar2 = gksVar10;
                                                csv csvVar32 = csv.DONT_GENERATE;
                                                aa3.w(csvVar32);
                                                aa3.ai.w(csvVar32);
                                                it = arrayList4.iterator();
                                                while (it.hasNext()) {
                                                }
                                                it2 = arrayList3.iterator();
                                                while (it2.hasNext()) {
                                                }
                                                cdd cddVar2 = new cdd(j4, gksVar2);
                                                cddVar2.bh(cabVar);
                                                cabVar.j = cddVar2;
                                            }
                                        }
                                    }
                                }
                            } else {
                                gks gksVar11 = eekVar9.ai;
                                if (gksVar11 != null && c(hedVar, cabVar, gksVar11) && d(hedVar, cabVar, gksVar11)) {
                                    arrayList4.add(eekVar9);
                                    gksVar2 = gksVar11;
                                    csv csvVar322 = csv.DONT_GENERATE;
                                    aa3.w(csvVar322);
                                    aa3.ai.w(csvVar322);
                                    it = arrayList4.iterator();
                                    while (it.hasNext()) {
                                    }
                                    it2 = arrayList3.iterator();
                                    while (it2.hasNext()) {
                                    }
                                    cdd cddVar22 = new cdd(j4, gksVar2);
                                    cddVar22.bh(cabVar);
                                    cabVar.j = cddVar22;
                                }
                            }
                            hedVar.w(csv.REQUEST_IF_REGION_OPTIMIZE);
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // g.byr
    public final void bq(hed hedVar, cih cihVar) {
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        buj.bb(hedVar, this, hedVar.ao);
        csv csvVar = csv.REQUEST_IF_REGION_OPTIMIZE;
        if (hedVar.l.g(csvVar)) {
            try {
                eak.af(hedVar);
                hedVar.v(csvVar);
            } catch (Throwable th) {
                hedVar.v(csv.REQUEST_IF_REGION_OPTIMIZE);
                throw th;
            }
        }
    }
}
