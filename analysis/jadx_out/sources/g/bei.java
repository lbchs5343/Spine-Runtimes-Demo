package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.Collection;
import j$.util.List;
import j$.util.Map;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class bei {

    /* renamed from: a, reason: collision with root package name */
    public final dzh f11370a;

    /* renamed from: b, reason: collision with root package name */
    public final fon f11371b;

    /* renamed from: c, reason: collision with root package name */
    public final hed f11372c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11373d;

    /* renamed from: e, reason: collision with root package name */
    public final ftm f11374e = new ftm();

    /* renamed from: f, reason: collision with root package name */
    public final ghm f11375f;

    /* renamed from: g, reason: collision with root package name */
    public int f11376g;

    public bei(hed hedVar) {
        this.f11372c = hedVar;
        ghm ghmVar = new ghm(hedVar, this);
        this.f11375f = ghmVar;
        this.f11370a = new dzh(hedVar, this, ghmVar, 7, false);
        this.f11371b = new fon(hedVar);
        this.f11373d = hedVar.ak.size() * MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x05fd  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x064c A[EDGE_INSN: B:200:0x064c->B:201:0x064c BREAK  A[LOOP:10: B:186:0x05f5->B:192:0x0643], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0812 A[LOOP:2: B:32:0x00a9->B:39:0x0812, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x081a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x07e8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x07f1  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0206 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final eys h(fza fzaVar) {
        fza fzaVar2;
        boolean z;
        eek s;
        acq acqVar;
        eys eysVar;
        BitSet bitSet;
        ArrayList arrayList;
        int i;
        acq acqVar2;
        eys eysVar2;
        ArrayList arrayList2;
        BitSet bitSet2;
        diu diuVar;
        fza fzaVar3;
        diu diuVar2;
        eys eysVar3;
        Iterator it;
        boolean hasNext;
        ArrayList arrayList3;
        eys h;
        fza fzaVar4;
        fza fzaVar5;
        fza fzaVar6;
        boolean isEmpty;
        int i2;
        acq acqVar3 = acq.t;
        Objects.requireNonNull(fzaVar);
        ftm ftmVar = this.f11374e;
        eys eysVar4 = new eys(ftmVar.f17389b.f11878b);
        if (ftmVar.f17389b.f11877a.contains(fzaVar)) {
            List e2 = fzaVar.l.e(acqVar3);
            if (!e2.isEmpty()) {
                ArrayList arrayList4 = new ArrayList(e2.size());
                hay hayVar = hay.BREAK;
                Iterator it2 = e2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    eek eekVar = ((azi) it2.next()).f11108a;
                    if (eekVar.ah == hayVar) {
                        arrayList4.add(eekVar);
                        break;
                    }
                }
                hay hayVar2 = hay.CONTINUE;
                Iterator it3 = e2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    eek eekVar2 = ((azi) it3.next()).f11108a;
                    if (eekVar2.ah == hayVar2) {
                        arrayList4.add(eekVar2);
                        break;
                    }
                }
                eysVar4.h(new gqu(arrayList4));
                return eysVar4;
            }
        } else {
            fon fonVar = this.f11371b;
            fonVar.getClass();
            BitSet bitSet3 = fonVar.f17143b;
            int i3 = fzaVar.x;
            boolean z2 = bitSet3.get(i3);
            bitSet3.set(i3);
            hed hedVar = this.f11372c;
            if (z2) {
                hedVar.bu("Found duplicated region for block: " + fzaVar + ' ' + fzaVar.l.toString());
            }
            fza fzaVar7 = fzaVar;
            while (fzaVar7 != null) {
                if (fzaVar7.l.g(csv.MTH_EXIT_BLOCK)) {
                    acqVar = acqVar3;
                    eysVar = eysVar4;
                    bitSet = bitSet3;
                } else {
                    List<gcv> e3 = fzaVar7.l.e(acq.at);
                    int size = e3.size();
                    if (size != 0) {
                        if (fzaVar7.l.g(csv.LOOP_START)) {
                            dzh dzhVar = this.f11370a;
                            if (size == 1) {
                                fzaVar2 = dzhVar.x(eysVar4, (gcv) e3.get(0), ftmVar);
                            } else {
                                for (gcv gcvVar : e3) {
                                    if (gcvVar.f17902c == fzaVar7) {
                                        fzaVar2 = dzhVar.x(eysVar4, gcvVar, ftmVar);
                                    }
                                }
                            }
                            z = true;
                            s = ffb.s(fzaVar7);
                            ArrayList arrayList5 = eysVar4.f16387g;
                            if (!z && s != null) {
                                i = fxm.f17575a[s.ah.ordinal()];
                                if (i != 1) {
                                    acqVar2 = acqVar3;
                                    eysVar2 = eysVar4;
                                    arrayList2 = arrayList5;
                                    bgw bgwVar = (bgw) s;
                                    ghm ghmVar = this.f11375f;
                                    bei beiVar = ghmVar.f18166b;
                                    hed hedVar2 = ghmVar.f18165a;
                                    if (fzaVar7.l.g(csv.ADDED_TO_REGION)) {
                                        fzaVar2 = bgwVar._br;
                                        bitSet = bitSet3;
                                        acqVar = acqVar2;
                                        arrayList = arrayList2;
                                        eysVar = eysVar2;
                                        z = true;
                                        if (!z) {
                                        }
                                        if (fzaVar2 != null) {
                                        }
                                    } else {
                                        gxv c2 = ghm.c(hedVar2, fzaVar7);
                                        if (c2 != null) {
                                            gxv i4 = ghm.i(c2);
                                            if (i4 != null) {
                                                c2 = i4;
                                            } else {
                                                csv csvVar = csv.DONT_INVERT;
                                                if (!fzaVar7.l.g(csvVar)) {
                                                    c2 = gxv.j(c2);
                                                    fzaVar7.w(csvVar);
                                                }
                                            }
                                            gxv d2 = ghm.d(hedVar2, fzaVar7, c2);
                                            if (d2 != null || (((fon) c2.f18978b).f17143b.cardinality() > 1 && (d2 = ghm.d(hedVar2, fzaVar7, ghm.c(hedVar2, fzaVar7))) != null)) {
                                                fon fonVar2 = (fon) d2.f18978b;
                                                ghm.g(d2);
                                                eysVar = eysVar2;
                                                goe goeVar = new goe(eysVar);
                                                goeVar.aa = (eii) d2.h;
                                                goeVar.f15618ab = fonVar2.e();
                                                arrayList = arrayList2;
                                                arrayList.add(goeVar);
                                                fza fzaVar8 = (fza) d2.i;
                                                ftmVar.e(goeVar);
                                                ftmVar.c(fzaVar8);
                                                fza fzaVar9 = (fza) d2.f18979c;
                                                if (fzaVar9 == null) {
                                                    goeVar.h = new eys(goeVar);
                                                } else {
                                                    goeVar.h = beiVar.h(fzaVar9);
                                                }
                                                fza fzaVar10 = (fza) d2.f18981e;
                                                if (fzaVar10 == null || ftmVar.f17389b.f11877a.contains(fzaVar10)) {
                                                    goeVar.f18486g = null;
                                                } else {
                                                    goeVar.f18486g = beiVar.h(fzaVar10);
                                                }
                                                if (goeVar.f18486g != null || fzaVar8 == null) {
                                                    bitSet = bitSet3;
                                                    acqVar = acqVar2;
                                                } else {
                                                    acqVar = acqVar2;
                                                    List<azi> e4 = fzaVar8.l.e(acqVar);
                                                    if (e4.isEmpty()) {
                                                        bitSet = bitSet3;
                                                    } else {
                                                        ArrayList arrayList6 = new ArrayList();
                                                        for (azi aziVar : e4) {
                                                            if (aziVar.f11110f.equals(fzaVar8)) {
                                                                bitSet2 = bitSet3;
                                                                if (fonVar2.f17143b.get(ffb.ba(aziVar.f11109b, Boolean.TRUE, true).x)) {
                                                                    arrayList6.add(aziVar.f11108a);
                                                                }
                                                            } else {
                                                                bitSet2 = bitSet3;
                                                            }
                                                            bitSet3 = bitSet2;
                                                        }
                                                        bitSet = bitSet3;
                                                        if (!arrayList6.isEmpty()) {
                                                            eys eysVar5 = new eys(goeVar);
                                                            eysVar5.h(new gqu(arrayList6));
                                                            goeVar.f18486g = eysVar5;
                                                        }
                                                    }
                                                }
                                                ftmVar.d();
                                                fzaVar2 = fzaVar8;
                                                z = true;
                                                if (!z) {
                                                }
                                                if (fzaVar2 != null) {
                                                }
                                            }
                                        }
                                        bitSet = bitSet3;
                                        acqVar = acqVar2;
                                        arrayList = arrayList2;
                                        eysVar = eysVar2;
                                        fzaVar2 = null;
                                        z = true;
                                        if (!z) {
                                        }
                                        if (fzaVar2 != null) {
                                        }
                                    }
                                } else if (i == 2) {
                                    diu diuVar3 = new diu();
                                    bzm bzmVar = (bzm) s;
                                    int length = bzmVar.ad().f12357b.length;
                                    LinkedHashMap linkedHashMap = new LinkedHashMap(length);
                                    fza[] fzaVarArr = bzmVar.f12514ab;
                                    int i5 = 0;
                                    while (i5 < length) {
                                        ((List) Map.b.computeIfAbsent(linkedHashMap, fzaVarArr[i5], new coq(7))).add(bzmVar.af(i5));
                                        i5++;
                                        length = length;
                                    }
                                    fza fzaVar11 = bzmVar.z;
                                    if (fzaVar11 != null) {
                                        ((List) Map.b.computeIfAbsent(linkedHashMap, fzaVar11, new coq(8))).add(eln.f15770g);
                                    }
                                    eln elnVar = new eln(eysVar4, fzaVar7);
                                    bzmVar.m(new ayi(elnVar));
                                    arrayList5.add(elnVar);
                                    ftmVar.e(elnVar);
                                    BitSet v = ffb.v(hedVar);
                                    Iterator it4 = fzaVar7.z.iterator();
                                    while (it4.hasNext()) {
                                        fza fzaVar12 = (fza) it4.next();
                                        fza fzaVar13 = fzaVar11;
                                        Iterator it5 = it4;
                                        if (!fzaVar12.l.g(csv.LOOP_END)) {
                                            v.or(fzaVar12.i);
                                        }
                                        fzaVar11 = fzaVar13;
                                        it4 = it5;
                                    }
                                    fza fzaVar14 = fzaVar11;
                                    v.clear(fzaVar7.x);
                                    v.clear(hedVar.ad.x);
                                    if (v.cardinality() == 1) {
                                        fzaVar2 = ffb.bv(hedVar, v);
                                        diuVar = diuVar3;
                                        acqVar2 = acqVar3;
                                        eysVar2 = eysVar4;
                                        arrayList2 = arrayList5;
                                    } else {
                                        gcv bi = hedVar.bi(fzaVar7);
                                        if (bi != null) {
                                            fza fzaVar15 = bi.f17903d;
                                            v.andNot(bi.f17902c.j);
                                            v.andNot(fzaVar15.j);
                                            if (v.cardinality() == 2 && v.get(fzaVar15.x)) {
                                                List bj = ffb.bj(hedVar, v);
                                                bj.remove(fzaVar15);
                                                fzaVar2 = (fza) evh.q(bj);
                                                if (fzaVar2 != null) {
                                                    Iterator it6 = fzaVar7.z.iterator();
                                                    boolean z3 = false;
                                                    while (it6.hasNext()) {
                                                        Iterator it7 = it6;
                                                        fza fzaVar16 = (fza) it6.next();
                                                        acq acqVar4 = acqVar3;
                                                        ArrayList arrayList7 = arrayList5;
                                                        if (!fzaVar16.i.get(fzaVar15.x) || fzaVar16 == fzaVar2) {
                                                            diuVar2 = diuVar3;
                                                            eysVar3 = eysVar4;
                                                        } else {
                                                            ArrayList arrayList8 = new ArrayList();
                                                            eysVar3 = eysVar4;
                                                            diuVar2 = diuVar3;
                                                            ffb.q(fzaVar16, fzaVar16, arrayList8, ffb.v(hedVar), false);
                                                            HashSet hashSet = new HashSet(arrayList8);
                                                            if (!hashSet.contains(fzaVar2) && !Collection.b.stream(fzaVar2.f17685e).anyMatch(new dcg(hashSet, 2))) {
                                                                for (fza fzaVar17 : fzaVar15.f17685e) {
                                                                    if (hashSet.contains(fzaVar17) || fzaVar17 == fzaVar16) {
                                                                        if (fzaVar17.l.g(csv.SYNTHETIC)) {
                                                                            fzaVar17.ac.add(new eek(hay.CONTINUE, 0));
                                                                            z3 = true;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        acqVar3 = acqVar4;
                                                        it6 = it7;
                                                        arrayList5 = arrayList7;
                                                        eysVar4 = eysVar3;
                                                        diuVar3 = diuVar2;
                                                    }
                                                    diuVar = diuVar3;
                                                    acqVar2 = acqVar3;
                                                    eysVar2 = eysVar4;
                                                    arrayList2 = arrayList5;
                                                    if (z3) {
                                                        v.clear(fzaVar15.x);
                                                        if (v.isEmpty()) {
                                                            fzaVar3 = hedVar.ad;
                                                            fzaVar2 = fzaVar3;
                                                            ftmVar.c(fzaVar2);
                                                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                                            if (fzaVar2 != null) {
                                                                Set keySet = linkedHashMap.keySet();
                                                                BitSet v2 = ffb.v(hedVar);
                                                                Iterator it8 = keySet.iterator();
                                                                while (it8.hasNext()) {
                                                                    v2.set(((fza) it8.next()).x);
                                                                }
                                                                v2.clear(fzaVar2.x);
                                                                for (fza fzaVar18 : elnVar.h.f17684d) {
                                                                    BitSet bitSet4 = fzaVar18.i;
                                                                    if (bitSet4.intersects(v2)) {
                                                                        BitSet bitSet5 = new BitSet(hedVar.ak.size());
                                                                        if (!bitSet4.isEmpty()) {
                                                                            bitSet5.or(bitSet4);
                                                                        }
                                                                        bitSet5.clear(fzaVar2.x);
                                                                        bitSet5.and(v2);
                                                                        linkedHashMap2.put(fzaVar18, ffb.bv(hedVar, bitSet5));
                                                                    }
                                                                }
                                                                if (!linkedHashMap2.isEmpty() && diu.c(linkedHashMap, linkedHashMap2)) {
                                                                    ArrayList arrayList9 = new ArrayList(linkedHashMap.size());
                                                                    arrayList9.addAll(linkedHashMap.keySet());
                                                                    List.b.sort(arrayList9, new aou(2, linkedHashMap2));
                                                                    LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap.size());
                                                                    Iterator it9 = arrayList9.iterator();
                                                                    while (it9.hasNext()) {
                                                                        fza fzaVar19 = (fza) it9.next();
                                                                        linkedHashMap3.put(fzaVar19, (java.util.List) linkedHashMap.get(fzaVar19));
                                                                    }
                                                                    if (diu.c(linkedHashMap3, linkedHashMap2)) {
                                                                        hedVar.bu("Can't fix incorrect switch cases order, some code will duplicate");
                                                                        linkedHashMap2.clear();
                                                                    } else {
                                                                        linkedHashMap = linkedHashMap3;
                                                                    }
                                                                }
                                                            }
                                                            it = linkedHashMap.entrySet().iterator();
                                                            while (true) {
                                                                hasNext = it.hasNext();
                                                                arrayList3 = elnVar.i;
                                                                if (hasNext) {
                                                                    break;
                                                                }
                                                                Map.Entry entry = (Map.Entry) it.next();
                                                                java.util.List list = (java.util.List) entry.getValue();
                                                                fza fzaVar20 = (fza) entry.getKey();
                                                                if (ftmVar.f17389b.f11877a.contains(fzaVar20)) {
                                                                    h = new eys(ftmVar.f17389b.f11878b);
                                                                } else {
                                                                    fza fzaVar21 = (fza) linkedHashMap2.get(fzaVar20);
                                                                    ftmVar.c(fzaVar21);
                                                                    h = h(fzaVar20);
                                                                    if (fzaVar21 != null) {
                                                                        ftmVar.f17389b.f11877a.remove(fzaVar21);
                                                                    }
                                                                    if (fzaVar21 != null) {
                                                                        csv csvVar2 = csv.FALL_THROUGH;
                                                                        fzaVar21.w(csvVar2);
                                                                        h.w(csvVar2);
                                                                    }
                                                                }
                                                                arrayList3.add(new adk(list, h));
                                                            }
                                                            if (fzaVar14 != null ? true : Collection.b.stream(arrayList3).anyMatch(new dxx(diuVar, fzaVar2))) {
                                                                Iterator it10 = new ArrayList(arrayList3).iterator();
                                                                while (it10.hasNext()) {
                                                                    adk adkVar = (adk) it10.next();
                                                                    if (diu.b(fzaVar2, adkVar.f10048b) && (adkVar.f10047a.contains(eln.f15770g) || bzmVar.y)) {
                                                                        buj.bb(hedVar, new fdl(1, new bhf(0, csv.DONT_GENERATE)), adkVar.f10048b);
                                                                        arrayList3.remove(adkVar);
                                                                    }
                                                                }
                                                            }
                                                            ftmVar.d();
                                                            bitSet = bitSet3;
                                                            acqVar = acqVar2;
                                                            arrayList = arrayList2;
                                                            eysVar = eysVar2;
                                                            z = true;
                                                            if (!z) {
                                                            }
                                                            if (fzaVar2 != null) {
                                                                fzaVar7 = fzaVar2;
                                                                i2 = this.f11376g + 1;
                                                                this.f11376g = i2;
                                                                if (i2 > this.f11373d) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                    fzaVar2 = null;
                                                    if (v.isEmpty()) {
                                                    }
                                                }
                                            }
                                            diuVar = diuVar3;
                                            acqVar2 = acqVar3;
                                            eysVar2 = eysVar4;
                                            arrayList2 = arrayList5;
                                            fzaVar2 = null;
                                            if (v.isEmpty()) {
                                            }
                                        } else {
                                            diuVar = diuVar3;
                                            acqVar2 = acqVar3;
                                            eysVar2 = eysVar4;
                                            arrayList2 = arrayList5;
                                            fzaVar2 = null;
                                        }
                                        if (fzaVar2 == null) {
                                            fzaVar2 = fzaVar7.aa;
                                            if (!v.get(fzaVar2.x)) {
                                                v.andNot(fzaVar7.j);
                                                fzaVar2 = ffb.bv(hedVar, v);
                                            }
                                        }
                                    }
                                    if (fzaVar2 != null && hedVar.bb(fzaVar2)) {
                                        fzaVar2 = hedVar.ad;
                                    }
                                    fza fzaVar22 = fzaVar7.aa;
                                    if (fzaVar2 == null && fzaVar22 == (fzaVar4 = hedVar.ad)) {
                                        java.util.List list2 = fzaVar4.f17685e;
                                        int size2 = list2.size();
                                        if (size2 == 1) {
                                            fzaVar3 = (fza) list2.get(0);
                                        } else if (hedVar.aw == cwx.ao) {
                                            Iterator it11 = list2.iterator();
                                            while (it11.hasNext()) {
                                                eek s2 = ffb.s((fza) it11.next());
                                                if (s2 != null && s2.ah == hay.RETURN) {
                                                }
                                                fzaVar2 = fzaVar4;
                                            }
                                            Iterator it12 = list2.iterator();
                                            while (it12.hasNext()) {
                                                ftmVar.c((fza) it12.next());
                                            }
                                            for (int i6 = 1; i6 < size2; i6++) {
                                                fza fzaVar23 = (fza) list2.get(i6);
                                                fzaVar23.w(csv.REMOVE);
                                                fzaVar23.w(csv.ADDED_TO_REGION);
                                            }
                                            fzaVar3 = (fza) list2.get(0);
                                        } else {
                                            ArrayList arrayList10 = new ArrayList();
                                            Iterator it13 = list2.iterator();
                                            while (true) {
                                                if (it13.hasNext()) {
                                                    eek s3 = ffb.s((fza) it13.next());
                                                    if (s3 == null || s3.ah != hay.RETURN) {
                                                        break;
                                                    }
                                                    arrayList10.add(s3.j(0));
                                                } else {
                                                    gsh gshVar = (gsh) arrayList10.get(0);
                                                    gshVar.getClass();
                                                    if (gshVar instanceof gks) {
                                                        gks gksVar = (gks) gshVar;
                                                        for (int i7 = 1; i7 < size2; i7++) {
                                                            gsh gshVar2 = (gsh) arrayList10.get(i7);
                                                            gshVar2.getClass();
                                                            if ((gshVar2 instanceof gks) && ((gks) gshVar2).y(gksVar)) {
                                                            }
                                                        }
                                                    } else {
                                                        for (int i8 = 1; i8 < size2; i8++) {
                                                            if (((gsh) arrayList10.get(i8)).equals(gshVar)) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            fzaVar2 = fzaVar4;
                                            ftmVar.c(fzaVar2);
                                            LinkedHashMap linkedHashMap22 = new LinkedHashMap();
                                            if (fzaVar2 != null) {
                                            }
                                            it = linkedHashMap.entrySet().iterator();
                                            while (true) {
                                                hasNext = it.hasNext();
                                                arrayList3 = elnVar.i;
                                                if (hasNext) {
                                                }
                                                arrayList3.add(new adk(list, h));
                                            }
                                            if (fzaVar14 != null ? true : Collection.b.stream(arrayList3).anyMatch(new dxx(diuVar, fzaVar2))) {
                                            }
                                            ftmVar.d();
                                        }
                                        fzaVar2 = fzaVar3;
                                        ftmVar.c(fzaVar2);
                                        LinkedHashMap linkedHashMap222 = new LinkedHashMap();
                                        if (fzaVar2 != null) {
                                        }
                                        it = linkedHashMap.entrySet().iterator();
                                        while (true) {
                                            hasNext = it.hasNext();
                                            arrayList3 = elnVar.i;
                                            if (hasNext) {
                                            }
                                            arrayList3.add(new adk(list, h));
                                        }
                                        if (fzaVar14 != null ? true : Collection.b.stream(arrayList3).anyMatch(new dxx(diuVar, fzaVar2))) {
                                        }
                                        ftmVar.d();
                                    } else {
                                        if (fzaVar22 == bzmVar.z && fzaVar7.z.contains(fzaVar22) && fzaVar7.i.get(fzaVar22.x)) {
                                            ftmVar.c(fzaVar22);
                                        }
                                        if (fzaVar2 == null) {
                                            hedVar.bu("Failed to find 'out' block for switch in " + fzaVar7 + ". Please report as an issue.");
                                            fzaVar2 = fzaVar7.aa;
                                        }
                                        if (fzaVar2 != null && bitSet3.get(fzaVar2.x)) {
                                            hedVar.bu("Switch 'out' block " + fzaVar2 + " for " + fzaVar7 + " already processed. Defaulting to fallback option.");
                                            fzaVar3 = fzaVar7.aa;
                                            fzaVar2 = fzaVar3;
                                        }
                                        ftmVar.c(fzaVar2);
                                        LinkedHashMap linkedHashMap2222 = new LinkedHashMap();
                                        if (fzaVar2 != null) {
                                        }
                                        it = linkedHashMap.entrySet().iterator();
                                        while (true) {
                                            hasNext = it.hasNext();
                                            arrayList3 = elnVar.i;
                                            if (hasNext) {
                                            }
                                            arrayList3.add(new adk(list, h));
                                        }
                                        if (fzaVar14 != null ? true : Collection.b.stream(arrayList3).anyMatch(new dxx(diuVar, fzaVar2))) {
                                        }
                                        ftmVar.d();
                                    }
                                    bitSet = bitSet3;
                                    acqVar = acqVar2;
                                    arrayList = arrayList2;
                                    eysVar = eysVar2;
                                    z = true;
                                    if (!z) {
                                    }
                                    if (fzaVar2 != null) {
                                    }
                                } else if (i == 3) {
                                    ft ftVar = new ft(hedVar, this);
                                    glw glwVar = new glw(eysVar4, s);
                                    eys eysVar6 = glwVar.f18375g;
                                    eysVar6.f16387g.add(fzaVar7);
                                    arrayList5.add(glwVar);
                                    LinkedHashSet<fza> linkedHashSet = new LinkedHashSet();
                                    HashSet hashSet2 = new HashSet();
                                    ft.c(glwVar, s.j(0), fzaVar7, linkedHashSet, hashSet2);
                                    Iterator it14 = glwVar.i.iterator();
                                    while (it14.hasNext()) {
                                        eek eekVar3 = (eek) it14.next();
                                        fza o = ffb.o(hedVar, eekVar3, hedVar.ak);
                                        Iterator it15 = it14;
                                        if (o != null) {
                                            o.w(csv.DONT_GENERATE);
                                        }
                                        eekVar3._am(0);
                                        eekVar3.w(csv.DONT_GENERATE);
                                        it14 = it15;
                                    }
                                    fza ca = ffb.ca(fzaVar7);
                                    if (ca == null) {
                                        hedVar.bs("Unexpected end of synchronized block");
                                        fzaVar2 = null;
                                    } else {
                                        if (linkedHashSet.size() == 1) {
                                            fzaVar5 = ffb.ca((fza) linkedHashSet.iterator().next());
                                        } else if (linkedHashSet.size() > 1) {
                                            hashSet2.clear();
                                            fzaVar5 = ft.d(ca, linkedHashSet, hashSet2);
                                        } else {
                                            fzaVar5 = null;
                                        }
                                        ftmVar.e(glwVar);
                                        if (fzaVar5 != null) {
                                            ftmVar.c(fzaVar5);
                                        } else {
                                            for (fza fzaVar24 : linkedHashSet) {
                                                java.util.List aj = ffb.aj(fzaVar24);
                                                if (!aj.isEmpty()) {
                                                    fza fzaVar25 = (fza) evh.o(aj);
                                                    if (fzaVar25 != hedVar.ad) {
                                                        java.util.List list3 = fzaVar25.f17684d;
                                                        if (!list3.isEmpty()) {
                                                            fzaVar6 = fzaVar5;
                                                            isEmpty = list3.size() == 1 ? ((fza) list3.get(0)).f17684d.isEmpty() : false;
                                                            if (!isEmpty) {
                                                                fzaVar5 = fzaVar6;
                                                            }
                                                        }
                                                    }
                                                    fzaVar6 = fzaVar5;
                                                    isEmpty = true;
                                                    if (!isEmpty) {
                                                    }
                                                }
                                                ftmVar.c(fzaVar24);
                                                fzaVar5 = fzaVar24;
                                            }
                                        }
                                        eysVar6.f16387g.add(ftVar.f17362b.h(ca));
                                        ftmVar.d();
                                        fzaVar2 = fzaVar5;
                                    }
                                    acqVar = acqVar3;
                                    eysVar = eysVar4;
                                    bitSet = bitSet3;
                                    arrayList = arrayList5;
                                    z = true;
                                    if (!z) {
                                        arrayList.add(fzaVar7);
                                        fzaVar2 = ffb.ca(fzaVar7);
                                    }
                                    if (fzaVar2 != null && !ftmVar.f17389b.f11877a.contains(fzaVar7) && !ftmVar.f17389b.f11877a.contains(fzaVar2)) {
                                        fzaVar7 = fzaVar2;
                                        i2 = this.f11376g + 1;
                                        this.f11376g = i2;
                                        if (i2 > this.f11373d) {
                                            throw new blf("Regions count limit reached at block " + fzaVar.toString());
                                        }
                                        eysVar4 = eysVar;
                                        acqVar3 = acqVar;
                                        bitSet3 = bitSet;
                                    }
                                }
                            }
                            acqVar = acqVar3;
                            eysVar = eysVar4;
                            bitSet = bitSet3;
                            arrayList = arrayList5;
                            if (!z) {
                            }
                            if (fzaVar2 != null) {
                            }
                        }
                    }
                    fzaVar2 = null;
                    z = false;
                    s = ffb.s(fzaVar7);
                    ArrayList arrayList52 = eysVar4.f16387g;
                    if (!z) {
                        i = fxm.f17575a[s.ah.ordinal()];
                        if (i != 1) {
                        }
                    }
                    acqVar = acqVar3;
                    eysVar = eysVar4;
                    bitSet = bitSet3;
                    arrayList = arrayList52;
                    if (!z) {
                    }
                    if (fzaVar2 != null) {
                    }
                }
                fzaVar7 = null;
                i2 = this.f11376g + 1;
                this.f11376g = i2;
                if (i2 > this.f11373d) {
                }
            }
        }
        return eysVar4;
    }
}
