package g;

import j$.lang.Iterable;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.UnaryOperator;

/* loaded from: classes.dex */
public final class dxg extends pj {

    /* renamed from: b, reason: collision with root package name */
    public static final dba f15013b = dsr.k(dxg.class);

    /* renamed from: c, reason: collision with root package name */
    public static final long f15014c = Double.doubleToLongBits(1.0d);

    /* renamed from: a, reason: collision with root package name */
    public static final long f15012a = Float.floatToIntBits(1.0f);

    public static dwk d(gks gksVar, gsh gshVar, cwx cwxVar) {
        return new dwk(new eii(new evf(new bgw(ges.EQ, gshVar, new ekh(1L, cwx.at)))), gksVar, new ekh(cwxVar == cwx.s ? f15014c : cwxVar == cwx.ax ? f15012a : 1L, cwxVar), new ekh(0L, cwxVar));
    }

    public static void e(chf chfVar, hed hedVar) {
        List list;
        if (chfVar instanceof hcd) {
            hcd hcdVar = (hcd) chfVar;
            synchronized (hcdVar) {
                List list2 = hcdVar.f19214d;
                if (list2 != null && !list2.isEmpty()) {
                    list2.add(hedVar);
                    list = list2;
                    hcdVar.f19214d = list;
                }
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(hedVar);
                list = arrayList;
                hcdVar.f19214d = list;
            }
        }
    }

    public static eek g(gks gksVar) {
        eek eekVar;
        vm vmVar = gksVar.f18326a;
        int size = vmVar.f20178d.size();
        if (size == 0 || (eekVar = ((gks) vmVar.f20178d.get(0)).ae) == null) {
            return null;
        }
        return (size == 1 && eekVar.ah == hay.MOVE) ? g(eekVar.ai) : eekVar;
    }

