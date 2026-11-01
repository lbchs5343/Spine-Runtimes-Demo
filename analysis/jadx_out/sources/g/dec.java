package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Map;
import j$.util.stream.Collectors;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class dec extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f14038a = dsr.k(dec.class);

    public static void b(LinkedHashSet linkedHashSet, fza fzaVar, hed hedVar) {
        fza fzaVar2;
        if (!fzaVar.f17685e.isEmpty() || fzaVar == (fzaVar2 = hedVar.aj)) {
            return;
        }
        EnumSet enumSet = giq.f18211a;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(fzaVar);
        while (!arrayDeque.isEmpty()) {
            fza fzaVar3 = (fza) arrayDeque.pop();
            if (!linkedHashSet.contains(fzaVar3)) {
                linkedHashSet.add(fzaVar3);
                for (fza fzaVar4 : fzaVar3.f17684d) {
                    if (fzaVar4 != fzaVar2 && linkedHashSet.containsAll(fzaVar4.f17685e)) {
                        arrayDeque.push(fzaVar4);
                    }
                }
            }
        }
    }

    public static void c(hed hedVar) {
        if (Collection.b.removeIf(hedVar.ak, new egm(hedVar))) {
            hedVar.ba();
        }
    }

    public static void d(HashSet hashSet, hed hedVar) {
        if (hashSet.isEmpty()) {
            return;
        }
        long count = Collection.b.stream(hashSet).filter(new bev(5)).count();
        if (count != 0) {
            hedVar.bu("Unreachable blocks removed: " + count + ", instructions: " + Collection.b.stream(hashSet).mapToInt(new dbm(1)).sum());
        }
        Iterable.b.forEach(hashSet, new esk(5));
        hedVar.ak.removeAll(hashSet);
        hedVar.ba();
    }

    public static boolean e(List list, gsh gshVar) {
        gshVar.getClass();
        if (!(gshVar instanceof gks)) {
            return false;
        }
        int i = ((gks) gshVar).f18327e;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((fza) it.next()).ac.iterator();
            while (it2.hasNext()) {
                gks gksVar = ((eek) it2.next()).ai;
                if (gksVar != null && gksVar.f18327e == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean g(gsh gshVar, gsh gshVar2) {
        if (gshVar == gshVar2) {
            return true;
        }
        if (gshVar == null || gshVar2 == null || !gshVar.getClass().equals(gshVar2.getClass())) {
            return false;
        }
        if (gshVar instanceof gks) {
            return ((gks) gshVar).f18327e == ((gks) gshVar2).f18327e;
        }
        if (gshVar instanceof ekh) {
            return ((ekh) gshVar).f15702a == ((ekh) gshVar2).f15702a;
        }
        throw new gck("Unexpected InsnArg types: " + gshVar + " and " + gshVar2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ba, code lost:
    
        if (r1 != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean i(hed hedVar) {
        boolean z;
        final eek s;
        eek s2;
        boolean z2;
        List list;
        int size;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        Iterator it = hedVar.ak.iterator();
        while (true) {
            boolean z8 = false;
            if (it.hasNext()) {
                fza fzaVar = (fza) it.next();
                if (fzaVar.l.g(csv.LOOP_START)) {
                    List e2 = fzaVar.l.e(acq.at);
                    int size2 = e2.size();
                    if (size2 != 0) {
                        Iterator it2 = e2.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                ArrayList f2 = ((gcv) it2.next()).f();
                                if (f2.isEmpty()) {
                                    z7 = false;
                                } else {
                                    Iterator it3 = f2.iterator();
                                    z7 = false;
                                    while (it3.hasNext()) {
                                        exw exwVar = (exw) it3.next();
                                        fza fzaVar2 = exwVar.f16344b;
                                        fza fzaVar3 = exwVar.f16343a;
                                        csv csvVar = csv.SYNTHETIC;
                                        if (!fzaVar2.l.g(csvVar) && !fzaVar3.l.g(csvVar)) {
                                            giq.d(hedVar, fzaVar3, fzaVar2);
                                            z7 = true;
                                        }
                                    }
                                }
                                if (z7) {
                                    break;
                                }
                            } else {
                                if (size2 > 1) {
                                    Iterator it4 = e2.iterator();
                                    while (true) {
                                        if (it4.hasNext()) {
                                            if (((gcv) it4.next()).f17902c != fzaVar) {
                                                z6 = false;
                                                break;
                                            }
                                        } else {
                                            fza i = giq.i(hedVar, fzaVar.y);
                                            i.w(csv.SYNTHETIC);
                                            giq.o(i, fzaVar);
                                            Iterator it5 = e2.iterator();
                                            while (it5.hasNext()) {
                                                giq.q(((gcv) it5.next()).f17903d, fzaVar, i);
                                            }
                                            z6 = true;
                                        }
                                    }
                                }
                                if (size2 == 1) {
                                    gcv gcvVar = (gcv) e2.get(0);
                                    fza fzaVar4 = gcvVar.f17903d;
                                    fza fzaVar5 = gcvVar.f17902c;
                                    List list2 = fzaVar4.f17685e;
                                    if (list2.size() > 1) {
                                        Iterator it6 = new ArrayList(list2).iterator();
                                        z3 = false;
                                        while (it6.hasNext()) {
                                            fza fzaVar6 = (fza) it6.next();
                                            if (!fzaVar6.l.g(csv.SYNTHETIC)) {
                                                giq.d(hedVar, fzaVar6, fzaVar4);
                                                z3 = true;
                                            }
                                        }
                                    } else {
                                        z3 = false;
                                    }
                                    if (!z3) {
                                        List list3 = fzaVar5.f17685e;
                                        int size3 = list3.size() - 1;
                                        if (size3 == 1) {
                                            z4 = false;
                                        } else {
                                            if (size3 == 0) {
                                                csv csvVar2 = csv.MTH_ENTER_BLOCK;
                                                if (!fzaVar5.l.g(csvVar2)) {
                                                    hedVar.bu("Unexpected block without predecessors: " + fzaVar5);
                                                }
                                                fza i2 = giq.i(hedVar, -1);
                                                i2.w(csv.SYNTHETIC);
                                                i2.w(csvVar2);
                                                hedVar.aj = i2;
                                                fzaVar5.v(csvVar2);
                                                giq.o(i2, fzaVar5);
                                            } else {
                                                fza i3 = giq.i(hedVar, -1);
                                                i3.w(csv.SYNTHETIC);
                                                Iterator it7 = new ArrayList(list3).iterator();
                                                while (it7.hasNext()) {
                                                    fza fzaVar7 = (fza) it7.next();
                                                    if (fzaVar7 != fzaVar4) {
                                                        giq.q(fzaVar7, fzaVar5, i3);
                                                    }
                                                }
                                                giq.o(i3, fzaVar5);
                                            }
                                            z4 = true;
                                        }
                                        if (!z4) {
                                            if (fzaVar4.f17684d.size() <= 1) {
                                                z5 = false;
                                            } else {
                                                fza i4 = giq.i(hedVar, -1);
                                                i4.w(csv.SYNTHETIC);
                                                i4.w(csv.LOOP_END);
                                                giq.q(fzaVar4, fzaVar5, i4);
                                                giq.o(i4, fzaVar5);
                                                z5 = true;
                                            }
                                            if (!z5) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (z8) {
                    break;
                }
            } else {
                if (hedVar.bg()) {
                    z = false;
                } else {
                    Iterator it8 = new ArrayList(hedVar.ad.f17685e).iterator();
                    z = false;
                    while (it8.hasNext()) {
                        fza fzaVar8 = (fza) it8.next();
                        List list4 = fzaVar8.f17685e;
                        ArrayList arrayList = fzaVar8.ac;
                        fza fzaVar9 = (fza) evh.q(list4);
                        if (fzaVar9 != null) {
                            ArrayList arrayList2 = fzaVar9.ac;
                            eek eekVar = (eek) evh.q(arrayList2);
                            if (eekVar != null && eekVar.as()) {
                                gks gksVar = eekVar.ai;
                                eek s3 = ffb.s(fzaVar8);
                                if (s3 != null && s3.ah == hay.RETURN) {
                                    gsh j = s3.j(0);
                                    gksVar.getClass();
                                    j.getClass();
                                    if ((j instanceof gks) && gksVar.f18327e == ((gks) j).f18327e) {
                                        arrayList2.addAll(arrayList);
                                        fzaVar9.s(fzaVar8);
                                        giq.l(fzaVar9, fzaVar8);
                                        arrayList.clear();
                                        fzaVar8.w(csv.REMOVE);
                                        fza fzaVar10 = hedVar.ad;
                                        giq.l(fzaVar8, fzaVar10);
                                        giq.o(fzaVar9, fzaVar10);
                                        fzaVar9.ad();
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                    if (z) {
                        c(hedVar);
                    }
                }
                if (!z) {
                    if (ddx.b(hedVar, fuu.SWITCH)) {
                        for (fza fzaVar11 : hedVar.ak) {
                            ArrayList arrayList3 = fzaVar11.ac;
                            if (arrayList3.size() == 1 && fzaVar11.f17684d.size() == 1 && ((eek) arrayList3.get(0)).ah == hay.MOVE && (size = (list = fzaVar11.f17685e).size()) >= 3) {
                                Iterator it9 = list.iterator();
                                boolean z9 = false;
                                boolean z10 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        eek s4 = ffb.s((fza) it9.next());
                                        if (s4 == null) {
                                            break;
                                        }
                                        int i5 = eru.f16059a[s4.ah.ordinal()];
                                        if (i5 == 1) {
                                            z9 = true;
                                        } else {
                                            if (i5 != 2) {
                                                break;
                                            }
                                            z10 = true;
                                        }
                                    } else if (z9 && z10) {
                                        fza fzaVar12 = (fza) fzaVar11.f17684d.get(0);
                                        ArrayList arrayList4 = new ArrayList(list);
                                        for (int i6 = 1; i6 < size; i6++) {
                                            fza fzaVar13 = (fza) arrayList4.get(i6);
                                            fza i7 = giq.i(hedVar, -1);
                                            i7.w(csv.SYNTHETIC);
                                            Iterator it10 = fzaVar11.ac.iterator();
                                            while (it10.hasNext()) {
                                                eek ay = ((eek) it10.next()).ay();
                                                ay.w(csv.SYNTHETIC);
                                                i7.ac.add(ay);
                                            }
                                            i7.s(fzaVar11);
                                            giq.q(fzaVar13, fzaVar11, i7);
                                            giq.o(i7, fzaVar12);
                                        }
                                        z2 = true;
                                    }
                                }
                            }
                            z2 = false;
                            if (z2) {
                            }
                        }
                    }
                    boolean z11 = false;
                    for (fza fzaVar14 : hedVar.ad.f17685e) {
                        csv csvVar3 = csv.SYNTHETIC;
                        sm smVar = fzaVar14.l;
                        ArrayList arrayList5 = fzaVar14.ac;
                        if (!smVar.g(csvVar3)) {
                            if (!fzaVar14.l.g(csv.ORIG_RETURN)) {
                                if (!fzaVar14.l.j(acq.bh)) {
                                    List list5 = fzaVar14.f17685e;
                                    if (list5.size() >= 2 && (s2 = ffb.s(fzaVar14)) != null && (s2.aj.size() != 1 || arrayList5.size() != 1 || e(list5, s2.j(0)))) {
                                        Iterator it11 = new ArrayList(list5).iterator();
                                        boolean z12 = true;
                                        while (it11.hasNext()) {
                                            fza fzaVar15 = (fza) it11.next();
                                            if (z12) {
                                                fzaVar14.w(csv.ORIG_RETURN);
                                                z12 = false;
                                            } else {
                                                fza i8 = giq.i(hedVar, -1);
                                                i8.w(csv.SYNTHETIC);
                                                i8.w(csv.RETURN);
                                                Iterator it12 = arrayList5.iterator();
                                                while (it12.hasNext()) {
                                                    eek ay2 = ((eek) it12.next()).ay();
                                                    ay2.w(csv.SYNTHETIC);
                                                    i8.ac.add(ay2);
                                                }
                                                giq.q(fzaVar15, fzaVar14, i8);
                                            }
                                        }
                                        z11 = true;
                                    }
                                }
                            }
                        }
                        if (!fzaVar14.l.g(csv.IGNORE_THROW_SPLIT)) {
                            List<fza> list6 = fzaVar14.f17685e;
                            if (list6.size() >= 2 && (s = ffb.s(fzaVar14)) != null && s.ah == hay.THROW) {
                                final HashMap hashMap = new HashMap(list6.size());
                                final HashSet hashSet = new HashSet(list6.size());
                                for (final fza fzaVar16 : list6) {
                                    ffb.ci(hedVar, fzaVar16, new Predicate() { // from class: g.gsl
                                        public final /* synthetic */ Predicate and(Predicate predicate) {
                                            return j$.util.function.m.$default$and(this, predicate);
                                        }

                                        public final /* synthetic */ Predicate negate() {
                                            return j$.util.function.m.$default$negate(this);
                                        }

                                        public final /* synthetic */ Predicate or(Predicate predicate) {
                                            return j$.util.function.m.$default$or(this, predicate);
                                        }

                                        @Override // java.util.function.Predicate
                                        public final boolean test(Object obj) {
                                            fza fzaVar17 = (fza) obj;
                                            eng engVar = (eng) fzaVar17.l.k(acq.bh);
                                            if (engVar == null) {
                                                return false;
                                            }
                                            boolean contains = engVar.f15859a.f10080c.contains(fzaVar17);
                                            if (contains && dec.e(Collections.singletonList(fzaVar17), eek.this.j(0))) {
                                                hashMap.put(fzaVar16, engVar);
                                                hashSet.add(fzaVar17);
                                            }
                                            return contains;
                                        }
                                    });
                                }
                                if (hashSet.size() == 1) {
                                    fzaVar14.w(csv.IGNORE_THROW_SPLIT);
                                } else {
                                    Iterator it13 = new ArrayList(list6).iterator();
                                    boolean z13 = true;
                                    while (it13.hasNext()) {
                                        fza fzaVar17 = (fza) it13.next();
                                        if (z13) {
                                            z13 = false;
                                        } else {
                                            fza i9 = giq.i(hedVar, -1);
                                            i9.w(csv.SYNTHETIC);
                                            Iterator it14 = arrayList5.iterator();
                                            while (it14.hasNext()) {
                                                eek ay3 = ((eek) it14.next()).ay();
                                                ay3.w(csv.SYNTHETIC);
                                                i9.ac.add(ay3);
                                            }
                                            i9.s(fzaVar14);
                                            eng engVar = (eng) hashMap.get(fzaVar17);
                                            if (engVar != null) {
                                                engVar.f15859a.f10080c.add(i9);
                                            }
                                            giq.q(fzaVar17, fzaVar14, i9);
                                        }
                                    }
                                    z11 = true;
                                }
                            }
                        }
                    }
                    if (z11) {
                        fza fzaVar18 = hedVar.ad;
                        EnumSet enumSet = giq.f18211a;
                        Iterator it15 = fzaVar18.f17685e.iterator();
                        while (it15.hasNext()) {
                            ((fza) it15.next()).f17684d.remove(fzaVar18);
                        }
                        fzaVar18.f17685e.clear();
                        for (fza fzaVar19 : hedVar.ak) {
                            if (fzaVar19 != fzaVar18 && fzaVar19.f17684d.isEmpty()) {
                                if (!fzaVar19.l.g(csv.REMOVE)) {
                                    giq.o(fzaVar19, fzaVar18);
                                }
                            }
                        }
                    }
                    return z11;
                }
            }
        }
        return true;
    }

    public static void l(hed hedVar) {
        fza fzaVar;
        for (fza fzaVar2 : hedVar.ak) {
            if (fzaVar2.f17685e.isEmpty() && fzaVar2 != hedVar.aj) {
                if (fzaVar2.l.j(acq.bn)) {
                    Iterator it = fzaVar2.f17684d.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            fzaVar = null;
                            break;
                        }
                        fzaVar = (fza) it.next();
                        if (fzaVar.l.g(csv.EXC_BOTTOM_SPLITTER)) {
                            break;
                        }
                    }
                    if (fzaVar != null && fzaVar.f17685e.size() == 1) {
                        HashSet hashSet = new HashSet();
                        hashSet.add(fzaVar);
                        hashSet.add(fzaVar2);
                        d(hashSet, hedVar);
                        hedVar.bv("Removed unreachable split cross block " + fzaVar2.toString());
                    }
                }
                throw new gck("Unreachable block: " + fzaVar2);
            }
        }
    }

    public static void m(hed hedVar) {
        Iterable.b.forEach(hedVar.ak, new esk(3));
        int size = hedVar.ak.size();
        ArrayList arrayList = new ArrayList(size);
        ffb.ce(hedVar, hedVar.aj, new gpn(19), new efe(4, arrayList));
        if (arrayList.size() != size) {
            throw new gck("Found unreachable blocks");
        }
        hedVar.ak = arrayList;
        hedVar.ba();
        fza[] w = kj.w(arrayList, new fov(19));
        fza fzaVar = (fza) arrayList.get(0);
        fzaVar.f17687g = giu.f18223a;
        fzaVar.f17683ab = null;
        int size2 = arrayList.size();
        for (int i = 1; i < size2; i++) {
            fza fzaVar2 = (fza) arrayList.get(i);
            fza fzaVar3 = w[i];
            fzaVar2.f17683ab = fzaVar3;
            fzaVar3.f17686f.add(fzaVar2);
            BitSet bitSet = new BitSet(w.length);
            while (true) {
                int i2 = fzaVar3.x;
                if (bitSet.get(i2)) {
                    break;
                }
                bitSet.set(i2);
                BitSet bitSet2 = fzaVar3.f17687g;
                if (bitSet2 != null) {
                    bitSet.or(bitSet2);
                    break;
                }
                fzaVar3 = w[i2];
            }
            bitSet.clear(i);
            fzaVar2.f17687g = bitSet;
        }
        Iterable.b.forEach(hedVar.ak, new esk(4));
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0a55  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0a76  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0ab2  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0a91 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:381:0x06f9  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0832  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x084c A[LOOP:28: B:431:0x0846->B:433:0x084c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:438:0x086a  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x088f  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0709  */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(hed hedVar) {
        List list;
        boolean z;
        List list2;
        fza fzaVar;
        fza fzaVar2;
        ArrayDeque arrayDeque;
        fza n;
        boolean z2;
        acq acqVar;
        fza fzaVar3;
        Iterator it;
        Iterator it2;
        fza fzaVar4;
        List list3;
        boolean z3;
        boolean z4;
        eek eekVar;
        hay hayVar;
        eng engVar;
        boolean z5;
        int i;
        int i2;
        List e2;
        List list4;
        eek s;
        acq acqVar2 = acq.al;
        if (hedVar.ar || hedVar.ak.isEmpty()) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it3 = hedVar.ak.iterator();
        while (it3.hasNext()) {
            b(linkedHashSet, (fza) it3.next(), hedVar);
        }
        d(linkedHashSet, hedVar);
        m(hedVar);
        acq acqVar3 = acq.bh;
        List list5 = hedVar.ak;
        Iterator it4 = list5.iterator();
        boolean z6 = false;
        while (true) {
            int i3 = 1;
            if (!it4.hasNext()) {
                break;
            }
            fza fzaVar5 = (fza) it4.next();
            if (!fzaVar5.l.g(csv.LOOP_START)) {
                if (fzaVar5.l.g(csv.LOOP_END)) {
                }
            }
            List list6 = fzaVar5.f17685e;
            if (list6.size() > 1 && ((s = ffb.s(fzaVar5)) == null || s.ah != hay.IF)) {
                eek bq = ffb.bq(fzaVar5);
                if (bq == null || !bq.l.j(acqVar3)) {
                    int i4 = 0;
                    while (true) {
                        Iterator it5 = list6.iterator();
                        eek eekVar2 = null;
                        while (it5.hasNext()) {
                            ArrayList arrayList = ((fza) it5.next()).ac;
                            int size = arrayList.size();
                            eek eekVar3 = size <= i4 ? null : (eek) arrayList.get((size - i4) - i3);
                            if (eekVar3 == null) {
                                break;
                            }
                            if (eekVar2 != null) {
                                if (eekVar2 != eekVar3) {
                                    if (!eekVar2._p(eekVar3) || !g(eekVar2.ai, eekVar3.ai)) {
                                        break;
                                    }
                                    int size2 = eekVar2.aj.size();
                                    for (int i5 = 0; i5 < size2; i5++) {
                                        if (!g(eekVar2.j(i5), eekVar3.j(i5))) {
                                            break;
                                        }
                                    }
                                }
                                if (!eekVar2.aw()) {
                                    break;
                                }
                            } else {
                                eekVar2 = eekVar3;
                            }
                            i3 = 1;
                        }
                        i4++;
                        i3 = 1;
                    }
                    if (i4 > 0) {
                        ArrayList arrayList2 = ((fza) list6.get(0)).ac;
                        int size3 = arrayList2.size();
                        List subList = arrayList2.subList(size3 - i4, size3);
                        ArrayList arrayList3 = fzaVar5.ac;
                        ArrayList arrayList4 = new ArrayList(arrayList3.size() + subList.size());
                        arrayList4.addAll(subList);
                        arrayList4.addAll(arrayList3);
                        arrayList3.clear();
                        arrayList3.addAll(arrayList4);
                        Iterable.b.forEach(list6, new gkd(i4, 0));
                        hedVar.bw("Move duplicate insns, count: " + i4 + " to block " + fzaVar5);
                        z6 = true;
                    }
                }
            }
        }
        int i6 = akd.f10372a;
        int i7 = 2;
        if (hedVar.ap.isEmpty()) {
            list3 = list5;
            z3 = z6;
            z4 = false;
        } else {
            Iterable.b.forEach(hedVar.ak, new esk(1));
            kj.l(hedVar);
            Iterator it6 = hedVar.ak.iterator();
            while (it6.hasNext()) {
                Iterator it7 = ((fza) it6.next()).ac.iterator();
                while (it7.hasNext()) {
                    eek eekVar4 = (eek) it7.next();
                    if (eekVar4.l.j(acqVar2)) {
                        int i8 = axo.f11031a[eekVar4.ah.ordinal()];
                        if (i8 != 1 && i8 != 2 && i8 != 3 && i8 != 4 && i8 != 11) {
                            switch (i8) {
                                case 13:
                                case 14:
                                case 15:
                                    break;
                                default:
                                    switch (i8) {
                                    }
                            }
                        }
                        eekVar4.u(acqVar2);
                    }
                }
            }
            for (fza fzaVar6 : hedVar.ak) {
                Iterator it8 = fzaVar6.ac.iterator();
                coe coeVar = null;
                while (true) {
                    if (it8.hasNext()) {
                        coe coeVar2 = (coe) ((eek) it8.next()).l.k(acqVar2);
                        if (coeVar2 != null) {
                            if (coeVar == null) {
                                coeVar = coeVar2;
                            } else if (!coeVar.equals(coeVar2)) {
                                coeVar = null;
                            }
                        }
                    }
                }
                if (coeVar != null) {
                    fzaVar6.m(coeVar);
                    Iterator it9 = fzaVar6.ac.iterator();
                    while (it9.hasNext()) {
                        eek eekVar5 = (eek) it9.next();
                        csv csvVar = csv.TRY_ENTER;
                        if (eekVar5.l.g(csvVar)) {
                            fzaVar6.w(csvVar);
                        }
                        csv csvVar2 = csv.TRY_LEAVE;
                        if (eekVar5.l.g(csvVar2)) {
                            fzaVar6.w(csvVar2);
                        }
                    }
                }
            }
            List list7 = hedVar.ak;
            int size4 = list7.size();
            for (int i9 = 0; i9 < size4; i9++) {
                fza fzaVar7 = (fza) list7.get(i9);
                eek bq2 = ffb.bq(fzaVar7);
                if (bq2 != null && (engVar = (eng) bq2.l.k(acqVar3)) != null) {
                    aea aeaVar = engVar.f15859a;
                    ArrayList arrayList5 = aeaVar.f10080c;
                    bq2.u(acqVar3);
                    acq acqVar4 = acq.ae;
                    cya cyaVar = (cya) fzaVar7.l.k(acqVar4);
                    if (cyaVar != null) {
                        giq.l(cyaVar.f13730a, fzaVar7);
                        fzaVar7.u(acqVar4);
                    }
                    if (fzaVar7.f17685e.isEmpty()) {
                        aeaVar.i = fzaVar7;
                        fzaVar7.m(engVar);
                        arrayList5.add(fzaVar7);
                        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                        ffb.q(fzaVar7, fzaVar7, linkedHashSet2, ffb.v(hedVar), true);
                        Iterable.b.forEach(linkedHashSet2, new agx(6, aeaVar));
                    } else {
                        fza i10 = giq.i(hedVar, fzaVar7.y);
                        i10.w(csv.SYNTHETIC);
                        i10.m(engVar);
                        giq.o(i10, fzaVar7);
                        aeaVar.i = i10;
                        arrayList5.add(i10);
                    }
                    cwx l = aeaVar.l();
                    eek s2 = ffb.s(fzaVar7);
                    if (s2 == null || s2.ah != hay.MOVE_EXCEPTION) {
                        aeaVar.f10083f = new add("unused", l);
                    } else {
                        gks gksVar = new gks(s2.ai.f18327e, l);
                        gksVar.s(s2);
                        s2.ax(gksVar);
                        s2.w(csv.DONT_INLINE);
                        gksVar.w(csv.CUSTOM_DECLARE);
                        aeaVar.f10083f = gksVar;
                        s2.m(engVar);
                    }
                }
            }
            HashMap hashMap = new HashMap();
            for (fza fzaVar8 : hedVar.ak) {
                coe coeVar3 = (coe) fzaVar8.l.k(acqVar2);
                if (coeVar3 != null) {
                    Iterator it10 = coeVar3.f13218a.iterator();
                    while (it10.hasNext()) {
                        ((List) Map.b.computeIfAbsent(hashMap, (aea) it10.next(), new fov(6))).add(fzaVar8);
                    }
                }
            }
            if (hashMap.isEmpty()) {
                Iterable.b.forEach(hedVar.ap, new bra(hedVar, 0));
            } else {
                Map.b.forEach(hashMap, new esa(1, hedVar));
            }
            giq.m(hedVar);
            int i11 = 5;
            Collection.b.removeIf(hedVar.ap, new brj(i11));
            if (hedVar.ap.isEmpty()) {
                list = Collections.EMPTY_LIST;
            } else {
                Map.b.forEach(hashMap, new ejt());
                ArrayList arrayList6 = new ArrayList();
                Map.b.forEach(hashMap, new esa(i7, arrayList6));
                if (arrayList6.size() > 1) {
                    while (true) {
                        Iterator it11 = arrayList6.iterator();
                        while (it11.hasNext()) {
                            guv guvVar = (guv) it11.next();
                            Iterator it12 = arrayList6.iterator();
                            while (it12.hasNext()) {
                                guv guvVar2 = (guv) it12.next();
                                if (guvVar != guvVar2 && guvVar2.f18789f == null) {
                                    List list8 = guvVar.f18788b;
                                    List list9 = guvVar.i;
                                    List list10 = guvVar2.f18788b;
                                    List list11 = guvVar2.i;
                                    if (list8.equals(list10)) {
                                        arrayList6.add(new guv(acr.bk(list9, list11), guvVar.f18788b, arrayList6.size()));
                                        arrayList6.remove(guvVar);
                                        arrayList6.remove(guvVar2);
                                    } else {
                                        Set set = (Set) Collection.b.stream(list11).flatMap(new fov(i11)).collect(Collectors.toSet());
                                        int i12 = 0;
                                        boolean anyMatch = Collection.b.stream(set).anyMatch(new eio(guvVar, i12));
                                        boolean anyMatch2 = Collection.b.stream(guvVar2.f18788b).anyMatch(new eio(guvVar, i12));
                                        Iterator it13 = it11;
                                        boolean anyMatch3 = Collection.b.stream(guvVar.f18788b).anyMatch(new fev(1, set));
                                        if (anyMatch && (anyMatch2 || anyMatch3)) {
                                            List bk = acr.bk(guvVar.f18788b, guvVar2.f18788b);
                                            list11.removeAll(list9);
                                            guvVar2.f18789f = guvVar;
                                            if (guvVar.f18790g.isEmpty()) {
                                                guvVar.f18790g = new ArrayList();
                                            }
                                            guvVar.f18790g.add(guvVar2);
                                            guvVar.f18788b = bk;
                                        } else if (new HashSet(list11).containsAll(list9)) {
                                            arrayList6.add(new guv(acr.bk(list9, list11), acr.bk(guvVar.f18788b, guvVar2.f18788b), arrayList6.size()));
                                            arrayList6.remove(guvVar);
                                            arrayList6.remove(guvVar2);
                                        }
                                        it11 = it13;
                                        i11 = 5;
                                    }
                                    i11 = 5;
                                }
                            }
                        }
                    }
                }
                Iterator it14 = arrayList6.iterator();
                boolean z7 = false;
                while (it14.hasNext()) {
                    List list12 = ((guv) it14.next()).i;
                    if (list12.size() >= 2) {
                        Iterator it15 = list12.iterator();
                        while (true) {
                            if (it15.hasNext()) {
                                aea aeaVar2 = (aea) it15.next();
                                if (aeaVar2.f10080c.size() == 1) {
                                    fza fzaVar9 = aeaVar2.i;
                                    if (fzaVar9.ac.size() == 1 && ffb.cd(fzaVar9, hay.MOVE_EXCEPTION)) {
                                    }
                                }
                            } else {
                                List t = acw.t(list12, new fov(7));
                                List list13 = (List) Collection.b.stream(t).flatMap(new fov(3)).distinct().collect(Collectors.toList());
                                if (list13.size() == 1) {
                                    List list14 = ((fza) list13.get(0)).f17685e;
                                    if (list14.size() != t.size() ? false : list14.containsAll(t)) {
                                        if (((List) Collection.b.stream(list12).map(new fov(4)).distinct().collect(Collectors.toList())).size() != 1) {
                                            z = false;
                                        } else {
                                            Collection.b.removeIf(list12, new ry((aea) list12.get(0), 0, hedVar));
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z = false;
                    if (z) {
                        z7 = true;
                    }
                }
                if (z7) {
                    giq.m(hedVar);
                    Collection.b.removeIf(hedVar.ap, new brj(5));
                }
                Iterable.b.forEach(arrayList6, new esk(2));
                Collection.b.removeIf(arrayList6, new bev(3));
                Collection.b.removeIf(hedVar.ap, new brj(5));
                giq.m(hedVar);
                Comparator comparator = hedVar.am.f12631ab.u.f12545e.f13638d;
                Iterator it16 = arrayList6.iterator();
                while (it16.hasNext()) {
                    guv guvVar3 = (guv) it16.next();
                    Iterator it17 = guvVar3.i.iterator();
                    while (it17.hasNext()) {
                        List.b.sort(((aea) it17.next()).f10082e, new aou(0, comparator));
                    }
                    List.b.sort(guvVar3.i, new ffp(guvVar3, 0, comparator));
                }
                list = arrayList6;
            }
            if (!list.isEmpty()) {
                int size5 = list.size() * 3;
                ArrayDeque arrayDeque2 = new ArrayDeque(list);
                int i13 = 0;
                while (!arrayDeque2.isEmpty()) {
                    guv guvVar4 = (guv) arrayDeque2.removeFirst();
                    acq acqVar5 = acq.bn;
                    java.util.List<fza> list15 = guvVar4.f18788b;
                    java.util.List list16 = guvVar4.i;
                    fza y = ffb.y(list15);
                    if (y == null) {
                        BitSet v = ffb.v(hedVar);
                        v.set(0, hedVar.ak.size());
                        Iterable.b.forEach(list15, new bgc(v, 2));
                        BitSet v2 = ffb.v(hedVar);
                        v2.or(v);
                        ffb.am(hedVar, v, new bgc(v2, 3));
                        y = ffb.bv(hedVar, v2);
                        if (y == null) {
                            throw new gck("Failed to find top block for try-catch from: " + list15);
                        }
                        if (y.f17684d.size() == 1) {
                            fza fzaVar10 = (fza) y.f17684d.get(0);
                            if (list15.contains(fzaVar10)) {
                                y = fzaVar10;
                            }
                        }
                        if (y.f17684d.size() == 1 && !y.l.j(acqVar2)) {
                            y = (fza) y.f17684d.get(0);
                        }
                    } else if (y.f17684d.size() == 1 && !y.l.j(acqVar2)) {
                        y = (fza) y.f17684d.get(0);
                    }
                    if (!y.f17685e.isEmpty() || y == hedVar.aj) {
                        fza ap = ffb.ap(list15, false);
                        if (ap != null) {
                            list2 = list5;
                        } else {
                            ap = ffb.aq(hedVar, list15);
                            if (ap == null) {
                                list2 = list5;
                                ap = null;
                            } else {
                                ArrayList arrayList7 = new ArrayList(ap.f17685e);
                                arrayList7.removeAll(list15);
                                list2 = list5;
                                java.util.List list17 = (java.util.List) Collection.b.stream(arrayList7).filter(new btn(0, list15)).collect(Collectors.toList());
                                if (!list17.isEmpty() && list17.size() != ap.f17685e.size()) {
                                    fza n2 = giq.n(hedVar, ap);
                                    n2.w(csv.SYNTHETIC);
                                    n2.m(new dny(ap));
                                    Iterator it18 = list17.iterator();
                                    while (it18.hasNext()) {
                                        giq.q((fza) it18.next(), n2, ap);
                                    }
                                    ap = n2;
                                }
                            }
                        }
                        if (ap != null) {
                            if (ap.l.g(csv.RETURN)) {
                                fza n3 = giq.n(hedVar, ap);
                                n3.w(csv.SYNTHETIC);
                                fza fzaVar11 = ap;
                                ap = n3;
                                fzaVar = fzaVar11;
                                fzaVar2 = hedVar.aj;
                                if (y != fzaVar2) {
                                    n = giq.n(hedVar, (fza) fzaVar2.f17684d.get(0));
                                    arrayDeque = arrayDeque2;
                                } else {
                                    java.util.List list18 = y.f17685e;
                                    csv csvVar3 = csv.EXC_TOP_SPLITTER;
                                    fza ag = ffb.ag(list18, csvVar3);
                                    if (ag != null) {
                                        arrayDeque = arrayDeque2;
                                    } else {
                                        arrayDeque = arrayDeque2;
                                        if (y.z.size() != 1 || !y.ac.isEmpty() || (ag = ffb.ag(y.z, csvVar3)) == null || ag.f17685e.size() != 1) {
                                            n = giq.n(hedVar, y);
                                        }
                                    }
                                    n = ag;
                                }
                                n.w(csv.EXC_TOP_SPLITTER);
                                csv csvVar4 = csv.SYNTHETIC;
                                n.w(csvVar4);
                                z2 = z6;
                                int sum = Collection.b.stream(list16).mapToInt(new dbm(0)).sum();
                                if (ap != null || sum == 0) {
                                    acqVar = acqVar2;
                                    fzaVar3 = null;
                                } else {
                                    java.util.List list19 = ap.f17684d;
                                    csv csvVar5 = csv.EXC_BOTTOM_SPLITTER;
                                    fza ag2 = ffb.ag(list19, csvVar5);
                                    if (ag2 == null) {
                                        ag2 = giq.i(hedVar, -1);
                                    }
                                    ag2.w(csvVar5);
                                    ag2.w(csvVar4);
                                    giq.o(ap, ag2);
                                    if (fzaVar != null) {
                                        java.util.List list20 = ap.f17685e;
                                        fon fonVar = new fon(hedVar);
                                        acqVar = acqVar2;
                                        Iterable.b.forEach(list20, new agx(5, fonVar));
                                        Iterator it19 = list16.iterator();
                                        while (it19.hasNext()) {
                                            aea aeaVar3 = (aea) it19.next();
                                            Iterator it20 = aeaVar3.f10080c.iterator();
                                            while (true) {
                                                if (!it20.hasNext()) {
                                                    it2 = it19;
                                                    fzaVar4 = ag2;
                                                } else if (fonVar.d((fza) it20.next())) {
                                                    ArrayList arrayList8 = aeaVar3.f10080c;
                                                    hed hedVar2 = fonVar.f17142a;
                                                    fon fonVar2 = new fon(hedVar2);
                                                    it2 = it19;
                                                    fzaVar4 = ag2;
                                                    Iterable.b.forEach(arrayList8, new agx(5, fonVar2));
                                                    BitSet bitSet = new BitSet(hedVar2.ak.size());
                                                    bitSet.or(fonVar.f17143b);
                                                    bitSet.and(fonVar2.f17143b);
                                                    fza fzaVar12 = bitSet.cardinality() == 1 ? (fza) hedVar2.ak.get(bitSet.nextSetBit(0)) : null;
                                                    if (fzaVar12 != null) {
                                                        giq.q(fzaVar12, ap, fzaVar);
                                                    }
                                                }
                                            }
                                            it19 = it2;
                                            ag2 = fzaVar4;
                                        }
                                    } else {
                                        acqVar = acqVar2;
                                    }
                                    fzaVar3 = ag2;
                                }
                                akd.b(guvVar4, n, fzaVar3);
                                if (ap != null && ap.l.j(acqVar5)) {
                                    ArrayList arrayList9 = new ArrayList();
                                    for (fza fzaVar13 : ap.f17685e) {
                                        if (ffb.av(ap, fzaVar13)) {
                                            arrayList9.add(fzaVar13);
                                        }
                                    }
                                    it = arrayList9.iterator();
                                    while (it.hasNext()) {
                                        giq.q((fza) it.next(), ap, ((dny) ap.l.k(acqVar5)).f14500a);
                                    }
                                }
                                for (fza fzaVar14 : list15) {
                                    guv guvVar5 = (guv) fzaVar14.l.k(acq.aa);
                                    if (guvVar5 == null || guvVar5.f18790g.contains(guvVar4)) {
                                        fzaVar14.m(guvVar4);
                                    }
                                }
                                guvVar4.f18787a = n;
                                n.ad();
                                if (fzaVar3 != null) {
                                    fzaVar3.ad();
                                }
                            }
                        }
                        fzaVar = null;
                        fzaVar2 = hedVar.aj;
                        if (y != fzaVar2) {
                        }
                        n.w(csv.EXC_TOP_SPLITTER);
                        csv csvVar42 = csv.SYNTHETIC;
                        n.w(csvVar42);
                        z2 = z6;
                        int sum2 = Collection.b.stream(list16).mapToInt(new dbm(0)).sum();
                        if (ap != null) {
                        }
                        acqVar = acqVar2;
                        fzaVar3 = null;
                        akd.b(guvVar4, n, fzaVar3);
                        if (ap != null) {
                            ArrayList arrayList92 = new ArrayList();
                            while (r3.hasNext()) {
                            }
                            it = arrayList92.iterator();
                            while (it.hasNext()) {
                            }
                        }
                        while (r0.hasNext()) {
                        }
                        guvVar4.f18787a = n;
                        n.ad();
                        if (fzaVar3 != null) {
                        }
                    } else {
                        arrayDeque2.addLast(guvVar4);
                        acqVar = acqVar2;
                        list2 = list5;
                        arrayDeque = arrayDeque2;
                        z2 = z6;
                    }
                    int i14 = i13 + 1;
                    if (i13 > size5) {
                        throw new gck("Try blocks wrapping queue limit reached! Please report as an issue!");
                    }
                    i13 = i14;
                    list5 = list2;
                    arrayDeque2 = arrayDeque;
                    z6 = z2;
                    acqVar2 = acqVar;
                }
            }
            list3 = list5;
            z3 = z6;
            Iterable.b.forEach(list, new ean(hedVar.r(), 0));
            Iterable.b.forEach(hedVar.ak, new esk(1));
            Iterator it21 = hedVar.ap.iterator();
            while (it21.hasNext()) {
                Iterator it22 = ((aea) it21.next()).f10080c.iterator();
                while (it22.hasNext()) {
                    fza fzaVar15 = (fza) it22.next();
                    ArrayList arrayList10 = new ArrayList();
                    ArrayList arrayList11 = fzaVar15 != null ? fzaVar15.ac : null;
                    Iterator it23 = fzaVar15.ac.iterator();
                    while (it23.hasNext() && (hayVar = (eekVar = (eek) it23.next()).ah) != hay.MONITOR_ENTER) {
                        if (hayVar == hay.MONITOR_EXIT) {
                            arrayList10.add(eekVar);
                            fpd.k(hedVar, eekVar);
                        }
                    }
                    if (!arrayList10.isEmpty()) {
                        if (arrayList11 == null) {
                            Iterator it24 = arrayList10.iterator();
                            while (it24.hasNext()) {
                                fpd.l(hedVar, (eek) it24.next());
                            }
                        } else {
                            fpd.n(hedVar, arrayList10);
                            fpd.s(arrayList11, arrayList10);
                        }
                        arrayList10.clear();
                    }
                }
            }
            c(hedVar);
            fon fonVar3 = new fon(hedVar);
            ffb.ce(hedVar, hedVar.aj, new gpn(19), new agx(5, fonVar3));
            for (aea aeaVar4 : hedVar.ap) {
                fza fzaVar16 = aeaVar4.i;
                if (fzaVar16 != null && !fonVar3.f17143b.get(fzaVar16.x)) {
                    Iterator it25 = list.iterator();
                    while (true) {
                        if (it25.hasNext()) {
                            if (((guv) it25.next()).i.contains(aeaVar4)) {
                                break;
                            }
                        } else {
                            LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                            b(linkedHashSet3, fzaVar16, hedVar);
                            d(linkedHashSet3, hedVar);
                        }
                    }
                }
            }
            z4 = true;
        }
        boolean z8 = z4 ? true : z3;
        Iterator it26 = list3.iterator();
        while (it26.hasNext()) {
            if (giq.p((fza) it26.next())) {
                z8 = true;
            }
        }
        EnumSet enumSet = giq.f18211a;
        if (Collection.b.removeIf(hedVar.ak, new bev(6))) {
            z8 = true;
        }
        if (z8) {
            l(hedVar);
            m(hedVar);
        }
        try {
            fzf[] fzfVarArr = new fzf[hedVar.ak.size()];
            Arrays.fill(fzfVarArr, fzf.WHITE);
            afo.am(hedVar, fzfVarArr, hedVar.aj);
            e2 = hedVar.l.e(acq.q);
            list4 = (java.util.List) Collection.b.stream(e2).filter(new bev(24)).collect(Collectors.toList());
        } catch (Exception e3) {
            hedVar.bt("Failed to detect multi-entry loops", e3);
        }
        if (!list4.isEmpty()) {
            try {
                java.util.List bn = acw.bn(e2, new bev(25));
                Iterator it27 = list4.iterator();
                z5 = false;
                while (it27.hasNext()) {
                    z5 |= afo.al(hedVar, (mw) it27.next(), bn);
                }
            } catch (Exception e4) {
                hedVar.bt("Failed to fix multi-entry loops", e4);
            }
            if (z5) {
                m(hedVar);
            }
            Iterable.b.forEach(hedVar.ak, new esk(1));
            int size6 = hedVar.ak.size();
            int max = Math.max(100, size6);
            i = 0;
            while (true) {
                if (!i(hedVar)) {
                    m(hedVar);
                    i2 = i + 1;
                    if (i > max) {
                        hedVar.bs("CFG modification limit reached, blocks count: " + size6);
                    } else {
                        i = i2;
                    }
                }
            }
            l(hedVar);
            kj.l(hedVar);
            hedVar.ac = new ArrayList();
            Iterable.b.forEach(hedVar.ak, new bra(hedVar, 2));
            if (hedVar.ac.size() != 0) {
                for (gcv gcvVar : hedVar.ac) {
                    for (gcv gcvVar2 : hedVar.ac) {
                        if (gcvVar != gcvVar2 && gcvVar.f17904e.containsAll(gcvVar2.f17904e)) {
                            gcv gcvVar3 = gcvVar2.f17901b;
                            if (gcvVar3 == null) {
                                gcvVar2.f17901b = gcvVar;
                            } else if (gcvVar3.f17904e.containsAll(gcvVar.f17904e)) {
                                gcvVar.f17901b = gcvVar3;
                                gcvVar2.f17901b = gcvVar;
                            } else {
                                gcvVar3.f17901b = gcvVar;
                            }
                        }
                    }
                }
            }
            fso.x(hedVar);
            Iterable.b.forEach(hedVar.ak, new esk(1));
        }
        z5 = false;
        if (z5) {
        }
        Iterable.b.forEach(hedVar.ak, new esk(1));
        int size62 = hedVar.ak.size();
        int max2 = Math.max(100, size62);
        i = 0;
        while (true) {
            if (!i(hedVar)) {
            }
            i = i2;
        }
        l(hedVar);
        kj.l(hedVar);
        hedVar.ac = new ArrayList();
        Iterable.b.forEach(hedVar.ak, new bra(hedVar, 2));
        if (hedVar.ac.size() != 0) {
        }
        fso.x(hedVar);
        Iterable.b.forEach(hedVar.ak, new esk(1));
    }
}
