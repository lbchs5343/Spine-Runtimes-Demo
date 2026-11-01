package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.UnaryOperator;

/* loaded from: classes.dex */
public final class eak extends pj {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15190d;

    /* renamed from: c, reason: collision with root package name */
    public static final enz f15189c = new enz(3);

    /* renamed from: a, reason: collision with root package name */
    public static final enz f15187a = new enz(4);

    /* renamed from: b, reason: collision with root package name */
    public static final bli f15188b = new bli(3);

    public /* synthetic */ eak(int i) {
        this.f15190d = i;
    }

    public static boolean aa(hed hedVar, eek eekVar) {
        hay hayVar = eekVar.ah;
        if (hayVar == hay.INVOKE) {
            hed x = hedVar.am.f12631ab.x(((hdc) eekVar).ad);
            if (x != null) {
                x.am.f12631ab.i.getClass();
                fem.c(x, 1);
                return true;
            }
        } else {
            if (hayVar == hay.ONE_ARG) {
                gsh j = eekVar.j(0);
                j.getClass();
                if (j instanceof cly) {
                    return aa(hedVar, ((cly) j).f13104a);
                }
                return false;
            }
            if (!(eekVar instanceof adz) || !(((adz) eekVar).f10070a instanceof dsj)) {
                hedVar.bw("Can't inline method, not implemented redirect type for insn: " + eekVar);
                return false;
            }
        }
        return true;
    }

