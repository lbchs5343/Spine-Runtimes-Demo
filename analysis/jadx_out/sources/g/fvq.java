package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class fvq extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f17486a = dsr.k(fvq.class);

    public static List b(guv guvVar) {
        List list = guvVar.f18790g;
        List list2 = guvVar.i;
        if (list.isEmpty()) {
            return list2;
        }
        ArrayList arrayList = new ArrayList(list2);
        Iterator it = guvVar.f18790g.iterator();
        while (it.hasNext()) {
            arrayList.addAll(b((guv) it.next()));
        }
        return arrayList;
    }

    public static void c(ArrayList arrayList, fza fzaVar) {
        for (fza fzaVar2 : fzaVar.f17685e) {
            if (fzaVar2.ac.isEmpty() && arrayList.remove(fzaVar2)) {
                if (!(fzaVar2.z.contains(fzaVar) ? false : fzaVar2.f17684d.contains(fzaVar))) {
                    c(arrayList, fzaVar2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:212:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0474 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static bqz d(hed hedVar, guv guvVar) {
        aea aeaVar;
        ArrayList arrayList;
        HashMap hashMap;
        HashMap hashMap2;
        gnq gnqVar;
        HashMap hashMap3;
        Iterator it;
        List list;
        List list2;
        bne bneVar;
        bne bneVar2;
        if (!guvVar.j) {
            Iterator it2 = guvVar.i.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    aeaVar = null;
                    break;
                }
                aeaVar = (aea) it2.next();
                if (aeaVar.m()) {
                    break;
                }
            }
            if (aeaVar != null) {
                HashMap m = guvVar.m();
                gnq gnqVar2 = new gnq(guvVar, m.size());
                ArrayList arrayList2 = new ArrayList(m.entrySet());
                LinkedList linkedList = new LinkedList();
                int i = 0;
                while (i < arrayList2.size()) {
                    int i2 = i + 1;
                    for (int i3 = i2; i3 < arrayList2.size(); i3++) {
                        linkedList.add(new bne(new fmm((elt) ((Map.Entry) arrayList2.get(i)).getKey(), (fza) ((Map.Entry) arrayList2.get(i)).getValue()), new fmm((elt) ((Map.Entry) arrayList2.get(i3)).getKey(), (fza) ((Map.Entry) arrayList2.get(i3)).getValue())));
                    }
                    i = i2;
                }
                HashMap hashMap4 = new HashMap(m);
                int i4 = 0;
                while (true) {
                    int size = linkedList.size();
                    arrayList = gnqVar2.f18468b;
                    if (i4 >= size) {
                        break;
                    }
                    bne bneVar3 = (bne) linkedList.get(i4);
                    fmm fmmVar = (fmm) bneVar3.f11865a;
                    fmm fmmVar2 = (fmm) bneVar3.f11866b;
                    fza fzaVar = fmmVar.f17037b;
                    elt eltVar = fmmVar.f17036a;
                    fza fzaVar2 = fmmVar2.f17037b;
                    elt eltVar2 = fmmVar2.f17036a;
                    if (ffb.ac(fzaVar, fzaVar2) || ffb.ac(fzaVar2, fzaVar)) {
                        Object[] objArr = {fzaVar, fzaVar2};
                        ArrayList arrayList3 = new ArrayList(2);
                        int i5 = 0;
                        for (int i6 = 2; i5 < i6; i6 = 2) {
                            Object obj = objArr[i5];
                            Objects.requireNonNull(obj);
                            arrayList3.add(obj);
                            i5++;
                        }
                        fza ap = ffb.ap(Collections.unmodifiableList(arrayList3), false);
                        elt eltVar3 = fzaVar != ap ? eltVar : eltVar2;
                        if (fzaVar != ap) {
                            eltVar = eltVar2;
                        }
                        hashMap4.remove(eltVar3);
                        linkedList.remove(i4);
                        arrayList.add(new bne(eltVar, eltVar3));
                    } else {
                        i4++;
                    }
                }
                Iterator it3 = m.keySet().iterator();
                while (true) {
                    boolean hasNext = it3.hasNext();
                    hashMap = gnqVar2.f18467a;
                    if (!hasNext) {
                        break;
                    }
                    elt eltVar4 = (elt) it3.next();
                    fza fzaVar3 = (fza) m.get(eltVar4);
                    HashMap hashMap5 = new HashMap(m.size() - 1);
                    for (elt eltVar5 : m.keySet()) {
                        if (eltVar4 != eltVar5) {
                            fza fzaVar4 = (fza) m.get(eltVar5);
                            boolean z = eltVar4.f() || eltVar5.f();
                            if (fzaVar4 != fzaVar3 || !z) {
                                csv csvVar = csv.MTH_EXIT_BLOCK;
                                if (fzaVar4.l.g(csvVar)) {
                                    hashMap5.put(eltVar5, fzaVar4);
                                    arrayList.clear();
                                } else if (fzaVar3.l.g(csvVar)) {
                                    hashMap5.put(eltVar5, fzaVar3);
                                    arrayList.clear();
                                } else {
                                    BitSet bitSet = (BitSet) fzaVar3.j.clone();
                                    BitSet bitSet2 = fzaVar4.j;
                                    if (!bitSet.isEmpty() && !bitSet2.isEmpty()) {
                                        bitSet.and(bitSet2);
                                        LinkedList linkedList2 = new LinkedList();
                                        for (fza fzaVar5 = fzaVar3; fzaVar5 != null; fzaVar5 = fzaVar5.aa) {
                                            linkedList2.add(fzaVar5);
                                        }
                                        while (true) {
                                            if (fzaVar4 == null) {
                                                fzaVar4 = null;
                                                break;
                                            }
                                            if (linkedList2.contains(fzaVar4)) {
                                                break;
                                            }
                                            fzaVar4 = fzaVar4.aa;
                                        }
                                        hashMap5.put(eltVar5, fzaVar4);
                                    }
                                }
                            }
                        }
                    }
                }
                HashMap hashMap6 = new HashMap();
                LinkedList<elt> linkedList3 = new LinkedList();
                for (elt eltVar6 : hashMap.keySet()) {
                    Iterator it4 = arrayList.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            bneVar = null;
                            break;
                        }
                        bneVar = (bne) it4.next();
                        if (bneVar.f11866b == eltVar6) {
                            break;
                        }
                    }
                    if (bneVar == null) {
                        Map map = (Map) hashMap.get(eltVar6);
                        ArrayList arrayList4 = new ArrayList(map.size());
                        for (elt eltVar7 : map.keySet()) {
                            Iterator it5 = arrayList.iterator();
                            while (true) {
                                if (!it5.hasNext()) {
                                    bneVar2 = null;
                                    break;
                                }
                                bneVar2 = (bne) it5.next();
                                if (bneVar2.f11866b == eltVar7) {
                                    break;
                                }
                            }
                            if (bneVar2 == null || bneVar2.f11865a != eltVar6) {
                                fza fzaVar6 = (fza) map.get(eltVar7);
                                if (fzaVar6 == null) {
                                    linkedList3.add(eltVar7);
                                } else {
                                    arrayList4.add(fzaVar6);
                                }
                            }
                        }
                        if (!arrayList4.isEmpty()) {
                            fza y = ffb.y(arrayList4);
                            if (hashMap6.containsKey(y)) {
                                ((List) hashMap6.get(y)).add(eltVar6);
                            } else {
                                LinkedList linkedList4 = new LinkedList();
                                linkedList4.add(eltVar6);
                                hashMap6.put(y, linkedList4);
                            }
                        }
                    }
                }
                loop13: for (elt eltVar8 : linkedList3) {
                    Iterator it6 = hashMap6.values().iterator();
                    while (it6.hasNext()) {
                        if (((List) it6.next()).contains(eltVar8)) {
                            break loop13;
                        }
                    }
                    fza ap2 = ffb.ap(ffb.bg(hedVar, eltVar8.f15777c, true), false);
                    if (ap2 == null) {
                        throw new gck("Could not find bottom clean successor for isolated try edge");
                    }
                    if (hashMap6.containsKey(ap2)) {
                        list2 = (List) hashMap6.get(ap2);
                    } else {
                        LinkedList linkedList5 = new LinkedList();
                        hashMap6.put(ap2, linkedList5);
                        list2 = linkedList5;
                    }
                    list2.add(eltVar8);
                }
                if (hashMap6.size() == 1) {
                    Iterator it7 = arrayList.iterator();
                    while (it7.hasNext()) {
                        bne bneVar4 = (bne) it7.next();
                        elt eltVar9 = (elt) bneVar4.f11865a;
                        elt eltVar10 = (elt) bneVar4.f11866b;
                        boolean f2 = eltVar9.f();
                        guv guvVar2 = gnqVar2.f18469c;
                        if (!f2 || guvVar2.i.contains(eltVar9.e())) {
                            if (!eltVar10.f() || guvVar2.i.contains(eltVar10.e())) {
                                if (!eltVar9.g() || !eltVar10.g()) {
                                    for (List list3 : hashMap6.values()) {
                                        if (list3.contains(eltVar9)) {
                                            list3.remove(eltVar9);
                                        }
                                    }
                                    fza fzaVar7 = (fza) ((Map) hashMap.get(eltVar9)).get(eltVar10);
                                    if (hashMap6.containsKey(fzaVar7)) {
                                        list = (List) hashMap6.get(fzaVar7);
                                    } else {
                                        LinkedList linkedList6 = new LinkedList();
                                        linkedList6.add(eltVar9);
                                        hashMap6.put(fzaVar7, linkedList6);
                                        list = linkedList6;
                                    }
                                    list.add(eltVar10);
                                }
                            }
                        }
                    }
                }
                HashMap m2 = guvVar.m();
                dda ddaVar = new dda(1);
                Iterator it8 = hashMap6.keySet().iterator();
                while (true) {
                    boolean hasNext2 = it8.hasNext();
                    hashMap2 = ddaVar.f14000b;
                    if (!hasNext2) {
                        break;
                    }
                    fza fzaVar8 = (fza) it8.next();
                    for (elt eltVar11 : (List) hashMap6.get(fzaVar8)) {
                        fza fzaVar9 = (fza) m2.get(eltVar11);
                        boolean z2 = (eltVar11.g() && acw.y(arrayList, new brj(24))) ? false : true;
                        dxx dxxVar = new dxx(fzaVar8, 5);
                        ArrayList arrayList5 = new ArrayList();
                        ffb.bm(arrayList5, fzaVar9, z2, dxxVar);
                        HashMap hashMap7 = m2;
                        List bn = acw.bn(arrayList5, new brj(25));
                        if (!bn.isEmpty()) {
                            Iterator it9 = bn.iterator();
                            while (it9.hasNext()) {
                                Iterator it10 = it9;
                                guv guvVar3 = null;
                                for (fza fzaVar10 : ((fza) it9.next()).z) {
                                    gnq gnqVar3 = gnqVar2;
                                    HashMap hashMap8 = hashMap6;
                                    acq acqVar = acq.aa;
                                    Iterator it11 = it8;
                                    if (fzaVar10.l.j(acqVar)) {
                                        guvVar3 = (guv) fzaVar10.l.k(acqVar);
                                    }
                                    hashMap6 = hashMap8;
                                    gnqVar2 = gnqVar3;
                                    it8 = it11;
                                }
                                gnqVar = gnqVar2;
                                hashMap3 = hashMap6;
                                it = it8;
                                if (guvVar3 != null) {
                                    if (!guvVar3.j && !guvVar3.i.isEmpty()) {
                                        if (z2) {
                                            dxx dxxVar2 = new dxx(fzaVar8, 6);
                                            arrayList5 = new ArrayList();
                                            ffb.bm(arrayList5, fzaVar9, false, dxxVar2);
                                            if (eltVar11.g()) {
                                                ArrayList arrayList6 = new ArrayList(arrayList5);
                                                arrayList6.addAll(guvVar.f18788b);
                                                arrayList5 = arrayList6;
                                            }
                                            m2 = hashMap7;
                                            hashMap6 = hashMap3;
                                            gnqVar2 = gnqVar;
                                            it8 = it;
                                        }
                                        if (eltVar11.g()) {
                                        }
                                        m2 = hashMap7;
                                        hashMap6 = hashMap3;
                                        gnqVar2 = gnqVar;
                                        it8 = it;
                                    }
                                }
                                it9 = it10;
                                hashMap6 = hashMap3;
                                gnqVar2 = gnqVar;
                                it8 = it;
                            }
                        }
                        gnqVar = gnqVar2;
                        hashMap3 = hashMap6;
                        it = it8;
                        if (eltVar11.g()) {
                        }
                        m2 = hashMap7;
                        hashMap6 = hashMap3;
                        gnqVar2 = gnqVar;
                        it8 = it;
                    }
                }
                gnq gnqVar4 = gnqVar2;
                HashMap hashMap9 = hashMap6;
                List e2 = ddaVar.e(aeaVar);
                for (elt eltVar12 : hashMap2.keySet()) {
                    if (!eltVar12.f() || eltVar12.e() != aeaVar) {
                        ((List) hashMap2.get(eltVar12)).removeAll(e2);
                    }
                }
                return new bqz(guvVar, gnqVar4, aeaVar, hashMap9, ddaVar);
            }
        }
        return null;
    }

    public static boolean e(hed hedVar, bqz bqzVar) {
        fza fzaVar;
        fza fzaVar2;
        fza fzaVar3;
        HashMap hashMap;
        List list;
        HashSet hashSet = bqzVar.i;
        guv guvVar = bqzVar.f12057d;
        if (!hashSet.isEmpty()) {
            aea aeaVar = bqzVar.h;
            dda ddaVar = bqzVar.f12056c;
            HashMap hashMap2 = ddaVar.f14000b;
            boolean isEmpty = guvVar.f18790g.isEmpty();
            if (!b(guvVar).isEmpty()) {
                List e2 = ddaVar.e(aeaVar);
                HashMap hashMap3 = bqzVar.f12055b;
                Iterator it = hashMap3.keySet().iterator();
                loop0: while (true) {
                    fzaVar = null;
                    if (!it.hasNext()) {
                        fzaVar2 = null;
                        break;
                    }
                    fza fzaVar4 = (fza) it.next();
                    for (elt eltVar : (List) hashMap3.get(fzaVar4)) {
                        if (!eltVar.g() && eltVar.e().equals(aeaVar)) {
                            fzaVar2 = fzaVar4;
                            break loop0;
                        }
                    }
                }
                HashMap hashMap4 = new HashMap();
                for (elt eltVar2 : hashMap2.keySet()) {
                    if (!eltVar2.f() || eltVar2.e() != aeaVar) {
                        List list2 = (List) hashMap2.get(eltVar2);
                        Iterator it2 = hashMap3.keySet().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                fzaVar3 = fzaVar;
                                break;
                            }
                            fzaVar3 = (fza) it2.next();
                            if (((List) hashMap3.get(fzaVar3)).contains(eltVar2)) {
                                break;
                            }
                        }
                        if (fzaVar3 == null) {
                            throw new gck("Expected to find fallthrough terminus for handler " + eltVar2);
                        }
                        List<cgy> q = new evf(18, fzaVar).q(new cgy(hedVar, new gpu(10), fzaVar2, fzaVar3, e2, list2));
                        HashSet hashSet2 = new HashSet();
                        HashSet hashSet3 = new HashSet();
                        for (cgy cgyVar : q) {
                            for (bne bneVar : cgyVar.f12862e) {
                                HashSet hashSet4 = hashSet;
                                eek eekVar = (eek) bneVar.f11865a;
                                eek eekVar2 = (eek) bneVar.f11866b;
                                if (hashMap4.containsKey(eekVar)) {
                                    hashMap = hashMap3;
                                    list = (List) hashMap4.get(eekVar);
                                } else {
                                    hashMap = hashMap3;
                                    list = new LinkedList();
                                    hashMap4.put(eekVar, list);
                                }
                                list.add(eekVar2);
                                hashSet = hashSet4;
                                hashMap3 = hashMap;
                            }
                            hashSet2.addAll(cgy.i(cgyVar.h));
                            hashSet3.addAll(cgy.i(cgyVar.f12858a));
                            hashSet = hashSet;
                        }
                        HashSet hashSet5 = hashSet;
                        HashMap hashMap5 = hashMap3;
                        HashSet hashSet6 = bqzVar.f12054a;
                        if (hashSet6 == null) {
                            bqzVar.f12054a = hashSet2;
                        } else {
                            hashSet6.retainAll(hashSet2);
                        }
                        HashSet hashSet7 = bqzVar.f12059f;
                        if (hashSet7 == null) {
                            bqzVar.f12059f = hashSet3;
                        } else {
                            hashSet7.addAll(hashSet3);
                        }
                        hashSet = hashSet5;
                        hashMap3 = hashMap5;
                        fzaVar = null;
                    }
                }
                HashSet hashSet8 = hashSet;
                if (hashMap4.isEmpty()) {
                    return false;
                }
                HashSet hashSet9 = new HashSet();
                HashSet hashSet10 = new HashSet();
                HashMap hashMap6 = new HashMap();
                for (eek eekVar3 : hashMap4.keySet()) {
                    List list3 = (List) hashMap4.get(eekVar3);
                    if (list3.size() != hashMap2.size() - 1) {
                        hashSet9.add(eekVar3);
                        hashSet10.addAll(list3);
                        return false;
                    }
                    hashMap6.put(eekVar3, list3);
                }
                for (eek eekVar4 : hashMap6.keySet()) {
                    eekVar4.w(csv.FINALLY_INSNS);
                    for (eek eekVar5 : (List) hashMap6.get(eekVar4)) {
                        g(eekVar4.ai, eekVar5.ai);
                        int size = eekVar4.aj.size();
                        for (int i = 0; i < size; i++) {
                            g(eekVar4.j(i), eekVar5.j(i));
                        }
                        eekVar5.w(csv.DONT_GENERATE);
                    }
                }
                Iterator it3 = bqzVar.f12054a.iterator();
                while (it3.hasNext()) {
                    fza fzaVar5 = (fza) it3.next();
                    if (!acw.y(fzaVar5.ac, new dcg(hashSet9, 0))) {
                        fzaVar5.w(csv.FINALLY_INSNS);
                    }
                }
                Iterator it4 = bqzVar.f12059f.iterator();
                while (it4.hasNext()) {
                    fza fzaVar6 = (fza) it4.next();
                    if (!acw.y(fzaVar6.ac, new dcg(hashSet10, 0))) {
                        fzaVar6.w(csv.DONT_GENERATE);
                    }
                }
                boolean z = (isEmpty || acw.y(bqzVar.f12060g.f18468b, new brj(4))) ? false : true;
                aeaVar.f10079b = true;
                if (z) {
                    List<guv> list4 = guvVar.f18790g;
                    for (guv guvVar2 : list4) {
                        guvVar.i.addAll(guvVar2.i);
                        guvVar.f18788b.addAll(guvVar2.f18788b);
                        guvVar2.j = true;
                    }
                    guvVar.f18788b = new ArrayList(new LinkedHashSet(guvVar.f18788b));
                    list4.clear();
                }
                Iterator it5 = hashSet8.iterator();
                while (it5.hasNext()) {
                    eek s = ffb.s((fza) it5.next());
                    if (s != null) {
                        s.w(csv.DONT_GENERATE);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void g(gsh gshVar, gsh gshVar2) {
        if (gshVar == null || gshVar2 == null || !(gshVar instanceof gks) || !(gshVar2 instanceof gks)) {
            return;
        }
        ((gks) gshVar2).f18326a.n(((gks) gshVar).f18326a.u());
    }

    public static List i(bqz bqzVar, aea aeaVar) {
        fza fzaVar = aeaVar.i;
        List e2 = bqzVar.f12056c.e(aeaVar);
        if (e2 == null) {
            return null;
        }
        eek bq = ffb.bq(fzaVar);
        if (bq != null && bq.ah == hay.MOVE_EXCEPTION) {
            e2.remove(fzaVar);
        }
        fza ap = ffb.ap(e2, false);
        LinkedList<fza> linkedList = new LinkedList();
        ffb.bp(linkedList, ap, e2, new HashSet());
        if (!linkedList.isEmpty()) {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                eek s = ffb.s((fza) it.next());
                if (s != null && bq != null && s.ah == hay.THROW && s.aj.size() > 0 && s.j(0).equals(bq.ai)) {
                }
            }
            ArrayList arrayList = new ArrayList(e2);
            for (fza fzaVar2 : linkedList) {
                arrayList.remove(fzaVar2);
                c(arrayList, fzaVar2);
                bqzVar.i.add(fzaVar2);
            }
            return arrayList;
        }
        return e2;
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        aea aeaVar;
        List i;
        acq acqVar = acq.m;
        if (hedVar.ar || hedVar.ap.isEmpty()) {
            return;
        }
        try {
            List<guv> e2 = hedVar.l.e(acqVar);
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            boolean z2 = false;
            for (guv guvVar : e2) {
                bqz d2 = d(hedVar, guvVar);
                if (d2 != null && (i = i(d2, (aeaVar = d2.h))) != null) {
                    if (i.isEmpty() || ffb.ad(i)) {
                        aeaVar.j.i.remove(aeaVar);
                        z2 = true;
                        aeaVar.f10084g = true;
                        Iterable.b.forEach(aeaVar.f10080c, new esk(14));
                    } else {
                        arrayList.add(guvVar);
                    }
                }
            }
            if (z2) {
                Collection.b.removeIf(hedVar.ap, new brj(5));
                ArrayList arrayList2 = new ArrayList(e2);
                if (Collection.b.removeIf(arrayList2, new brj(3))) {
                    hedVar.u(acqVar);
                    Iterable.b.forEach(arrayList2, new ean(hedVar.r(), 0));
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                bqz d3 = d(hedVar, (guv) it.next());
                if (d3 != null) {
                    i(d3, d3.h);
                    z |= e(hedVar, d3);
                }
            }
            if (z) {
                Collection.b.removeIf(hedVar.ap, new brj(5));
                ArrayList arrayList3 = new ArrayList(e2);
                if (Collection.b.removeIf(arrayList3, new brj(3))) {
                    hedVar.u(acqVar);
                    Iterable.b.forEach(arrayList3, new ean(hedVar.r(), 0));
                }
            }
        } catch (Exception e3) {
            f17486a.f(e3.getMessage());
            try {
                hedVar.be();
                hedVar.bf();
                for (pj pjVar : hedVar.am.f12631ab.v.f10790c) {
                    if (pjVar instanceof fvq) {
                        break;
                    } else {
                        cmb.h(pjVar, hedVar);
                    }
                }
            } catch (heq e4) {
                dcj.d(hedVar, "Undo finally extract failed", e4);
            }
            hedVar.bt("Undo finally extract visitor", e3);
        }
    }
}
