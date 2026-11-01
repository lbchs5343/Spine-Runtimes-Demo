package g;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class bwy extends pj {

    /* renamed from: a, reason: collision with root package name */
    public List f12346a;

    /* renamed from: b, reason: collision with root package name */
    public final mo f12347b = new mo();

    /* renamed from: c, reason: collision with root package name */
    public cag f12348c;

    static {
        dsr.k(bwy.class);
    }

    public static boolean d(hed hedVar) {
        Iterator it = hedVar.at.iterator();
        while (it.hasNext()) {
            if (!((cwx) ((vm) it.next()).h.f16721f).h()) {
                return false;
            }
        }
        return true;
    }

    public static List e(cwx cwxVar, vm vmVar) {
        cwxVar.getClass();
        if (cwxVar instanceof aoe) {
            ArrayList arrayList = new ArrayList();
            Iterator it = e(cwxVar.k(), null).iterator();
            while (it.hasNext()) {
                arrayList.add(new aoe((cwx) it.next()));
            }
            return arrayList;
        }
        if (vmVar != null) {
            Iterator it2 = ((LinkedHashSet) vmVar.h.f16719c).iterator();
            while (it2.hasNext()) {
                cwx type = ((fog) it2.next()).getType();
                if (type.m() || (type instanceof aoe)) {
                    return Collections.EMPTY_LIST;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (bjt bjtVar : cwxVar.g()) {
            if (bjtVar != bjt.VOID) {
                arrayList2.add(cwx.bc(bjtVar));
            }
        }
        return arrayList2;
    }

    public static int g(hed hedVar, abi abiVar, boolean z) {
        hay hayVar;
        int size = abiVar.aj.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            gks _ay = abiVar._ay(i2);
            fza fzaVar = (fza) abiVar.f9921a.get(i2);
            fza l = l(fzaVar);
            if (l == null) {
                hedVar.bw("Failed to insert an additional move for type inference into block " + fzaVar);
                return 0;
            }
            vm vmVar = _ay.f18326a;
            eek aa = vmVar.f20177c.aa();
            if (aa == null || ((hayVar = aa.ah) != hay.CONST && (hayVar != hay.MOVE || vmVar.f20178d.size() != 1))) {
                i++;
                if (z) {
                    vm vmVar2 = _ay.f18326a;
                    int i3 = _ay.f18327e;
                    gks ab2 = _ay.ab(i3, _ay.h, null);
                    vm bn = hedVar.bn(ab2);
                    gks ab3 = _ay.ab(i3, _ay.h, vmVar2);
                    eek eekVar = new eek(hay.MOVE, 1);
                    eekVar.ax(ab2);
                    eekVar._an(ab3);
                    eekVar.w(csv.SYNTHETIC);
                    l.ac.add(eekVar);
                    abiVar.f(_ay, _ay.ab(i3, _ay.h, bn));
                }
            }
        }
        return i;
    }

    public static adz i(hed hedVar, gks gksVar, cwx cwxVar) {
        hay hayVar;
        fza o;
        eek eekVar = gksVar.ae;
        if (eekVar == null || (hayVar = eekVar.ah) == hay.PHI) {
            return null;
        }
        if ((hayVar == hay.IF && eekVar.j(1).as()) || (o = ffb.o(hedVar, eekVar, hedVar.ak)) == null) {
            return null;
        }
        gks ac = gksVar.ac(hedVar);
        gks b2 = gksVar.b();
        adz adzVar = new adz(hay.CHECK_CAST, cwxVar, 1);
        adzVar.ax(ac);
        adzVar._an(b2);
        adzVar.w(csv.SYNTHETIC);
        eekVar.f(gksVar, adzVar.ai.b());
        int ab2 = ffb.ab(o, eekVar);
        if (ab2 == -1) {
            return null;
        }
        o.ac.add(ab2, adzVar);
        return adzVar;
    }

    public static fza l(fza fzaVar) {
        if (!fzaVar.l.g(csv.SYNTHETIC)) {
            eek s = ffb.s(fzaVar);
            if (s == null) {
                return fzaVar;
            }
            if (!giq.f18211a.contains(s.ah)) {
                return fzaVar;
            }
            List list = fzaVar.f17685e;
            if (list.size() == 1) {
                return l((fza) list.get(0));
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0037 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m(hed hedVar, vm vmVar, boolean z) {
        eek eekVar;
        hay hayVar;
        hdc hdcVar;
        gsh aa;
        ebp r;
        boolean z2;
        adz i;
        if (((cwx) vmVar.h.f16721f).h() || vmVar.i() || (eekVar = vmVar.f20177c.ae) == null || !((hayVar = eekVar.ah) == hay.IGET || hayVar == hay.SGET)) {
            return false;
        }
        cwx cwxVar = eekVar.ai.h;
        if (!z) {
            vmVar.s(cwxVar);
            return true;
        }
        Iterator it = vmVar.f20178d.iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            eek eekVar2 = ((gks) it.next()).ae;
            if (ack.l(eekVar2, hay.INVOKE) && (aa = (hdcVar = (hdc) eekVar2).aa()) != null) {
                if ((aa instanceof gks ? Objects.equals(((gks) aa).f18326a, vmVar) : false) && (r = hedVar.am.f12631ab.f14930b.r(hdcVar)) != null) {
                    int i2 = -1;
                    int i3 = 0;
                    for (gsh gshVar : hdcVar.aj) {
                        if (gshVar != aa) {
                            i2++;
                            gshVar.getClass();
                            if (gshVar instanceof gks) {
                                cwx cwxVar2 = (cwx) r.f().get(i2);
                                cwx j = gshVar.j();
                                cwx z4 = hedVar.am.f12631ab.o.z(cwxVar, j, cwxVar2);
                                if (z4 != null && !z4.equals(j) && (i = i(hedVar, (gks) gshVar, z4)) != null) {
                                    i.w(csv.EXPLICIT_CAST);
                                    i3++;
                                }
                            }
                        }
                    }
                    if (i3 > 0) {
                        z2 = true;
                        if (!z2) {
                            z3 = true;
                        }
                    }
                }
            }
            z2 = false;
            if (!z2) {
            }
        }
        return z3;
    }

    @Override // g.pj
    public final String f() {
        return "FixTypesVisitor";
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        this.f12348c = dwgVar.u;
        this.f12347b.h(dwgVar);
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        final int i4 = 3;
        final int i5 = 4;
        final int i6 = 5;
        final int i7 = 6;
        final int i8 = 7;
        final int i9 = 8;
        this.f12346a = Arrays.asList(new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d3 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d3.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d3);
                                                                        eekVar2.f(gksVar7, d3.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d32 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d32.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d32);
                                                            eekVar2.f(gksVar7, d32.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i2;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i2) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d32 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d32.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d32);
                                                                        eekVar2.f(gksVar7, d32.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d322 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d322.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d322);
                                                            eekVar2.f(gksVar7, d322.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i2;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i3;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i3) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d322 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d322.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d322);
                                                                        eekVar2.f(gksVar7, d322.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d3222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d3222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d3222);
                                                            eekVar2.f(gksVar7, d3222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i3;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i4;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i4) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d3222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d3222.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d3222);
                                                                        eekVar2.f(gksVar7, d3222.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d32222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d32222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d32222);
                                                            eekVar2.f(gksVar7, d32222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i4;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i5;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i5) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d32222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d32222.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d32222);
                                                                        eekVar2.f(gksVar7, d32222.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d322222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d322222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d322222);
                                                            eekVar2.f(gksVar7, d322222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i5;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i6;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i6) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d322222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d322222.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d322222);
                                                                        eekVar2.f(gksVar7, d322222.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d3222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d3222222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d3222222);
                                                            eekVar2.f(gksVar7, d3222222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i6;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i7;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i7) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d3222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d3222222.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d3222222);
                                                                        eekVar2.f(gksVar7, d3222222.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d32222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d32222222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d32222222);
                                                            eekVar2.f(gksVar7, d32222222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i7;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i8;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i8) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d32222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d32222222.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d32222222);
                                                                        eekVar2.f(gksVar7, d32222222.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d322222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d322222222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d322222222);
                                                            eekVar2.f(gksVar7, d322222222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i8;
                return j$.util.function.k.$default$compose(this, function);
            }
        }, new fov(this), new Function(this) { // from class: g.hdd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bwy f19259b;

            {
                this.f19259b = this;
            }

            public final /* synthetic */ Function andThen(Function function) {
                int i10 = i9;
                return j$.util.function.k.$default$andThen(this, function);
            }

            /* JADX WARN: Code restructure failed: missing block: B:239:0x0343, code lost:
            
                if (((g.cff) r10).f12778a != r11) goto L178;
             */
            /* JADX WARN: Removed duplicated region for block: B:216:0x039f  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x03a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x0356  */
            /* JADX WARN: Removed duplicated region for block: B:244:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:382:0x05cf  */
            /* JADX WARN: Removed duplicated region for block: B:386:0x05d5  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object apply(Object obj) {
                int i10;
                boolean z;
                adz adzVar;
                fza o;
                boolean z2;
                fza o2;
                eek eekVar;
                eek g2;
                fza o3;
                boolean z3;
                boolean z4;
                List list;
                int i11;
                int i12;
                List list2;
                int i13;
                int i14;
                Iterator it;
                boolean z5;
                eek eekVar2;
                hay hayVar;
                boolean z6;
                boolean z7;
                hay hayVar2;
                switch (i9) {
                    case 0:
                        hed hedVar = (hed) obj;
                        mo moVar = this.f19259b.f12347b;
                        try {
                            List list3 = hedVar.at;
                            int size = list3.size();
                            int i15 = 0;
                            boolean z8 = false;
                            while (true) {
                                boolean z9 = true;
                                if (i15 >= size) {
                                    if (!z8) {
                                        return Boolean.FALSE;
                                    }
                                    eak.r(hedVar);
                                    moVar.g(hedVar);
                                    moVar.i(hedVar);
                                    Iterator it2 = hedVar.at.iterator();
                                    while (it2.hasNext()) {
                                        if (bwy.m(hedVar, (vm) it2.next(), false)) {
                                            z9 = false;
                                        }
                                    }
                                    if (!z9) {
                                        moVar.g(hedVar);
                                        moVar.i(hedVar);
                                        hedVar.bu("Type inference incomplete: some casts might be missing");
                                    }
                                    return Boolean.valueOf(z9);
                                }
                                if (bwy.m(hedVar, (vm) list3.get(i15), true)) {
                                    z8 = true;
                                }
                                i15++;
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Type inference fix 'apply assigned field type' failed", e2);
                            return Boolean.FALSE;
                        }
                    case 1:
                        hed hedVar2 = (hed) obj;
                        bwy bwyVar = this.f19259b;
                        mo moVar2 = bwyVar.f12347b;
                        Iterator it3 = hedVar2.at.iterator();
                        boolean z10 = false;
                        int i16 = 0;
                        while (it3.hasNext()) {
                            LinkedHashSet linkedHashSet = (LinkedHashSet) ((vm) it3.next()).h.f16719c;
                            if (acw.y(linkedHashSet, new bev(26))) {
                                List bn = acw.bn(linkedHashSet, new bev(27));
                                if (!bn.isEmpty()) {
                                    cwx cwxVar = (cwx) bwyVar.n(linkedHashSet).orElse(cwx.ad);
                                    cwxVar.getClass();
                                    if (cwxVar instanceof btl) {
                                        List q = cwxVar.q();
                                        if (q.size() == 1) {
                                            cwx cwxVar2 = (cwx) q.get(0);
                                            Iterator it4 = bn.iterator();
                                            i10 = 0;
                                            while (it4.hasNext()) {
                                                bue bueVar = (bue) ((fog) it4.next());
                                                dho h = bwyVar.f12348c.f12545e.h(cwxVar2, bueVar.getType());
                                                if (h.d() || h == dho.NARROW_BY_GENERIC) {
                                                    bueVar.f12213b.f10070a = cwxVar;
                                                    i10++;
                                                }
                                            }
                                            i16 += i10;
                                        }
                                    }
                                }
                            }
                            i10 = 0;
                            i16 += i10;
                        }
                        if (i16 != 0) {
                            moVar2.g(hedVar2);
                            moVar2.i(hedVar2);
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    case 2:
                        hed hedVar3 = (hed) obj;
                        mo moVar3 = this.f19259b.f12347b;
                        List list4 = hedVar3.at;
                        int size2 = list4.size();
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            int i19 = 1;
                            if (i17 >= size2) {
                                if (i18 != 0) {
                                    eak.r(hedVar3);
                                    moVar3.g(hedVar3);
                                    moVar3.i(hedVar3);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                            }
                            vm vmVar = (vm) list4.get(i17);
                            ffr ffrVar = vmVar.h;
                            if (!((cwx) ffrVar.f16721f).h() && !vmVar.i()) {
                                Iterator it5 = ((LinkedHashSet) ffrVar.f16719c).iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        cwx type = ((fog) it5.next()).getType();
                                        if (type.h() && !type.equals((cwx) ffrVar.f16721f) && type.bn()) {
                                            hedVar3.am.f12631ab.o.getClass();
                                            if (((cwx) type.bh(new bpf(1, emr.w(hedVar3)))) == null) {
                                                gks gksVar = vmVar.f20177c;
                                                eek eekVar3 = gksVar.ae;
                                                if (eekVar3 != null && eekVar3.ah != hay.PHI && (o = ffb.o(hedVar3, eekVar3, hedVar3.ak)) != null) {
                                                    eekVar3.ax(gksVar.ac(hedVar3));
                                                    gks b2 = gksVar.b();
                                                    gks b3 = eekVar3.ai.b();
                                                    adz adzVar2 = new adz(hay.CHECK_CAST, type, 1);
                                                    adzVar2.ax(b2);
                                                    adzVar2._an(b3);
                                                    adzVar2.w(csv.SYNTHETIC);
                                                    int ab2 = ffb.ab(o, eekVar3);
                                                    if (ab2 != -1) {
                                                        o.ac.add(ab2 + 1, adzVar2);
                                                        adzVar = adzVar2;
                                                        if (adzVar == null) {
                                                            adzVar.w(csv.SOFT_CAST);
                                                        } else {
                                                            ArrayList arrayList = vmVar.f20178d;
                                                            if (!arrayList.isEmpty()) {
                                                                Iterator it6 = new ArrayList(arrayList).iterator();
                                                                i19 = 0;
                                                                while (it6.hasNext()) {
                                                                    gks gksVar2 = (gks) it6.next();
                                                                    adz i20 = bwy.i(hedVar3, gksVar2, gksVar2.h);
                                                                    if (i20 != null) {
                                                                        i20.w(csv.SOFT_CAST);
                                                                        i19++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                adzVar = null;
                                                if (adzVar == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i19 = 0;
                                i18 += i19;
                            }
                            i17++;
                        }
                        break;
                    case 3:
                        return Boolean.valueOf(this.f19259b.o((hed) obj));
                    case 4:
                        hed hedVar4 = (hed) obj;
                        mo moVar4 = this.f19259b.f12347b;
                        Iterator it7 = new ArrayList(hedVar4.at).iterator();
                        boolean z11 = false;
                        while (it7.hasNext()) {
                            vm vmVar2 = (vm) it7.next();
                            if (!((cwx) vmVar2.h.f16721f).h() && !vmVar2.i()) {
                                List list5 = vmVar2.f20179e;
                                if (list5 == null) {
                                    list5 = Collections.EMPTY_LIST;
                                }
                                if (list5.size() < 2 || (g2 = ack.g(vmVar2.f20177c.aa(), hay.CONST)) == null || (o3 = ffb.o(hedVar4, g2, hedVar4.ak)) == null) {
                                    gks gksVar3 = vmVar2.f20177c;
                                    ArrayList arrayList2 = vmVar2.f20178d;
                                    eek aa = gksVar3.aa();
                                    if (ack.l(aa, hay.CONST) && arrayList2.size() >= 2 && (o2 = ffb.o(hedVar4, aa, hedVar4.ak)) != null) {
                                        aa.v(csv.DONT_INLINE);
                                        int ab3 = ffb.ab(o2, aa) + 1;
                                        ArrayList arrayList3 = new ArrayList(arrayList2);
                                        int size3 = arrayList3.size();
                                        for (int i21 = 0; i21 < size3; i21++) {
                                            gks gksVar4 = (gks) arrayList3.get(i21);
                                            gksVar4.v(csv.DONT_INLINE_CONST);
                                            if (i21 != 0 && (eekVar = gksVar4.ae) != null) {
                                                eek av = aa.av(hedVar4);
                                                o2.ac.add(ab3, av);
                                                eekVar.f(gksVar4, av.ai.b());
                                            }
                                        }
                                    }
                                } else {
                                    List<abi> list6 = vmVar2.f20179e;
                                    if (list6 == null) {
                                        list6 = Collections.EMPTY_LIST;
                                    }
                                    boolean z12 = true;
                                    for (abi abiVar : list6) {
                                        if (z12) {
                                            z12 = false;
                                        } else {
                                            eek av2 = g2.av(hedVar4);
                                            av2.w(csv.SYNTHETIC);
                                            int ab4 = ffb.ab(o3, g2);
                                            if (ab4 != -1) {
                                                o3.ac.add(ab4 + 1, av2);
                                            }
                                            List list7 = abiVar.aj;
                                            gks gksVar5 = null;
                                            if (list7.size() != 0) {
                                                Iterator it8 = list7.iterator();
                                                while (true) {
                                                    if (it8.hasNext()) {
                                                        gks gksVar6 = (gks) ((gsh) it8.next());
                                                        if (gksVar6.f18326a == vmVar2) {
                                                            gksVar5 = gksVar6;
                                                        }
                                                    }
                                                }
                                            }
                                            abiVar.f(gksVar5, av2.ai.b());
                                        }
                                    }
                                }
                                z11 = true;
                            }
                        }
                        if (z11) {
                            eak.r(hedVar4);
                            moVar4.g(hedVar4);
                            moVar4.i(hedVar4);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    case 5:
                        hed hedVar5 = (hed) obj;
                        mo moVar5 = this.f19259b.f12347b;
                        List list8 = hedVar5.at;
                        int size4 = list8.size();
                        int i22 = 0;
                        boolean z13 = false;
                        while (i22 < size4) {
                            vm vmVar3 = (vm) list8.get(i22);
                            ffr ffrVar2 = vmVar3.h;
                            if (!((cwx) ffrVar2.f16721f).h()) {
                                Iterator it9 = ((LinkedHashSet) ffrVar2.f16719c).iterator();
                                boolean z14 = false;
                                while (true) {
                                    if (it9.hasNext()) {
                                        fog fogVar = (fog) it9.next();
                                        cwx type2 = fogVar.getType();
                                        int i23 = dcb.f13947a[fogVar.f().ordinal()];
                                        if (i23 != 1) {
                                            if (i23 == 2) {
                                                if (type2 instanceof cff) {
                                                    bjt bjtVar = ((cff) type2).f12778a;
                                                    bjtVar.getClass();
                                                    z7 = !(bjtVar == bjt.OBJECT || bjtVar == bjt.ARRAY);
                                                } else {
                                                    bjt[] g3 = type2.g();
                                                    int length = g3.length;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 < length) {
                                                            bjt bjtVar2 = g3[i24];
                                                            bjtVar2.getClass();
                                                            if (bjtVar2 == bjt.OBJECT || bjtVar2 == bjt.ARRAY) {
                                                                i24++;
                                                            } else {
                                                                z7 = true;
                                                            }
                                                        } else {
                                                            z7 = false;
                                                        }
                                                    }
                                                }
                                                if (!z7) {
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else if (type2.o(bjt.BOOLEAN)) {
                                            z14 = true;
                                        }
                                    } else if (z14) {
                                        Iterator it10 = new ArrayList(vmVar3.f20178d).iterator();
                                        z4 = false;
                                        while (it10.hasNext()) {
                                            gks gksVar7 = (gks) it10.next();
                                            cwx cwxVar3 = gksVar7.h;
                                            cff cffVar = cwx.at;
                                            if (cwxVar3 == cffVar || ((cwxVar3.h() && !(cwxVar3 instanceof cff)) || (eekVar2 = gksVar7.ae) == null || (hayVar = eekVar2.ah) == hay.IF)) {
                                                list2 = list8;
                                                i13 = size4;
                                            } else {
                                                fza o4 = ffb.o(hedVar5, eekVar2, hedVar5.ak);
                                                if (o4 == null) {
                                                    list2 = list8;
                                                    i13 = size4;
                                                } else {
                                                    ArrayList arrayList4 = o4.ac;
                                                    list2 = list8;
                                                    int a2 = con.a(arrayList4, eekVar2);
                                                    i13 = size4;
                                                    if (a2 != -1) {
                                                        if (hayVar == hay.CAST) {
                                                            dwk d2 = dxg.d(eekVar2.ai, gksVar7.f18326a.f20177c.b(), (cwx) ((adz) eekVar2).f10070a);
                                                            d2.w(csv.SYNTHETIC);
                                                            ffb.bs(hedVar5, o4, a2, d2);
                                                            it = it10;
                                                            i14 = i22;
                                                        } else {
                                                            if (hayVar == hay.ARITH) {
                                                                ame ameVar = (ame) eekVar2;
                                                                it = it10;
                                                                if (ameVar.f10465d == bvj.XOR && ameVar.aj.size() == 2) {
                                                                    gsh j = ameVar.j(1);
                                                                    j.getClass();
                                                                    if (j instanceof ekh) {
                                                                        i14 = i22;
                                                                        if (((ekh) j).f15702a == 1) {
                                                                            eek eekVar4 = new eek(hay.NOT, 1);
                                                                            eekVar4._an(gksVar7.b());
                                                                            csv csvVar = csv.SYNTHETIC;
                                                                            eekVar4.w(csvVar);
                                                                            cwx j2 = ameVar.ai.j();
                                                                            bjt bjtVar3 = bjt.BOOLEAN;
                                                                            if (j2 instanceof cff) {
                                                                                j2.getClass();
                                                                                break;
                                                                            }
                                                                            if (j2.h() || !j2.o(bjtVar3)) {
                                                                                z6 = false;
                                                                                if (z6) {
                                                                                    cly aj = gsh.aj(eekVar4);
                                                                                    aj.h = cffVar;
                                                                                    eekVar4 = dxg.d(ameVar.ai, aj, cwx.an);
                                                                                    eekVar4.w(csvVar);
                                                                                } else {
                                                                                    eekVar4.ax(ameVar.ai);
                                                                                }
                                                                                ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                            }
                                                                            z6 = true;
                                                                            if (z6) {
                                                                            }
                                                                            ffb.bs(hedVar5, o4, a2, eekVar4);
                                                                        }
                                                                        dwk d322222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                                        d322222222.w(csv.SYNTHETIC);
                                                                        arrayList4.add(a2, d322222222);
                                                                        eekVar2.f(gksVar7, d322222222.ai.b());
                                                                    }
                                                                }
                                                            } else {
                                                                it = it10;
                                                            }
                                                            i14 = i22;
                                                            dwk d3222222222 = dxg.d(gksVar7.ac(hedVar5), gksVar7.f18326a.f20177c.b(), cwxVar3);
                                                            d3222222222.w(csv.SYNTHETIC);
                                                            arrayList4.add(a2, d3222222222);
                                                            eekVar2.f(gksVar7, d3222222222.ai.b());
                                                        }
                                                        z5 = true;
                                                        if (!z5) {
                                                            z4 = true;
                                                        }
                                                        list8 = list2;
                                                        size4 = i13;
                                                        it10 = it;
                                                        i22 = i14;
                                                    }
                                                }
                                            }
                                            it = it10;
                                            i14 = i22;
                                            z5 = false;
                                            if (!z5) {
                                            }
                                            list8 = list2;
                                            size4 = i13;
                                            it10 = it;
                                            i22 = i14;
                                        }
                                        list = list8;
                                        i11 = size4;
                                        i12 = i22;
                                    }
                                }
                            }
                            list = list8;
                            i11 = size4;
                            i12 = i22;
                            z4 = false;
                            if (z4) {
                                z13 = true;
                            }
                            i22 = i12 + 1;
                            list8 = list;
                            size4 = i11;
                        }
                        if (z13) {
                            eak.r(hedVar5);
                            moVar5.g(hedVar5);
                            moVar5.i(hedVar5);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    case 6:
                        hed hedVar6 = (hed) obj;
                        boolean z15 = false;
                        boolean z16 = false;
                        for (vm vmVar4 : hedVar6.at) {
                            if (!((cwx) vmVar4.h.f16721f).h() && vmVar4.i()) {
                                Iterator it11 = vmVar4.f20178d.iterator();
                                while (it11.hasNext()) {
                                    eek eekVar5 = ((gks) it11.next()).ae;
                                    if (eekVar5 != null && ((hayVar2 = eekVar5.ah) == hay.AGET || hayVar2 == hay.APUT)) {
                                        vmVar4.s(vmVar4.m());
                                        z16 = true;
                                    }
                                }
                            }
                        }
                        if (z16) {
                            this.f19259b.f12347b.i(hedVar6);
                            z15 = true;
                        }
                        return Boolean.valueOf(z15);
                    case 7:
                        hed hedVar7 = (hed) obj;
                        bwy bwyVar2 = this.f19259b;
                        mo moVar6 = bwyVar2.f12347b;
                        Iterator it12 = hedVar7.ak.iterator();
                        boolean z17 = false;
                        int i25 = 0;
                        while (it12.hasNext()) {
                            czc czcVar = (czc) ((fza) it12.next()).l.k(acq.am);
                            if (czcVar != null) {
                                Iterator it13 = czcVar.f13803a.iterator();
                                while (it13.hasNext()) {
                                    abi abiVar2 = (abi) it13.next();
                                    Iterator it14 = abiVar2.aj.iterator();
                                    cwx cwxVar4 = null;
                                    cwx cwxVar5 = null;
                                    while (true) {
                                        if (it14.hasNext()) {
                                            cwx j3 = ((gsh) it14.next()).j();
                                            if (cwxVar5 == null) {
                                                cwxVar5 = j3;
                                            } else if (!cwxVar5.equals(j3)) {
                                            }
                                        } else {
                                            cwxVar4 = cwxVar5;
                                        }
                                    }
                                    i25 += ((cwxVar4 == null || !cwxVar4.h()) && bwy.g(hedVar7, abiVar2, false) != 0) ? bwy.g(hedVar7, abiVar2, true) : 0;
                                }
                            }
                        }
                        if (i25 != 0) {
                            eak.r(hedVar7);
                            moVar6.g(hedVar7);
                            moVar6.i(hedVar7);
                            z17 = bwy.d(hedVar7) ? true : bwyVar2.o(hedVar7);
                        }
                        return Boolean.valueOf(z17);
                    default:
                        hed hedVar8 = (hed) obj;
                        boolean z18 = true;
                        for (vm vmVar5 : hedVar8.at) {
                            if (!((cwx) vmVar5.h.f16721f).h() && !vmVar5.i()) {
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                Iterator it15 = ((LinkedHashSet) vmVar5.h.f16719c).iterator();
                                while (it15.hasNext()) {
                                    cwx type3 = ((fog) it15.next()).getType();
                                    if (type3.h() && type3.m()) {
                                        linkedHashSet2.add(type3);
                                    }
                                }
                                if (!linkedHashSet2.isEmpty()) {
                                    for (cwx cwxVar6 : linkedHashSet2) {
                                        if (cwxVar6.m() && cwxVar6.bk()) {
                                            cwx bf = cwxVar6 instanceof btl ? cwx.t : cwx.bf(cwxVar6.l());
                                            cag cagVar = this.f19259b.f12348c;
                                            cagVar.getClass();
                                            if (cagVar.p(hedVar8, vmVar5, bf, zf.f20391d) == dgr.CHANGED) {
                                                hedVar8.bw("Type inference failed for " + vmVar5.l() + ". Raw type applied. Possible types: " + evh.h(", ", linkedHashSet2));
                                            }
                                        }
                                    }
                                }
                                z18 = false;
                            }
                        }
                        return Boolean.valueOf(z18);
                }
            }

            public final /* synthetic */ Function compose(Function function) {
                int i10 = i9;
                return j$.util.function.k.$default$compose(this, function);
            }
        });
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar || d(hedVar)) {
            return;
        }
        try {
            Iterator it = this.f12346a.iterator();
            while (it.hasNext()) {
                if (((Boolean) ((Function) it.next()).apply(hedVar)).booleanValue() && d(hedVar)) {
                    return;
                }
            }
        } catch (Exception e2) {
            dcj.d(hedVar, "Types fix failed", e2);
        }
    }

    public final Optional n(LinkedHashSet linkedHashSet) {
        return Collection.b.stream(linkedHashSet).map(new fov(27)).filter(new bev(28)).max(this.f12348c.f12545e.f13637c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ee, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0008 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00f3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o(hed hedVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        for (vm vmVar : hedVar.at) {
            boolean i = vmVar.i();
            ffr ffrVar = vmVar.h;
            if (!i) {
                cwx cwxVar = (cwx) ffrVar.f16721f;
                if (!cwxVar.h()) {
                    try {
                        z = p(hedVar, vmVar);
                    } catch (blf e2) {
                        throw e2;
                    } catch (Exception e3) {
                        hedVar.bt("Failed to calculate best type for var: " + vmVar, e3);
                        z = false;
                    }
                    if (!z) {
                        List<cwx> e4 = e(cwxVar, vmVar);
                        if (!e4.isEmpty()) {
                            for (cwx cwxVar2 : e4) {
                                cag cagVar = this.f12348c;
                                cagVar.getClass();
                                if (cagVar.p(hedVar, vmVar, cwxVar2, zf.f20390c) == dgr.CHANGED) {
                                    z2 = true;
                                    break;
                                }
                            }
                        }
                        z2 = false;
                        if (!z2) {
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            Iterator it = ((LinkedHashSet) ffrVar.f16719c).iterator();
                            while (it.hasNext()) {
                                cwx type = ((fog) it.next()).getType();
                                if (type.h() && type.m()) {
                                    linkedHashSet.add(type);
                                }
                            }
                            if (!linkedHashSet.isEmpty()) {
                                cut cutVar = hedVar.am.f12631ab.l;
                                Iterator it2 = linkedHashSet.iterator();
                                while (it2.hasNext()) {
                                    Iterator it3 = cutVar.g(((cwx) it2.next()).l()).iterator();
                                    while (it3.hasNext()) {
                                        cwx bf = cwx.bf((String) it3.next());
                                        cag cagVar2 = this.f12348c;
                                        cagVar2.getClass();
                                        if (cagVar2.p(hedVar, vmVar, bf, zf.f20391d) == dgr.CHANGED) {
                                            z3 = true;
                                            break;
                                        }
                                    }
                                }
                            }
                            z3 = false;
                        }
                    }
                    z4 = true;
                    if (!z4) {
                        z5 = true;
                    }
                }
            }
            z4 = false;
            if (!z4) {
            }
        }
        return z5;
    }

    public final boolean p(hed hedVar, vm vmVar) {
        Optional n = n((LinkedHashSet) vmVar.h.f16719c);
        if (n.isEmpty()) {
            return false;
        }
        cwx cwxVar = (cwx) n.get();
        cag cagVar = this.f12348c;
        cagVar.getClass();
        dgr p = cagVar.p(hedVar, vmVar, cwxVar, zf.f20390c);
        return p != dgr.REJECT && p == dgr.CHANGED;
    }
}
