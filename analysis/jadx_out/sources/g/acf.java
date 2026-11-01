package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.lang.Iterable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class acf extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f9967a = dsr.k(acf.class);

    /* renamed from: b, reason: collision with root package name */
    public ayu f9968b;

    public static gsh c(ArrayList arrayList, List list, int i) {
        String sb;
        if (arrayList.size() == 1) {
            return (gsh) list.get(i - 1);
        }
        if (evh.m(arrayList)) {
            sb = "";
        } else if (arrayList.size() == 1) {
            sb = (String) arrayList.get(0);
        } else {
            StringBuilder sb2 = new StringBuilder();
            Iterable.b.forEach(arrayList, new agx(26, sb2));
            sb = sb2.toString();
        }
        return gsh.aj(new epw(sb));
    }

    public static void d(hed hedVar, bgw bgwVar) {
        gsh j = bgwVar.j(0);
        j.getClass();
        if (j instanceof cly) {
            eek eekVar = ((cly) j).f13104a;
            hay hayVar = eekVar.ah;
            if (hayVar == hay.CMP_L || hayVar == hay.CMP_G) {
                if (!bgwVar.j(1).g()) {
                    f9967a.p(bgwVar, "TODO: cmp {}");
                    return;
                }
                ges gesVar = bgwVar.y;
                gsh b2 = eekVar.j(0).b();
                gsh b3 = eekVar.j(1).b();
                bgwVar.y = gesVar;
                bgwVar.e(0, b2);
                bgwVar.e(1, b3);
                fpd.k(hedVar, eekVar);
            }
        }
    }

    public static void e(hed hedVar, hdc hdcVar, List list) {
        fpd.q(hedVar, hdcVar);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fpd.q(hedVar, (eek) it.next());
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            eek eekVar = (eek) it2.next();
            if (eekVar != hdcVar) {
                arrayList.add(eekVar);
                fpd.k(hedVar, eekVar);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            fpd.l(hedVar, (eek) it3.next());
        }
        arrayList.clear();
    }

    public static List g(List list) {
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            boolean am = ((gsh) it.next()).am();
            if (am && z) {
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                ArrayList arrayList2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    gsh gshVar = (gsh) list.get(i);
                    gshVar.getClass();
                    String str = null;
                    if (gshVar instanceof ekh) {
                        ekh ekhVar = (ekh) gshVar;
                        dba dbaVar = pp.f19822a;
                        cwx cwxVar = ekhVar.h;
                        if (cwxVar != null) {
                            long j = ekhVar.f15702a;
                            switch (dsv.f14740a[cwxVar.f().ordinal()]) {
                                case 1:
                                    if (j == 0) {
                                        str = "false";
                                        break;
                                    } else {
                                        str = "true";
                                        break;
                                    }
                                case 2:
                                    str = String.valueOf((char) j);
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                    str = Long.toString(j);
                                    break;
                                case 7:
                                    str = Float.toString(Float.intBitsToFloat((int) j));
                                    break;
                                case 8:
                                    str = Double.toString(Double.longBitsToDouble(j));
                                    break;
                                case 9:
                                case 10:
                                    if (j != 0) {
                                        pp.f19822a.t(Long.valueOf(j), "Wrong object literal: {} for type: {}", cwxVar);
                                        str = Long.toString(j);
                                        break;
                                    } else {
                                        str = "null";
                                        break;
                                    }
                            }
                        }
                    } else if (gshVar instanceof cly) {
                        eek eekVar = ((cly) gshVar).f13104a;
                        if (eekVar instanceof epw) {
                            str = ((epw) eekVar).f15951a;
                        }
                    }
                    if (str != null) {
                        arrayList2.add(str);
                    } else {
                        if (!arrayList2.isEmpty()) {
                            arrayList.add(c(arrayList2, list, i));
                            arrayList2.clear();
                        }
                        arrayList.add(gshVar);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    arrayList.add(c(arrayList2, list, size));
                }
                return arrayList;
            }
            z = am;
        }
        return list;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f A[Catch: Exception -> 0x0041, LOOP:0: B:18:0x0045->B:29:0x007f, LOOP_END, TryCatch #0 {Exception -> 0x0041, blocks: (B:3:0x0001, B:8:0x000a, B:11:0x001d, B:13:0x0028, B:16:0x0039, B:19:0x0047, B:21:0x0053, B:23:0x005b, B:25:0x006c, B:27:0x0076, B:29:0x007f, B:33:0x0085, B:34:0x0089, B:36:0x008f, B:39:0x00a1, B:41:0x00bf, B:43:0x00c9, B:44:0x00d6, B:46:0x00d1, B:49:0x00e0), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static eek i(hed hedVar, hdc hdcVar, List list) {
        gsh gshVar;
        try {
            int size = list.size();
            if (size >= 2) {
                ArrayList arrayList = new ArrayList(size);
                eek eekVar = (eek) list.get(0);
                if (eekVar.ah == hay.CONSTRUCTOR) {
                    eew eewVar = (eew) eekVar;
                    if (eewVar.aj.size() == 1) {
                        if (((cwx) eewVar.f15409a.f11075c.get(0)).m()) {
                            arrayList.add(eewVar.j(0));
                        }
                    }
                    for (int i = 1; i < size; i++) {
                        eek eekVar2 = (eek) list.get(i);
                        if (eekVar2.ah == hay.INVOKE && eekVar2.aj.size() == 2) {
                            ayu ayuVar = ((hdc) eekVar2).ad;
                            if (ayuVar.f11076d.f20147b.equals("java.lang.StringBuilder") && ayuVar.f11078f.equals("append")) {
                                gshVar = eekVar2.j(1);
                                if (gshVar == null) {
                                    arrayList.add(gshVar);
                                }
                            }
                        }
                        gshVar = null;
                        if (gshVar == null) {
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        cwx j = ((gsh) it.next()).j();
                        aog aogVar = cwx.al;
                        if (j.equals(aogVar)) {
                            eek eekVar3 = new eek(hay.STR_CONCAT, g(evh.g(arrayList, new coq(4))));
                            eekVar3.w(csv.SYNTHETIC);
                            if (hdcVar.ai == null) {
                                if (!hdcVar.l.g(csv.WRAPPED)) {
                                    eekVar3.ax(hedVar.bm(aogVar));
                                    eekVar3.s(hdcVar);
                                    eekVar3.br(hdcVar);
                                    e(hedVar, hdcVar, list);
                                    return eekVar3;
                                }
                            }
                            eekVar3.ax(hdcVar.ai);
                            eekVar3.s(hdcVar);
                            eekVar3.br(hdcVar);
                            e(hedVar, hdcVar, list);
                            return eekVar3;
                        }
                    }
                    hedVar.bw("TODO: convert one arg to string using `String.valueOf()`, args: " + evh.d(arrayList, ", ", new coq(3)));
                    return null;
                }
            }
            return null;
        } catch (Exception e2) {
            hedVar.bt("String concatenation convert failed", e2);
            return null;
        }
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        this.f9968b = ayu.k(dwgVar, ve.h(dwgVar, cwx.al), "getBytes", Collections.EMPTY_LIST, new aoe(cwx.z));
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar) {
            return;
        }
        Iterator it = hedVar.ak.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (m(hedVar, (fza) it.next())) {
                z = true;
            }
        }
        if (!z) {
            if (!hedVar.l.g(csv.REQUEST_CODE_SHRINK)) {
                return;
            }
        }
        eak.av(hedVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ff, code lost:
    
        if (r7 != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x047f, code lost:
    
        if (r3 < 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x04bd, code lost:
    
        if (r2.e() == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x04bf, code lost:
    
        r3 = -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x04e0, code lost:
    
        r6 = new g.ekh(r3, r2.h);
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x04e9, code lost:
    
        if (r6 == null) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x04f8, code lost:
    
        return new g.ame(g.bvj.SUB, r0.ai, r0.j(0), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x04c1, code lost:
    
        r6 = r2.h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x04c5, code lost:
    
        if (r6 != g.cwx.ax) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x04c7, code lost:
    
        r3 = java.lang.Float.floatToIntBits(-java.lang.Float.intBitsToFloat((int) r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x04d5, code lost:
    
        if (r6 != g.cwx.s) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x04d7, code lost:
    
        r3 = java.lang.Double.doubleToLongBits(-java.lang.Double.longBitsToDouble(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x04e8, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x049c, code lost:
    
        if (java.lang.Float.isNaN(r6) == false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x04b7, code lost:
    
        if (java.lang.Double.isNaN(r8) == false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0185, code lost:
    
        if (r8.bi() > r6.bi()) goto L269;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0437  */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v21, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v25, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v26, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v27, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v28, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v29, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final eek l(hed hedVar, eek eekVar, eek eekVar2) {
        int i;
        ekh ekhVar;
        ?? r4;
        eek eekVar3;
        hay hayVar;
        hay hayVar2;
        vm vmVar;
        eek eekVar4;
        cwx cwxVar;
        eek eekVar5;
        eek l;
        csv csvVar = csv.DONT_GENERATE;
        sm smVar = eekVar.l;
        hay hayVar3 = eekVar.ah;
        if (!smVar.g(csvVar)) {
            Iterator it = eekVar.aj.iterator();
            boolean z = false;
            boolean z2 = false;
            while (true) {
                i = 1;
                if (!it.hasNext()) {
                    break;
                }
                gsh gshVar = (gsh) it.next();
                gshVar.getClass();
                if ((gshVar instanceof cly) && (l = l(hedVar, (eekVar5 = ((cly) gshVar).f13104a), eekVar)) != null) {
                    gshVar.an(hedVar, l, false);
                    fpd.k(hedVar, eekVar5);
                    z2 = true;
                }
            }
            if (z2) {
                eekVar._bs();
                hedVar.w(csv.REQUEST_CODE_SHRINK);
            }
            switch (bse.f12112a[hayVar3.ordinal()]) {
                case 1:
                    ame ameVar = (ame) eekVar;
                    if (ameVar.aj.size() == 2) {
                        gsh j = ameVar.j(1);
                        j.getClass();
                        if (j instanceof cly) {
                            eek eekVar6 = ((cly) j).f13104a;
                            if (eekVar6.ah == hay.CONST) {
                                gsh j2 = eekVar6.j(0);
                                j2.getClass();
                                if (j2 instanceof ekh) {
                                    ekhVar = (ekh) j2;
                                    if (ekhVar != null) {
                                        long j3 = ekhVar.f15702a;
                                        int i2 = bse.f12113b[ameVar.f10465d.ordinal()];
                                        if (i2 == 1) {
                                            if (ekhVar.e()) {
                                                break;
                                            } else {
                                                cwx cwxVar2 = ekhVar.h;
                                                if (cwxVar2 == cwx.ax) {
                                                    float intBitsToFloat = Float.intBitsToFloat((int) j3);
                                                    if (intBitsToFloat < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                        if (!Float.isInfinite(intBitsToFloat)) {
                                                            break;
                                                        }
                                                    }
                                                } else if (cwxVar2 == cwx.s) {
                                                    double longBitsToDouble = Double.longBitsToDouble(j3);
                                                    if (longBitsToDouble < 0.0d) {
                                                        if (!Double.isInfinite(longBitsToDouble)) {
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (i2 == 2) {
                                            gsh j4 = ameVar.j(0);
                                            if (j4.j() == cwx.at && (j3 == 0 || j3 == 1)) {
                                                eek eekVar7 = new eek(j3 == 0 ? hay.MOVE : hay.NOT, 1);
                                                eekVar7.ax(ameVar.ai);
                                                eekVar7._an(j4);
                                                return eekVar7;
                                            }
                                        }
                                    }
                                }
                            }
                            ekhVar = null;
                            if (ekhVar != null) {
                            }
                        } else {
                            if (j instanceof ekh) {
                                ekhVar = (ekh) j;
                                if (ekhVar != null) {
                                }
                            }
                            ekhVar = null;
                            if (ekhVar != null) {
                            }
                        }
                    }
                    break;
                case 2:
                    d(hedVar, (bgw) eekVar);
                    return null;
                case 3:
                    dwk dwkVar = (dwk) eekVar;
                    eii eiiVar = dwkVar.f14942a;
                    if (eiiVar.h()) {
                        d(hedVar, (bgw) eiiVar.f15589c.f16224f);
                        return null;
                    }
                    dwkVar.y();
                    return null;
                case 4:
                    hdc hdcVar = (hdc) eekVar;
                    ayu ayuVar = hdcVar.ad;
                    if (ayuVar.f11076d.f20147b.equals("java.lang.StringBuilder") && ayuVar.f11077e.equals("toString()Ljava/lang/String;")) {
                        gsh j5 = hdcVar.j(0);
                        j5.getClass();
                        if (j5 instanceof cly) {
                            hay hayVar4 = hay.CONSTRUCTOR;
                            ArrayList arrayList = new ArrayList();
                            gsh j6 = hdcVar.j(0);
                            while (true) {
                                j6.getClass();
                                if (j6 instanceof cly) {
                                    eek eekVar8 = ((cly) j6).f13104a;
                                    arrayList.add(eekVar8);
                                    if (eekVar8.ah != hayVar4 && eekVar8.aj.size() != 0) {
                                        j6 = eekVar8.j(0);
                                    }
                                }
                            }
                            Collections.reverse(arrayList);
                            return i(hedVar, hdcVar, arrayList);
                        }
                        if (j5 instanceof gks) {
                            vm vmVar2 = ((gks) j5).f18326a;
                            boolean t = vmVar2.t();
                            ArrayList arrayList2 = vmVar2.f20178d;
                            if (t || arrayList2.size() == 0) {
                                r4 = Collections.EMPTY_LIST;
                            } else {
                                r4 = new ArrayList(arrayList2.size() + 1);
                                eek eekVar9 = vmVar2.f20177c.ae;
                                if (eekVar9 == null) {
                                    r4 = Collections.EMPTY_LIST;
                                } else {
                                    r4.add(eekVar9);
                                    Iterator it2 = arrayList2.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            eek eekVar10 = ((gks) it2.next()).ae;
                                            if (eekVar10 == null) {
                                                r4 = Collections.EMPTY_LIST;
                                            } else {
                                                r4.add(eekVar10);
                                            }
                                        } else {
                                            int a2 = con.a(r4, hdcVar);
                                            if (r4.size() - 1 != a2) {
                                                r4 = Collections.EMPTY_LIST;
                                            } else {
                                                r4.remove(a2);
                                                fza o = ffb.o(hedVar, eekVar9, hedVar.ak);
                                                if (o == null) {
                                                    r4 = Collections.EMPTY_LIST;
                                                } else {
                                                    ArrayList arrayList3 = o.ac;
                                                    int a3 = con.a(arrayList3, eekVar9);
                                                    int size = r4.size();
                                                    if (arrayList3.size() - a3 < size) {
                                                        r4 = Collections.EMPTY_LIST;
                                                    } else {
                                                        while (true) {
                                                            if (i < size) {
                                                                if (arrayList3.get(a3 + i) != r4.get(i)) {
                                                                    r4 = Collections.EMPTY_LIST;
                                                                } else {
                                                                    i++;
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
                            return i(hedVar, hdcVar, r4);
                        }
                    }
                    break;
                case 5:
                case 6:
                    gsh j7 = eekVar.j(0);
                    j7.getClass();
                    if ((j7 instanceof cly) && ((hayVar = (eekVar3 = ((cly) j7).f13104a).ah) == (hayVar2 = hay.ARITH) || hayVar == hay.STR_CONCAT)) {
                        gsh j8 = eekVar3.j(0);
                        j8.getClass();
                        if (j8 instanceof cly) {
                            gsh j9 = eekVar3.j(0);
                            eek eekVar11 = ((cly) j9).f13104a;
                            hay hayVar5 = eekVar11.ah;
                            hay hayVar6 = hay.IGET;
                            if ((hayVar5 == hayVar6 || hayVar5 == hay.SGET) && ((dsj) ((adz) eekVar).f10070a).equals((dsj) ((adz) eekVar11).f10070a)) {
                                if (hayVar5 == hayVar6) {
                                    try {
                                        if (hayVar3 == hay.IPUT && !eekVar11.j(0).equals(eekVar.j(1))) {
                                            break;
                                        }
                                    } catch (Exception e2) {
                                        f9967a.n("Can't convert field arith insn: {}, mth: {}", eekVar, hedVar, e2);
                                        return null;
                                    }
                                }
                                gsh b2 = j9.b();
                                fpd.k(hedVar, eekVar11);
                                if (hayVar3 == hay.IPUT) {
                                    fpd.h(hedVar, eekVar.j(1));
                                }
                                if (hayVar == hayVar2) {
                                    ame ameVar2 = (ame) eekVar3;
                                    ame ameVar3 = new ame(ameVar2.f10465d, null, b2, ameVar2.j(1));
                                    ameVar3.w(csv.ARITH_ONEARG);
                                    return ameVar3;
                                }
                                int size2 = eekVar3.aj.size();
                                eek eekVar12 = new eek(hay.STR_CONCAT, size2 - 1);
                                for (int i3 = 1; i3 < size2; i3++) {
                                    eekVar12._an(eekVar3.j(i3));
                                }
                                cly aj = gsh.aj(eekVar12);
                                aj.h = cwx.al;
                                ame ameVar4 = new ame(bvj.ADD, null, b2, aj);
                                ameVar4.w(csv.ARITH_ONEARG);
                                return ameVar4;
                            }
                        }
                    }
                    break;
                case 7:
                case 8:
                    adz adzVar = (adz) eekVar;
                    if (!adzVar.l.g(csv.EXPLICIT_CAST)) {
                        gsh j10 = adzVar.j(0);
                        cwx j11 = j10.j();
                        if (j10 instanceof cly) {
                            eek eekVar13 = ((cly) j10).f13104a;
                            if (eekVar13.ah == hay.INVOKE) {
                                j11 = ((hdc) eekVar13).ad.f11079g;
                            }
                        }
                        cwx cwxVar3 = (cwx) adzVar.f10070a;
                        if (eekVar2 != null && eekVar2.ah == hay.ARITH) {
                            j11.getClass();
                            if (j11 instanceof cff) {
                                cwxVar3.getClass();
                                if (cwxVar3 instanceof cff) {
                                    break;
                                }
                            }
                        }
                        dwg dwgVar = hedVar.am.f12631ab;
                        cff cffVar = cwx.an;
                        if (j11.equals(cwxVar3) ? false : !dwgVar.u.f12545e.h(j11, cwxVar3).e()) {
                            gsh j12 = adzVar.j(0);
                            j12.getClass();
                            if (!((!(j12 instanceof gks) || (vmVar = ((gks) j12).f18326a) == null || vmVar.f20178d.size() != 1 || vmVar.t() || (eekVar4 = vmVar.f20177c.ae) == null || eekVar4.ah != hay.CHECK_CAST) ? false : ((cwx) ((adz) eekVar4).f10070a).equals(adzVar.f10070a))) {
                                dwg dwgVar2 = hedVar.am.f12631ab;
                                if (eekVar2 != null && eekVar2.ah == hay.CAST) {
                                    z = dwgVar2.u.f12545e.h((cwx) ((adz) eekVar2).f10070a, cwxVar3).e();
                                    break;
                                }
                            }
                        }
                        eek eekVar14 = new eek(hay.MOVE, 1);
                        eekVar14.ag = adzVar.ag;
                        eekVar14.ax(adzVar.ai);
                        eekVar14._an(j10);
                        return eekVar14;
                    }
                    break;
                case 9:
                    gsh j13 = eekVar.j(0);
                    j13.getClass();
                    if (j13 instanceof ekh) {
                        eek eekVar15 = new eek(hay.CONST, 1);
                        eekVar15.ax(eekVar.ai);
                        eekVar15._an(j13);
                        eekVar15.s(eekVar);
                        eekVar15.br(eekVar);
                        return eekVar15;
                    }
                    break;
                case 10:
                    eew eewVar = (eew) eekVar;
                    ayu ayuVar2 = eewVar.f15409a;
                    List list = eewVar.aj;
                    if (ayuVar2.f11076d.f20149d.equals(cwx.al) && list.size() != 0) {
                        gsh j14 = eewVar.j(0);
                        j14.getClass();
                        if (j14 instanceof cly) {
                            eek eekVar16 = ((cly) eewVar.j(0)).f13104a;
                            hay hayVar7 = eekVar16.ah;
                            List list2 = eekVar16.aj;
                            if (hayVar7 == hay.FILLED_NEW_ARRAY && list2.size() != 0 && ((cwxVar = ((fs) eekVar16).f17323a) == cwx.z || cwxVar == cwx.ai)) {
                                int size3 = list2.size();
                                byte[] bArr = new byte[size3];
                                int i4 = 0;
                                int i5 = 0;
                                while (true) {
                                    if (i4 < size3) {
                                        gsh j15 = eekVar16.j(i4);
                                        j15.getClass();
                                        if (!(j15 instanceof ekh)) {
                                            break;
                                        } else {
                                            byte b3 = (byte) ((ekh) j15).f15702a;
                                            bArr[i4] = b3;
                                            char c2 = (char) b3;
                                            Pattern pattern = cbd.f12584a;
                                            if (' ' <= c2 && c2 <= '~') {
                                                i5++;
                                            }
                                            i4++;
                                        }
                                    } else if (i5 >= size3 - i5) {
                                        epw epwVar = new epw(new String(bArr));
                                        if (list.size() == 1) {
                                            epwVar.ax(eewVar.ai);
                                            epwVar.s(eewVar);
                                            epwVar.br(eewVar);
                                            fpd.h(hedVar, eewVar.j(0));
                                            return epwVar;
                                        }
                                        hdc hdcVar2 = new hdc(this.f9968b, eqp.VIRTUAL, 1);
                                        hdcVar2._an(gsh.aj(epwVar));
                                        cly aj2 = gsh.aj(hdcVar2);
                                        aj2.h = this.f9968b.f11079g;
                                        eewVar.e(0, aj2);
                                        return null;
                                    }
                                }
                            }
                        }
                    }
                    break;
            }
        }
        return null;
    }

    public final boolean m(hed hedVar, fza fzaVar) {
        ArrayList arrayList = fzaVar.ac;
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            eek eekVar = (eek) arrayList.get(i);
            int size = arrayList.size();
            eek l = l(hedVar, eekVar, null);
            if (l != null) {
                l._bs();
                if (i >= arrayList.size() || arrayList.get(i) != eekVar) {
                    int a2 = con.a(arrayList, eekVar);
                    if (a2 == -1) {
                        throw new gck("Failed to replace insn");
                    }
                    arrayList.set(a2, l);
                } else {
                    arrayList.set(i, l);
                }
                if (arrayList.size() < size) {
                    m(hedVar, fzaVar);
                    return true;
                }
                z = true;
            }
        }
        return z;
    }
}
