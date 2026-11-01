package g;

import j$.lang.Iterable;
import j$.util.Comparator;
import j$.util.List;
import j$.util.Objects;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class ggg {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f18078a;

    /* renamed from: b, reason: collision with root package name */
    public gez f18079b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18080c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18081d;

    /* renamed from: e, reason: collision with root package name */
    public final cci f18082e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18083f;

    /* renamed from: g, reason: collision with root package name */
    public int f18084g;
    public final ggg h;
    public boolean i;
    public final ffr j;
    public final csu k;

    public ggg(cci cciVar, ggg gggVar) {
        this(cciVar, gggVar, gggVar.f18081d, gggVar.f18080c, gggVar.f18083f, gggVar.k);
    }

    public ggg(cci cciVar, ggg gggVar, boolean z, boolean z2, boolean z3, csu csuVar) {
        this.f18078a = new HashSet();
        this.f18082e = cciVar;
        this.h = gggVar;
        this.f18080c = z2;
        this.f18081d = z;
        this.f18083f = z3;
        this.k = csuVar;
        this.j = new ffr(cciVar, 1, this);
    }

    public ggg(cci cciVar, ur urVar) {
        this(cciVar, null, urVar.ai, urVar.aa == qp.FALLBACK, false, urVar.ae);
    }

    public static boolean l(dwg dwgVar, ve veVar, ve veVar2) {
        if (veVar == null) {
            return false;
        }
        String i = veVar2.i();
        if (veVar.i().equals(i)) {
            return true;
        }
        cci ae = dwgVar.ae(veVar);
        if (ae != null) {
            for (cci cciVar : ae.i) {
                if (cciVar.ak.i().equals(i) && !cciVar.ak.m().equals(veVar2.m())) {
                    return true;
                }
            }
        }
        return l(dwgVar, veVar.f20148c, veVar2);
    }

    public static boolean m(ve veVar, ve veVar2) {
        if (!veVar.n()) {
            return false;
        }
        ve veVar3 = veVar.f20148c;
        return Objects.equals(veVar3, veVar2) || m(veVar3, veVar2);
    }

    public final String aa(ve veVar, ve veVar2) {
        boolean z;
        String m = veVar2.m();
        if (!this.f18080c && this.f18081d) {
            String i = veVar2.i();
            if (!veVar.equals(veVar2) && !veVar2.t().isEmpty() && !m(veVar, veVar2)) {
                boolean z2 = false;
                if (veVar2.n()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(veVar2);
                    for (ve veVar3 = veVar2.f20148c; veVar3 != null; veVar3 = veVar3.f20148c) {
                        if (veVar3 == veVar || m(veVar, veVar3)) {
                            z = false;
                            break;
                        }
                        arrayList.add(veVar3);
                    }
                    z = true;
                    Collections.reverse(arrayList);
                    if (z) {
                        u((ve) arrayList.get(0));
                    }
                    return evh.d(arrayList, ".", new fov(10));
                }
                cci cciVar = this.f18082e;
                if (!l(cciVar.f12631ab, veVar, veVar2)) {
                    dwg dwgVar = cciVar.f12631ab;
                    String t = veVar.t();
                    if (!t.equals(veVar2.t())) {
                        String i2 = veVar2.i();
                        z2 = dwgVar.l.f13559e.containsKey(t + '.' + i2);
                    }
                    if (!z2) {
                        ve s = veVar.s();
                        ve s2 = veVar2.s();
                        if (!(s != null ? s.equals(s2) : veVar.equals(s2)) && ((!veVar2.r().equals("java.lang") || veVar2.f20148c != null) && (!veVar2.r().equals(veVar.r()) || veVar2.n()))) {
                            if (veVar2.t().equals(veVar.t())) {
                                m = veVar2.q();
                            }
                            for (ve veVar4 : r()) {
                                if (!veVar4.equals(veVar2) && veVar4.i().equals(i)) {
                                    if (!veVar2.n()) {
                                        return m;
                                    }
                                    return aa(veVar, veVar2.f20148c) + '.' + i;
                                }
                            }
                            u(veVar2);
                            return i;
                        }
                    }
                }
            }
            return i;
        }
        return m;
    }

    public final void ab(eos eosVar, hcd hcdVar) {
        String b2;
        cci cciVar;
        csv csvVar = csv.DONT_GENERATE;
        sm smVar = hcdVar.l;
        dsj dsjVar = hcdVar.f19217g;
        if (smVar.g(csvVar)) {
            return;
        }
        if (hcdVar.l.j(ao.q) || hcdVar.l.j(acq.bk) || hcdVar.l.j(acq.u) || dsjVar.g()) {
            ((grs) eosVar).m();
        }
        bzu.f(eosVar, hcdVar);
        if (dsjVar.g()) {
            bzu.c(eosVar, hcdVar, dsjVar.f14712e);
        }
        ffr ffrVar = this.j;
        ffrVar.u(hcdVar, eosVar);
        grs grsVar = (grs) eosVar;
        grsVar.ae(hcdVar.h.aj(hcdVar.bx(afa.INFO)));
        v(grsVar, hcdVar.f19215e);
        grsVar.a(' ');
        grsVar.g(hcdVar);
        grsVar.d(dsjVar.f14710b);
        gos gosVar = (gos) hcdVar.l.k(acq.bj);
        cci cciVar2 = this.f18082e;
        if (gosVar != null) {
            grb grbVar = new grb(new ejh(this, gosVar.f18512a), false);
            grsVar.d(" = ");
            try {
                grbVar.ab(gosVar.f18513b, grsVar, zw.BODY_ONLY_NOWRAP);
            } catch (Exception e2) {
                cciVar2.getClass();
                dcj.d(cciVar2, "Failed to generate init code", e2);
            }
        } else {
            ghr ghrVar = (ghr) hcdVar.l.k(ao.x);
            if (ghrVar != null) {
                grsVar.d(" = ");
                dnd dndVar = ghrVar.f18175b;
                dnd dndVar2 = dnd.ENCODED_NULL;
                boolean z = this.f18080c;
                if (dndVar == dndVar2) {
                    cwx cwxVar = hcdVar.f19215e;
                    dba dbaVar = pp.f19822a;
                    grsVar.d(pp.b(0L, cwxVar, cciVar2.a().t, z, false));
                } else {
                    Object m = bff.m(ghrVar);
                    if (m instanceof ekh) {
                        long j = ((ekh) m).f15702a;
                        cwx cwxVar2 = hcdVar.f19215e;
                        if (this.k != csu.DECIMAL) {
                            dba dbaVar2 = ewg.f16268a;
                            if (cwxVar2.equals(cwx.an) && (cciVar = cciVar2.ai) != null && cciVar.ak.i().equals("R")) {
                                b2 = String.format("0x%08x", Long.valueOf(j));
                                grsVar.d(b2);
                            }
                        }
                        dba dbaVar3 = pp.f19822a;
                        b2 = pp.b(j, cwxVar2, cciVar2.a().t, z, false);
                        grsVar.d(b2);
                    } else {
                        ffrVar.r(cciVar2.f12631ab, grsVar, ghrVar);
                    }
                }
            }
        }
        grsVar.a(';');
    }

    public final void ac(grs grsVar) {
        HashSet hashSet = this.f18078a;
        if (hashSet.size() != 0) {
            ArrayList arrayList = new ArrayList(hashSet);
            List.b.sort(arrayList, Comparator.a.comparing(new fov(9)));
            Iterable.b.forEach(arrayList, new esv(this, 3, grsVar));
            grsVar.m();
            hashSet.clear();
        }
    }

    public final void ad(eos eosVar, cwx cwxVar, cwx cwxVar2) {
        String l = cwxVar2.l().contains(".") ? cwxVar2.l() : cwxVar.l();
        cci cciVar = this.f18082e;
        ve g2 = ve.g(cciVar.f12631ab, l);
        cci ae = cciVar.f12631ab.ae(g2);
        if (ae != null) {
            eosVar.b(ae);
        }
        eosVar.d(g2.i());
        s(eosVar, cwxVar2);
    }

    public final void n(eos eosVar, cwx cwxVar) {
        cwx bg = cwxVar.bg();
        cwx bj = bg.bj();
        if (bj == null) {
            ad(eosVar, cwxVar, bg);
            return;
        }
        ad(eosVar, cwxVar, bj);
        eosVar.a('.');
        n(eosVar, bg);
    }

    public final void o(eos eosVar, cwx cwxVar) {
        cwx bj = cwxVar.bj();
        if (bj == null) {
            w(eosVar, ve.h(this.f18082e.f12631ab, cwxVar));
            s(eosVar, cwxVar);
        } else {
            o(eosVar, bj);
            eosVar.a('.');
            n(eosVar, cwxVar);
        }
    }

    public final boolean p() {
        cci cciVar = this.f18082e;
        cciVar.av();
        for (hcd hcdVar : cciVar.ag) {
            if (!hcdVar.l.g(csv.DONT_GENERATE)) {
                return true;
            }
        }
        return false;
    }

    public final boolean q(eos eosVar, java.util.List list, boolean z) {
        int i = 0;
        if (list == null || list.isEmpty()) {
            return false;
        }
        eosVar.a('<');
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cwx cwxVar = (cwx) it.next();
            if (i != 0) {
                eosVar.d(", ");
            }
            cwxVar.getClass();
            if (cwxVar instanceof btl) {
                eosVar.d(cwxVar.l());
            } else {
                o(eosVar, cwxVar);
            }
            java.util.List q = cwxVar.q();
            if (q != null && !q.isEmpty()) {
                eosVar.d(" extends ");
                Iterator it2 = q.iterator();
                while (it2.hasNext()) {
                    cwx cwxVar2 = (cwx) it2.next();
                    cwxVar2.getClass();
                    if (cwxVar2 instanceof btl) {
                        eosVar.d(cwxVar2.l());
                    } else {
                        o(eosVar, cwxVar2);
                        if (z) {
                            cci cciVar = this.f18082e;
                            if (!cciVar.ak.n()) {
                                dwg dwgVar = cciVar.f12631ab;
                                if (dwgVar.i.ai) {
                                    u(ve.h(dwgVar, cwxVar2));
                                }
                            }
                        }
                    }
                    if (it2.hasNext()) {
                        eosVar.d(" & ");
                    }
                }
            }
            i++;
        }
        eosVar.a('>');
        return true;
    }

    public final Set r() {
        ggg gggVar = this.h;
        return gggVar != null ? gggVar.r() : this.f18078a;
    }

    public final void s(eos eosVar, cwx cwxVar) {
        java.util.List c2 = cwxVar.c();
        if (c2 != null) {
            eosVar.a('<');
            int size = c2.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    eosVar.d(", ");
                }
                cwx cwxVar2 = (cwx) c2.get(i);
                cwx bo = cwxVar2.bo();
                if (bo != null) {
                    be bl = cwxVar2.bl();
                    eosVar.d(bl.b());
                    if (bl != be.UNBOUND) {
                        v(eosVar, bo);
                    }
                } else {
                    v(eosVar, cwxVar2);
                }
            }
            eosVar.a('>');
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0105, code lost:
    
        if (r4.isEmpty() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0107, code lost:
    
        r1.ag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010a, code lost:
    
        r13.a(';');
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0113, code lost:
    
        if (p() == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0115, code lost:
    
        r1.m();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t(eos eosVar, boolean z) {
        cse cseVar;
        eosVar.a('{');
        cci cciVar = this.f18082e;
        if (z && cciVar.bx(afa.INFO)) {
            eosVar.d(" // from class: " + cciVar.ak.f20147b);
        }
        this.i = true;
        grs grsVar = (grs) eosVar;
        this.f18084g = grsVar.x.length();
        grsVar.aa();
        afq afqVar = (afq) cciVar.l.k(acq.k);
        int i = 0;
        if (afqVar != null) {
            java.util.List list = afqVar.f10150a;
            Iterator it = list.iterator();
            grb grbVar = null;
            while (it.hasNext()) {
                fjd fjdVar = (fjd) it.next();
                bzu.f(eosVar, fjdVar.f16881a);
                grsVar.ae(fjdVar.f16881a.f19217g.f14710b);
                eew eewVar = fjdVar.f16882b;
                hed x = cciVar.f12631ab.x(eewVar.f15409a);
                if (eewVar.aj.size() > ((x == null || (cseVar = (cse) x.l.k(acq.f9982ab)) == null) ? 0 : cseVar.f13423a.cardinality())) {
                    if (grbVar == null) {
                        grbVar = new grb(new ejh(this, afqVar.f10151b), false);
                    }
                    grbVar.x(grsVar, eewVar, 0, x);
                }
                if (fjdVar.f16883c != null) {
                    grsVar.a(' ');
                    new ggg(fjdVar.f16883c, this).t(grsVar, true);
                }
                if (it.hasNext()) {
                    grsVar.a(',');
                }
            }
            cciVar.av();
            Iterator it2 = cciVar.aj.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (!((hed) it2.next()).l.g(csv.DONT_GENERATE)) {
                        break;
                    }
                } else if (!p()) {
                    Iterator it3 = cciVar.i.iterator();
                    while (it3.hasNext()) {
                        if (!((cci) it3.next()).l.j(acq.r)) {
                        }
                    }
                }
            }
        }
        cciVar.av();
        Iterator it4 = cciVar.ag.iterator();
        while (it4.hasNext()) {
            ab(eosVar, (hcd) it4.next());
        }
        java.util.List list2 = cciVar.i;
        cciVar.av();
        Stream.a.of(list2, cciVar.aj).flatMap(new gpn(5)).filter(new egl(i, this)).sorted(Comparator.a.comparingInt(new dbm(3))).forEach(new esv(this, 2, eosVar));
        grsVar.ab();
        grsVar.ad('}');
        eosVar.b(eot.f15914a);
    }

    public final void u(ve veVar) {
        ggg gggVar = this.h;
        if (gggVar != null) {
            gggVar.u(veVar);
        } else {
            this.f18078a.add(veVar);
        }
    }

    public final void v(eos eosVar, cwx cwxVar) {
        bjt f2 = cwxVar.f();
        if (f2 == null) {
            eosVar.d(cwxVar.toString());
            return;
        }
        if (f2 == bjt.OBJECT) {
            if (cwxVar instanceof btl) {
                eosVar.d(cwxVar.l());
                return;
            } else {
                o(eosVar, cwxVar);
                return;
            }
        }
        if (f2 != bjt.ARRAY) {
            eosVar.d(f2.c());
        } else {
            v(eosVar, cwxVar.k());
            eosVar.d("[]");
        }
    }

    public final void w(eos eosVar, ve veVar) {
        cci cciVar = this.f18082e;
        cci ae = cciVar.f12631ab.ae(veVar);
        if (ae == null) {
            eosVar.d(aa(cciVar.ak, veVar));
            return;
        }
        eosVar.b(ae);
        eosVar.d(aa(cciVar.ak, ae.ak));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x(eos eosVar, hed hedVar) {
        ejh f2;
        bzu.f(eosVar, hedVar);
        bzu.g(eosVar, hedVar);
        if (hedVar.ar) {
            new ejh(this, hedVar).m(eosVar);
            eosVar.a(';');
            return;
        }
        boolean g2 = hedVar.l.g(csv.INCONSISTENT_CODE);
        if (g2 && this.f18083f) {
            g2 = false;
        }
        if (!g2 && !this.f18080c) {
            if (!hedVar.l.j(acq.af)) {
                f2 = new ejh(this, hedVar);
                if (f2.m(eosVar)) {
                    eosVar.a(' ');
                }
                eosVar.a('{');
                grs grsVar = (grs) eosVar;
                grsVar.aa();
                f2.i(eosVar);
                grsVar.ab();
                grsVar.ad('}');
                eosVar.b(eot.f15914a);
            }
        }
        f2 = ejh.f(hedVar);
        if (f2.m(eosVar)) {
        }
        eosVar.a('{');
        grs grsVar2 = (grs) eosVar;
        grsVar2.aa();
        f2.i(eosVar);
        grsVar2.ab();
        grsVar2.ad('}');
        eosVar.b(eot.f15914a);
    }

    public final void y(eos eosVar) {
        cgt cgtVar;
        String f2;
        cci declaringClass;
        cgt cgtVar2;
        cci cciVar = this.f18082e;
        gqc gqcVar = cciVar.f12632d;
        ve veVar = cciVar.ak;
        if (gqcVar.ba()) {
            gqcVar = gqcVar.ah(1024).ah(8);
        } else if (gqcVar.ag()) {
            gqcVar = gqcVar.ah(16).ah(1024).ah(8);
        }
        if (!veVar.n()) {
            gqcVar = gqcVar.ah(8).ah(2);
        }
        int i = gqcVar.f18566ab;
        bzu.f(eosVar, cciVar);
        if (veVar.j()) {
            bzu.c(eosVar, cciVar, veVar.f20149d.l());
        }
        bzu.g(eosVar, cciVar);
        afa afaVar = afa.INFO;
        if (cciVar.bx(afaVar)) {
            arg argVar = (arg) cciVar.l.k(ao.ae);
            if (argVar != null) {
                String str = argVar.f10706a;
                if (!cciVar.bd().ak.f20150e.contains(str)) {
                    bzu.b(eosVar, afaVar, "compiled from: " + str);
                }
            }
        }
        if (cciVar.bx(afaVar) && (cgtVar = cciVar.ac) != null && (f2 = cgtVar.f()) != null && ((declaringClass = cciVar.getDeclaringClass()) == null || (cgtVar2 = declaringClass.ac) == null || !f2.equals(cgtVar2.f()))) {
            bzu.b(eosVar, afaVar, "loaded from: ".concat(f2));
        }
        ffr ffrVar = this.j;
        ffrVar.u((cci) ffrVar.f16721f, eosVar);
        grs grsVar = (grs) eosVar;
        grsVar.ac(cciVar.bp);
        grsVar.d(gqcVar.aj(cciVar.bx(afaVar)));
        if (gqcVar.ba()) {
            if ((i & 8192) != 0) {
                grsVar.a('@');
            }
            grsVar.d("interface ");
        } else if (gqcVar.ag()) {
            grsVar.d("enum ");
        } else {
            grsVar.d("class ");
        }
        grsVar.g(cciVar);
        grsVar.d(veVar.i());
        q(grsVar, cciVar.y, true);
        grsVar.a(' ');
        cwx cwxVar = cciVar.af;
        if (cwxVar != null && !cwxVar.equals(cwx.t)) {
            if (!cciVar.l.g(csv.REMOVE_SUPER_CLASS)) {
                grsVar.d("extends ");
                o(grsVar, cwxVar);
                grsVar.a(' ');
            }
        }
        if (cciVar.j.isEmpty() || (i & 8192) != 0) {
            return;
        }
        if (cciVar.f12632d.ba()) {
            grsVar.d("extends ");
        } else {
            grsVar.d("implements ");
        }
        Iterator it = cciVar.j.iterator();
        while (it.hasNext()) {
            o(grsVar, (cwx) it.next());
            if (it.hasNext()) {
                grsVar.d(", ");
            }
        }
        if (cciVar.j.isEmpty()) {
            return;
        }
        grsVar.a(' ');
    }

    public final void z(grs grsVar) {
        cci cciVar = this.f18082e;
        if (cciVar.ak.t().isEmpty()) {
            grsVar.d("// default package");
        } else {
            grsVar.d("package ").d(cciVar.ak.t()).a(';');
        }
    }
}