    public static void ab(goe goeVar) {
        if (goeVar.f18486g != null) {
            eii eiiVar = goeVar.aa;
            if (eiiVar != null) {
                goeVar.aa = eii.d(eiiVar);
            }
            amj amjVar = goeVar.h;
            goeVar.h = goeVar.f18486g;
            goeVar.f18486g = amjVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0164, code lost:
    
        if (r2.l.g(g.csv.ANONYMOUS_CONSTRUCTOR) != false) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ac(hed hedVar) {
        Iterator it;
        cci cciVar;
        Iterator it2;
        gks gksVar;
        gsh gshVar;
        dsf dsfVar;
        int size;
        Iterator it3;
        cci cciVar2;
        Iterator it4;
        ArrayList arrayList;
        eek eekVar;
        int i;
        chf chfVar;
        ArrayList arrayList2 = new ArrayList();
        List list = hedVar.ak;
        cci cciVar3 = hedVar.am;
        Iterator it5 = list.iterator();
        while (it5.hasNext()) {
            fza fzaVar = (fza) it5.next();
            arrayList2.clear();
            Iterator it6 = fzaVar.ac.iterator();
            while (it6.hasNext()) {
                eek eekVar2 = (eek) it6.next();
                if (!eekVar2.l.g(csv.DONT_INLINE)) {
                    if (!eekVar2.l.g(csv.DONT_GENERATE) && (gksVar = eekVar2.ai) != null) {
                        vm vmVar = gksVar.f18326a;
                        int i2 = tz.f20083a[eekVar2.ah.ordinal()];
                        if (i2 == 1 || i2 == 2) {
                            gsh j = eekVar2.j(0);
                            j.getClass();
                            if ((j instanceof ekh) && (!j.g() || !y(vmVar))) {
                                gshVar = j;
                                dsfVar = null;
                                vm vmVar2 = eekVar2.ai.f18326a;
                                size = vmVar2.f20178d.size();
                                ArrayList arrayList3 = vmVar2.f20178d;
                                if (size == 0) {
                                    it = it5;
                                    cciVar = cciVar3;
                                    it2 = it6;
                                } else {
                                    ArrayList arrayList4 = new ArrayList(arrayList3);
                                    Iterator it7 = arrayList4.iterator();
                                    int i3 = 0;
                                    while (it7.hasNext()) {
                                        gks gksVar2 = (gks) it7.next();
                                        if (!gksVar2.l.g(csv.DONT_INLINE_CONST)) {
                                            if (!gksVar2.l.g(csv.DONT_INLINE) && (eekVar = gksVar2.ae) != null) {
                                                it3 = it5;
                                                if (!eekVar.l.g(csv.DONT_GENERATE) && (gksVar2.f18326a.u().f15633f.size() <= 1 || gksVar2.f18326a.t())) {
                                                    if (eekVar.ah == hay.CONSTRUCTOR) {
                                                        ebp r = cciVar3.f12631ab.f14930b.r((eew) eekVar);
                                                        hed hedVar2 = r instanceof hed ? (hed) r : null;
                                                        if (hedVar2 != null) {
                                                            if (!hedVar2.l.g(csv.METHOD_CANDIDATE_FOR_INLINE)) {
                                                            }
                                                        }
                                                    }
                                                    eek eekVar3 = gksVar2.ae;
                                                    if (eekVar3 != null && eekVar3.ah != hay.PHI) {
                                                        if (gshVar instanceof ekh) {
                                                            ArrayList arrayList5 = arrayList3;
                                                            long j2 = ((ekh) gshVar).f15702a;
                                                            it4 = it6;
                                                            cwx j3 = gksVar2.j();
                                                            arrayList = arrayList5;
                                                            if (j3 == cwx.ad) {
                                                                j3 = gksVar2.h;
                                                            }
                                                            if (j3.m() && j2 != 0) {
                                                                j3 = cwx.r;
                                                            }
                                                            ekh ag = gsh.ag(j2, j3);
                                                            ag.s(gshVar);
                                                            if (eekVar3.f(gksVar2, ag)) {
                                                                cwx cwxVar = ag.h;
                                                                if (cwxVar.h()) {
                                                                    chfVar = cciVar3.bo(ag);
                                                                    i = 0;
                                                                } else if (cwxVar.o(bjt.INT)) {
                                                                    i = 0;
                                                                    chfVar = cciVar3.ba(Integer.valueOf((int) j2), false);
                                                                } else {
                                                                    i = 0;
                                                                    chfVar = null;
                                                                }
                                                                if (chfVar != null) {
                                                                    cciVar2 = cciVar3;
                                                                    if (ag.an(hedVar, new adz(hay.SGET, chfVar.c(), i), true) != null) {
                                                                        dxg.e(chfVar, hedVar);
                                                                    }
                                                                } else {
                                                                    cciVar2 = cciVar3;
                                                                    if (eekVar3 instanceof gif) {
                                                                        gif gifVar = (gif) eekVar3;
                                                                        ayu ac = gifVar.ac();
                                                                        if (gifVar.aa() != ag) {
                                                                            cwx cwxVar2 = (cwx) ac.f11075c.get(eekVar3.aq(ag) - gifVar.z());
                                                                            cwxVar2.getClass();
                                                                            if (cwxVar2 instanceof cff) {
                                                                                ag.h = cwxVar2;
                                                                                if (cwxVar2.equals(cwx.z)) {
                                                                                    ag.w(csv.EXPLICIT_PRIMITIVE_TYPE);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            if (!ag.g()) {
                                                                                throw new gck("Unexpected instance arg in invoke");
                                                                            }
                                                                            cwx cwxVar3 = ac.f11076d.f20149d;
                                                                            adz adzVar = new adz(hay.CAST, cwxVar3, 1);
                                                                            adzVar._an(ag);
                                                                            adzVar.w(csv.EXPLICIT_CAST);
                                                                            cly aj = gsh.aj(adzVar);
                                                                            aj.h = cwxVar3;
                                                                            eekVar3.f(ag, aj);
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                cciVar2 = cciVar3;
                                                                cciVar3 = cciVar2;
                                                                it5 = it3;
                                                                it6 = it4;
                                                                arrayList3 = arrayList;
                                                            }
                                                        } else {
                                                            cciVar2 = cciVar3;
                                                            it4 = it6;
                                                            arrayList = arrayList3;
                                                            if (!eekVar3.f(gksVar2, gshVar.b())) {
                                                                cciVar3 = cciVar2;
                                                                it5 = it3;
                                                                it6 = it4;
                                                                arrayList3 = arrayList;
                                                            }
                                                        }
                                                        eekVar3.au(eekVar2);
                                                        i3++;
                                                        cciVar3 = cciVar2;
                                                        it5 = it3;
                                                        it6 = it4;
                                                        arrayList3 = arrayList;
                                                    }
                                                }
                                                cciVar2 = cciVar3;
                                                it4 = it6;
                                                arrayList = arrayList3;
                                                cciVar3 = cciVar2;
                                                it5 = it3;
                                                it6 = it4;
                                                arrayList3 = arrayList;
                                            }
                                        }
                                        it3 = it5;
                                        cciVar2 = cciVar3;
                                        it4 = it6;
                                        arrayList = arrayList3;
                                        cciVar3 = cciVar2;
                                        it5 = it3;
                                        it6 = it4;
                                        arrayList3 = arrayList;
                                    }
                                    it = it5;
                                    cciVar = cciVar3;
                                    it2 = it6;
                                    ArrayList arrayList6 = arrayList3;
                                    if (i3 != arrayList4.size()) {
                                        if (Collection.b.stream(arrayList6).allMatch(new bev(13))) {
                                            eekVar2.w(csv.DONT_GENERATE);
                                        }
                                        cciVar3 = cciVar;
                                        it5 = it;
                                        it6 = it2;
                                    }
                                }
                                arrayList2.add(eekVar2);
                                if (dsfVar != null) {
                                    dsfVar.run();
                                }
                                cciVar3 = cciVar;
                                it5 = it;
                                it6 = it2;
                            }
                        } else {
                            if (i2 == 3) {
                                chf ba = cciVar3.ba(((epw) eekVar2).f15951a, true);
                                if (ba == null) {
                                    gshVar = gsh.aj(eekVar2._o());
                                } else {
                                    cly aj2 = gsh.aj(new adz(hay.SGET, ba.c(), 0));
                                    aj2.h = cwx.al;
                                    dsfVar = new dsf(ba, 4, hedVar);
                                    gshVar = aj2;
                                    vm vmVar22 = eekVar2.ai.f18326a;
                                    size = vmVar22.f20178d.size();
                                    ArrayList arrayList32 = vmVar22.f20178d;
                                    if (size == 0) {
                                    }
                                    arrayList2.add(eekVar2);
                                    if (dsfVar != null) {
                                    }
                                    cciVar3 = cciVar;
                                    it5 = it;
                                    it6 = it2;
                                }
                            } else if (i2 == 4 && !vmVar.t()) {
                                gshVar = gsh.aj(eekVar2._o());
                                gshVar.h = cwx.f13657ab;
                            }
                            dsfVar = null;
                            vm vmVar222 = eekVar2.ai.f18326a;
                            size = vmVar222.f20178d.size();
                            ArrayList arrayList322 = vmVar222.f20178d;
                            if (size == 0) {
                            }
                            arrayList2.add(eekVar2);
                            if (dsfVar != null) {
                            }
                            cciVar3 = cciVar;
                            it5 = it;
                            it6 = it2;
                        }
                    }
                }
                it = it5;
                cciVar = cciVar3;
                it2 = it6;
                cciVar3 = cciVar;
                it5 = it;
                it6 = it2;
            }
            fpd.n(hedVar, arrayList2);
            fpd.s(fzaVar.ac, arrayList2);
            it5 = it5;
        }
    }

    public static void ad(hed hedVar, gks gksVar, eek eekVar, fza fzaVar) {
        if (eekVar.l.g(csv.FORCE_ASSIGN_INLINE)) {
            m(hedVar, gksVar, eekVar, fzaVar);
            return;
        }
        if (gksVar.an(hedVar, eekVar, false) != null) {
            eek eekVar2 = gksVar.ae;
            if (eekVar2 != null) {
                eekVar2.au(eekVar);
            }
            fpd.j(hedVar, eekVar);
            fpd.p(hedVar, fzaVar, eekVar);
        }
    }

    public static void ae(List list, LinkedHashSet linkedHashSet) {
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            abi abiVar = (abi) it.next();
            vm vmVar = abiVar.ai.f18326a;
            if (linkedHashSet.add(vmVar)) {
                ae(vmVar.x(), linkedHashSet);
            }
            Iterable.b.forEach(abiVar.aj, new agx(15, linkedHashSet));
        }
    }

    public static void af(hed hedVar) {
        enz enzVar = enz.f15879a;
        buj.bb(hedVar, enzVar, hedVar.ao);
        if (hedVar.l.g(csv.REQUEST_CODE_SHRINK)) {
            av(hedVar);
        }
        buj.ax(hedVar, enzVar);
        buj.bb(hedVar, f15187a, hedVar.ao);
        buj.ax(hedVar, f15188b);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0041 -> B:5:0x001d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0038 -> B:5:0x001d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList ag(cci cciVar, hed hedVar, hay hayVar) {
        hcd ar;
        fza fzaVar;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        fza fzaVar2 = hedVar.aj;
        if (fzaVar2 != null) {
            hashSet.add(fzaVar2);
            if (fzaVar2.f17685e.size() <= 1) {
                List list = fzaVar2.f17684d;
                if (list.size() == 1) {
                    fzaVar = (fza) list.get(0);
                    while (fzaVar != null) {
                        hashSet.add(fzaVar);
                        if (fzaVar.f17685e.size() <= 1) {
                            List list2 = fzaVar.f17684d;
                            if (list2.size() == 1) {
                                fzaVar = (fza) list2.get(0);
                            }
                        }
                    }
                }
            }
            fzaVar = null;
            while (fzaVar != null) {
            }
        }
        boolean z = true;
        for (fza fzaVar3 : hedVar.ak) {
            Iterator it = fzaVar3.ac.iterator();
            while (it.hasNext()) {
                eek eekVar = (eek) it.next();
                if (eekVar.ah == hayVar) {
                    adz adzVar = (adz) eekVar;
                    dsj dsjVar = (dsj) adzVar.f10070a;
                    if (dsjVar.f14711d.equals(cciVar.ak) && (ar = cciVar.ar(dsjVar)) != null) {
                        arrayList.add(new ej(ar, adzVar, z && hashSet.contains(fzaVar3)));
                    }
                }
                if (z && !eekVar.aw()) {
                    z = false;
                }
            }
        }
        return arrayList;
    }

    public static void ah(hed hedVar) {
        gks gksVar = hedVar.z;
        if (gksVar != null) {
            vm vmVar = gksVar.f18326a;
            if (vmVar == null) {
                vmVar = hedVar.bn(gksVar);
            }
            az(vmVar);
        }
        for (gks gksVar2 : hedVar.az()) {
            vm vmVar2 = gksVar2.f18326a;
            if (vmVar2 == null) {
                vmVar2 = hedVar.bn(gksVar2);
            }
            az(vmVar2);
        }
        Iterator it = hedVar.at.iterator();
        while (it.hasNext()) {
            az((vm) it.next());
        }
    }

    public static int ai(gsh gshVar, fih fihVar, int i) {
        if (!(gshVar instanceof gks)) {
            return 0;
        }
        gks gksVar = (gks) gshVar;
        if (i != gksVar.f18327e) {
            return 0;
        }
        gksVar.m(fihVar);
        return 1;
    }

    public static int aj(dwg dwgVar, LinkedHashSet linkedHashSet, HashSet hashSet, cwx cwxVar) {
        if (Objects.equals(cwxVar, cwx.t) || !linkedHashSet.add(cwxVar)) {
            return 0;
        }
        cci w = dwgVar.w(cwxVar);
        if (w != null) {
            n(w, linkedHashSet, hashSet);
            return 1;
        }
        aht l = dwgVar.l.l(cwxVar);
        if (l == null) {
            hashSet.add(cwxVar.l());
            return 1;
        }
        int i = 0;
        for (cwx cwxVar2 : l.f10240e) {
            i += aj(dwgVar, linkedHashSet, hashSet, cwxVar2);
        }
        if (i == 0) {
            hashSet.add(cwxVar.l());
        }
        return 1;
    }

    public static eek ak(hed hedVar, eek eekVar, fpd fpdVar, hay hayVar) {
        if (eekVar == null) {
            return null;
        }
        hay hayVar2 = eekVar.ah;
        if (hayVar2 == hayVar) {
            return eekVar;
        }
        if (eekVar.l.h()) {
            ((ArrayList) fpdVar.f17187c).add(eekVar);
        } else {
            eek eekVar2 = new eek(hay.NOP, 0);
            Iterator it = hedVar.ak.iterator();
            while (it.hasNext() && !ffb.bw(hedVar, (fza) it.next(), eekVar, eekVar2)) {
            }
        }
        if (hayVar2 == hay.MOVE) {
            return ak(hedVar, ((gks) eekVar.j(0)).aa(), fpdVar, hayVar);
        }
        return null;
    }

    public static void al(gks gksVar) {
        if (gksVar == null) {
            return;
        }
        gksVar.w(csv.THIS);
        gksVar.w(csv.IMMUTABLE_TYPE);
        eek eekVar = gksVar.ae;
        if (eekVar != null && eekVar.ah == hay.MOVE && eekVar.j(0) == gksVar) {
            gks gksVar2 = eekVar.ai;
            if (gksVar2.f18327e == gksVar.f18327e || gksVar2.f18326a.t()) {
                return;
            }
            al(gksVar2);
            Iterable.b.forEach(gksVar2.f18326a.f20178d, new esk(24));
            eekVar.w(csv.DONT_GENERATE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean am(hed hedVar, amj amjVar) {
        boolean z;
        boolean z2;
        if (amjVar != 0) {
            if (!((lh) amjVar).l.g(csv.RETURN)) {
                if (amjVar instanceof fza) {
                    fza fzaVar = (fza) amjVar;
                    if (fzaVar != hedVar.ad) {
                        List list = fzaVar.f17684d;
                        if (!list.isEmpty()) {
                            if (list.size() == 1) {
                                z = ((fza) list.get(0)).f17684d.isEmpty();
                                if (!z) {
                                    if (amjVar instanceof cfm) {
                                        List x = ((cfm) amjVar).x();
                                        if (x.size() == 1) {
                                            amj amjVar2 = (amj) x.get(0);
                                            if (amjVar2 instanceof fza) {
                                                fza fzaVar2 = (fza) amjVar2;
                                                if (fzaVar2 != hedVar.ad) {
                                                    List list2 = fzaVar2.f17684d;
                                                    if (!list2.isEmpty()) {
                                                        if (list2.size() == 1) {
                                                            z2 = ((fza) list2.get(0)).f17684d.isEmpty();
                                                            if (z2) {
                                                            }
                                                        }
                                                    }
                                                }
                                                z2 = true;
                                                if (z2) {
                                                }
                                            }
                                            z2 = false;
                                            if (z2) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z = true;
                    if (!z) {
                    }
                }
                z = false;
                if (!z) {
                }
            }
            return true;
        }
        return false;
    }

    public static void an(hed hedVar, hcd hcdVar, adz adzVar) {
        eek eekVar;
        gsh j = adzVar.j(0);
        j.getClass();
        if (j instanceof cly) {
            eekVar = ((cly) j).f13104a;
        } else {
            eek eekVar2 = new eek(hay.ONE_ARG, 1);
            eekVar2._an(j);
            eekVar = eekVar2;
        }
        hcdVar.m(new gos(hedVar, eekVar));
    }

    public static void ao(hed hedVar) {
        Iterator it;
        gsh b2;
        fih fihVar;
        Iterator it2;
        eek eekVar;
        ArrayList arrayList = new ArrayList();
        Iterator it3 = hedVar.ak.iterator();
        while (it3.hasNext()) {
            fza fzaVar = (fza) it3.next();
            ArrayList arrayList2 = fzaVar.ac;
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                eek eekVar2 = (eek) it4.next();
                if (eekVar2.ah == hay.MOVE) {
                    acq acqVar = acq.s;
                    gks gksVar = eekVar2.ai;
                    gsh j = eekVar2.j(0);
                    if (!gksVar.x(j)) {
                        j.getClass();
                        boolean z = j instanceof gks;
                        if (!z || (eekVar = ((gks) j).f18326a.f20177c.ae) == null || eekVar.ah != hay.PHI) {
                            vm vmVar = gksVar.f18326a;
                            ArrayList arrayList3 = vmVar.f20178d;
                            if (!arrayList3.isEmpty()) {
                                if (!vmVar.t()) {
                                    fih fihVar2 = (fih) j.l.k(acqVar);
                                    Iterator it5 = arrayList3.iterator();
                                    while (it5.hasNext()) {
                                        gks gksVar2 = (gks) it5.next();
                                        if (gksVar2.ae != null) {
                                            if (fihVar2 == null && (fihVar = (fih) gksVar2.l.k(acqVar)) != null) {
                                                fihVar2 = fihVar;
                                            }
                                        }
                                    }
                                    Iterator it6 = new ArrayList(arrayList3).iterator();
                                    while (it6.hasNext()) {
                                        gks gksVar3 = (gks) it6.next();
                                        eek eekVar3 = gksVar3.ae;
                                        if (eekVar3 != null) {
                                            if (z) {
                                                gks gksVar4 = (gks) j;
                                                it = it3;
                                                b2 = gksVar4.ab(gksVar4.f18327e, gksVar3.h, gksVar4.f18326a);
                                            } else {
                                                it = it3;
                                                b2 = j.b();
                                            }
                                            eekVar3.au(eekVar2);
                                            b2.s(gksVar3);
                                            if (fihVar2 != null) {
                                                b2.m(fihVar2);
                                            }
                                            if (!eekVar3.f(gksVar3, b2)) {
                                                hedVar.bu("Failed to replace arg in insn: " + eekVar3);
                                            }
                                            it3 = it;
                                        }
                                    }
                                }
                            }
                        }
                        it2 = it3;
                        it3 = it2;
                    }
                    it2 = it3;
                    fzaVar.w(csv.MOVE_INLINED);
                    arrayList.add(eekVar2);
                    fpd.k(hedVar, eekVar2);
                    it3 = it2;
                }
            }
            Iterator it7 = it3;
            if (!arrayList.isEmpty()) {
                if (arrayList2 == null) {
                    Iterator it8 = arrayList.iterator();
                    while (it8.hasNext()) {
                        fpd.l(hedVar, (eek) it8.next());
                    }
                } else {
                    fpd.n(hedVar, arrayList);
                    fpd.s(arrayList2, arrayList);
                }
                arrayList.clear();
            }
            it3 = it7;
        }
    }

    public static fmz ap(hed hedVar, eek eekVar, boolean z) {
        if (!aa(hedVar, eekVar)) {
            if (!z) {
                return null;
            }
            eekVar.ap(new esk(18));
            return null;
        }
        if (!z) {
            eekVar = eekVar._o();
        }
        eekVar.ap(new esk(18));
        List az = hedVar.az();
        if (hedVar.z != null) {
            ArrayList arrayList = new ArrayList(az.size() + 1);
            arrayList.add(hedVar.z);
            arrayList.addAll(az);
            az = arrayList;
        }
        int size = az.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((gks) az.get(i)).f18327e;
        }
        fmz fmzVar = new fmz(eekVar, iArr);
        hedVar.m(fmzVar);
        hedVar.bw("Marked for inline");
        return fmzVar;
    }

    public static void aq(cuj cujVar, abi abiVar) {
        gks gksVar = abiVar.ai;
        int i = gksVar.f18327e;
        vm vmVar = cujVar.f13535d[i];
        if (vmVar == null) {
            return;
        }
        fza fzaVar = cujVar.f13534c;
        gks gksVar2 = new gks(i, gksVar.h);
        abiVar._az(gksVar2, fzaVar);
        vmVar.r(gksVar2);
        vmVar.p(abiVar);
    }

    public static void ar(ArrayList arrayList) {
        boolean z;
        boolean equals;
        Set set = (Set) Collection.b.stream(((Map) Collection.b.stream(arrayList).collect(Collectors.toMap(new fov(23), new fov(24), new ko()))).entrySet()).filter(new bev(23)).map(new fov(25)).collect(Collectors.toSet());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ej ejVar = (ej) it.next();
            if (ejVar.f15623c) {
                adz adzVar = ejVar.f15622b;
                gsh j = adzVar.j(0);
                j.getClass();
                if (j instanceof cly) {
                    if (!((cly) j).f13104a.aw()) {
                        if (adzVar.l.j(acq.al)) {
                        }
                    }
                    HashSet hashSet = new HashSet();
                    adzVar.h(hashSet);
                    if (!hashSet.isEmpty()) {
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            if (!((gks) it2.next()).al()) {
                            }
                        }
                    }
                } else if (!(j instanceof ekh) && !j.al()) {
                }
            }
            set.add(ejVar.f15621a.f19217g);
        }
        if (!set.isEmpty()) {
            do {
                Iterator it3 = arrayList.iterator();
                z = false;
                while (it3.hasNext()) {
                    ej ejVar2 = (ej) it3.next();
                    dsj dsjVar = ejVar2.f15621a.f19217g;
                    if (!set.contains(dsjVar)) {
                        if (set.isEmpty()) {
                            equals = false;
                        } else {
                            adz adzVar2 = ejVar2.f15622b;
                            equals = Objects.equals((Boolean) adzVar2.ak(new fss(adzVar2.ah == hay.SPUT ? hay.SGET : hay.IGET, 0, set)), Boolean.TRUE);
                        }
                        if (equals) {
                            set.add(dsjVar);
                            z = true;
                        }
                    }
                }
            } while (z);
        }
        if (set.isEmpty()) {
            return;
        }
        Collection.b.removeIf(arrayList, new fev(2, set));
    }

    public static clx as(dwg dwgVar, eek eekVar) {
        cci ae;
        hcd ag;
        gsh j = eekVar.j(0);
        gsh j2 = eekVar.j(1);
        j.getClass();
        if (!(j instanceof cly)) {
            return null;
        }
        j2.getClass();
        if (!(j2 instanceof cly)) {
            return null;
        }
        eek eekVar2 = ((cly) j2).f13104a;
        eek eekVar3 = ((cly) j).f13104a;
        if (eekVar2.ah != hay.INVOKE || eekVar3.ah != hay.SGET) {
            return null;
        }
        hdc hdcVar = (hdc) eekVar2;
        ayu ayuVar = hdcVar.ad;
        if (!ayuVar.f11077e.equals("ordinal()I") || (ae = dwgVar.ae(ayuVar.f11076d)) == null || !ae.bi()) {
            return null;
        }
        Object obj = ((adz) eekVar3).f10070a;
        if ((obj instanceof dsj) && (ag = dwgVar.ag((dsj) obj)) != null && ag.h.bb()) {
            return new clx(5, hdcVar.j(0), ag, false);
        }
        return null;
    }

    public static eek at(gks gksVar) {
        eek eekVar;
        vm vmVar = gksVar.f18326a;
        if (vmVar.f20178d.size() == 1 && (eekVar = ((gks) vmVar.f20178d.get(0)).ae) != null) {
            return eekVar.ah == hay.MOVE ? at(eekVar.ai) : eekVar;
        }
        return null;
    }

    public static boolean au(amj amjVar) {
        if (amjVar instanceof goe) {
            return true;
        }
        if (amjVar instanceof cfm) {
            List x = ((cfm) amjVar).x();
            if (x.size() == 1 && (x.get(0) instanceof goe)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0164, code lost:
    
        if (r6.f20178d.size() > r14.size()) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x025d A[EDGE_INSN: B:230:0x025d->B:176:0x025d BREAK  A[LOOP:11: B:205:0x02b7->B:221:0x02b7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void av(hed hedVar) {
        Iterator it;
        Iterator it2;
        Iterator it3;
        eek eekVar;
        vm vmVar;
        eek eekVar2;
        boolean z;
        boolean contains;
        dyf dyfVar;
        BitSet bitSet;
        gsh aa;
        if (hedVar.ar) {
            return;
        }
        hedVar.v(csv.REQUEST_CODE_SHRINK);
        Iterator it4 = hedVar.ak.iterator();
        while (it4.hasNext()) {
            fza fzaVar = (fza) it4.next();
            ArrayList arrayList = fzaVar.ac;
            if (arrayList.isEmpty()) {
                it = it4;
            } else {
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    arrayList2.add(new aod((eek) arrayList.get(i), arrayList2, i));
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it5 = arrayList2.iterator();
                while (it5.hasNext()) {
                    aod aodVar = (aod) it5.next();
                    ArrayList arrayList4 = aodVar.f10559f;
                    int size2 = arrayList4.size() - 1;
                    while (size2 >= 0) {
                        gks gksVar = (gks) arrayList4.get(size2);
                        csv csvVar = csv.DONT_INLINE;
                        if (!gksVar.l.g(csvVar) && (eekVar = gksVar.ae) != null) {
                            if (!eekVar.l.g(csv.DONT_GENERATE) && (vmVar = gksVar.f18326a) != null) {
                                ArrayList arrayList5 = vmVar.f20178d;
                                if (!vmVar.f20177c.l.g(csvVar) && (eekVar2 = vmVar.f20177c.ae) != null && !eekVar2.l.g(csvVar)) {
                                    if (!eekVar2.l.g(csv.WRAPPED)) {
                                        boolean g2 = eekVar2.l.g(csv.FORCE_ASSIGN_INLINE);
                                        if (g2 || !vmVar.t()) {
                                            Iterator it6 = arrayList5.iterator();
                                            int i2 = 0;
                                            while (true) {
                                                if (it6.hasNext()) {
                                                    it2 = it4;
                                                    gks gksVar2 = (gks) it6.next();
                                                    boolean z2 = g2;
                                                    eek eekVar3 = gksVar2.ae;
                                                    it3 = it5;
                                                    if (eekVar3 != null) {
                                                        if (eekVar3.l.g(csv.DONT_GENERATE)) {
                                                            continue;
                                                            g2 = z2;
                                                            it4 = it2;
                                                            it5 = it3;
                                                        }
                                                    }
                                                    if (!z2) {
                                                        if (gksVar2.l.g(csv.DONT_INLINE_CONST)) {
                                                            break;
                                                        }
                                                    }
                                                    i2++;
                                                    g2 = z2;
                                                    it4 = it2;
                                                    it5 = it3;
                                                } else {
                                                    it2 = it4;
                                                    boolean z3 = g2;
                                                    it3 = it5;
                                                    if (z3 || i2 == 1) {
                                                        if (!z3 && vmVar.o() != null && ((gsh) eekVar2.az(new edk(vmVar.o(), 0))) == null) {
                                                            Iterator it7 = hedVar.at.iterator();
                                                            while (true) {
                                                                if (!it7.hasNext()) {
                                                                    break;
                                                                }
                                                                vm vmVar2 = (vm) it7.next();
                                                                if (vmVar2 == vmVar || vmVar2.u() == vmVar.u() || !Objects.equals(vmVar2.o(), vmVar.o())) {
                                                                }
                                                            }
                                                        }
                                                        if (eekVar2.ah == hay.INVOKE && (eekVar2 instanceof arl)) {
                                                            Iterator it8 = gksVar.f18326a.f20178d.iterator();
                                                            while (it8.hasNext()) {
                                                                gks gksVar3 = (gks) it8.next();
                                                                eek eekVar4 = gksVar3.ae;
                                                                if (eekVar4 != null && eekVar4.ah == hay.INVOKE && (aa = ((hdc) eekVar4).aa()) != null && aa == gksVar3) {
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                        int a2 = con.a(arrayList, eekVar2);
                                                        if (a2 != -1) {
                                                            ArrayList arrayList6 = aodVar.f10558e;
                                                            int i3 = aodVar.f10555b;
                                                            if (a2 < i3) {
                                                                aod aodVar2 = (aod) arrayList6.get(a2);
                                                                int i4 = a2 + 1;
                                                                if (i4 != i3) {
                                                                    if (i4 > i3) {
                                                                        throw new gck(tn.t(i4, i3, "Invalid inline insn positions: ", " - "));
                                                                    }
                                                                    if (aodVar2.f10559f.isEmpty() && evh.m(aodVar2.f10560g)) {
                                                                        bitSet = giu.f18223a;
                                                                    } else {
                                                                        bitSet = new BitSet();
                                                                        aodVar2.l(bitSet);
                                                                    }
                                                                    if (bitSet != giu.f18223a || !aodVar2.f10556c.as()) {
                                                                        boolean k = aodVar2.k();
                                                                        while (i4 < i3) {
                                                                            aod aodVar3 = (aod) arrayList6.get(i4);
                                                                            if (aodVar3.j() != aodVar) {
                                                                                eek eekVar5 = aodVar3.f10556c;
                                                                                if (k) {
                                                                                    if (aod.h(eekVar5, bitSet)) {
                                                                                    }
                                                                                } else if (eekVar5.aw() && !aod.h(eekVar5, bitSet)) {
                                                                                }
                                                                            }
                                                                            i4++;
                                                                        }
                                                                    }
                                                                }
                                                                aodVar.f10555b = a2;
                                                                aod aodVar4 = (aod) arrayList6.get(a2);
                                                                aodVar4.f10557d = aodVar;
                                                                if (aodVar.f10560g == null) {
                                                                    aodVar.f10560g = new ArrayList(aodVar.f10559f.size());
                                                                }
                                                                aodVar.f10560g.add(aodVar4);
                                                                dyfVar = new dyf(aodVar4.f10556c, gksVar);
                                                                if (dyfVar != null) {
                                                                    arrayList3.add(dyfVar);
                                                                }
                                                            }
                                                            dyfVar = null;
                                                            if (dyfVar != null) {
                                                            }
                                                        } else {
                                                            fza o = ffb.o(hedVar, eekVar2, hedVar.ak);
                                                            if (o != null && eekVar2 != gksVar.ae) {
                                                                eek eekVar6 = aodVar.f10556c;
                                                                if (ffb.ac(o, fzaVar)) {
                                                                    ArrayList arrayList7 = new ArrayList();
                                                                    aod.i(eekVar2, arrayList7);
                                                                    BitSet bitSet2 = new BitSet();
                                                                    Iterator it9 = arrayList7.iterator();
                                                                    while (it9.hasNext()) {
                                                                        bitSet2.set(((gks) it9.next()).f18327e);
                                                                    }
                                                                    Iterator it10 = o.ac.iterator();
                                                                    boolean z4 = false;
                                                                    while (true) {
                                                                        if (it10.hasNext()) {
                                                                            eek eekVar7 = (eek) it10.next();
                                                                            if (z4 && (!eekVar7.aw() || aod.h(eekVar7, bitSet2))) {
                                                                                break;
                                                                            } else if (eekVar7 == eekVar2) {
                                                                                z4 = true;
                                                                            }
                                                                        } else {
                                                                            HashSet x = ffb.x(o, fzaVar);
                                                                            x.remove(o);
                                                                            x.remove(fzaVar);
                                                                            Iterator it11 = x.iterator();
                                                                            while (true) {
                                                                                if (!it11.hasNext()) {
                                                                                    Iterator it12 = arrayList.iterator();
                                                                                    while (it12.hasNext()) {
                                                                                        eek eekVar8 = (eek) it12.next();
                                                                                        if (eekVar8 == eekVar6) {
                                                                                            z = true;
                                                                                        } else if (eekVar8.aw() && !aod.h(eekVar8, bitSet2)) {
                                                                                        }
                                                                                    }
                                                                                    throw new gck("Can't process instruction move : " + o);
                                                                                }
                                                                                fza fzaVar2 = (fza) it11.next();
                                                                                if (!fzaVar2.l.g(csv.DONT_GENERATE)) {
                                                                                    Iterator it13 = fzaVar2.ac.iterator();
                                                                                    while (it13.hasNext()) {
                                                                                        eek eekVar9 = (eek) it13.next();
                                                                                        if (!eekVar9.aw() || aod.h(eekVar9, bitSet2)) {
                                                                                            break;
                                                                                        }
                                                                                    }
                                                                                } else if (ffb.cd(fzaVar2, hay.MONITOR_EXIT)) {
                                                                                    eys eysVar = hedVar.ao;
                                                                                    if (eysVar != null) {
                                                                                        amj i5 = gs.i(o, eysVar);
                                                                                        if ((i5 instanceof cfm) && !(i5 instanceof foe)) {
                                                                                            contains = ((cfm) i5).x().contains(fzaVar);
                                                                                            if (contains) {
                                                                                                break;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    contains = false;
                                                                                    if (contains) {
                                                                                    }
                                                                                } else {
                                                                                    continue;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                z = false;
                                                                if (z) {
                                                                    if (z3) {
                                                                        m(hedVar, gksVar, eekVar2, o);
                                                                    } else {
                                                                        ad(hedVar, gksVar, eekVar2, o);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            size2--;
                                            it4 = it2;
                                            it5 = it3;
                                        }
                                    }
                                }
                            }
                        }
                        it2 = it4;
                        it3 = it5;
                        size2--;
                        it4 = it2;
                        it5 = it3;
                    }
                }
                it = it4;
                if (!arrayList3.isEmpty()) {
                    Iterator it14 = arrayList3.iterator();
                    while (it14.hasNext()) {
                        dyf dyfVar2 = (dyf) it14.next();
                        ad(hedVar, dyfVar2.f15084b, dyfVar2.f15083a, fzaVar);
                    }
                }
            }
            int size3 = arrayList.size();
            for (int i6 = 0; i6 < size3; i6++) {
                eek eekVar10 = (eek) arrayList.get(i6);
                if (eekVar10.ah == hay.MOVE) {
                    gsh j = eekVar10.j(0);
                    j.getClass();
                    if (j instanceof cly) {
                        eek eekVar11 = ((cly) j).f13104a;
                        fpd.j(hedVar, eekVar11);
                        eekVar11.ax(eekVar10.ai.b());
                        eekVar11.au(eekVar10);
                        eekVar11.ag = eekVar10.ag;
                        eekVar11.v(csv.WRAPPED);
                        arrayList.set(i6, eekVar11);
                    }
                }
            }
            it4 = it;
        }
    }

    public static void aw(eek[] eekVarArr, int i, eek eekVar, cwx cwxVar) {
        int ba = ba(eekVarArr, i);
        if (ba == -1) {
            return;
        }
        eek eekVar2 = eekVarArr[ba];
        if (eekVar2.ah != hay.MOVE_RESULT) {
            return;
        }
        gks gksVar = eekVar2.ai;
        eekVar.ax(gksVar.ab(gksVar.f18327e, cwxVar, gksVar.f18326a));
        eekVar.s(eekVar2);
        eekVar.br(eekVar2);
        eekVarArr[eekVar2.ag] = null;
    }

    public static void ax(hed hedVar, gsh gshVar) {
        if (gshVar == null || !gshVar.as()) {
            return;
        }
        cwx j = gshVar.j();
        adz adzVar = new adz(hay.CAST, j, 1);
        adzVar._an(gsh.ag(0L, j));
        gshVar.an(hedVar, adzVar, true);
    }

    public static boolean ay(gsh gshVar) {
        gshVar.getClass();
        if (gshVar instanceof gks) {
            return true;
        }
        if (gshVar instanceof cly) {
            eek eekVar = ((cly) gshVar).f13104a;
            if (eekVar.ah == hay.CHECK_CAST) {
                return ay(eekVar.j(0));
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        if (r1.l.g(g.csv.CUSTOM_DECLARE) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void az(vm vmVar) {
        if (vmVar.f20176b != null) {
            return;
        }
        ejb ejbVar = new ejb();
        gks gksVar = vmVar.f20177c;
        if (gksVar.l.g(csv.THIS)) {
            ejbVar.f15630c = "this";
            ejbVar.f15629b = true;
        }
        if (!gksVar.l.g(csv.METHOD_ARGUMENT)) {
        }
        ejbVar.f15631d = true;
        List x = vmVar.x();
        if (x.isEmpty()) {
            vmVar.n(ejbVar);
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(vmVar);
        ae(x, linkedHashSet);
        if (linkedHashSet.size() > 1) {
            List list = (List) Collection.b.stream(linkedHashSet).map(new fov(29)).filter(new bev(28)).filter(new bev(29)).distinct().collect(Collectors.toList());
            int size = list.size();
            if (size == 1) {
                ejbVar.f15632e = (cwx) list.get(0);
            } else if (size > 1) {
                throw new gck("Several immutable types in one variable: " + list + ", vars: " + linkedHashSet);
            }
        }
        Iterable.b.forEach(linkedHashSet, new agx(14, ejbVar));
    }

    public static int ba(eek[] eekVarArr, int i) {
        int length = eekVarArr.length;
        while (true) {
            i++;
            if (i >= length) {
                return -1;
            }
            eek eekVar = eekVarArr[i];
            if (eekVar != null && eekVar.ah != hay.NOP) {
                return i;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static fpr bb(hed hedVar, ArrayList arrayList, HashSet hashSet, fpr fprVar) {
        if (arrayList.isEmpty() && fprVar == null) {
            return null;
        }
        if (fprVar == null) {
            return t(hedVar, (List) Collection.b.stream(arrayList).distinct().collect(Collectors.toList()), hashSet, false);
        }
        List list = fprVar.f17209b;
        if (evh.m(arrayList)) {
            arrayList = list;
        } else if (!evh.m(list)) {
            ArrayList arrayList2 = new ArrayList(list.size() + arrayList.size());
            arrayList2.addAll(arrayList);
            arrayList2.addAll(list);
            arrayList = arrayList2;
        }
        List list2 = (List) Collection.b.stream(arrayList).distinct().collect(Collectors.toList());
        HashSet hashSet2 = fprVar.f17208a;
        if (evh.m(hashSet)) {
            hashSet = hashSet2;
        } else if (!evh.m(hashSet2)) {
            HashSet hashSet3 = new HashSet(hashSet2.size() + hashSet.size());
            hashSet3.addAll(hashSet);
            hashSet3.addAll(hashSet2);
            hashSet = hashSet3;
        }
        return t(hedVar, list2, hashSet, true);
    }

    public static void bc(hed hedVar, gtb gtbVar) {
        int i;
        String str;
        eek[] eekVarArr = hedVar.an;
        Map map = (Map) gtbVar.f18714d;
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                try {
                    eek eekVar = eekVarArr[((Integer) entry.getKey()).intValue()];
                    if (eekVar != null) {
                        eekVar.bp = ((Integer) entry.getValue()).intValue();
                    }
                } catch (Exception e2) {
                    hedVar.bt("Error attach source line", e2);
                }
            }
            int orElse = Collection.b.stream(map.values()).mapToInt(new dbm(8)).min().orElse(he.UNDEFINED_ITEM_ID);
            if (orElse < 3) {
                str = awf.ac(orElse, "Lines numbers was adjusted: min line is ");
            } else {
                List list = (List) Collection.b.stream(((Map) Collection.b.stream(map.values()).collect(Collectors.toMap(new fov(15), new fov(16), new ko()))).entrySet()).filter(new bev(14)).collect(Collectors.toList());
                str = list.isEmpty() ? null : "Repeating lines: " + list;
            }
            if (str != null) {
                hedVar.bw("Don't trust debug lines info. ".concat(str));
            } else {
                hedVar.w(csv.USE_LINES_HINTS);
            }
        }
        List<ers> list2 = (List) gtbVar.f18712b;
        if (!list2.isEmpty()) {
            for (ers ersVar : list2) {
                int h = ersVar.h();
                int j = ersVar.j();
                int i2 = ersVar.i();
                fih fihVar = new fih(ersVar.getName(), q(hedVar, ersVar));
                if (j <= 0) {
                    gks gksVar = hedVar.z;
                    if (gksVar != null) {
                        ai(gksVar, fihVar, h);
                    }
                    Iterator it = hedVar.az().iterator();
                    while (it.hasNext()) {
                        ai((gks) it.next(), fihVar, h);
                    }
                    j = 0;
                }
                while (j <= i2) {
                    eek eekVar2 = eekVarArr[j];
                    if (eekVar2 != null) {
                        Iterator it2 = eekVar2.aj.iterator();
                        int i3 = 0;
                        while (it2.hasNext()) {
                            i3 += ai((gsh) it2.next(), fihVar, h);
                        }
                        if (i3 == 0) {
                            ai(eekVar2.ai, fihVar, h);
                        }
                    }
                    j++;
                }
            }
            hedVar.m(new bot(list2));
        }
        for (eek eekVar3 : eekVarArr) {
            if (eekVar3 != null && (i = eekVar3.bp) != 0) {
                hedVar.bp = i - 1;
                return;
            }
        }
    }

    private final void bf(hed hedVar) {
        eek eekVar;
        vm vmVar;
        ArrayList arrayList;
        Iterator it;
        eek aa;
        eek eekVar2;
        eng engVar;
        boolean z;
        if (hedVar.ar) {
            return;
        }
        acq acqVar = acq.bh;
        acq acqVar2 = acq.am;
        if (!hedVar.at.isEmpty()) {
            return;
        }
        aes aesVar = new aes();
        int size = hedVar.ak.size();
        int i = hedVar.af;
        aesVar.f10118c = aes.f(size, i);
        aesVar.f10119d = aes.f(size, i);
        aesVar.f10117b = aes.f(i, size);
        for (fza fzaVar : hedVar.ak) {
            int i2 = fzaVar.x;
            BitSet bitSet = aesVar.f10118c[i2];
            BitSet bitSet2 = aesVar.f10119d[i2];
            Iterator it2 = fzaVar.ac.iterator();
            while (it2.hasNext()) {
                eek eekVar3 = (eek) it2.next();
                for (gsh gshVar : eekVar3.aj) {
                    gshVar.getClass();
                    if (gshVar instanceof gks) {
                        int i3 = ((gks) gshVar).f18327e;
                        if (!bitSet2.get(i3)) {
                            bitSet.set(i3);
                        }
                    }
                }
                gks gksVar = eekVar3.ai;
                if (gksVar != null) {
                    int i4 = gksVar.f18327e;
                    bitSet2.set(i4);
                    aesVar.f10117b[i4].set(i2);
                }
            }
        }
        int size2 = hedVar.ak.size();
        int i5 = hedVar.af;
        BitSet[] f2 = aes.f(size2, i5);
        List<fza> list = hedVar.ak;
        int size3 = list.size();
        int i6 = size3 * 10;
        int i7 = 0;
        while (true) {
            boolean z2 = false;
            for (fza fzaVar2 : list) {
                int i8 = fzaVar2.x;
                BitSet bitSet3 = f2[i8];
                BitSet bitSet4 = new BitSet(i5);
                Iterator it3 = fzaVar2.f17684d.iterator();
                while (it3.hasNext()) {
                    bitSet4.or(f2[((fza) it3.next()).x]);
                    i5 = i5;
                }
                int i9 = i5;
                bitSet4.andNot(aesVar.f10119d[i8]);
                bitSet4.or(aesVar.f10118c[i8]);
                if (!bitSet3.equals(bitSet4)) {
                    f2[i8] = bitSet4;
                    z2 = true;
                }
                i5 = i9;
            }
            int i10 = i5;
            int i11 = i7 + 1;
            if (i7 > i6) {
                throw new gck(awf.ac(size3, "Live variable analysis reach iterations limit, blocks count: "));
            }
            if (z2) {
                i7 = i11;
                i5 = i10;
            } else {
                aesVar.f10120e = f2;
                int i12 = hedVar.af;
                for (int i13 = 0; i13 < i12; i13++) {
                    List list2 = hedVar.ak;
                    int size4 = list2.size();
                    BitSet bitSet5 = new BitSet(size4);
                    BitSet bitSet6 = new BitSet(size4);
                    ArrayDeque arrayDeque = new ArrayDeque();
                    BitSet bitSet7 = aesVar.f10117b[i13];
                    for (int nextSetBit = bitSet7.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet7.nextSetBit(nextSetBit + 1)) {
                        bitSet6.set(nextSetBit);
                        arrayDeque.add((fza) list2.get(nextSetBit));
                    }
                    while (!arrayDeque.isEmpty()) {
                        BitSet bitSet8 = ((fza) arrayDeque.pop()).i;
                        for (int nextSetBit2 = bitSet8.nextSetBit(0); nextSetBit2 >= 0; nextSetBit2 = bitSet8.nextSetBit(nextSetBit2 + 1)) {
                            if (!bitSet5.get(nextSetBit2)) {
                                BitSet[] bitSetArr = aesVar.f10120e;
                                if (nextSetBit2 >= bitSetArr.length) {
                                    aes.f10116a.t(Integer.valueOf(nextSetBit2), "LiveVarAnalysis: out of bounds block: {}, max: {}", Integer.valueOf(aesVar.f10120e.length));
                                    z = false;
                                } else {
                                    z = bitSetArr[nextSetBit2].get(i13);
                                }
                                if (z) {
                                    fza fzaVar3 = (fza) list2.get(nextSetBit2);
                                    fzaVar3.ac.add(0, v(hedVar, fzaVar3, i13));
                                    bitSet5.set(nextSetBit2);
                                    if (!bitSet6.get(nextSetBit2)) {
                                        bitSet6.set(nextSetBit2);
                                        arrayDeque.add(fzaVar3);
                                    }
                                }
                            }
                        }
                    }
                }
                int i14 = hedVar.af;
                cuj cujVar = new cuj(hedVar, hedVar.aj, new vm[i14], new int[i14]);
                gks gksVar2 = hedVar.z;
                if (gksVar2 != null) {
                    cujVar.e(gksVar2);
                }
                Iterator it4 = hedVar.az().iterator();
                while (it4.hasNext()) {
                    cujVar.e((gks) it4.next());
                }
                czc czcVar = (czc) cujVar.f13534c.l.k(acqVar2);
                if (czcVar != null) {
                    Iterator it5 = czcVar.f13803a.iterator();
                    while (it5.hasNext()) {
                        aq(cujVar, (abi) it5.next());
                    }
                }
                ArrayDeque arrayDeque2 = new ArrayDeque();
                arrayDeque2.push(cujVar);
                while (!arrayDeque2.isEmpty()) {
                    cuj cujVar2 = (cuj) arrayDeque2.pop();
                    fza fzaVar4 = cujVar2.f13534c;
                    vm[] vmVarArr = cujVar2.f13535d;
                    Iterator it6 = fzaVar4.ac.iterator();
                    while (it6.hasNext()) {
                        eek eekVar4 = (eek) it6.next();
                        if (eekVar4.ah != hay.PHI) {
                            for (gsh gshVar2 : eekVar4.aj) {
                                gshVar2.getClass();
                                if (gshVar2 instanceof gks) {
                                    gks gksVar3 = (gks) gshVar2;
                                    int i15 = gksVar3.f18327e;
                                    vm vmVar2 = vmVarArr[i15];
                                    if (vmVar2 == null) {
                                        hedVar.bu("Not initialized variable reg: " + i15 + ", insn: " + eekVar4 + ", block:" + fzaVar4);
                                        vmVar2 = cujVar2.e(gksVar3);
                                    }
                                    vmVar2.r(gksVar3);
                                }
                            }
                        }
                        gks gksVar4 = eekVar4.ai;
                        if (gksVar4 != null) {
                            cujVar2.e(gksVar4);
                        }
                    }
                    Iterator it7 = fzaVar4.f17684d.iterator();
                    while (it7.hasNext()) {
                        czc czcVar2 = (czc) ((fza) it7.next()).l.k(acqVar2);
                        if (czcVar2 != null) {
                            Iterator it8 = czcVar2.f13803a.iterator();
                            while (it8.hasNext()) {
                                aq(cujVar2, (abi) it8.next());
                            }
                        }
                    }
                    Iterator it9 = cujVar2.f13534c.f17686f.iterator();
                    while (it9.hasNext()) {
                        arrayDeque2.push(new cuj(cujVar2.f13533b, (fza) it9.next(), (vm[]) Arrays.copyOf(vmVarArr, vmVarArr.length), cujVar2.f13532a));
                    }
                }
                for (fza fzaVar5 : hedVar.ak) {
                    czc czcVar3 = (czc) fzaVar5.l.k(acqVar2);
                    if (czcVar3 != null && (engVar = (eng) fzaVar5.l.k(acqVar)) != null) {
                        Iterator it10 = czcVar3.f13803a.iterator();
                        while (it10.hasNext()) {
                            abi abiVar = (abi) it10.next();
                            int size5 = abiVar.aj.size();
                            int i16 = 0;
                            while (i16 < size5) {
                                gks _ay = abiVar._ay(i16);
                                eek aa2 = _ay.aa();
                                if (aa2 != null && aa2.ai != null) {
                                    if (aa2.l.g(csv.TRY_LEAVE)) {
                                        acq acqVar3 = acq.al;
                                        coe coeVar = (coe) aa2.l.k(acqVar3);
                                        if (coeVar == null) {
                                            fza o = ffb.o(hedVar, aa2, hedVar.ak);
                                            coeVar = o == null ? null : (coe) o.l.k(acqVar3);
                                        }
                                        if (coeVar != null && coeVar.f13218a.contains(engVar.f15859a)) {
                                            abiVar._ax(_ay);
                                            size5--;
                                        }
                                    }
                                }
                                i16++;
                            }
                            if (abiVar.aj.size() == 0) {
                                throw new gck("PHI empty after try-catch fix!");
                            }
                        }
                    }
                }
                for (fza fzaVar6 : hedVar.ak) {
                    czc czcVar4 = (czc) fzaVar6.l.k(acqVar2);
                    if (czcVar4 != null) {
                        Iterator it11 = czcVar4.f13803a.iterator();
                        while (it11.hasNext()) {
                            abi abiVar2 = (abi) it11.next();
                            for (int i17 = 0; i17 < abiVar2.aj.size(); i17++) {
                                gks _ay2 = abiVar2._ay(i17);
                                eek aa3 = _ay2.aa();
                                if (aa3 != null) {
                                    if (aa3.l.g(csv.REMOVE)) {
                                        abiVar2._ax(_ay2);
                                        fpd.k(hedVar, aa3);
                                        fpd.p(hedVar, fzaVar6, aa3);
                                    }
                                }
                            }
                        }
                    }
                }
                gks gksVar5 = hedVar.z;
                if (gksVar5 != null) {
                    al(gksVar5);
                    Iterable.b.forEach(gksVar5.f18326a.f20178d, new esk(24));
                }
                int size6 = hedVar.at.size() * 2;
                int i18 = 0;
                while (true) {
                    ArrayList arrayList2 = new ArrayList();
                    boolean z3 = false;
                    for (vm vmVar3 : hedVar.at) {
                        if (vmVar3.f20178d.size() == 0 && (eekVar2 = vmVar3.f20177c.ae) != null && eekVar2.ah == hay.PHI) {
                            arrayList2.add((abi) eekVar2);
                            z3 = true;
                        }
                    }
                    Iterator it12 = hedVar.ak.iterator();
                    while (it12.hasNext()) {
                        fza fzaVar7 = (fza) it12.next();
                        czc czcVar5 = (czc) fzaVar7.l.k(acqVar2);
                        if (czcVar5 != null) {
                            Iterator it13 = czcVar5.f13803a.iterator();
                            while (it13.hasNext()) {
                                abi abiVar3 = (abi) it13.next();
                                List list3 = abiVar3.aj;
                                if (list3.size() == 0) {
                                    Iterator it14 = abiVar3.ai.f18326a.f20178d.iterator();
                                    while (it14.hasNext()) {
                                        gks gksVar6 = (gks) it14.next();
                                        eek eekVar5 = gksVar6.ae;
                                        if (eekVar5 != null && eekVar5.ah == hay.PHI) {
                                            abiVar3._ax(gksVar6);
                                        }
                                    }
                                    fpd.k(hedVar, abiVar3);
                                    fpd.p(hedVar, fzaVar7, abiVar3);
                                    arrayList = arrayList2;
                                    it = it12;
                                } else {
                                    if (list3.size() != 1) {
                                        vm vmVar4 = null;
                                        for (int i19 = 0; i19 < list3.size(); i19++) {
                                            gks _ay3 = abiVar3._ay(i19);
                                            if (vmVar4 != null) {
                                                if (vmVar4 != _ay3.f18326a) {
                                                    break;
                                                }
                                            } else {
                                                vmVar4 = _ay3.f18326a;
                                            }
                                        }
                                    }
                                    gks _ay4 = abiVar3._ay(0);
                                    ArrayList arrayList3 = fzaVar7.ac;
                                    int a2 = con.a(arrayList3, abiVar3);
                                    if (a2 != -1) {
                                        vm vmVar5 = abiVar3.ai.f18326a;
                                        vm vmVar6 = _ay4.f18326a;
                                        if (vmVar6 != null) {
                                            vmVar6.v(_ay4);
                                            vmVar6.j(abiVar3);
                                        }
                                        vm vmVar7 = abiVar3.ai.f18326a;
                                        if (vmVar7 == null) {
                                            arrayList = arrayList2;
                                        } else {
                                            arrayList = arrayList2;
                                            gks _ay5 = abiVar3._ay(0);
                                            if (_ay5.f18326a != null) {
                                                Iterator it15 = new ArrayList(vmVar7.f20178d).iterator();
                                                while (it15.hasNext()) {
                                                    gks gksVar7 = (gks) it15.next();
                                                    Iterator it16 = it15;
                                                    eek eekVar6 = gksVar7.ae;
                                                    if (eekVar6 != null && eekVar6 != abiVar3) {
                                                        it = it12;
                                                        if (gksVar7.f18327e != _ay5.f18327e) {
                                                            vmVar5.j(abiVar3);
                                                            eek eekVar7 = new eek(hay.MOVE, 1);
                                                            eekVar7.w(csv.SYNTHETIC);
                                                            eekVar7.ax(abiVar3.ai);
                                                            eekVar7._an(_ay4);
                                                            _ay4.f18326a.r(_ay4);
                                                            arrayList3.set(a2, eekVar7);
                                                            break;
                                                        }
                                                        gksVar7.f18326a.v(gksVar7);
                                                        _ay5.f18326a.r(gksVar7);
                                                        it15 = it16;
                                                        it12 = it;
                                                    }
                                                }
                                                it = it12;
                                                if (fzaVar7.l.j(acqVar) && (aa = _ay5.aa()) != null && !aa.as()) {
                                                    aa.w(csv.DONT_INLINE);
                                                }
                                                fpd.k(hedVar, abiVar3);
                                                arrayList3.remove(a2);
                                            }
                                        }
                                        it = it12;
                                        vmVar5.j(abiVar3);
                                        eek eekVar72 = new eek(hay.MOVE, 1);
                                        eekVar72.w(csv.SYNTHETIC);
                                        eekVar72.ax(abiVar3.ai);
                                        eekVar72._an(_ay4);
                                        _ay4.f18326a.r(_ay4);
                                        arrayList3.set(a2, eekVar72);
                                        break;
                                    }
                                    arrayList = arrayList2;
                                    it = it12;
                                    arrayList2 = arrayList;
                                    it12 = it;
                                }
                                it13.remove();
                                z3 = true;
                                arrayList2 = arrayList;
                                it12 = it;
                            }
                        }
                    }
                    ArrayList arrayList4 = arrayList2;
                    for (fza fzaVar8 : hedVar.ak) {
                        czc czcVar6 = (czc) fzaVar8.l.k(acqVar2);
                        if (czcVar6 != null) {
                            ArrayList arrayList5 = czcVar6.f13803a;
                            Iterator it17 = arrayList4.iterator();
                            while (it17.hasNext()) {
                                abi abiVar4 = (abi) it17.next();
                                if (arrayList5.remove(abiVar4)) {
                                    for (gsh gshVar3 : abiVar4.aj) {
                                        if (gshVar3 != null && (vmVar = ((gks) gshVar3).f18326a) != null) {
                                            vmVar.j(abiVar4);
                                        }
                                    }
                                    fpd.k(hedVar, abiVar4);
                                    fpd.p(hedVar, fzaVar8, abiVar4);
                                }
                            }
                            if (arrayList5.isEmpty()) {
                                fzaVar8.u(acqVar2);
                            }
                        }
                    }
                    arrayList4.clear();
                    if (!z3) {
                        Iterator it18 = hedVar.ak.iterator();
                        while (it18.hasNext()) {
                            Collection.b.removeIf(((fza) it18.next()).ac, new brj(19));
                        }
                        Iterator it19 = hedVar.at.iterator();
                        while (it19.hasNext()) {
                            vm vmVar8 = (vm) it19.next();
                            if (vmVar8.f20178d.size() == 0 && (eekVar = vmVar8.f20177c.ae) != null && eekVar.ah == hay.INVOKE) {
                                eekVar.ai = null;
                                it19.remove();
                            }
                        }
                        return;
                    }
                    int i20 = i18 + 1;
                    if (i18 > size6) {
                        throw new gck("Phi nodes fix limit reached!");
                    }
                    i18 = i20;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0146, code lost:
    
        if (r2.size() >= r12) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014a, code lost:
    
        r5 = new java.util.ArrayList(r2.values());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x015b, code lost:
    
        if (r7.size() >= r5.size()) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x015f, code lost:
    
        r8 = java.util.Collections.newSetFromMap(new java.util.IdentityHashMap());
        r8.addAll(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x016f, code lost:
    
        if (r8.containsAll(r5) != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0173, code lost:
    
        r5 = r5.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x017c, code lost:
    
        if (r5.hasNext() == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x017e, code lost:
    
        r8 = ((g.eek) r5.next()).j(2);
        r8.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x018f, code lost:
    
        if (g.ack.m(r8, r15) == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0193, code lost:
    
        r5 = new g.fs(r13, r14);
        r5.ax(r15.b());
        r5.s(r3);
        r5.br(r3);
        r5.au(r3);
        r5.ag = r3.ag;
        r8 = r2.entrySet().iterator();
        r23 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01bf, code lost:
    
        if (r8.hasNext() == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01c1, code lost:
    
        r15 = (java.util.Map.Entry) r8.next();
        r27 = ((java.lang.Long) r15.getKey()).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01d3, code lost:
    
        if (r27 == r23) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01d5, code lost:
    
        r23 = r23 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01d9, code lost:
    
        if (r23 >= r27) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01db, code lost:
    
        r5._an(g.gsh.ag(0, r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01e3, code lost:
    
        r9 = (g.eek) r15.getValue();
        r10 = r9.j(2);
        r10.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01f3, code lost:
    
        if ((r10 instanceof g.ekh) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01f5, code lost:
    
        r15 = r11.bo((g.ekh) r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01fc, code lost:
    
        if (r15 == null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01fe, code lost:
    
        r19 = r8;
        r29 = r11;
        r8 = g.gsh.aj(new g.adz(g.hay.SGET, r15.c(), 0));
        g.dxg.e(r15, r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x021f, code lost:
    
        r5._an(r8);
        r1.add(r9);
        g.fpd.k(r31, r9);
        r8 = r19;
        r23 = r27;
        r11 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0216, code lost:
    
        r19 = r8;
        r29 = r11;
        r8 = r10.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0231, code lost:
    
        r23 = r23 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0236, code lost:
    
        if (r23 >= r13) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0238, code lost:
    
        r5._an(g.gsh.ag(0, r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0240, code lost:
    
        r1.add(r3);
        g.fpd.k(r31, r3);
        r2 = g.con.a(r7, (g.eek) r2.get(r2.lastKey()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0254, code lost:
    
        if (r4 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0256, code lost:
    
        r3 = g.con.a(r7, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x025b, code lost:
    
        if (r3 == (-1)) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x025d, code lost:
    
        r2 = java.lang.Math.min(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0261, code lost:
    
        r7.add(r2, r5);
        r15 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void bg(hed hedVar) {
        int i;
        Iterator it;
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList;
        dem demVar;
        if (!ddx.b(hedVar, fuu.NEW_ARRAY)) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        int i6 = 0;
        int i7 = 0;
        while (true) {
            Iterator it2 = hedVar.ak.iterator();
            boolean z2 = false;
            while (it2.hasNext()) {
                fza fzaVar = (fza) it2.next();
                ArrayList arrayList3 = fzaVar.ac;
                int size = arrayList3.size();
                int i8 = 0;
                while (i8 < size) {
                    eek eekVar = (eek) arrayList3.get(i8);
                    if (eekVar.ah == hay.NEW_ARRAY) {
                        if (!eekVar.l.g(csv.REMOVE)) {
                            dem demVar2 = (dem) eekVar;
                            cci cciVar = hedVar.am;
                            Object f2 = ack.f(cciVar.f12631ab, demVar2.j(i6));
                            if ((f2 instanceof ekh) && (i4 = (int) ((ekh) f2).f15702a) != 0) {
                                cwx cwxVar = demVar2.f14061a;
                                cwx k = cwxVar.k();
                                if (cwxVar.i() == 1) {
                                    k.getClass();
                                    if (k instanceof cff) {
                                        i5 = i4 / 2;
                                        gks gksVar = demVar2.ai;
                                        arrayList = gksVar.f18326a.f20178d;
                                        if (arrayList.size() >= i5) {
                                            Iterator it3 = arrayList.iterator();
                                            while (it3.hasNext()) {
                                                Iterator it4 = it3;
                                                eek eekVar2 = ((gks) it3.next()).ae;
                                                if (eekVar2 != null) {
                                                    it = it2;
                                                    if (eekVar2.ah == hay.APUT) {
                                                        TreeMap treeMap = new TreeMap();
                                                        Iterator it5 = arrayList.iterator();
                                                        eek eekVar3 = null;
                                                        while (true) {
                                                            if (!it5.hasNext()) {
                                                                i = i7;
                                                                z = z2;
                                                                i2 = size;
                                                                i3 = i8;
                                                                demVar = demVar2;
                                                                break;
                                                            }
                                                            z = z2;
                                                            eek eekVar4 = ((gks) it5.next()).ae;
                                                            if (eekVar4 != null) {
                                                                i2 = size;
                                                                i3 = i8;
                                                                if (eekVar4.ah == hay.APUT && gksVar.x(eekVar4.j(0))) {
                                                                    i = i7;
                                                                    Object f3 = ack.f(cciVar.f12631ab, eekVar4.j(1));
                                                                    if (!(f3 instanceof ekh)) {
                                                                        break;
                                                                    }
                                                                    long j = ((ekh) f3).f15702a;
                                                                    demVar = demVar2;
                                                                    if (j >= i4) {
                                                                        break;
                                                                    }
                                                                    if (treeMap.containsKey(Long.valueOf(j))) {
                                                                        break;
                                                                    }
                                                                    treeMap.put(Long.valueOf(j), eekVar4);
                                                                    demVar2 = demVar;
                                                                    i7 = i;
                                                                    z2 = z;
                                                                    size = i2;
                                                                    i8 = i3;
                                                                } else {
                                                                    i = i7;
                                                                }
                                                            } else {
                                                                i = i7;
                                                                i2 = size;
                                                                i3 = i8;
                                                            }
                                                            demVar = demVar2;
                                                            if (eekVar3 == null) {
                                                                demVar2 = demVar;
                                                                eekVar3 = eekVar4;
                                                                i7 = i;
                                                                z2 = z;
                                                                size = i2;
                                                                i8 = i3;
                                                            }
                                                            demVar2 = demVar;
                                                            i7 = i;
                                                            z2 = z;
                                                            size = i2;
                                                            i8 = i3;
                                                        }
                                                        boolean z3 = false;
                                                        z2 = z | z3;
                                                        i8 = i3 + 1;
                                                        i7 = i;
                                                        it2 = it;
                                                        size = i2;
                                                        i6 = 0;
                                                    }
                                                } else {
                                                    it = it2;
                                                }
                                                demVar2 = demVar2;
                                                i7 = i7;
                                                it2 = it;
                                                it3 = it4;
                                                z2 = z2;
                                                size = size;
                                                i8 = i8;
                                                cciVar = cciVar;
                                            }
                                        }
                                    }
                                }
                                i5 = i4;
                                gks gksVar2 = demVar2.ai;
                                arrayList = gksVar2.f18326a.f20178d;
                                if (arrayList.size() >= i5) {
                                }
                            }
                        }
                    }
                    i = i7;
                    it = it2;
                    z = z2;
                    i2 = size;
                    i3 = i8;
                    boolean z32 = false;
                    z2 = z | z32;
                    i8 = i3 + 1;
                    i7 = i;
                    it2 = it;
                    size = i2;
                    i6 = 0;
                }
                int i9 = i7;
                Iterator it6 = it2;
                boolean z4 = z2;
                if (!arrayList2.isEmpty()) {
                    ArrayList arrayList4 = fzaVar.ac;
                    Objects.requireNonNull(arrayList4);
                    fpd.n(hedVar, arrayList2);
                    fpd.s(arrayList4, arrayList2);
                    arrayList2.clear();
                }
                i7 = i9;
                it2 = it6;
                z2 = z4;
                i6 = 0;
            }
            int i10 = i7;
            if (!z2) {
                return;
            }
            av(hedVar);
            int i11 = i10 + 1;
            if (i10 > 100) {
                hedVar.bu("Reached limit for ReplaceNewArray iterations");
                return;
            } else {
                i7 = i11;
                i6 = 0;
            }
        }
    }

    private final void bh(dwg dwgVar) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:197:0x034e, code lost:
    
        if (((g.dkd) r6).f14300a.equals(r17.am.au()) != false) goto L155;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void bi(hed hedVar) {
        List list;
        ftm ftmVar;
        eys eysVar;
        fza fzaVar;
        acq acqVar = acq.m;
        if (hedVar.ar || hedVar.ak.isEmpty()) {
            return;
        }
        bei beiVar = new bei(hedVar);
        hedVar.ao = beiVar.h(hedVar.aj);
        int i = 0;
        if (!hedVar.ap.isEmpty() && !hedVar.ap.isEmpty()) {
            List e2 = hedVar.l.e(acqVar);
            Iterator it = e2.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                ftmVar = beiVar.f11374e;
                if (!hasNext) {
                    break;
                }
                List<aea> list2 = ((guv) it.next()).i;
                ArrayList arrayList = new ArrayList(list2.size());
                HashSet hashSet = new HashSet();
                for (aea aeaVar : list2) {
                    fza fzaVar2 = aeaVar.i;
                    if (fzaVar2 != null) {
                        arrayList.add(fzaVar2);
                        hashSet.add(ffb.be(fzaVar2));
                    } else {
                        hedVar.bw("No exception handler block: " + aeaVar);
                    }
                }
                HashSet hashSet2 = new HashSet();
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    fza fzaVar3 = (fza) it2.next();
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        fza fzaVar4 = (fza) it3.next();
                        if (!fzaVar4.l.g(csv.REMOVE)) {
                            List list3 = fzaVar3.f17684d;
                            if (list3.isEmpty()) {
                                hedVar.bw("No successors for splitter: " + fzaVar3);
                            } else {
                                fza fzaVar5 = (fza) list3.get(0);
                                fza z = ffb.z(hedVar, fzaVar5, fzaVar4);
                                if (z != null && z != fzaVar5 && z != fzaVar4) {
                                    hashSet2.add(z);
                                }
                            }
                        }
                    }
                }
                for (aea aeaVar2 : list2) {
                    fza fzaVar6 = aeaVar2.i;
                    if (fzaVar6 != null) {
                        ftmVar.f17388a.clear();
                        ftmVar.f17389b = new bnp();
                        if (aeaVar2.f10079b) {
                            fzaVar = ffb.be(fzaVar6);
                        } else {
                            Iterator it4 = hashSet2.iterator();
                            while (it4.hasNext()) {
                                ftmVar.c((fza) it4.next());
                            }
                            fzaVar = fzaVar6;
                        }
                        if (!fzaVar.l.g(csv.REMOVE)) {
                            ArrayList arrayList2 = new ArrayList();
                            fza bu = ffb.bu(hedVar, aeaVar2);
                            if (bu != null) {
                                arrayList2.add(bu);
                            } else {
                                arrayList2.addAll(ffb.bj(hedVar, fzaVar.i));
                            }
                            boolean z2 = hedVar.bi(fzaVar6) != null;
                            Iterator it5 = arrayList2.iterator();
                            while (it5.hasNext()) {
                                fza fzaVar7 = (fza) it5.next();
                                if (!z2 || ffb.ac(fzaVar6, fzaVar7)) {
                                    if (gs.az(fzaVar7, hedVar.ao)) {
                                        ftmVar.c(fzaVar7);
                                    }
                                }
                            }
                            aeaVar2.f10081d = beiVar.h(fzaVar6);
                            eng engVar = (eng) fzaVar6.l.k(acq.bh);
                            if (engVar == null) {
                                hedVar.bs("Missing exception handler attribute for start block: " + fzaVar6);
                            } else {
                                aeaVar2.f10081d.m(engVar);
                            }
                        }
                    }
                }
            }
            HashSet hashSet3 = new HashSet();
            gs.o(hedVar.ao, hashSet3);
            HashSet hashSet4 = new HashSet();
            Iterator it6 = e2.iterator();
            while (it6.hasNext()) {
                Iterator it7 = ((guv) it6.next()).i.iterator();
                while (it7.hasNext()) {
                    eys eysVar2 = ((aea) it7.next()).f10081d;
                    if (eysVar2 != null) {
                        cih v = gs.v(eysVar2);
                        if (v instanceof fza) {
                            hashSet4.addAll(((fza) v).f17684d);
                        }
                        gs.o(eysVar2, hashSet3);
                    }
                }
            }
            hashSet4.removeAll(hashSet3);
            if (hashSet4.isEmpty()) {
                eysVar = null;
            } else {
                eysVar = new eys(hedVar.ao);
                Iterator it8 = hashSet4.iterator();
                while (it8.hasNext()) {
                    cih cihVar = (cih) it8.next();
                    if (cihVar instanceof fza) {
                        ftmVar.f17388a.clear();
                        ftmVar.f17389b = new bnp();
                        ftmVar.e(eysVar);
                        eysVar.h(beiVar.h((fza) cihVar));
                    }
                }
            }
            if (eysVar != null) {
                hedVar.ao.h(eysVar);
            }
        }
        if (Collection.b.stream(hedVar.ak).flatMap(new gpn(22)).anyMatch(new brj(13))) {
            av(hedVar);
        }
        if (!hedVar.ar && !hedVar.ap.isEmpty()) {
            List e3 = hedVar.l.e(acqVar);
            if (e3.isEmpty()) {
                list = Collections.EMPTY_LIST;
            } else {
                ArrayList arrayList3 = new ArrayList(e3);
                List.b.sort(arrayList3, new fdq(3));
                list = arrayList3;
            }
            if (!list.isEmpty()) {
                aoi aoiVar = new aoi(i, list);
                int size = hedVar.ak.size() * 5;
                int i2 = 0;
                while (true) {
                    boolean t = buj.t(hedVar, aoiVar, hedVar.ao);
                    if (!t) {
                        Iterator it9 = hedVar.ap.iterator();
                        while (it9.hasNext() && !(t = buj.t(hedVar, aoiVar, ((aea) it9.next()).f10081d))) {
                        }
                    }
                    int i3 = i2 + 1;
                    if (i2 > size) {
                        StringBuilder z3 = tn.z(size, "Iterative traversal limit reached: limit: ", ", visitor: ");
                        z3.append(aoi.class.getName());
                        z3.append(", blocks count: ");
                        z3.append(hedVar.ak.size());
                        throw new gck(z3.toString());
                    }
                    if (!t) {
                        break;
                    } else {
                        i2 = i3;
                    }
                }
            }
        }
        buj.bb(hedVar, enz.f15880b, hedVar.ao);
        s(hedVar);
        if ((hedVar.ax.f18566ab & 131104) != 0) {
            int i4 = ft.f17361a;
            eys eysVar3 = hedVar.ao;
            ArrayList arrayList4 = eysVar3.f16387g;
            if (arrayList4.isEmpty() || !(arrayList4.get(0) instanceof glw)) {
                return;
            }
            glw glwVar = (glw) arrayList4.get(0);
            eek eekVar = glwVar.h;
            gsh j = eekVar.j(0);
            if (hedVar.ax.be()) {
                j.getClass();
                boolean z4 = j instanceof cly;
                if (z4 && j.am()) {
                    eek eekVar2 = z4 ? ((cly) j).f13104a : null;
                    if (eekVar2.ah == hay.CONST_CLASS) {
                    }
                }
                hedVar.bu("In static synchronized method top region not synchronized by class const: " + j);
                return;
            }
            if (!j.al()) {
                hedVar.bu("In synchronized method top region not synchronized by 'this': " + j);
                return;
            }
            eysVar3.f16387g.set(0, glwVar.f18375g);
            fpd.l(hedVar, eekVar);
            Iterator it10 = glwVar.i.iterator();
            while (it10.hasNext()) {
                fpd.l(hedVar, (eek) it10.next());
            }
            s(hedVar);
        }
    }

    public static boolean e(bzm bzmVar, gsh gshVar, gsh gshVar2, IntFunction intFunction) {
        ayi ayiVar = (ayi) bzmVar.l.k(acq.be);
        if (ayiVar == null || !bzmVar.f(gshVar, gshVar2)) {
            return false;
        }
        final HashMap hashMap = new HashMap();
        int length = bzmVar.ad().f12358c.length;
        for (int i = 0; i < length; i++) {
            Object af = bzmVar.af(i);
            Object apply = intFunction.apply(i);
            bzmVar.ae(i, apply);
            hashMap.put(af, apply);
        }
        Iterator it = ((eln) ayiVar.f11057a).i.iterator();
        while (it.hasNext()) {
            List.b.replaceAll(((adk) it.next()).f10047a, new UnaryOperator() { // from class: g.afy
                public final /* synthetic */ Function andThen(Function function) {
                    return j$.util.function.k.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object obj2 = hashMap.get(obj);
                    String str = evh.f16225a;
                    return obj2 == null ? obj : obj2;
                }

                public final /* synthetic */ Function compose(Function function) {
                    return j$.util.function.k.$default$compose(this, function);
                }
            });
        }
        return true;
    }

    public static void g(hed hedVar, eek[] eekVarArr, int i, int i2) {
        try {
            eekVarArr[i2].o(acq.p, new aef(i, i2));
        } catch (Exception e2) {
            String str = "Failed to set jump: " + ack.d(i) + " -> " + ack.d(i2);
            hedVar.getClass();
            dcj.d(hedVar, str, e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.util.List] */
    public static fmz i(hed hedVar) {
        java.util.List list = hedVar.ak;
        ?? arrayList = new ArrayList(2);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ArrayList arrayList2 = ((fza) it.next()).ac;
            int size = arrayList2.size();
            if (size != 0) {
                if (arrayList.size() + size > 2) {
                    arrayList = Collections.EMPTY_LIST;
                    break;
                }
                arrayList.addAll(arrayList2);
            }
        }
        int size2 = arrayList.size();
        if (size2 == 0) {
            return null;
        }
        if (size2 == 1) {
            eek eekVar = (eek) arrayList.get(0);
            if (eekVar.ah != hay.RETURN || eekVar.aj.size() != 1) {
                return ap(hedVar, eekVar, false);
            }
            gsh j = eekVar.j(0);
            j.getClass();
            if (!(j instanceof cly)) {
                return null;
            }
            eek _o = ((cly) j).f13104a._o();
            _o.v(csv.WRAPPED);
            return ap(hedVar, _o, true);
        }
        if (size2 != 2 || ((eek) arrayList.get(1)).ah != hay.RETURN) {
            return null;
        }
        eek eekVar2 = (eek) arrayList.get(0);
        eek eekVar3 = (eek) arrayList.get(1);
        if (eekVar3.aj.size() != 0) {
            java.util.List az = hedVar.az();
            int i = xf.f20278a[eekVar2.ah.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5 || !eekVar3.j(0).aq(eekVar2.ai)) {
                                return null;
                            }
                            java.util.List az2 = hedVar.az();
                            java.util.List list2 = eekVar2.aj;
                            if (az2 != list2) {
                                if (az2.size() != list2.size()) {
                                    return null;
                                }
                                Iterator it2 = az2.iterator();
                                Iterator it3 = list2.iterator();
                                while (it2.hasNext() && it3.hasNext()) {
                                    Object next = it2.next();
                                    if (!((gsh) it3.next()).aq((gks) next)) {
                                        return null;
                                    }
                                }
                                if (it2.hasNext() || it3.hasNext()) {
                                    return null;
                                }
                            }
                        } else if (az.size() != 1 || !eekVar3.j(0).aq((gks) az.get(0)) || !eekVar2.j(0).aq((gks) az.get(0))) {
                            return null;
                        }
                    } else if (az.size() != 2 || !eekVar3.j(0).aq((gks) az.get(1)) || !eekVar2.j(0).aq((gks) az.get(1)) || !eekVar2.j(1).aq((gks) az.get(0))) {
                        return null;
                    }
                } else if (!az.isEmpty() || !eekVar3.j(0).aq(eekVar2.ai)) {
                    return null;
                }
            } else if (az.size() != 1 || !eekVar3.j(0).aq(eekVar2.ai) || !eekVar2.j(0).aq((gks) az.get(0))) {
                return null;
            }
        }
        return ap(hedVar, eekVar2, false);
    }

    public static void l(cci cciVar) {
        Iterator it = cciVar.i.iterator();
        while (it.hasNext()) {
            l((cci) it.next());
        }
        cciVar.av();
        java.util.List list = cciVar.aj;
        java.util.List list2 = cciVar.i;
        cciVar.av();
        int i = 11;
        int orElse = Stream.a.of(list, list2, cciVar.ag).flatMap(new gpn(5)).filter(new brj(10)).filter(new brj(i)).mapToInt(new dbm(i)).min().orElse(0);
        if (orElse != 0) {
            cciVar.bp = orElse - 1;
        }
    }

    public static boolean m(hed hedVar, gks gksVar, eek eekVar, fza fzaVar) {
        gks gksVar2 = (gks) gksVar.f18326a.f20178d.get(0);
        eek eekVar2 = gksVar2.ae;
        if (eekVar2 != null) {
            if (!eekVar2.l.g(csv.DONT_GENERATE) && fpd.p(hedVar, fzaVar, eekVar)) {
                eekVar2.f(gksVar2, gsh.ah(eekVar));
                return true;
            }
        }
        return false;
    }

    public static void n(cci cciVar, LinkedHashSet linkedHashSet, HashSet hashSet) {
        dwg dwgVar = cciVar.f12631ab;
        cwx cwxVar = cciVar.af;
        int aj = cwxVar != null ? aj(dwgVar, linkedHashSet, hashSet, cwxVar) : 0;
        Iterator it = cciVar.j.iterator();
        while (it.hasNext()) {
            aj += aj(dwgVar, linkedHashSet, hashSet, (cwx) it.next());
        }
        if (aj == 0) {
            hashSet.add(cciVar.au().l());
        }
    }

    public static boolean o(fza fzaVar) {
        return fzaVar.ac.size() == 1 && ((eek) fzaVar.ac.get(0)).ah == hay.IF;
    }

    public static boolean p(cci cciVar) {
        if (!cciVar.f12632d.bb()) {
            return false;
        }
        cciVar.av();
        if (!cciVar.ag.isEmpty()) {
            return false;
        }
        cciVar.av();
        return cciVar.aj.isEmpty() && cciVar.i.isEmpty();
    }

    public static cwx q(hed hedVar, ers ersVar) {
        cwx ba = cwx.ba(ersVar.getType());
        String k = ersVar.k();
        if (k != null) {
            try {
                cwx h = new epz(k).h();
                hedVar.am.f12631ab.o.getClass();
                emr.q(hedVar, h);
                if (x(hedVar, ba, h)) {
                    return h;
                }
            } catch (Exception e2) {
                hedVar.bt("Can't parse signature for local variable: ".concat(k), e2);
                return ba;
            }
        }
        return ba;
    }

    public static void r(hed hedVar) {
        for (vm vmVar : hedVar.at) {
            boolean i = vmVar.i();
            ffr ffrVar = vmVar.h;
            if (!i) {
                gnh gnhVar = cwx.ad;
                ffrVar.f16721f = gnhVar;
                ejb ejbVar = vmVar.f20176b;
                if (ejbVar != null) {
                    ejbVar.f15632e = gnhVar;
                }
            }
            ((LinkedHashSet) ffrVar.f16719c).clear();
            vmVar.f20176b = null;
        }
        ah(hedVar);
    }

    public static void s(hed hedVar) {
        if (hedVar.ar || hedVar.ak.isEmpty()) {
            return;
        }
        buj.bb(hedVar, f15189c, hedVar.ao);
    }

    public static fpr t(hed hedVar, java.util.List list, HashSet hashSet, boolean z) {
        SortedSet treeSet;
        java.util.List subList;
        fpr fprVar;
        SortedSet sortedSet;
        acq acqVar = acq.h;
        boolean anyMatch = Collection.b.stream(list).anyMatch(new brj(9));
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.add(hedVar);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ebp ebpVar = (ebp) it.next();
            if (ebpVar instanceof hed) {
                arrayList.add((hed) ebpVar);
            }
        }
        if (z) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    treeSet = null;
                    break;
                }
                fpr fprVar2 = (fpr) ((hed) it2.next()).l.k(acqVar);
                if (fprVar2 != null) {
                    treeSet = fprVar2.f17210f;
                    break;
                }
            }
            if (treeSet != null) {
                treeSet.addAll(arrayList);
            } else {
                treeSet = new TreeSet(arrayList);
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                fpr fprVar3 = (fpr) ((hed) it3.next()).l.k(acqVar);
                if (fprVar3 != null && treeSet != (sortedSet = fprVar3.f17210f)) {
                    treeSet.addAll(sortedSet);
                }
            }
        } else {
            treeSet = new TreeSet(arrayList);
        }
        Iterator it4 = arrayList.iterator();
        int i = 0;
        while (it4.hasNext()) {
            hed hedVar2 = (hed) it4.next();
            if (anyMatch) {
                hedVar2.w(csv.DONT_RENAME);
            }
            if (i == 0) {
                i = 1;
            } else if (!z || (fprVar = (fpr) hedVar2.l.k(acqVar)) == null) {
                String str = evh.f16225a;
                if (i == 0) {
                    subList = list;
                } else {
                    int size = list.size();
                    subList = i >= size ? Collections.EMPTY_LIST : list.subList(i, size);
                }
                hedVar2.m(new fpr(subList, treeSet, hashSet));
                i++;
            } else {
                fprVar.f17210f = treeSet;
            }
        }
        return new fpr(list, treeSet, hashSet);
    }

    public static void u(cci cciVar, ArrayList arrayList) {
        java.util.List<hcd> g2 = evh.g(arrayList, new fov(22));
        HashMap hashMap = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ej ejVar = (ej) it.next();
            adz adzVar = ejVar.f15622b;
            adzVar._be(new euy(adzVar.ah == hay.SPUT ? hay.SGET : hay.IGET, cciVar, hashMap, ejVar, 0));
        }
        if (!hashMap.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (hcd hcdVar : g2) {
                int indexOf = arrayList2.indexOf(hcdVar);
                java.util.List<hcd> list = (java.util.List) hashMap.get(hcdVar);
                if (list == null) {
                    if (indexOf == -1) {
                        arrayList2.add(hcdVar);
                    }
                } else if (indexOf == -1) {
                    for (hcd hcdVar2 : list) {
                        if (!arrayList2.contains(hcdVar2)) {
                            arrayList2.add(hcdVar2);
                        }
                    }
                    arrayList2.add(hcdVar);
                } else {
                    for (hcd hcdVar3 : list) {
                        int indexOf2 = arrayList2.indexOf(hcdVar3);
                        if (indexOf2 == -1) {
                            arrayList2.add(indexOf, hcdVar3);
                        } else if (indexOf2 > indexOf) {
                            arrayList2.remove(indexOf2);
                            arrayList2.add(indexOf, hcdVar3);
                        }
                    }
                }
            }
            g2 = arrayList2;
        }
        cciVar.av();
        java.util.List list2 = cciVar.ag;
        if (Collections.indexOfSubList(list2, g2) != -1) {
            return;
        }
        list2.removeAll(g2);
        list2.addAll(g2);
    }

    public static abi v(hed hedVar, fza fzaVar, int i) {
        czc czcVar = (czc) fzaVar.l.k(acq.am);
        if (czcVar == null) {
            czcVar = new czc();
            fzaVar.m(czcVar);
        }
        int size = fzaVar.f17685e.size();
        if (hedVar.aj == fzaVar) {
            gks gksVar = hedVar.z;
            if (gksVar == null || gksVar.f18327e != i) {
                Iterator it = hedVar.az().iterator();
                while (it.hasNext()) {
                    if (((gks) it.next()).f18327e == i) {
                    }
                }
            }
            size++;
            break;
        }
        abi abiVar = new abi(size);
        gnh gnhVar = cwx.ad;
        dba dbaVar = gsh.ad;
        abiVar.ax(new gks(i, gnhVar));
        abiVar.w(csv.DONT_INLINE);
        abiVar.w(csv.DONT_GENERATE);
        czcVar.f13803a.add(abiVar);
        abiVar.ag = fzaVar.y;
        return abiVar;
    }

    public static fmz w(hed hedVar) {
        fmz fmzVar;
        try {
            fmzVar = (fmz) hedVar.l.k(acq.f9987g);
        } catch (Exception e2) {
            hedVar.bt("Method inline analysis failed", e2);
        }
        if (fmzVar != null) {
            return fmzVar;
        }
        if (hedVar.l.g(csv.METHOD_CANDIDATE_FOR_INLINE)) {
            if (hedVar.ak == null) {
                return null;
            }
            fmz i = i(hedVar);
            if (i != null) {
                return i;
            }
        }
        fmz fmzVar2 = fmz.f17056a;
        hedVar.m(fmzVar2);
        return fmzVar2;
    }

    public static boolean x(hed hedVar, cwx cwxVar, cwx cwxVar2) {
        cwx e2 = cwxVar2.e();
        if (!e2.bm()) {
            return e2 instanceof btl;
        }
        if (cwxVar.e().l().equals(e2.l())) {
            return true;
        }
        hedVar.bu("Generic types in debug info not equals: " + cwxVar + " != " + cwxVar2);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
    
        if (r5.j(1) != r3) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
    
        r3.w(g.csv.DONT_INLINE_CONST);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
    
        if (r5.j(0) != r3) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        if (((g.hdc) r5).aa() != r3) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean y(vm vmVar) {
        ArrayList arrayList = vmVar.f20178d;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            int i = 0;
            while (true) {
                boolean z = true;
                if (it.hasNext()) {
                    gks gksVar = (gks) it.next();
                    eek eekVar = gksVar.ae;
                    if (eekVar != null) {
                        hay hayVar = eekVar.ah;
                        if (hayVar != hay.MOVE) {
                            switch (tz.f20083a[hayVar.ordinal()]) {
                                case 5:
                                    break;
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                    break;
                                case 14:
                                    break;
                                default:
                                    z = false;
                                    break;
                            }
                        } else {
                            z = y(eekVar.ai.f18326a);
                        }
                        if (z) {
                            i++;
                        }
                    }
                } else if (i == arrayList.size()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void z(eek eekVar) {
        hay hayVar = eekVar.ah;
        if (hayVar != hay.ARITH) {
            if (hayVar == hay.TERNARY) {
                eii eiiVar = ((dwk) eekVar).f14942a;
                ath athVar = eiiVar.f15587a;
                for (eii eiiVar2 : eiiVar.f15588b) {
                    if (eiiVar2.f15587a == athVar) {
                        eiiVar2.w(csv.DONT_WRAP);
                    }
                }
            }
            for (gsh gshVar : eekVar.aj) {
                gshVar.getClass();
                if (gshVar instanceof cly) {
                    z(((cly) gshVar).f13104a);
                }
            }
            return;
        }
        ame ameVar = (ame) eekVar;
        bvj bvjVar = ameVar.f10465d;
        if (bvjVar == bvj.ADD || bvjVar == bvj.MUL || bvjVar == bvj.AND || bvjVar == bvj.OR) {
            for (int i = 0; i < 2; i++) {
                gsh j = ameVar.j(i);
                j.getClass();
                if (j instanceof cly) {
                    eek eekVar2 = ((cly) j).f13104a;
                    if (eekVar2.ah == hay.ARITH && ((ame) eekVar2).f10465d == bvjVar) {
                        eekVar2.w(csv.DONT_WRAP);
                    }
                    z(eekVar2);
                }
            }
        }
    }

    public void bd(hed hedVar, ghr ghrVar) {
        java.util.List list;
        int[] iArr = fws.f17535b;
        dnd dndVar = ghrVar.f18175b;
        Object obj = ghrVar.f18176f;
        int i = iArr[dndVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                Map.b.forEach(((fpa) obj).f17181c, new jb(this, 2, hedVar));
                return;
            } else {
                if (i != 3) {
                    return;
                }
                Iterable.b.forEach((java.util.List) obj, new bwe(this, hedVar, 1));
                return;
            }
        }
        hcd ag = hedVar.am.f12631ab.ag(obj instanceof cba ? dsj.f(hedVar.am.f12631ab, (cba) obj) : (dsj) obj);
        if (ag != null) {
            synchronized (ag) {
                java.util.List list2 = ag.f19214d;
                if (list2 != null && !list2.isEmpty()) {
                    list2.add(hedVar);
                    list = list2;
                    ag.f19214d = list;
                }
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(hedVar);
                list = arrayList;
                ag.f19214d = list;
            }
        }
    }

    public void be(hed hedVar, ebh ebhVar) {
        ks ksVar = (ks) ebhVar.l.k(ao.q);
        if (ksVar == null) {
            return;
        }
        for (fpa fpaVar : ksVar.f19565a.values()) {
            if (fpaVar.f17179a != any.SYSTEM) {
                Iterator it = fpaVar.f17181c.entrySet().iterator();
                while (it.hasNext()) {
                    bd(hedVar, (ghr) ((Map.Entry) it.next()).getValue());
                }
            }
        }
    }

    @Override // g.pj
    public String f() {
        switch (this.f15190d) {
            case 13:
                return "DeobfuscatorVisitor";
            case 16:
                return "FinishTypeInference";
            case 21:
                return "OverrideMethodVisitor";
            case 22:
                return "PrepareForCodeGen";
            case 24:
                return "RegionMakerVisitor";
            case 28:
                return "SourceFileRename";
            default:
                return super.f();
        }
    }

    @Override // g.pj
    public void h(dwg dwgVar) {
        switch (this.f15190d) {
            case 2:
                if (dwgVar.i.an && dwgVar.ae(ve.h(dwgVar, cwx.bf("android.R"))) == null) {
                    Map.b.forEach(dqf.f14634a, new jb(dwgVar, 0, dwgVar.f14934f));
                    break;
                }
                break;
            case 13:
                dwgVar.i.getClass();
                break;
            case 15:
                if (dwgVar.i.o == dyx.JSON) {
                    atj.c(dwgVar);
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0151, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0308, code lost:
    
        if (r0 != false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x032b, code lost:
    
        if (r0.get(0) == r4) goto L204;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x039d  */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void j(hed hedVar) {
        java.util.List<fza> list;
        int i;
        hay hayVar;
        Iterator it;
        cci cciVar;
        ArrayList arrayList;
        int i2;
        boolean z;
        eew eewVar;
        boolean z2;
        gks gksVar;
        Iterator it2;
        hed bf;
        eek eekVar;
        HashMap hashMap;
        final hcd[] hcdVarArr;
        fza o;
        boolean z3;
        boolean y;
        eek eekVar2;
        eek eekVar3;
        int i3 = 2;
        hcd[] hcdVarArr2 = null;
        r4 = null;
        eew eewVar2 = null;
        int i4 = 0;
        int i5 = 1;
        switch (this.f15190d) {
            case 0:
                s(hedVar);
                return;
            case 1:
                if (hedVar.ar) {
                    return;
                }
                af(hedVar);
                return;
            case 2:
            case 4:
            case 7:
            case 9:
            case 13:
            case 14:
            case 21:
            default:
                return;
            case 3:
                if (hedVar.ar || (list = hedVar.ak) == null) {
                    return;
                }
                for (fza fzaVar : list) {
                    java.util.List list2 = fzaVar.f17685e;
                    ArrayList arrayList2 = fzaVar.ac;
                    if (list2.size() == 1 && fzaVar.z.size() == 1) {
                        fza fzaVar2 = (fza) fzaVar.f17685e.get(0);
                        fza fzaVar3 = (fza) fzaVar.z.get(0);
                        if (o(fzaVar2) && o(fzaVar3)) {
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                                eek eekVar4 = (eek) it3.next();
                                if (eekVar4.ah == hay.MOVE && (eekVar4.j(0) instanceof gks)) {
                                    gks gksVar2 = (gks) eekVar4.j(0);
                                    gks gksVar3 = eekVar4.ai;
                                    Iterator it4 = gksVar3.f18326a.f20178d.iterator();
                                    while (it4.hasNext()) {
                                        ffb.af(fzaVar3, ((gks) it4.next()).ae);
                                    }
                                    if (gksVar2.f18327e == gksVar3.f18327e) {
                                        arrayList3.add(eekVar4);
                                    }
                                }
                            }
                            if (!arrayList3.isEmpty()) {
                                Iterator it5 = hedVar.l.e(acq.q).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        mw mwVar = (mw) it5.next();
                                        if (mwVar.f19679f == fzaVar && mwVar.f19677a == fzaVar3 && mwVar.f19678b == hbg.BACK_EDGE) {
                                            hedVar.bw("Refusing to push insns through at block " + fzaVar.toString() + " : edge to successor is a back edge.");
                                        }
                                    } else {
                                        Collections.reverse(arrayList3);
                                        Iterator it6 = arrayList3.iterator();
                                        while (it6.hasNext()) {
                                            eek eekVar5 = (eek) it6.next();
                                            arrayList2.remove(eekVar5);
                                            for (fza fzaVar4 : fzaVar3.z) {
                                                fzaVar4.ac.add(0, eekVar5);
                                                if (fzaVar4.l.g(csv.LOOP_START)) {
                                                    fzaVar4.w(csv.ALLOW_MULTIPLE_INSNS_LOOP_COND);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return;
            case 5:
                if (hedVar.ar || hedVar.ak.isEmpty()) {
                    return;
                }
                if (hedVar.l.g(csv.DISABLE_BLOCKS_LOCK)) {
                    return;
                }
                hedVar.ak = evh.f(hedVar.ak);
                hedVar.ac = evh.f(hedVar.ac);
                Iterable.b.forEach(hedVar.ak, new esk(19));
                return;
            case 6:
                if (hedVar.al.f11075c.size() > 255) {
                    if (!Collections.unmodifiableList(hedVar.au).isEmpty()) {
                        eek[] eekVarArr = hedVar.an;
                        if (eekVarArr.length != 0) {
                            int length = eekVarArr.length;
                            while (i < length) {
                                eek eekVar6 = eekVarArr[i];
                                i = (eekVar6 == null || (hayVar = eekVar6.ah) == hay.NOP || (hayVar == hay.RETURN && eekVar6.aj.size() == 0)) ? i + 1 : 0;
                            }
                        }
                    }
                    hedVar.w(csv.DONT_GENERATE);
                    hedVar.ar = true;
                }
                eek[] eekVarArr2 = hedVar.an;
                String str = evh.f16225a;
                if (eekVarArr2 == null || eekVarArr2.length == 0) {
                    return;
                }
                int i6 = hedVar.af;
                ArrayList arrayList4 = new ArrayList();
                for (eek eekVar7 : hedVar.an) {
                    if (eekVar7 != null) {
                        arrayList4.clear();
                        gks gksVar4 = eekVar7.ai;
                        if (gksVar4 != null) {
                            arrayList4.add(gksVar4);
                        }
                        eekVar7.h(arrayList4);
                        Iterator it7 = arrayList4.iterator();
                        while (it7.hasNext()) {
                            int i7 = ((gks) it7.next()).f18327e;
                            if (i7 < 0) {
                                throw new gck("Incorrect negative register number in instruction: " + eekVar7);
                            }
                            if (i7 >= i6) {
                                throw new gck("Incorrect register number in instruction: " + eekVar7 + ", expected to be less than " + i6);
                            }
                        }
                    }
                }
                return;
            case 8:
                av(hedVar);
                return;
            case 10:
                if (hedVar.ar) {
                    return;
                }
                ac(hedVar);
                return;
            case 11:
                if (hedVar.ar) {
                    return;
                }
                fpd fpdVar = new fpd(hedVar, 0);
                java.util.List list3 = hedVar.ak;
                cci cciVar2 = hedVar.am;
                Iterator it8 = list3.iterator();
                boolean z4 = false;
                while (it8.hasNext()) {
                    fza fzaVar5 = (fza) it8.next();
                    ArrayList arrayList5 = fzaVar5.ac;
                    fpdVar.f17188d = arrayList5;
                    int size = arrayList5.size();
                    int i8 = 0;
                    while (i8 < size) {
                        if (((eek) arrayList5.get(i8)).ah == hay.INVOKE) {
                            hdc hdcVar = (hdc) arrayList5.get(i8);
                            ayu ayuVar = hdcVar.ad;
                            if (ayuVar.o()) {
                                gsh aa = hdcVar.aa();
                                cwx cwxVar = (aa == null || !(aa instanceof gks) || (eekVar = ((gks) aa).f18326a.f20177c.ae) == null || eekVar.ah != hay.NEW_INSTANCE) ? null : (cwx) ((adz) eekVar).f10070a;
                                if (cwxVar != null && !cwxVar.equals(ayuVar.f11076d.f20149d)) {
                                    ayuVar = ayu.k(cciVar2.f12631ab, ve.h(cciVar2.f12631ab, cwxVar), ayuVar.f11078f, ayuVar.f11075c, ayuVar.f11079g);
                                }
                                eew eewVar3 = new eew(hedVar, hdcVar, ayuVar);
                                boolean ab2 = eewVar3.ab();
                                java.util.List list4 = eewVar3.aj;
                                if (!ab2 || (list4.size() != 0 && !cciVar2.bi())) {
                                    dkz dkzVar = dkz.THIS;
                                    dkz dkzVar2 = eewVar3.y;
                                    ayu ayuVar2 = eewVar3.f15409a;
                                    if (dkzVar2 != dkzVar || list4.size() != 0 || ((bf = cciVar2.bf(ayuVar2.f11077e)) != null && !bf.ar)) {
                                        boolean j = cciVar2.l.j(acq.r);
                                        dwg dwgVar = cciVar2.f12631ab;
                                        if (!j || !hedVar.bd() || !eewVar3.ab()) {
                                            eewVar3.au(hdcVar);
                                            gks gksVar5 = (gks) hdcVar.j(0);
                                            gksVar5.f18326a.v(gksVar5);
                                            if (dkzVar2 == dkz.CONSTRUCTOR) {
                                                eek aa2 = gksVar5.aa();
                                                it = it8;
                                                if (aa2 != null) {
                                                    cciVar = cciVar2;
                                                    if (aa2.ah == hay.CONSTRUCTOR) {
                                                        eew eewVar4 = (eew) aa2;
                                                        fza o2 = ffb.o(hedVar, eewVar4, hedVar.ak);
                                                        if (o2 == null) {
                                                            throw new gck("Block not found by insn: " + eewVar4);
                                                        }
                                                        fza z5 = ffb.z(hedVar, fzaVar5, o2);
                                                        if (z5 == null) {
                                                            gks ac = gksVar5.ac(hedVar);
                                                            ArrayList bg = ffb.bg(hedVar, fzaVar5, true);
                                                            Iterator it9 = gksVar5.f18326a.f20178d.iterator();
                                                            while (it9.hasNext()) {
                                                                gks gksVar6 = (gks) it9.next();
                                                                gks gksVar7 = ac;
                                                                eek eekVar8 = gksVar6.ae;
                                                                if (eekVar8 == null || ffb.o(hedVar, eekVar8, bg) == null) {
                                                                    it2 = it9;
                                                                } else {
                                                                    it2 = it9;
                                                                    eekVar8.f(gksVar6, gksVar7.b());
                                                                }
                                                                ac = gksVar7;
                                                                it9 = it2;
                                                            }
                                                            arrayList = arrayList5;
                                                            i2 = size;
                                                            gksVar5 = ac;
                                                            z = z4;
                                                        } else {
                                                            gksVar5 = gksVar5.ac(hedVar);
                                                            z = z4;
                                                            gks gksVar8 = eewVar4.ai;
                                                            gks ac2 = gksVar8.ac(hedVar);
                                                            arrayList = arrayList5;
                                                            abi v = v(hedVar, z5, gksVar8.f18327e);
                                                            v.ax(gksVar8.b());
                                                            i2 = size;
                                                            v._az(gksVar5.b(), ffb.br(hedVar, z5, fzaVar5));
                                                            v._az(ac2.b(), ffb.br(hedVar, z5, o2));
                                                            v._bs();
                                                            eewVar4.ax(ac2.b());
                                                            eewVar4._bs();
                                                        }
                                                    } else {
                                                        z = z4;
                                                        arrayList = arrayList5;
                                                        i2 = size;
                                                        eek ak = ak(hedVar, aa2, fpdVar, hay.NEW_INSTANCE);
                                                        if (ak != null) {
                                                            eewVar3.au(ak);
                                                            ak.w(csv.REMOVE);
                                                            ((ArrayList) fpdVar.f17187c).add(ak);
                                                        }
                                                    }
                                                } else {
                                                    cciVar = cciVar2;
                                                    z = z4;
                                                    arrayList = arrayList5;
                                                    i2 = size;
                                                }
                                                eewVar3.ax(gksVar5.b());
                                            } else {
                                                it = it8;
                                                cciVar = cciVar2;
                                                z = z4;
                                                arrayList = arrayList5;
                                                i2 = size;
                                            }
                                            eewVar3._bs();
                                            hed x = dwgVar.x(ayuVar2);
                                            if (x != null && x.ax.bb()) {
                                                Iterator it10 = list4.iterator();
                                                while (true) {
                                                    if (it10.hasNext()) {
                                                        gsh gshVar = (gsh) it10.next();
                                                        gshVar.getClass();
                                                        if ((gshVar instanceof ekh) && ((ekh) gshVar).f15702a == 0) {
                                                        }
                                                    } else {
                                                        cci ae = dwgVar.ae(x.am.ak);
                                                        if (ae != null && (gksVar = eewVar3.ai) != null) {
                                                            boolean al = gksVar.al();
                                                            StringBuilder sb = new StringBuilder("<init>(");
                                                            sb.append(al ? pp.c(gksVar.h) : "");
                                                            sb.append(")V");
                                                            hed bf2 = ae.bf(sb.toString());
                                                            if (bf2 != null && !bf2.equals(x) && !bf2.ax.bb()) {
                                                                eewVar = new eew(bf2.al, dkzVar2);
                                                                eewVar.ax(eewVar3.ai.b());
                                                                eewVar.au(eewVar3);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            eewVar = null;
                                            if (eewVar != null) {
                                                fpdVar.v(eewVar3);
                                                ffb.bs(hedVar, fzaVar5, i8, eewVar);
                                            } else {
                                                ffb.bs(hedVar, fzaVar5, i8, eewVar3);
                                            }
                                            z2 = true;
                                            z4 = z | z2;
                                        }
                                    }
                                }
                                fpdVar.v(hdcVar);
                            }
                            it = it8;
                            cciVar = cciVar2;
                            z = z4;
                            arrayList = arrayList5;
                            i2 = size;
                            z2 = false;
                            z4 = z | z2;
                        } else {
                            it = it8;
                            cciVar = cciVar2;
                            arrayList = arrayList5;
                            i2 = size;
                        }
                        i8++;
                        it8 = it;
                        cciVar2 = cciVar;
                        arrayList5 = arrayList;
                        size = i2;
                    }
                    fpdVar.u();
                }
                if (z4) {
                    ao(hedVar);
                    return;
                }
                return;
            case 12:
                try {
                    gtb m = hedVar.ar ? null : hedVar.f19333ab.m();
                    if (m != null) {
                        bc(hedVar, m);
                        return;
                    }
                    return;
                } catch (gqp e2) {
                    hedVar.bu(e2.getMessage());
                    return;
                } catch (Exception e3) {
                    hedVar.bt("Failed to parse debug info", e3);
                    return;
                }
            case 15:
                if (hedVar.ar) {
                    return;
                }
                for (eek eekVar9 : hedVar.an) {
                    if (eekVar9 != null) {
                        acq acqVar = acq.al;
                        if (((coe) eekVar9.l.k(acqVar)) != null) {
                            switch (jg.f19479a[eekVar9.ah.ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                    eekVar9.u(acqVar);
                                    break;
                            }
                        }
                    }
                }
                return;
            case 16:
                if (hedVar.ar || hedVar.at.isEmpty()) {
                    return;
                }
                Iterable.b.forEach(hedVar.at, new bra(hedVar, 5));
                return;
            case 17:
                boolean z6 = hedVar.ar;
                cci cciVar3 = hedVar.am;
                if (z6) {
                    return;
                }
                Iterator it11 = hedVar.ak.iterator();
                int i9 = 0;
                while (it11.hasNext()) {
                    Iterator it12 = ((fza) it11.next()).ac.iterator();
                    while (it12.hasNext()) {
                        eek eekVar10 = (eek) it12.next();
                        if (eekVar10.ah == hay.SWITCH) {
                            if (!eekVar10.l.g(csv.REMOVE)) {
                                final bzm bzmVar = (bzm) eekVar10;
                                gsh j2 = bzmVar.j(i4);
                                j2.getClass();
                                if (j2 instanceof cly) {
                                    eek eekVar11 = ((cly) j2).f13104a;
                                    int i10 = cun.f13538a[eekVar11.ah.ordinal()];
                                    if (i10 == i5) {
                                        clx as = as(cciVar3.f12631ab, eekVar11);
                                        if (as != null) {
                                            hcd hcdVar = (hcd) as.f13101c;
                                            cci cciVar4 = hcdVar.f19216f;
                                            gsh gshVar2 = (gsh) as.f13103e;
                                            ffv ffvVar = (ffv) cciVar4.l.k(acq.f9984d);
                                            final des desVar = (ffvVar == null || (hashMap = ffvVar.f16729a) == null) ? null : (des) hashMap.get(hcdVar);
                                            if (desVar != null) {
                                                int length2 = bzmVar.ad().f12358c.length;
                                                int i11 = 0;
                                                while (true) {
                                                    if (i11 < length2) {
                                                        if (desVar.f14072a.get(bzmVar.af(i11)) != null) {
                                                            i11++;
                                                        }
                                                    } else if (e(bzmVar, j2, gshVar2, new IntFunction() { // from class: g.eyi
                                                        @Override // java.util.function.IntFunction
                                                        public final Object apply(int i12) {
                                                            return des.this.f14072a.get(bzmVar.af(i12));
                                                        }
                                                    })) {
                                                        hcdVar.w(csv.DONT_GENERATE);
                                                        cciVar4.av();
                                                        Iterator it13 = cciVar4.ag.iterator();
                                                        while (true) {
                                                            if (it13.hasNext()) {
                                                                hcd hcdVar2 = (hcd) it13.next();
                                                                gqc gqcVar = hcdVar2.h;
                                                                if (gqcVar.bb() && gqcVar.be() && gqcVar.ae()) {
                                                                    if (!hcdVar2.l.g(csv.DONT_GENERATE)) {
                                                                    }
                                                                }
                                                            } else {
                                                                cciVar4.w(csv.DONT_GENERATE);
                                                            }
                                                        }
                                                        i4 = 1;
                                                    }
                                                }
                                            }
                                        }
                                        i4 = 0;
                                    } else if (i10 == i3) {
                                        hdc hdcVar2 = (hdc) eekVar11;
                                        if (hdcVar2.ad.f11077e.equals("ordinal()I")) {
                                            gsh j3 = hdcVar2.j(i4);
                                            cci w = cciVar3.f12631ab.w(j3.j());
                                            if (w != null) {
                                                afq afqVar = (afq) w.l.k(acq.k);
                                                if (afqVar != null) {
                                                    java.util.List list5 = afqVar.f10150a;
                                                    int length3 = bzmVar.ad().f12358c.length;
                                                    if (list5.size() < length3) {
                                                        hcdVarArr = hcdVarArr2;
                                                    } else {
                                                        hcdVarArr = new hcd[length3];
                                                        for (int i12 = 0; i12 < length3; i12++) {
                                                            Object af = bzmVar.af(i12);
                                                            if (af instanceof Integer) {
                                                                int intValue = ((Integer) af).intValue();
                                                                try {
                                                                    hcdVarArr[intValue] = ((fjd) list5.get(intValue)).f16881a;
                                                                } catch (Exception unused) {
                                                                }
                                                            }
                                                            hcdVarArr = null;
                                                        }
                                                    }
                                                    i4 = hcdVarArr == null ? 0 : e(bzmVar, j2, j3, new IntFunction() { // from class: g.vx
                                                        @Override // java.util.function.IntFunction
                                                        public final Object apply(int i13) {
                                                            return hcdVarArr[i13];
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    }
                                }
                                i9 |= i4;
                            }
                        }
                        i3 = 2;
                        hcdVarArr2 = null;
                        i4 = 0;
                        i5 = 1;
                    }
                }
                if (i9 != 0) {
                    av(hedVar);
                    return;
                }
                return;
            case 18:
                ah(hedVar);
                return;
            case 19:
                w(hedVar);
                return;
            case 20:
                if (hedVar.ar) {
                    return;
                }
                ao(hedVar);
                return;
            case 22:
                if (hedVar.ar) {
                    return;
                }
                for (fza fzaVar6 : hedVar.ak) {
                    csv csvVar = csv.DONT_GENERATE;
                    sm smVar = fzaVar6.l;
                    ArrayList arrayList6 = fzaVar6.ac;
                    if (!smVar.g(csvVar)) {
                        Iterator it14 = arrayList6.iterator();
                        while (it14.hasNext()) {
                            eek eekVar12 = (eek) it14.next();
                            switch (fws.f17534a[eekVar12.ah.ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                    it14.remove();
                                    break;
                                case 5:
                                    if (((eew) eekVar12).y == dkz.SELF) {
                                        it14.remove();
                                        break;
                                    } else {
                                        break;
                                    }
                                case 6:
                                    gks gksVar9 = eekVar12.ai;
                                    if (gksVar9.f18326a.f20178d.size() == 0) {
                                        epk j4 = eekVar12.j(0);
                                        String name = gksVar9.getName();
                                        if ((name == null || !(j4 instanceof ehh)) ? false : name.equals(((ehh) j4).getName())) {
                                            it14.remove();
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                    break;
                            }
                        }
                        for (int i13 = 0; i13 < arrayList6.size(); i13++) {
                            eek eekVar13 = (eek) arrayList6.get(i13);
                            if (eekVar13.ah == hay.MOVE) {
                                gsh j5 = eekVar13.j(0);
                                j5.getClass();
                                if (j5 instanceof cly) {
                                    eek eekVar14 = ((cly) eekVar13.j(0)).f13104a;
                                    eekVar14.ax(eekVar13.ai);
                                    eekVar14.s(eekVar13);
                                    eekVar14.br(eekVar13);
                                    arrayList6.set(i13, eekVar14);
                                }
                            }
                        }
                        Iterator it15 = arrayList6.iterator();
                        while (it15.hasNext()) {
                            z((eek) it15.next());
                        }
                        Iterator it16 = arrayList6.iterator();
                        while (it16.hasNext()) {
                            eek eekVar15 = (eek) it16.next();
                            if (eekVar15.ah == hay.ARITH) {
                                csv csvVar2 = csv.ARITH_ONEARG;
                                if (!eekVar15.l.g(csvVar2)) {
                                    if (!eekVar15.l.g(csv.DECLARE_VAR)) {
                                        gks gksVar10 = eekVar15.ai;
                                        gsh j6 = eekVar15.j(0);
                                        if (gksVar10.equals(j6)) {
                                            y = true;
                                        } else {
                                            j6.getClass();
                                            y = j6 instanceof gks ? gksVar10.y((gks) j6) : false;
                                        }
                                        if (y) {
                                            eekVar15.ai = null;
                                            eekVar15.w(csvVar2);
                                        }
                                    }
                                }
                            }
                        }
                        Iterator it17 = arrayList6.iterator();
                        while (it17.hasNext()) {
                            ((eek) it17.next())._be(new esk(22));
                        }
                        Iterator it18 = arrayList6.iterator();
                        while (it18.hasNext()) {
                            eek eekVar16 = (eek) it18.next();
                            int i14 = fws.f17534a[eekVar16.ah.ordinal()];
                            if (i14 == 13) {
                                ax(hedVar, ((hdc) eekVar16).aa());
                            } else if (i14 == 14) {
                                ax(hedVar, eekVar16.j(0));
                            }
                        }
                    }
                }
                if (hedVar.bk()) {
                    Iterator it19 = hedVar.ak.iterator();
                    while (true) {
                        if (it19.hasNext()) {
                            Iterator it20 = ((fza) it19.next()).ac.iterator();
                            while (it20.hasNext()) {
                                eek eekVar17 = (eek) it20.next();
                                if (eekVar17.ah == hay.CONSTRUCTOR) {
                                    eew eewVar5 = (eew) eekVar17;
                                    if (!eewVar5.ab()) {
                                        if (eewVar5.y == dkz.THIS) {
                                            z3 = true;
                                            break;
                                        } else {
                                            z3 = false;
                                            break;
                                        }
                                    }
                                    eewVar2 = eewVar5;
                                }
                            }
                        }
                    }
                    if (eewVar2 != null) {
                        if (!eewVar2.l.g(csv.DONT_GENERATE)) {
                            ArrayList arrayList7 = ffb.cf(hedVar.aj).ac;
                            if (!arrayList7.isEmpty()) {
                                break;
                            } else {
                                fza o3 = ffb.o(hedVar, eewVar2, hedVar.ak);
                                if (o3 == null) {
                                    throw new gck("Insn not found in method: " + eewVar2);
                                }
                                if (o3.ac.get(0) == eewVar2) {
                                    Iterator it21 = ffb.x(hedVar.aj, o3).iterator();
                                    while (it21.hasNext()) {
                                        fza fzaVar7 = (fza) it21.next();
                                        if (fzaVar7.ac.isEmpty() || fzaVar7 == o3) {
                                        }
                                    }
                                    cug cugVar = (cug) hedVar.ao.l.k(acq.l);
                                    if (i5 != 0 || cugVar != null) {
                                        String lowerCase = eewVar2.y.toString().toLowerCase();
                                        o = ffb.o(hedVar, eewVar2, hedVar.ak);
                                        if (o != null) {
                                            hedVar.bs("Failed to move " + lowerCase + " instruction to top");
                                        } else {
                                            if (i5 == 0) {
                                                HashSet hashSet = new HashSet();
                                                eewVar2.h(hashSet);
                                                hashSet.remove(hedVar.z);
                                                Iterable.b.forEach(hedVar.az(), new bbm(hashSet, i3));
                                                if (hashSet.isEmpty()) {
                                                    hedVar.bu("'" + lowerCase + "' call moved to the top of the method (can break code semantics)");
                                                } else {
                                                    hedVar.bu("Illegal instructions before constructor call");
                                                }
                                            }
                                            con.b(o, eewVar2);
                                            hedVar.ao.f16387g.add(0, new gqu(eewVar2));
                                        }
                                    }
                                }
                                i5 = 0;
                                cug cugVar2 = (cug) hedVar.ao.l.k(acq.l);
                                if (i5 != 0) {
                                }
                                String lowerCase2 = eewVar2.y.toString().toLowerCase();
                                o = ffb.o(hedVar, eewVar2, hedVar.ak);
                                if (o != null) {
                                }
                            }
                        }
                    }
                }
                be(hedVar, hedVar);
                return;
            case 23:
                if (hedVar.ar) {
                    return;
                }
                eek[] eekVarArr3 = hedVar.an;
                for (int i15 = 0; i15 < eekVarArr3.length; i15++) {
                    eek eekVar18 = eekVarArr3[i15];
                    if (eekVar18 != null) {
                        switch (bga.f11497a[eekVar18.ah.ordinal()]) {
                            case 1:
                                bzm bzmVar2 = (bzm) eekVar18;
                                if (bzmVar2.f12515d == null) {
                                    int ba = ba(eekVarArr3, i15);
                                    int i16 = bzmVar2.f12513a;
                                    int length4 = eekVarArr3.length;
                                    int i17 = i16;
                                    while (true) {
                                        if (i17 >= length4) {
                                            eekVar2 = null;
                                        } else {
                                            eekVar2 = eekVarArr3[i17];
                                            if (eekVar2 == null || eekVar2.ah == hay.NOP) {
                                                i17++;
                                            }
                                        }
                                    }
                                    if (eekVar2 == null || eekVar2.ah != hay.SWITCH_DATA) {
                                        throw new gck("Payload for switch not found at ".concat(ack.d(i16)));
                                    }
                                    bx bxVar = (bx) eekVar2;
                                    int i18 = bxVar.f12356a;
                                    int[] iArr = bxVar.f12357b;
                                    for (int i19 = 0; i19 < i18; i19++) {
                                        iArr[i19] = iArr[i19] + i15;
                                    }
                                    bzmVar2.f12515d = bxVar;
                                    bzmVar2.x = ba;
                                    eekVarArr3[eekVar2.ag] = null;
                                }
                                int i20 = bzmVar2.x;
                                if (i20 != -1) {
                                    g(hedVar, eekVarArr3, i15, i20);
                                }
                                for (int i21 : bzmVar2.ad().f12357b) {
                                    g(hedVar, eekVarArr3, i15, i21);
                                }
                                break;
                            case 2:
                                int ba2 = ba(eekVarArr3, i15);
                                if (ba2 != -1) {
                                    g(hedVar, eekVarArr3, i15, ba2);
                                }
                                g(hedVar, eekVarArr3, i15, ((bgw) eekVar18).ad());
                                break;
                            case 3:
                                g(hedVar, eekVarArr3, i15, ((dfy) eekVar18).ad());
                                break;
                            case 4:
                                g(hedVar, eekVarArr3, i15, ((xi) eekVar18).f20287a);
                                int ba3 = ba(eekVarArr3, i15);
                                if (ba3 != -1) {
                                    g(hedVar, eekVarArr3, i15, ba3);
                                    break;
                                } else {
                                    break;
                                }
                            case 5:
                                if (eekVar18.ai == null) {
                                    aw(eekVarArr3, i15, eekVar18, ((gif) eekVar18).ac().f11079g);
                                    break;
                                } else {
                                    break;
                                }
                            case 6:
                                if (eekVar18.ai == null) {
                                    aw(eekVarArr3, i15, eekVar18, cwx.al);
                                    break;
                                } else {
                                    break;
                                }
                            case 7:
                                cwx cwxVar2 = ((fs) eekVar18).f17323a;
                                cff cffVar = cwx.an;
                                aw(eekVarArr3, i15, eekVar18, new aoe(cwxVar2));
                                break;
                            case 8:
                                og ogVar = (og) eekVar18;
                                int i22 = ogVar.f19756a;
                                int length5 = eekVarArr3.length;
                                int i23 = i22;
                                while (true) {
                                    if (i23 >= length5) {
                                        eekVar3 = null;
                                    } else {
                                        eekVar3 = eekVarArr3[i23];
                                        if (eekVar3 == null || eekVar3.ah == hay.NOP) {
                                            i23++;
                                        }
                                    }
                                }
                                if (eekVar3 == null || eekVar3.ah != hay.FILL_ARRAY_DATA) {
                                    throw new gck("Payload for fill-array not found at ".concat(ack.d(i22)));
                                }
                                ogVar._ao = (mt) eekVar3;
                                eekVarArr3[eekVar3.ag] = null;
                                break;
                                break;
                        }
                    }
                }
                return;
            case 24:
                bi(hedVar);
                return;
            case 25:
                bg(hedVar);
                return;
            case 26:
                if (hedVar.bg()) {
                    buj.bb(hedVar, new dhp(2), hedVar.ao);
                    return;
                }
                return;
            case 27:
                bf(hedVar);
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x068d  */
    /* JADX WARN: Removed duplicated region for block: B:438:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:473:0x07c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:483:0x078b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:632:0x0adc  */
    /* JADX WARN: Removed duplicated region for block: B:635:0x0ae0 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v56, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v60, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v15, types: [g.cwx, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r26v0, types: [g.cci, g.ebh, g.lh, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v72, types: [g.cwx] */
    /* JADX WARN: Type inference failed for: r2v73, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r4v55, types: [g.ebh, g.hed, g.lh] */
    /* JADX WARN: Type inference failed for: r7v65, types: [g.ebh, g.hed, g.lh] */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v44 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v46 */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean k(cci cciVar) {
        int i;
        dwg dwgVar;
        boolean z;
        boolean z2;
        dwg dwgVar2;
        gqc gqcVar;
        Object obj;
        java.util.List list;
        clx as;
        hcd ag;
        clx clxVar;
        HashSet hashSet;
        Iterator it;
        ArrayList arrayList;
        ebp ebpVar;
        hed hedVar;
        Iterator it2;
        ebp ebpVar2;
        cwx z3;
        boolean z4;
        int size;
        boolean z5;
        boolean z6;
        HashSet hashSet2;
        ebp ebpVar3;
        boolean z7;
        ?? z8;
        hed hedVar2;
        int i2 = 8;
        boolean z9 = false;
        ?? r8 = 0;
        ?? r82 = 0;
        switch (this.f15190d) {
            case 4:
                if (!cciVar.l.j(acq.r)) {
                    return true;
                }
                cciVar.av();
                for (hed hedVar3 : cciVar.aj) {
                    if (hedVar3.l.g(csv.ANONYMOUS_CONSTRUCTOR)) {
                        ArrayList arrayList2 = new ArrayList();
                        ayu ayuVar = hedVar3.al;
                        cci cciVar2 = hedVar3.am;
                        java.util.List az = hedVar3.az();
                        int i3 = (ayuVar.f11075c.size() == 0 || !((cwx) ayuVar.f11075c.get(0)).equals(((hed) Collections.unmodifiableList(hedVar3.au).get(0)).am.ak.f20149d)) ? 0 : 1;
                        java.util.Map linkedHashMap = new LinkedHashMap();
                        int size2 = az.size();
                        while (true) {
                            if (i3 < size2) {
                                gks gksVar = (gks) az.get(i3);
                                eek at = at(gksVar);
                                if (at == null) {
                                    linkedHashMap = Collections.EMPTY_MAP;
                                } else {
                                    int i4 = fqg.f17241a[at.ah.ordinal()];
                                    if (i4 == 1) {
                                        hcd ar = cciVar2.ar((dsj) ((adz) at).f10070a);
                                        if (ar != null && ar.h.bb()) {
                                            linkedHashMap.put(gksVar, ar);
                                            arrayList2.add(at);
                                            i3++;
                                        }
                                    } else if (i4 != 2) {
                                        linkedHashMap = Collections.EMPTY_MAP;
                                    } else if (((eew) at).ab()) {
                                        arrayList2.add(at);
                                        i3++;
                                    } else {
                                        linkedHashMap = Collections.EMPTY_MAP;
                                    }
                                }
                            }
                        }
                        linkedHashMap = Collections.EMPTY_MAP;
                        if (linkedHashMap.isEmpty()) {
                            hedVar3.w(csv.NO_SKIP_ARGS);
                        } else {
                            for (Map.Entry entry : linkedHashMap.entrySet()) {
                                hcd hcdVar = (hcd) entry.getValue();
                                if (hcdVar != null) {
                                    gsh gshVar = (gsh) entry.getKey();
                                    hcdVar.m(new gxj(gshVar));
                                    hcdVar.w(csv.DONT_GENERATE);
                                    gshVar.getClass();
                                    if (gshVar instanceof gks) {
                                        gshVar.w(csv.SKIP_ARG);
                                        gks gksVar2 = (gks) gshVar;
                                        java.util.List az2 = hedVar3.az();
                                        String str = evh.f16225a;
                                        if (az2 != null && !az2.isEmpty()) {
                                            int size3 = az2.size();
                                            i = 0;
                                            while (i < size3) {
                                                if (az2.get(i) != gksVar2) {
                                                    i++;
                                                } else {
                                                    if (i != -1) {
                                                        throw new gck("Arg not found: " + gksVar2);
                                                    }
                                                    cse.b(hedVar3, i);
                                                }
                                            }
                                        }
                                        i = -1;
                                        if (i != -1) {
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            ((eek) it3.next()).w(csv.DONT_GENERATE);
                        }
                        return true;
                    }
                }
                return true;
            case 7:
                if (cciVar.l.g(csv.PACKAGE_INFO)) {
                    return false;
                }
                Iterator it4 = cciVar.i.iterator();
                while (it4.hasNext()) {
                    k((cci) it4.next());
                }
                if (p(cciVar)) {
                    cciVar.w(csv.DONT_GENERATE);
                    return false;
                }
                boolean j = cciVar.l.j(acq.r);
                dwg dwgVar3 = cciVar.f12631ab;
                ve veVar = cciVar.ak;
                if (j || veVar.n()) {
                    cciVar.av();
                    for (hcd hcdVar2 : cciVar.ag) {
                        cwx cwxVar = hcdVar2.f19215e;
                        if (hcdVar2.h.bb() && cwxVar.m() && !(cwxVar instanceof btl)) {
                            cci ae = dwgVar3.ae(ve.h(dwgVar3, cwxVar));
                            ve veVar2 = veVar.f20148c;
                            if (ae != null) {
                                ve veVar3 = ae.ak;
                                boolean equals = Objects.equals(veVar2, veVar3);
                                if (j || equals) {
                                    cciVar.av();
                                    int i5 = 0;
                                    for (hed hedVar4 : cciVar.aj) {
                                        if (!hedVar4.ar && hedVar4.ax.bf()) {
                                            java.util.List az3 = hedVar4.az();
                                            if (!az3.isEmpty()) {
                                                csv csvVar = csv.SKIP_FIRST_ARG;
                                                if (!hedVar4.l.g(csvVar)) {
                                                    gks gksVar3 = (gks) az3.get(0);
                                                    if (gksVar3.j().equals(veVar3.f20149d)) {
                                                        fza fzaVar = (fza) hedVar4.aj.z.get(0);
                                                        ArrayList arrayList3 = fzaVar.ac;
                                                        if (!arrayList3.isEmpty()) {
                                                            z2 = j;
                                                            eek eekVar = (eek) arrayList3.get(0);
                                                            if (eekVar.ah == hay.IPUT) {
                                                                adz adzVar = (adz) eekVar;
                                                                dsj dsjVar = (dsj) adzVar.f10070a;
                                                                dwgVar2 = dwgVar3;
                                                                if (dsjVar.equals(hcdVar2.f19217g) && adzVar.j(0).equals(gksVar3)) {
                                                                    hedVar4.w(csvVar);
                                                                    fpd.k(hedVar4, eekVar);
                                                                    fpd.p(hedVar4, fzaVar, eekVar);
                                                                    if (gksVar3.f18326a.f20178d.size() != 0) {
                                                                        adz adzVar2 = new adz(hay.IGET, dsjVar, 1);
                                                                        adzVar2._an(eekVar.j(1));
                                                                        Iterator it5 = new ArrayList(gksVar3.f18326a.f20178d).iterator();
                                                                        while (it5.hasNext()) {
                                                                            ((gsh) it5.next()).an(hedVar4, adzVar2, true);
                                                                        }
                                                                    }
                                                                    i5++;
                                                                }
                                                                j = z2;
                                                                dwgVar3 = dwgVar2;
                                                            }
                                                            dwgVar2 = dwgVar3;
                                                            j = z2;
                                                            dwgVar3 = dwgVar2;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        z2 = j;
                                        dwgVar2 = dwgVar3;
                                        j = z2;
                                        dwgVar3 = dwgVar2;
                                    }
                                    z = j;
                                    dwgVar = dwgVar3;
                                    if (i5 != 0) {
                                        if (equals) {
                                            hcdVar2.m(new gxj(veVar3));
                                        }
                                        hcdVar2.w(csv.DONT_GENERATE);
                                    }
                                    j = z;
                                    dwgVar3 = dwgVar;
                                }
                            }
                        }
                        z = j;
                        dwgVar = dwgVar3;
                        j = z;
                        dwgVar3 = dwgVar;
                    }
                }
                cciVar.av();
                Iterable.b.forEach(cciVar.aj, new esk(7));
                cciVar.av();
                Iterable.b.forEach(cciVar.aj, new esk(8));
                return false;
            case 9:
                dwg dwgVar4 = cciVar.f12631ab;
                if (!dwgVar4.i.an) {
                    return true;
                }
                cciVar.av();
                if (cciVar.ag.isEmpty()) {
                    return true;
                }
                dxb dxbVar = dwgVar4.f14934f;
                cciVar.av();
                for (hcd hcdVar3 : cciVar.ag) {
                    try {
                        gqcVar = hcdVar3.h;
                    } catch (Exception e2) {
                        cciVar.bt("Failed to process value of field: " + hcdVar3, e2);
                    }
                    if (gqcVar.be() && gqcVar.ae()) {
                        ghr ghrVar = (ghr) hcdVar3.l.k(ao.x);
                        if (ghrVar != null && ghrVar != ghr.f18174a && hcdVar3.f19214d.isEmpty()) {
                            obj = ghrVar.f18176f;
                            if (obj != null) {
                                if (hcdVar3.h.an()) {
                                    ((bqm) dxbVar.f14997c).c(obj, hcdVar3);
                                } else {
                                    dxbVar.getClass();
                                    ((bqm) Map.b.computeIfAbsent((HashMap) dxbVar.f14998d, hcdVar3.f19216f, new fov(14))).c(obj, hcdVar3);
                                }
                            }
                        }
                    }
                    obj = null;
                    if (obj != null) {
                    }
                }
                return true;
            case 14:
                Iterator it6 = cciVar.i.iterator();
                while (it6.hasNext()) {
                    k((cci) it6.next());
                }
                cciVar.av();
                if (cciVar.ag.isEmpty()) {
                    return false;
                }
                hed bf = cciVar.bf("<clinit>()V");
                if (bf != null && bf.ax.be() && !bf.ar && bf.ak != null) {
                    cciVar.av();
                    if (acw.y(cciVar.ag, new bev(21))) {
                        while (true) {
                            ArrayList ag2 = ag(cciVar, bf, hay.SPUT);
                            if (!ag2.isEmpty()) {
                                Iterator it7 = ag2.iterator();
                                while (it7.hasNext()) {
                                    hcd hcdVar4 = ((ej) it7.next()).f15621a;
                                    if (hcdVar4.h.ae()) {
                                        hcdVar4.u(ao.x);
                                    }
                                }
                                ar(ag2);
                                if (!ag2.isEmpty()) {
                                    Iterator it8 = ag2.iterator();
                                    while (it8.hasNext()) {
                                        ej ejVar = (ej) it8.next();
                                        adz adzVar3 = ejVar.f15622b;
                                        gsh j2 = adzVar3.j(0);
                                        if (j2 instanceof cly) {
                                            ((cly) j2).f13104a.w(csv.DECLARE_VAR);
                                        }
                                        fpd.l(bf, adzVar3);
                                        an(bf, ejVar.f15621a, adzVar3);
                                    }
                                    u(cciVar, ag2);
                                    av(bf);
                                }
                            }
                        }
                    }
                }
                cciVar.av();
                if (!acw.y(cciVar.ag, new bev(22))) {
                    return false;
                }
                ?? arrayList4 = new ArrayList();
                cciVar.av();
                for (hed hedVar5 : cciVar.aj) {
                    gqc gqcVar2 = hedVar5.ax;
                    if (!gqcVar2.be() && gqcVar2.bf()) {
                        arrayList4.add(hedVar5);
                        if (hedVar5.ar || ffb.ad(hedVar5.ak)) {
                            arrayList4 = Collections.EMPTY_LIST;
                            if (!arrayList4.isEmpty()) {
                                return false;
                            }
                            ArrayList arrayList5 = new ArrayList(arrayList4.size());
                            for (hed hedVar6 : arrayList4) {
                                ArrayList ag3 = ag(cciVar, hedVar6, hay.IPUT);
                                ar(ag3);
                                if (ag3.isEmpty()) {
                                    return false;
                                }
                                arrayList5.add(new atl(hedVar6, ag3));
                            }
                            Iterator it9 = arrayList5.iterator();
                            atl atlVar = null;
                            while (it9.hasNext()) {
                                atl atlVar2 = (atl) it9.next();
                                if (atlVar == null) {
                                    atlVar = atlVar2;
                                } else {
                                    ArrayList arrayList6 = atlVar.f10808b;
                                    ArrayList arrayList7 = atlVar2.f10808b;
                                    if (arrayList6.size() != arrayList7.size()) {
                                        return false;
                                    }
                                    int size4 = arrayList6.size();
                                    for (int i6 = 0; i6 < size4; i6++) {
                                        if (!((ej) arrayList6.get(i6)).f15622b._p(((ej) arrayList7.get(i6)).f15622b)) {
                                            return false;
                                        }
                                    }
                                }
                            }
                            if (atlVar == null) {
                                return false;
                            }
                            ArrayList arrayList8 = atlVar.f10808b;
                            Iterator it10 = arrayList5.iterator();
                            while (it10.hasNext()) {
                                atl atlVar3 = (atl) it10.next();
                                Iterator it11 = atlVar3.f10808b.iterator();
                                while (it11.hasNext()) {
                                    adz adzVar4 = ((ej) it11.next()).f15622b;
                                    gsh j3 = adzVar4.j(0);
                                    if (j3 instanceof cly) {
                                        ((cly) j3).f13104a.w(csv.DECLARE_VAR);
                                    }
                                    fpd.l(atlVar3.f10807a, adzVar4);
                                }
                            }
                            Iterator it12 = arrayList8.iterator();
                            while (it12.hasNext()) {
                                ej ejVar2 = (ej) it12.next();
                                an(atlVar.f10807a, ejVar2.f15621a, ejVar2.f15622b);
                            }
                            u(cciVar, arrayList8);
                            return false;
                        }
                    }
                }
                if (!arrayList4.isEmpty()) {
                }
                break;
            case 17:
                hed bf2 = cciVar.bf("<clinit>()V");
                if (bf2 == null || bf2.ar || (list = bf2.ak) == null) {
                    return true;
                }
                ffv ffvVar = new ffv();
                Iterator it13 = list.iterator();
                while (it13.hasNext()) {
                    Iterator it14 = ((fza) it13.next()).ac.iterator();
                    while (it14.hasNext()) {
                        eek eekVar2 = (eek) it14.next();
                        if (eekVar2.ah == hay.APUT) {
                            dwg dwgVar5 = cciVar.f12631ab;
                            gsh j4 = eekVar2.j(2);
                            j4.getClass();
                            if ((j4 instanceof ekh) && (as = as(dwgVar5, eekVar2)) != null) {
                                gsh gshVar2 = (gsh) as.f13103e;
                                hcd hcdVar5 = (hcd) as.f13101c;
                                gshVar2.getClass();
                                if (gshVar2 instanceof cly) {
                                    eek eekVar3 = ((cly) gshVar2).f13104a;
                                    if (eekVar3 instanceof adz) {
                                        Object obj2 = ((adz) eekVar3).f10070a;
                                        if ((obj2 instanceof dsj) && (ag = dwgVar5.ag((dsj) obj2)) != null) {
                                            Integer valueOf = Integer.valueOf((int) ((ekh) j4).f15702a);
                                            HashMap hashMap = ffvVar.f16729a;
                                            des desVar = hashMap == null ? null : (des) hashMap.get(hcdVar5);
                                            if (desVar == null) {
                                                desVar = new des();
                                                if (ffvVar.f16729a == null) {
                                                    ffvVar.f16729a = new HashMap();
                                                }
                                                ffvVar.f16729a.put(hcdVar5, desVar);
                                            }
                                            desVar.f14072a.put(valueOf, ag);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                HashMap hashMap2 = ffvVar.f16729a;
                if (hashMap2 == null || hashMap2.isEmpty()) {
                    return true;
                }
                cciVar.m(ffvVar);
                return true;
            case 21:
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashSet hashSet3 = new HashSet();
                n(cciVar, linkedHashSet, hashSet3);
                if (linkedHashSet.isEmpty()) {
                    clxVar = null;
                } else {
                    if (hashSet3.isEmpty()) {
                        throw new gck("No end types in class hierarchy: " + ((Object) cciVar));
                    }
                    clxVar = new clx(i2, new ArrayList(linkedHashSet), hashSet3, r8 == true ? 1 : 0);
                }
                if (clxVar == null) {
                    return true;
                }
                HashSet hashSet4 = (HashSet) clxVar.f13101c;
                ArrayList arrayList9 = (ArrayList) clxVar.f13103e;
                cciVar.av();
                Iterator it15 = cciVar.aj.iterator();
                while (it15.hasNext()) {
                    ?? r4 = (hed) it15.next();
                    acq acqVar = acq.h;
                    boolean bk = r4.bk();
                    ayu ayuVar2 = r4.al;
                    cci cciVar3 = r4.am;
                    if (bk || r4.ax.be() || r4.ax.al()) {
                        hashSet = hashSet4;
                        it = it15;
                        arrayList = arrayList9;
                    } else {
                        fpr fprVar = (fpr) r4.l.k(acqVar);
                        if (fprVar != null) {
                            it = it15;
                            arrayList = arrayList9;
                        } else {
                            String p = ayuVar2.p(z9, z9);
                            ArrayList arrayList10 = new ArrayList();
                            HashSet hashSet5 = new HashSet();
                            Iterator it16 = arrayList9.iterator();
                            while (true) {
                                if (it16.hasNext()) {
                                    cwx cwxVar2 = (cwx) it16.next();
                                    cci w = cciVar3.f12631ab.w(cwxVar2);
                                    if (w != null) {
                                        String str2 = ayuVar2.f11077e;
                                        w.av();
                                        Iterator it17 = w.aj.iterator();
                                        while (true) {
                                            if (it17.hasNext()) {
                                                it = it15;
                                                hedVar = (hed) it17.next();
                                                arrayList = arrayList9;
                                                if (!hedVar.al.f11077e.equals(str2) || hedVar.ax.be()) {
                                                    it15 = it;
                                                    arrayList9 = arrayList;
                                                }
                                            } else {
                                                it = it15;
                                                arrayList = arrayList9;
                                                w.av();
                                                Iterator it18 = w.aj.iterator();
                                                while (true) {
                                                    if (it18.hasNext()) {
                                                        hed hedVar7 = (hed) it18.next();
                                                        ayu ayuVar3 = hedVar7.al;
                                                        if (!ayuVar3.f11077e.startsWith(p) || hedVar7.ax.be()) {
                                                            it2 = it18;
                                                        } else {
                                                            it2 = it18;
                                                            dho h = w.f12631ab.u.f12545e.h(ayuVar3.f11079g, ayuVar2.f11079g);
                                                            if (h.b()) {
                                                                hedVar = hedVar7;
                                                            } else if (h == dho.UNKNOWN || h == dho.CONFLICT) {
                                                                StringBuilder sb = new StringBuilder("Possible override for method ");
                                                                sb.append(ayuVar3.f11076d.f20147b + '.' + ayuVar3.f11077e);
                                                                r4.bw(sb.toString());
                                                            }
                                                        }
                                                        it18 = it2;
                                                    } else {
                                                        hedVar = null;
                                                    }
                                                }
                                            }
                                        }
                                        if (hedVar != null) {
                                            gqc gqcVar3 = hedVar.ax;
                                            if (gqcVar3.al() ? false : (gqcVar3.an() || gqcVar3.ao()) ? true : Objects.equals(hedVar.am.ak.t(), cciVar3.ak.t())) {
                                                arrayList10.add(hedVar);
                                                fpr fprVar2 = (fpr) hedVar.l.k(acqVar);
                                                if (fprVar2 != null) {
                                                    if (hashSet4.contains(cwxVar2.l()) && (ebpVar2 = (ebp) evh.o(arrayList10)) != null) {
                                                        hashSet5.add(ebpVar2);
                                                    }
                                                    fprVar = bb(r4, arrayList10, hashSet5, fprVar2);
                                                }
                                            }
                                        }
                                    } else {
                                        it = it15;
                                        arrayList = arrayList9;
                                        aht l = cciVar3.f12631ab.l.l(cwxVar2);
                                        if (l != null) {
                                            Iterator it19 = l.f10236a.entrySet().iterator();
                                            while (true) {
                                                if (it19.hasNext()) {
                                                    Map.Entry entry2 = (Map.Entry) it19.next();
                                                    if (((String) entry2.getKey()).startsWith(p)) {
                                                        arrayList10.add((ebp) entry2.getValue());
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (hashSet4.contains(cwxVar2.l()) && (ebpVar = (ebp) evh.o(arrayList10)) != null) {
                                        hashSet5.add(ebpVar);
                                    }
                                    it15 = it;
                                    arrayList9 = arrayList;
                                } else {
                                    it = it15;
                                    arrayList = arrayList9;
                                    fprVar = bb(r4, arrayList10, hashSet5, null);
                                }
                            }
                        }
                        if (fprVar != null) {
                            HashSet hashSet6 = fprVar.f17208a;
                            if (hashSet6.isEmpty()) {
                                throw new gck("No base methods for override attribute: " + fprVar.f17209b);
                            }
                            r4.m(fprVar);
                            String str3 = evh.f16225a;
                            ebp ebpVar4 = (ebp) (hashSet6.size() != 1 ? null : hashSet6.iterator().next());
                            if (ebpVar4 != null) {
                                cwx cwxVar3 = r4.aw;
                                if (cwxVar3 == cwx.ao) {
                                    z4 = false;
                                } else {
                                    cwx g2 = ebpVar4.g();
                                    if (!r4.aw.equals(g2) && g2.bn()) {
                                        cwm cwmVar = cciVar3.f12631ab.u.f12545e;
                                        cwx cwxVar4 = ebpVar4.j().f11076d.f20149d;
                                        Iterator it20 = arrayList.iterator();
                                        while (it20.hasNext()) {
                                            cwx cwxVar5 = (cwx) it20.next();
                                            if (cwmVar.h(cwxVar5, cwxVar4) == dho.NARROW_BY_GENERIC && (z3 = cciVar3.f12631ab.o.z(cwxVar5, cwxVar5, g2)) != null && !z3.bn() && !z3.equals(r4.aw)) {
                                                r4.aw = z3;
                                                z4 = true;
                                                if (z4) {
                                                    r4.bw("Return type fixed from '" + cwxVar3 + "' to match base method");
                                                }
                                            }
                                        }
                                    }
                                    z4 = false;
                                    if (z4) {
                                    }
                                }
                                java.util.List f2 = r4.f();
                                java.util.List f3 = ebpVar4.f();
                                if (!f2.equals(f3) && (size = f2.size()) == f3.size()) {
                                    ArrayList arrayList11 = new ArrayList(size);
                                    int i7 = 0;
                                    z5 = false;
                                    while (i7 < size) {
                                        ?? r13 = (cwx) r4.f().get(i7);
                                        cwx cwxVar6 = (cwx) ebpVar4.f().get(i7);
                                        if (!r13.equals(cwxVar6) && cwxVar6.bn()) {
                                            cwm cwmVar2 = cciVar3.f12631ab.u.f12545e;
                                            hashSet2 = hashSet4;
                                            cwx cwxVar7 = ebpVar4.j().f11076d.f20149d;
                                            Iterator it21 = arrayList.iterator();
                                            while (it21.hasNext()) {
                                                ebpVar3 = ebpVar4;
                                                cwx cwxVar8 = (cwx) it21.next();
                                                z7 = z4;
                                                cwx cwxVar9 = cwxVar7;
                                                if (cwmVar2.h(cwxVar8, cwxVar7) != dho.NARROW_BY_GENERIC || (z8 = cciVar3.f12631ab.o.z(cwxVar8, cwxVar8, cwxVar6)) == null || z8.bn() || z8.equals(r13)) {
                                                    z4 = z7;
                                                    ebpVar4 = ebpVar3;
                                                    cwxVar7 = cwxVar9;
                                                } else {
                                                    if (z8 == null) {
                                                        arrayList11.add(z8);
                                                        z5 = true;
                                                    } else {
                                                        arrayList11.add((cwx) f2.get(i7));
                                                    }
                                                    i7++;
                                                    hashSet4 = hashSet2;
                                                    z4 = z7;
                                                    ebpVar4 = ebpVar3;
                                                }
                                            }
                                        } else {
                                            hashSet2 = hashSet4;
                                        }
                                        ebpVar3 = ebpVar4;
                                        z7 = z4;
                                        z8 = null;
                                        if (z8 == null) {
                                        }
                                        i7++;
                                        hashSet4 = hashSet2;
                                        z4 = z7;
                                        ebpVar4 = ebpVar3;
                                    }
                                    hashSet = hashSet4;
                                    z6 = z4;
                                    if (z5) {
                                        r4.bw("Method arguments types fixed to match base method, original types: " + r4.f());
                                        r4.as = Collections.unmodifiableList(arrayList11);
                                        r4.bl(arrayList11);
                                    }
                                } else {
                                    hashSet = hashSet4;
                                    z6 = z4;
                                    z5 = false;
                                }
                                if (z6 | z5) {
                                    boolean contains = cciVar3.f12631ab.i.r.contains(ffl.VALID);
                                    String str4 = ayuVar2.f11073a;
                                    String i8 = ayu.i(str4, r4.f(), null);
                                    cciVar3.av();
                                    Iterator it22 = cciVar3.aj.iterator();
                                    while (true) {
                                        if (it22.hasNext()) {
                                            ?? r7 = (hed) it22.next();
                                            ayu ayuVar4 = r7.al;
                                            if (ayuVar4.f11073a.equals(str4) && r7 != r4 && ayuVar4.p(true, false).equals(i8)) {
                                                if (contains) {
                                                    if (r7.l.g(csv.DONT_RENAME) || r7.l.j(acqVar)) {
                                                        r7.bu("Can't rename method to resolve collision");
                                                    } else {
                                                        cci cciVar4 = r7.am;
                                                        String str5 = ayuVar4.f11073a;
                                                        int i9 = 2;
                                                        while (true) {
                                                            String str6 = str5 + i9;
                                                            if (cciVar4.at(str6) == null) {
                                                                ayuVar4.f11073a = str6;
                                                                awl awlVar = new awl();
                                                                awlVar.f10974a = "avoid collision after fix types in other method";
                                                                r7.m(awlVar);
                                                            } else {
                                                                i9++;
                                                            }
                                                        }
                                                    }
                                                }
                                                r7.m(new bbo(r4));
                                            }
                                        }
                                    }
                                    it15 = it;
                                    arrayList9 = arrayList;
                                    hashSet4 = hashSet;
                                    z9 = false;
                                }
                            }
                        }
                        hashSet = hashSet4;
                    }
                    it15 = it;
                    arrayList9 = arrayList;
                    hashSet4 = hashSet;
                    z9 = false;
                }
                return true;
            case 22:
                if (cciVar.f12631ab.i.p) {
                    l(cciVar);
                }
                Iterator it23 = cciVar.aj.iterator();
                while (true) {
                    if (it23.hasNext()) {
                        hed hedVar8 = (hed) it23.next();
                        if (hedVar8.bd()) {
                            hedVar2 = hedVar8;
                        }
                    } else {
                        hedVar2 = null;
                    }
                }
                if (hedVar2 == null) {
                    cciVar.av();
                    if (!cciVar.aj.isEmpty()) {
                        cciVar.av();
                        hedVar2 = (hed) cciVar.aj.get(0);
                    }
                }
                if (hedVar2 != null) {
                    be(hedVar2, cciVar);
                    cciVar.av();
                    Iterable.b.forEach(cciVar.ag, new bwe(this, hedVar2, r82 == true ? 1 : 0));
                }
                return true;
            default:
                return super.k(cciVar);
        }
    }
}
