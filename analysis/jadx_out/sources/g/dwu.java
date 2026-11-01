package g;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class dwu extends pj {

    /* renamed from: a, reason: collision with root package name */
    public Object f14977a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14978b = 0;

    /* renamed from: c, reason: collision with root package name */
    public Comparable f14979c;

    public /* synthetic */ dwu() {
    }

    public dwu(String str, Consumer consumer) {
        this.f14979c = str;
        this.f14977a = consumer;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x016c A[LOOP:0: B:24:0x0071->B:32:0x016c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x016b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List d(fzn fznVar, eek eekVar) {
        eek eekVar2;
        hcd hcdVar;
        fjd g2;
        eek b2;
        ArrayList arrayList = (ArrayList) fznVar.f17730e;
        cci cciVar = (cci) fznVar.f17729d;
        int i = jx.f19517a[eekVar.ah.ordinal()];
        if (i == 1) {
            ArrayList arrayList2 = new ArrayList();
            for (gsh gshVar : eekVar.aj) {
                gshVar.getClass();
                if (gshVar instanceof cly) {
                    eek eekVar3 = ((cly) gshVar).f13104a;
                    hay hayVar = eekVar3.ah;
                    if (hayVar == hay.SGET) {
                        g2 = e(fznVar, eekVar3);
                    } else {
                        eew eewVar = hayVar == hay.CONSTRUCTOR ? (eew) eekVar3 : null;
                        if (eewVar != null) {
                            hcd hcdVar2 = new hcd(cciVar, cciVar.f12631ab.h.s(new dsj(cciVar.ak, "EF" + eewVar.ag, cciVar.au())), 0);
                            hcdVar2.w(csv.SYNTHETIC);
                            hcdVar2.bv("Fake field, exist only in values array");
                            cciVar.be(hcdVar2);
                            g2 = g(fznVar, hcdVar2, eewVar);
                        }
                        g2 = null;
                    }
                    if (g2 != null) {
                        arrayList2.add(g2);
                    }
                } else {
                    if (gshVar instanceof gks) {
                        gks gksVar = (gks) gshVar;
                        eek aa = gksVar.aa();
                        if (aa == null || aa.ah != hay.SGET) {
                            vm vmVar = gksVar.f18326a;
                            if (vmVar.f20178d.size() != 0 && (eekVar2 = vmVar.f20177c.ae) != null && eekVar2.ah == hay.CONSTRUCTOR) {
                                eek eekVar4 = ((gks) vmVar.f20178d.get(0)).ae;
                                if (eekVar4 == null || eekVar4.ah != hay.SPUT || (hcdVar = cciVar.ar((dsj) ((adz) eekVar4).f10070a)) == null) {
                                    hcdVar = null;
                                } else {
                                    arrayList.add(eekVar4);
                                }
                                if (hcdVar == null) {
                                    hcdVar = new hcd(cciVar, cciVar.f12631ab.h.s(new dsj(cciVar.ak, "EF" + gksVar.f18327e, cciVar.au())), 0);
                                    hcdVar.w(csv.SYNTHETIC);
                                    hcdVar.bv("Fake field, exist only in values array");
                                    cciVar.be(hcdVar);
                                }
                                g2 = g(fznVar, hcdVar, (eew) eekVar2);
                            }
                        } else {
                            g2 = e(fznVar, aa);
                        }
                        if (g2 != null) {
                        }
                    }
                    g2 = null;
                    if (g2 != null) {
                    }
                }
            }
            arrayList.add(eekVar);
            return arrayList2;
        }
        if (i == 2) {
            hed x = cciVar.f12631ab.x(((hdc) eekVar).ad);
            if (x != null && !x.bg() && (b2 = ack.b(ack.n(ffb.s((fza) evh.q(x.ad.f17685e))))) != null) {
                List d2 = d(fznVar, b2);
                if (d2 != null) {
                    x.w(csv.DONT_GENERATE);
                }
                return d2;
            }
        } else if (i == 3 && eekVar.j(0).g()) {
            return Collections.EMPTY_LIST;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fjd e(fzn fznVar, eek eekVar) {
        eek eekVar2;
        eek aa;
        eew eewVar;
        cci cciVar = (cci) fznVar.f17729d;
        if (eekVar.ah == hay.SGET) {
            dsj dsjVar = (dsj) ((adz) eekVar).f10070a;
            ArrayList arrayList = (ArrayList) fznVar.f17730e;
            hcd ar = cciVar.ar(dsjVar);
            if (ar != null) {
                Iterator it = ((ArrayList) fznVar.h).iterator();
                loop0: while (true) {
                    if (!it.hasNext()) {
                        eekVar2 = null;
                        break;
                    }
                    Iterator it2 = ((fza) it.next()).ac.iterator();
                    while (it2.hasNext()) {
                        eekVar2 = (eek) it2.next();
                        if (eekVar2 != null && eekVar2.ah == hay.SPUT && Objects.equals(cciVar.ar((dsj) ((adz) eekVar2).f10070a), ar)) {
                            break loop0;
                        }
                    }
                }
                if (eekVar2 != null) {
                    if (eekVar2.aj.size() == 1) {
                        gsh j = eekVar2.j(0);
                        j.getClass();
                        if (j instanceof cly) {
                            eek eekVar3 = ((cly) j).f13104a;
                            if (eekVar3 != null && eekVar3.ah == hay.CONSTRUCTOR) {
                                eewVar = (eew) eekVar3;
                                if (eewVar != null) {
                                    gks gksVar = eekVar.ai;
                                    if (gksVar == null || gksVar.f18326a.f20178d.size() == 1) {
                                        arrayList.add(eekVar);
                                    }
                                    arrayList.add(eekVar2);
                                    return g(fznVar, ar, eewVar);
                                }
                            }
                        } else if ((j instanceof gks) && (aa = ((gks) j).aa()) != null && aa.ah == hay.CONSTRUCTOR) {
                            eewVar = (eew) aa;
                            if (eewVar != null) {
                            }
                        }
                    }
                    eewVar = null;
                    if (eewVar != null) {
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v12, types: [g.dsj] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    public static fjd g(fzn fznVar, hcd hcdVar, eew eewVar) {
        eew eewVar2;
        eew eewVar3;
        eew eewVar4;
        eew eewVar5 = eewVar;
        cci cciVar = (cci) fznVar.f17729d;
        List list = eewVar5.aj;
        ayu ayuVar = eewVar5.f15409a;
        int i = 1;
        if (list.size() < 1) {
            return null;
        }
        ArrayList arrayList = (ArrayList) fznVar.f17730e;
        cci ae = cciVar.f12631ab.ae(ayuVar.f11076d);
        if (ae == null) {
            return null;
        }
        if (!ae.equals(cciVar)) {
            if (!ae.l.j(acq.r)) {
                return null;
            }
        }
        if (cciVar.f12631ab.x(ayuVar) == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        eewVar5.h(arrayList2);
        if (!arrayList2.isEmpty()) {
            eew eewVar6 = (eew) eewVar5._o();
            ArrayList arrayList3 = new ArrayList();
            eewVar6.h(arrayList3);
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                gks gksVar = (gks) it.next();
                vm vmVar = gksVar.f18326a;
                eek g2 = ack.g(vmVar.f20177c.ae, hay.CONSTRUCTOR);
                if (g2 != null) {
                    ve veVar = ((eew) g2).f15409a.f11076d;
                    ve veVar2 = cciVar.ak;
                    if (veVar.equals(veVar2)) {
                        Iterator it2 = vmVar.f20178d.iterator();
                        ?? r13 = 0;
                        while (true) {
                            if (it2.hasNext()) {
                                eek eekVar = ((gks) it2.next()).ae;
                                if (eekVar == null) {
                                    eewVar4 = null;
                                    eewVar3 = null;
                                    break;
                                }
                                eewVar3 = null;
                                int i2 = jx.f19517a[eekVar.ah.ordinal()];
                                if (i2 == i) {
                                    gsh j = ((eek) fznVar.i).j(0);
                                    j.getClass();
                                    if (!(j instanceof cly ? ((cly) j).f13104a : null).equals(eekVar)) {
                                        break;
                                    }
                                    i = 1;
                                    r13 = r13;
                                } else if (i2 == 4) {
                                    r13 = (dsj) ((adz) eekVar).f10070a;
                                    if (!r13.f14711d.equals(veVar2) || !r13.f14709a.equals(cciVar.au())) {
                                        break;
                                    }
                                    i = 1;
                                    r13 = r13;
                                } else {
                                    if (i2 != 5 || !((eew) eekVar).f15409a.f11076d.equals(veVar2)) {
                                        break;
                                    }
                                    i = 1;
                                    r13 = r13;
                                }
                            } else {
                                eewVar3 = null;
                                eewVar4 = r13;
                                if (r13 != 0) {
                                    arrayList.add(g2);
                                    eewVar4 = r13;
                                }
                            }
                        }
                        eewVar4 = eewVar3;
                        if (eewVar4 == null || !eewVar6.f(gksVar, gsh.aj(new adz(hay.SGET, eewVar4, 0)))) {
                            eewVar2 = eewVar3;
                            break;
                        }
                        i = 1;
                    }
                }
                eewVar3 = null;
                eewVar4 = eewVar3;
                if (eewVar4 == null) {
                    i = 1;
                }
                eewVar2 = eewVar3;
            }
            eewVar2 = eewVar6;
            if (eewVar2 == null) {
                throw new gck(awf.ad(new StringBuilder("Init of enum field '"), hcdVar.f19217g.f14712e, "' uses external variables"));
            }
            arrayList.add(eewVar5);
            eewVar5 = eewVar2;
        }
        return new fjd(hcdVar, eewVar5);
    }

    @Override // g.pj
    public String f() {
        switch (this.f14978b) {
            case 1:
                return (String) this.f14979c;
            default:
                return super.f();
        }
    }

    @Override // g.pj
    public void h(dwg dwgVar) {
        switch (this.f14978b) {
            case 0:
                aog aogVar = cwx.y;
                this.f14979c = ayu.k(dwgVar, ve.h(dwgVar, aogVar), "valueOf", Arrays.asList(cwx.f13657ab, cwx.al), aogVar);
                aog aogVar2 = cwx.t;
                this.f14977a = ayu.k(dwgVar, ve.h(dwgVar, aogVar2), "clone", Collections.EMPTY_LIST, aogVar2);
                break;
        }
    }

    public boolean i(hed hedVar, cwx cwxVar) {
        eek t;
        adz adzVar;
        hdc hdcVar;
        cwx cwxVar2 = hedVar.aw;
        cwxVar2.getClass();
        return (cwxVar2 instanceof aoe) && cwxVar2.k().equals(cwxVar) && (t = ffb.t(hedVar)) != null && t.ah == hay.RETURN && t.aj.size() == 1 && (adzVar = (adz) ack.g(ack.b(ack.n(t)), hay.CHECK_CAST)) != null && Objects.equals(adzVar.f10070a, new aoe(cwxVar)) && (hdcVar = (hdc) ack.g(ack.b(ack.n(adzVar)), hay.INVOKE)) != null && hdcVar.ad.equals((ayu) this.f14977a);
    }

    @Override // g.pj
    public void j(hed hedVar) {
        switch (this.f14978b) {
            case 1:
                ((Consumer) this.f14977a).n(hedVar);
                break;
        }
    }

    @Override // g.pj
    public boolean k(cci cciVar) {
        boolean z;
        switch (this.f14978b) {
            case 0:
                if (!cciVar.bi()) {
                    return true;
                }
                try {
                    z = l(cciVar);
                } catch (Exception e2) {
                    cciVar.bt("Enum visitor error", e2);
                    z = false;
                }
                if (z) {
                    return true;
                }
                gqc gqcVar = cciVar.f12632d;
                if (!gqcVar.ag()) {
                    return true;
                }
                cciVar.f12632d = gqcVar.ah(16384);
                cciVar.bu("Failed to restore enum class, 'enum' modifier and super class removed");
                return true;
            default:
                return super.k(cciVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean l(cci cciVar) {
        fep fepVar;
        long sum;
        hed hedVar;
        dsj dsjVar;
        long sum2;
        adz adzVar;
        hdc hdcVar;
        String str;
        eew eewVar;
        ve veVar;
        dwg dwgVar;
        hed x;
        gks gksVar;
        cci ae;
        dwu dwuVar = this;
        cwx cwxVar = cciVar.af;
        dwg dwgVar2 = cciVar.f12631ab;
        if (cwxVar != null && cwxVar.l().equals(cwx.y.f10565d)) {
            cciVar.w(csv.REMOVE_SUPER_CLASS);
        }
        hed bf = cciVar.bf("<clinit>()V");
        int i = 0;
        if (bf == null) {
            cciVar.bu("Enum class init method not found");
            return false;
        }
        eys eysVar = bf.ao;
        if (eysVar == null || bf.ak.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = eysVar.f16387g.iterator();
        while (it.hasNext()) {
            amj amjVar = (amj) it.next();
            if (!(amjVar instanceof fza)) {
                break;
            }
            arrayList.add((fza) amjVar);
        }
        if (arrayList.isEmpty()) {
            cciVar.bu("Unexpected branching in enum static init block");
            return false;
        }
        fzn fznVar = new fzn(cciVar, arrayList);
        cci cciVar2 = (cci) fznVar.f17729d;
        ArrayList arrayList2 = (ArrayList) fznVar.f17730e;
        ve veVar2 = cciVar2.ak;
        dwg dwgVar3 = cciVar2.f12631ab;
        cwx cwxVar2 = veVar2.f20149d;
        cciVar2.av();
        List list = (List) Collection.b.stream(cciVar2.ag).filter(new bev(17)).filter(new bev(18)).filter(new egl(3, cwxVar2)).collect(Collectors.toList());
        if (list.isEmpty()) {
            cciVar2.bu("$VALUES field not found");
            return false;
        }
        if (list.size() > 1) {
            Collection.b.removeIf(list, new bev(19));
        }
        if (list.size() > 1) {
            Optional findAny = Collection.b.stream(list).filter(new bev(20)).findAny();
            if (findAny.isPresent()) {
                list.clear();
                list.add((hcd) findAny.get());
            }
        }
        if (list.size() != 1) {
            cciVar2.bu("Found several \"values\" enum fields: " + list);
            return false;
        }
        hcd hcdVar = (hcd) list.get(0);
        fznVar.f17731f = hcdVar;
        dsj dsjVar2 = hcdVar.f19217g;
        Iterator it2 = ((ArrayList) fznVar.h).iterator();
        loop1: while (true) {
            if (!it2.hasNext()) {
                fepVar = null;
                break;
            }
            fza fzaVar = (fza) it2.next();
            Iterator it3 = fzaVar.ac.iterator();
            while (it3.hasNext()) {
                eek eekVar = (eek) it3.next();
                if (eekVar.ah == hay.SPUT) {
                    adz adzVar2 = (adz) eekVar;
                    if (((dsj) adzVar2.f10070a).equals(dsjVar2)) {
                        fepVar = new fep(fzaVar, adzVar2);
                        break loop1;
                    }
                }
            }
        }
        if (fepVar == null) {
            return false;
        }
        eek eekVar2 = fepVar.f16671b;
        fznVar.i = eekVar2;
        gsh j = eekVar2.j(0);
        j.getClass();
        List<fjd> d2 = j instanceof cly ? d(fznVar, ((cly) j).f13104a) : null;
        if (d2 == null) {
            cciVar.bu("Unknown enum class pattern. Please report as an issue!");
            return false;
        }
        arrayList2.add((eek) fznVar.i);
        afq afqVar = new afq(d2);
        afqVar.f10151b = bf;
        cciVar.m(afqVar);
        for (fjd fjdVar : d2) {
            eew eewVar2 = fjdVar.f16882b;
            hcd hcdVar2 = fjdVar.f16881a;
            dsj dsjVar3 = hcdVar2.f19217g;
            gsh j2 = eewVar2.j(i);
            j2.getClass();
            if (j2 instanceof cly) {
                Object h = ack.h(dwgVar2, ((cly) j2).f13104a);
                if (h instanceof String) {
                    str = (String) h;
                    if (str != null && !dsjVar3.f14710b.equals(str) && cbd.e(str) && dwgVar2.i.r.contains(ffl.VALID)) {
                        dsjVar3.f14710b = str;
                    }
                    hcdVar2.w(csv.DONT_GENERATE);
                    eewVar = fjdVar.f16882b;
                    ayu ayuVar = eewVar.f15409a;
                    veVar = ayuVar.f11076d;
                    if (!veVar.equals(cciVar2.ak) || (ae = dwgVar3.ae(veVar)) == null) {
                        dwgVar = dwgVar2;
                    } else {
                        ae.av();
                        for (hed hedVar2 : ae.aj) {
                            dwg dwgVar4 = dwgVar2;
                            if (hedVar2.ax.bf()) {
                                hedVar2.w(csv.DONT_GENERATE);
                            }
                            dwgVar2 = dwgVar4;
                        }
                        dwgVar = dwgVar2;
                        fjdVar.f16883c = ae;
                        if (!ae.ai.equals(cciVar2)) {
                            cciVar2.as(ae);
                            ae.w(csv.DONT_GENERATE);
                        }
                    }
                    x = dwgVar3.x(ayuVar);
                    if (x != null) {
                        cse.b(x, 0);
                        if (x.al.f11075c.size() > 1) {
                            cse.b(x, 1);
                        }
                    }
                    gksVar = eewVar.ai;
                    if (gksVar != null || gksVar.f18326a.f20178d.size() <= 2) {
                        arrayList2.add(eewVar);
                    } else if (Collection.b.stream(gksVar.f18326a.f20178d).anyMatch(new egl(1, fznVar))) {
                        adz adzVar3 = new adz(hay.SGET, dsjVar3, 0);
                        adzVar3.ax(gksVar.b());
                        Iterator it4 = bf.ak.iterator();
                        while (it4.hasNext() && !ffb.bw(bf, (fza) it4.next(), eewVar, adzVar3)) {
                        }
                    }
                    dwgVar2 = dwgVar;
                    i = 0;
                }
            }
            str = null;
            if (str != null) {
                dsjVar3.f14710b = str;
            }
            hcdVar2.w(csv.DONT_GENERATE);
            eewVar = fjdVar.f16882b;
            ayu ayuVar2 = eewVar.f15409a;
            veVar = ayuVar2.f11076d;
            if (veVar.equals(cciVar2.ak)) {
            }
            dwgVar = dwgVar2;
            x = dwgVar3.x(ayuVar2);
            if (x != null) {
            }
            gksVar = eewVar.ai;
            if (gksVar != null) {
            }
            arrayList2.add(eewVar);
            dwgVar2 = dwgVar;
            i = 0;
        }
        ((hcd) fznVar.f17731f).w(csv.DONT_GENERATE);
        fpd.n(bf, arrayList2);
        Iterator it5 = bf.ak.iterator();
        while (it5.hasNext()) {
            fpd.s(((fza) it5.next()).ac, arrayList2);
        }
        eek[] eekVarArr = bf.an;
        if (eekVarArr != null) {
            sum = eekVarArr.length;
        } else {
            List list2 = bf.ak;
            sum = list2 != null ? Collection.b.stream(list2).mapToLong(new het()).sum() : -1L;
        }
        if (sum == 0) {
            bf.w(csv.DONT_GENERATE);
        } else if (!arrayList2.isEmpty()) {
            eak.av(bf);
        }
        hcd hcdVar3 = (hcd) fznVar.f17731f;
        cwx cwxVar3 = cciVar.ak.f20149d;
        StringBuilder sb = new StringBuilder("values()");
        cff cffVar = cwx.an;
        sb.append(pp.c(new aoe(cwxVar3)));
        String sb2 = sb.toString();
        cciVar.av();
        hed hedVar3 = null;
        for (hed hedVar4 : cciVar.aj) {
            ayu ayuVar3 = hedVar4.al;
            boolean m = ayuVar3.m();
            String str2 = ayuVar3.f11077e;
            if (!m && !hedVar4.ar) {
                if (ayuVar3.o()) {
                    if (str2.equals("<init>(Ljava/lang/String;I)V") || str2.equals("<init>(Ljava/lang/String;)V")) {
                        eek[] eekVarArr2 = hedVar4.an;
                        if (eekVarArr2 != null) {
                            sum2 = eekVarArr2.length;
                        } else {
                            List list3 = hedVar4.ak;
                            sum2 = list3 != null ? Collection.b.stream(list3).mapToLong(new het()).sum() : -1L;
                        }
                        if (sum2 == 0) {
                            hedVar4.w(csv.DONT_GENERATE);
                        }
                    }
                    cse.b(hedVar4, 0);
                    if (hedVar4.al.f11075c.size() > 1) {
                        cse.b(hedVar4, 1);
                    }
                } else if (str2.equals(sb2)) {
                    if (dwuVar.i(hedVar4, cwxVar3)) {
                        hedVar4.w(csv.DONT_GENERATE);
                        hedVar3 = hedVar4;
                    } else {
                        ayuVar3.f11073a = "valuesCustom";
                        awl awlVar = new awl(hedVar4);
                        awlVar.b("to resolve conflict with enum method");
                        hedVar4.m(awlVar);
                    }
                } else if (dwuVar.i(hedVar4, cwxVar3)) {
                    if (!ayuVar3.f11073a.equals("values") && !Collections.unmodifiableList(hedVar4.au).isEmpty()) {
                        ayuVar3.f11073a = "values";
                        awl awlVar2 = new awl(hedVar4);
                        awlVar2.b("to match enum method name");
                        hedVar4.m(awlVar2);
                        hedVar4.w(csv.DONT_RENAME);
                    }
                    hedVar4.w(csv.DONT_GENERATE);
                    hedVar3 = hedVar4;
                } else {
                    bev bevVar = new bev(16);
                    dba dbaVar = ack.f9977a;
                    eek i2 = (hedVar4.ar || hedVar4.ad.f17685e.size() != 1) ? null : ack.i(hedVar4, hay.RETURN, bevVar);
                    if (i2 != null && (adzVar = (adz) ack.g(ack.b(ack.n(i2)), hay.CHECK_CAST)) != null && Objects.equals(adzVar.f10070a, cwxVar3) && (hdcVar = (hdc) ack.g(ack.b(ack.n(adzVar)), hay.INVOKE)) != null && hdcVar.ad.equals((ayu) dwuVar.f14979c)) {
                        hedVar4.w(csv.DONT_GENERATE);
                    }
                }
            }
        }
        dsj dsjVar4 = hcdVar3.f19217g;
        cciVar.av();
        for (hed hedVar5 : cciVar.aj) {
            ayu ayuVar4 = hedVar5.al;
            if (ayuVar4.o() || ayuVar4.m() || hedVar5.ar || hedVar5 == hedVar3) {
                hedVar = hedVar3;
            } else {
                egl eglVar = new egl(2, dsjVar4);
                if (ack.i(hedVar5, hay.SGET, eglVar) == null) {
                    hedVar = hedVar3;
                } else {
                    hedVar = hedVar3;
                    dsjVar = dsjVar4;
                    gxl gxlVar = new gxl(dwuVar, eglVar, hedVar, hedVar5, cwxVar3, dsjVar);
                    for (fza fzaVar2 : hedVar5.ak) {
                        ArrayList arrayList3 = fzaVar2.ac;
                        int size = arrayList3.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            eek eekVar3 = (eek) arrayList3.get(i3);
                            ack.e(hedVar5, eekVar3, gxlVar);
                            eek eekVar4 = (eek) gxlVar.apply(eekVar3);
                            if (eekVar4 != null) {
                                ffb.bs(hedVar5, fzaVar2, i3, eekVar4);
                            }
                        }
                    }
                    dwuVar = this;
                    dsjVar4 = dsjVar;
                    hedVar3 = hedVar;
                }
            }
            dsjVar = dsjVar4;
            dwuVar = this;
            dsjVar4 = dsjVar;
            hedVar3 = hedVar;
        }
        return true;
    }
}