    public final ghr i(final cci cciVar, ghr ghrVar) {
        dnd dndVar = ghrVar.f18175b;
        Object obj = ghrVar.f18176f;
        if (dndVar == dnd.ENCODED_ANNOTATION) {
            for (Map.Entry entry : ((fpa) obj).f17181c.entrySet()) {
                entry.setValue(i(cciVar, (ghr) entry.getValue()));
            }
            return ghrVar;
        }
        dnd dndVar2 = dnd.ENCODED_ARRAY;
        if (dndVar != dndVar2) {
            chf ba = cciVar.ba(obj, true);
            return ba != null ? new ghr(dnd.ENCODED_FIELD, ba.c()) : ghrVar;
        }
        List list = (List) obj;
        if (!list.isEmpty()) {
            List.b.replaceAll(list, new UnaryOperator() { // from class: g.fcr
                public final /* synthetic */ Function andThen(Function function) {
                    return j$.util.function.k.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    return dxg.this.i(cciVar, (ghr) obj2);
                }

                public final /* synthetic */ Function compose(Function function) {
                    return j$.util.function.k.$default$compose(this, function);
                }
            });
        }
        return new ghr(dndVar2, list);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        if ((r14 instanceof g.btl) == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0104, code lost:
    
        if (((r6 == r12 || j$.util.Objects.equals(r6, r12)) ? g.dho.EQUAL : r2.j(r6, r12)) == g.dho.NARROW) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:188:0x045d  */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(hed hedVar) {
        boolean z;
        gks gksVar;
        chf bo;
        chf ba;
        chf bo2;
        int i;
        boolean z2;
        eek eekVar;
        vm vmVar;
        if (hedVar.ar) {
            return;
        }
        int i2 = 0;
        fpd fpdVar = new fpd(hedVar, 0);
        cci cciVar = hedVar.am;
        for (fza fzaVar : hedVar.ak) {
            ArrayList arrayList = fzaVar.ac;
            fpdVar.f17188d = arrayList;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                eek eekVar2 = (eek) arrayList.get(i3);
                switch (cho.f12882a[eekVar2.ah.ordinal()]) {
                    case 1:
                        eew eewVar = (eew) eekVar2;
                        ebp r = cciVar.f12631ab.f14930b.r(eewVar);
                        java.util.List list = eewVar.aj;
                        if (r instanceof hed) {
                            hed hedVar2 = (hed) r;
                            if (hedVar2.l.g(csv.ANONYMOUS_CONSTRUCTOR)) {
                                if (!hedVar2.l.g(csv.NO_SKIP_ARGS)) {
                                    cse cseVar = (cse) hedVar2.l.k(acq.f9982ab);
                                    if (cseVar != null) {
                                        int min = Math.min(hedVar2.al.f11075c.size(), list.size());
                                        for (int i4 = 0; i4 < min; i4++) {
                                            if (cseVar.f13423a.get(i4)) {
                                                gsh j = eewVar.j(i4);
                                                j.w(csv.DONT_INLINE);
                                                if (j instanceof gks) {
                                                    ((gks) j).f18326a.u().f15628a = true;
                                                }
                                            }
                                        }
                                    } else {
                                        Iterable.b.forEach(list, new esk(20));
                                    }
                                }
                            }
                        }
                    case 2:
                    case 3:
                    case 4:
                        hay hayVar = eekVar2.ah;
                        if (hayVar == hay.CONST_STR) {
                            ba = cciVar.ba(((epw) eekVar2).f15951a, true);
                        } else if (hayVar == hay.CONST_CLASS) {
                            ba = cciVar.ba(((dkd) eekVar2).f14300a, true);
                        } else {
                            i2 = 0;
                            bo = cciVar.bo((ekh) eekVar2.j(0));
                            if (bo != null) {
                                adz adzVar = new adz(hay.SGET, bo.c(), i2);
                                adzVar.ax(eekVar2.ai);
                                ffb.bs(hedVar, fzaVar, i3, adzVar);
                                e(bo, hedVar);
                            }
                        }
                        bo = ba;
                        i2 = 0;
                        if (bo != null) {
                        }
                    case 5:
                        bzm bzmVar = (bzm) eekVar2;
                        int[] iArr = bzmVar.ad().f12358c;
                        int length = iArr.length;
                        for (int i5 = 0; i5 < length; i5++) {
                            chf ba2 = cciVar.ba(Integer.valueOf(iArr[i5]), true);
                            if (ba2 != null) {
                                bzmVar.ae(i5, ba2);
                                e(ba2, hedVar);
                            }
                        }
                        i2 = 0;
                    case 6:
                        dem demVar = (dem) eekVar2;
                        eek g2 = g(eekVar2.ai);
                        if (g2 != null && g2.ah == hay.FILL_ARRAY) {
                            og ogVar = (og) g2;
                            int i6 = ogVar._ao._al;
                            Object f2 = ack.f(cciVar.f12631ab, demVar.j(0));
                            if ((f2 instanceof ekh) && i6 == ((int) ((ekh) f2).f15702a)) {
                                cwx cwxVar = demVar.f14061a;
                                cwx k = cwxVar.k();
                                cwx cwxVar2 = ogVar._ao.i;
                                cwxVar2.getClass();
                                k.getClass();
                                if ((k instanceof cff) && cwxVar2.o(k.f())) {
                                    cwxVar2 = k;
                                }
                                if (!cwxVar2.equals(k) && !cwxVar.equals(cwx.t)) {
                                    hedVar.bs("Incorrect type for fill-array insn " + ack.d(ogVar.ag) + ", element type: " + cwxVar2 + ", insn element type: " + k);
                                }
                                if (!cwxVar2.h()) {
                                    f15013b.t(cwxVar2, "Unknown array element type: {} in mth: {}", hedVar);
                                    if (!k.h()) {
                                        k = cwxVar2.j();
                                    }
                                    if (k == null) {
                                        throw new gck("Null array element type");
                                    }
                                    cwxVar2 = k;
                                }
                                ArrayList arrayList2 = (ArrayList) ogVar._ap(cwxVar2);
                                fs fsVar = new fs(arrayList2.size(), cwxVar2);
                                fsVar.ax(demVar.ai.b());
                                Iterator it = arrayList2.iterator();
                                while (it.hasNext()) {
                                    ekh ekhVar = (ekh) it.next();
                                    chf bo3 = cciVar.bo(ekhVar);
                                    if (bo3 != null) {
                                        fsVar._an(gsh.aj(new adz(hay.SGET, bo3.c(), 0)));
                                        e(bo3, hedVar);
                                    } else {
                                        fsVar._an(ekhVar.b());
                                    }
                                }
                                ffb.bs(hedVar, fzaVar, i3, fsVar);
                                fpdVar.v(g2);
                            }
                        }
                        i2 = 0;
                        break;
                    case 7:
                        eng engVar = (eng) fzaVar.l.k(acq.bh);
                        if (engVar != null) {
                            aea aeaVar = engVar.f15859a;
                            gks gksVar2 = eekVar2.ai;
                            cwx l = aeaVar.l();
                            String str = aeaVar.m() ? "th" : "e";
                            if (gksVar2.getName() == null) {
                                gksVar2.c(str);
                            }
                            vm vmVar2 = eekVar2.ai.f18326a;
                            if (vmVar2.f20178d.size() == 0) {
                                aeaVar.f10083f = new add(str, l);
                                fpdVar.v(eekVar2);
                            } else if (vmVar2.t()) {
                                eek eekVar3 = new eek(hay.MOVE, 1);
                                eekVar3.ax(eekVar2.ai);
                                add addVar = new add(str, l);
                                eekVar3._an(addVar);
                                aeaVar.f10083f = addVar;
                                ffb.bs(hedVar, fzaVar, 0, eekVar3);
                            }
                            fzaVar.q(eekVar2, acq.u);
                        }
                        i2 = 0;
                    case 8:
                        ame ameVar = (ame) eekVar2;
                        if (ameVar.aj.size() != 2) {
                            throw new gck("Invalid args count in insn: " + ameVar);
                        }
                        gsh j2 = ameVar.j(1);
                        j2.getClass();
                        if ((j2 instanceof ekh) && (bo2 = cciVar.bo((ekh) j2)) != null && ameVar.f(j2, gsh.aj(new adz(hay.SGET, bo2.c(), 0)))) {
                            e(bo2, hedVar);
                        }
                        i2 = 0;
                        break;
                    case 9:
                    case 10:
                        ArrayList arrayList3 = eekVar2.ai.f18326a.f20178d;
                        if (acw.bh(arrayList3, new brj(8))) {
                            Iterator it2 = new ArrayList(arrayList3).iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    gks gksVar3 = (gks) it2.next();
                                    eek eekVar4 = gksVar3.ae;
                                    if (eekVar4 != null && !eekVar4.f(gksVar3, gsh.ah(eekVar2._o()))) {
                                        hedVar.bu("Failed to inline CMP insn: " + eekVar2 + " into " + eekVar4);
                                    }
                                } else {
                                    fpdVar.v(eekVar2);
                                }
                            }
                        }
                        i2 = 0;
                        break;
                    case 11:
                        adz adzVar2 = (adz) eekVar2;
                        gsh j3 = adzVar2.j(0);
                        if (j3.g()) {
                            adzVar2.w(csv.EXPLICIT_CAST);
                        } else {
                            cwx cwxVar3 = (cwx) adzVar2.f10070a;
                            dwg dwgVar = cciVar.f12631ab;
                            cwx j4 = j3.j();
                            cff cffVar = cwx.an;
                            if (j4.equals(cwxVar3)) {
                                z2 = false;
                                i = 1;
                            } else {
                                boolean e2 = dwgVar.u.f12545e.h(j4, cwxVar3).e();
                                i = 1;
                                z2 = !e2;
                            }
                            if (z2) {
                                gsh j5 = adzVar2.j(0);
                                j5.getClass();
                                if (!(j5 instanceof gks) || (vmVar = ((gks) j5).f18326a) == null || vmVar.f20178d.size() != 1 || vmVar.t() || (eekVar = vmVar.f20177c.ae) == null || eekVar.ah != hay.CHECK_CAST || !((cwx) ((adz) eekVar).f10070a).equals(adzVar2.f10070a)) {
                                    eekVar = null;
                                }
                                if (eekVar != null) {
                                    eek eekVar5 = new eek(hay.MOVE, 1);
                                    eekVar5.ax(eekVar.ai);
                                    eekVar5._an(eekVar.j(0));
                                    ffb.bw(hedVar, fzaVar, eekVar, eekVar5);
                                }
                            } else {
                                gks gksVar4 = adzVar2.ai;
                                gksVar4.f(j3.j());
                                eek eekVar6 = new eek(hay.MOVE, i);
                                eekVar6.ax(gksVar4);
                                eekVar6._an(j3);
                                ffb.bs(hedVar, fzaVar, i3, eekVar6);
                            }
                        }
                        i2 = 0;
                        break;
                    case 12:
                        gsh j6 = eekVar2.j(i2);
                        if (j6.j() == cwx.at) {
                            cwx j7 = eekVar2.ai.j();
                            j7.getClass();
                            if (j7 instanceof cff) {
                                ffb.bs(hedVar, fzaVar, i3, d(eekVar2.ai, j6, j7));
                            }
                        }
                        i2 = 0;
                    case 13:
                    case 14:
                        adz adzVar3 = (adz) eekVar2;
                        gsh j8 = adzVar3.j(adzVar3.ah == hay.IGET ? 0 : 1);
                        if (!j8.l.g(csv.SUPER) && (!(j8 instanceof cly) || ((cly) j8).f13104a.ah != hay.CAST)) {
                            dsj dsjVar = (dsj) adzVar3.f10070a;
                            cwx cwxVar4 = dsjVar.f14711d.f20149d;
                            cwx j9 = j8.j();
                            if (!Objects.equals(cwxVar4, j9)) {
                                dwg dwgVar2 = cciVar.f12631ab;
                                hcd ag = dwgVar2.ag(dsjVar);
                                if (ag == null) {
                                    dho h = dwgVar2.u.f12545e.h(j9, cwxVar4);
                                    if (!h.d()) {
                                        if (h == dho.NARROW_BY_GENERIC) {
                                            j9.getClass();
                                            break;
                                        }
                                        adz adzVar4 = new adz(hay.CAST, cwxVar4, 1);
                                        adzVar4._an(j8.b());
                                        adzVar4.w(csv.SYNTHETIC);
                                        adzVar4.w(csv.EXPLICIT_CAST);
                                        gsh ah = gsh.ah(adzVar4);
                                        ah.f(cwxVar4);
                                        adzVar3.f(j8, ah);
                                        fpd.h(hedVar, j8);
                                    }
                                } else {
                                    gqc gqcVar = ag.h;
                                    if (!gqcVar.an()) {
                                        cci cciVar2 = ag.f19216f;
                                        if (!cciVar.equals(cciVar2) || hedVar.ax.be()) {
                                            if (!gqcVar.al()) {
                                                if (!Objects.equals(cciVar.ak.r(), cciVar2.ak.r())) {
                                                    if ((gqcVar.f18566ab & 7) != 0) {
                                                        cwm cwmVar = dwgVar2.u.f12545e;
                                                        cwmVar.getClass();
                                                        cwx au = cciVar.au();
                                                        cwx au2 = cciVar2.au();
                                                        break;
                                                    }
                                                }
                                            }
                                            adz adzVar42 = new adz(hay.CAST, cwxVar4, 1);
                                            adzVar42._an(j8.b());
                                            adzVar42.w(csv.SYNTHETIC);
                                            adzVar42.w(csv.EXPLICIT_CAST);
                                            gsh ah2 = gsh.ah(adzVar42);
                                            ah2.f(cwxVar4);
                                            adzVar3.f(j8, ah2);
                                            fpd.h(hedVar, j8);
                                        }
                                    }
                                }
                            }
                        }
                        i2 = 0;
                        break;
                    default:
                }
            }
            fpdVar.u();
        }
        Iterator it3 = hedVar.ak.iterator();
        while (it3.hasNext()) {
            ArrayList arrayList4 = ((fza) it3.next()).ac;
            fpdVar.f17188d = arrayList4;
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                eek eekVar7 = (eek) it4.next();
                switch (cho.f12882a[eekVar7.ah.ordinal()]) {
                    case 15:
                    case 16:
                    case 17:
                        fpdVar.v(eekVar7);
                        break;
                    default:
                        if (eekVar7.l.g(csv.REMOVE)) {
                            fpdVar.v(eekVar7);
                            break;
                        } else {
                            break;
                        }
                }
            }
            fpdVar.u();
        }
        do {
            z = false;
            for (fza fzaVar2 : hedVar.ak) {
                Iterator it5 = fzaVar2.ac.iterator();
                while (true) {
                    if (it5.hasNext()) {
                        eek eekVar8 = (eek) it5.next();
                        if (eekVar8.ah == hay.MOVE && eekVar8.l.h() && (gksVar = eekVar8.ai) != null && gksVar.f18326a.f20178d.size() == 0) {
                            fpd.k(hedVar, eekVar8);
                            fpd.p(hedVar, fzaVar2, eekVar8);
                            z = true;
                        }
                    }
                }
            }
        } while (z);
    }

    @Override // g.pj
    public final boolean k(cci cciVar) {
        if (!cciVar.f12631ab.i.an) {
            return true;
        }
        l(cciVar, (ks) cciVar.l.k(ao.q));
        cciVar.av();
        Iterable.b.forEach(cciVar.ag, new ecm(this, cciVar, 0));
        cciVar.av();
        Iterable.b.forEach(cciVar.aj, new ecm(this, cciVar, 1));
        return true;
    }

    public final void l(cci cciVar, ks ksVar) {
        if (ksVar == null) {
            return;
        }
        for (fpa fpaVar : ksVar.f19565a.values()) {
            if (fpaVar.f17179a != any.SYSTEM) {
                for (Map.Entry entry : fpaVar.f17181c.entrySet()) {
                    entry.setValue(i(cciVar, (ghr) entry.getValue()));
                }
            }
        }
    }
}
