package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class grb {
    public static final EnumSet h;
    public static final EnumSet i;
    public static final EnumSet j;
    public final boolean k;
    public final ejh l;
    public final hed m;
    public final dwg n;

    static {
        dsr.k(grb.class);
        h = EnumSet.noneOf(zw.class);
        i = EnumSet.of(zw.BODY_ONLY);
        j = EnumSet.of(zw.BODY_ONLY_NOWRAP);
    }

    public grb(ejh ejhVar, boolean z) {
        this.l = ejhVar;
        hed hedVar = ejhVar.f15650c;
        this.m = hedVar;
        this.n = hedVar.am.f12631ab;
        this.k = z;
    }

    public static void o(eos eosVar, dsj dsjVar, hcd hcdVar, ggg gggVar) {
        ve veVar = dsjVar.f14711d;
        if (!gggVar.f18082e.ak.equals(veVar) || !gggVar.i) {
            dba dbaVar = ewg.f16268a;
            ve veVar2 = veVar.f20148c;
            if (veVar2 == null || !veVar2.f20150e.equals("R")) {
                gggVar.w(eosVar, veVar);
            } else {
                gggVar.w(eosVar, veVar2);
                eosVar.a('.');
                eosVar.d(veVar.i());
            }
            eosVar.a('.');
        }
        if (hcdVar != null) {
            eosVar.b(hcdVar);
        }
        if (hcdVar == null) {
            eosVar.d(dsjVar.f14710b);
        } else {
            eosVar.d(hcdVar.f19217g.f14710b);
        }
    }

    public final void aa(eos eosVar, gsh gshVar, boolean z) {
        w(eosVar, gshVar, z ? i : j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x008f, code lost:
    
        r8 = g.grb.i;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ab(eek eekVar, eos eosVar, zw zwVar) {
        vm vmVar;
        hed hedVar = this.m;
        if (eekVar.ah == hay.REGION_ARG) {
            return;
        }
        try {
            zw zwVar2 = zw.BODY_ONLY;
            if (zwVar != zwVar2 && zwVar != zw.BODY_ONLY_NOWRAP) {
                zw zwVar3 = zw.INLINE;
                if (zwVar != zwVar3) {
                    grs grsVar = (grs) eosVar;
                    grsVar.ac(eekVar.bp);
                    ahw.c(grsVar, eekVar);
                    if (eekVar.l.g(csv.COMMENT_OUT)) {
                        grsVar.d("// ");
                    }
                }
                gks gksVar = eekVar.ai;
                if (gksVar != null && ((vmVar = gksVar.f18326a) == null || vmVar.f20178d.size() != 0 || eekVar.ah != hay.CONSTRUCTOR)) {
                    gks gksVar2 = eekVar.ai;
                    if (eekVar.l.g(csv.DECLARE_VAR)) {
                        ejb u = gksVar2.f18326a.u();
                        if (u.f15628a) {
                            eosVar.d("final ");
                        }
                        ac(eosVar, u.f15632e);
                        eosVar.a(' ');
                        t(eosVar, u);
                    } else {
                        aa(eosVar, gksVar2, false);
                    }
                    eosVar.d(" = ");
                }
                q(eosVar, eekVar, h);
                if (zwVar != zwVar3) {
                    eosVar.a(';');
                    bzu.d(eosVar, hedVar, eekVar);
                    return;
                }
                return;
            }
            Set set = j;
            q(eosVar, eekVar, set);
        } catch (Exception e2) {
            throw new bae(hedVar, "Error generate insn: " + eekVar, e2);
        }
    }

    public final void ac(eos eosVar, cwx cwxVar) {
        this.l.f15651d.v(eosVar, cwxVar);
    }

    public final void ad(eos eosVar, gsh gshVar) {
        grs grsVar = (grs) eosVar;
        int length = grsVar.x.length();
        aa(eosVar, gshVar, true);
        if (length != grsVar.x.length()) {
            eosVar.a('.');
        }
    }

    public final void ae(eos eosVar, cci cciVar, eew eewVar) {
        acq acqVar = acq.r;
        gwz gwzVar = cciVar.bd().ad;
        gwzVar.getClass();
        if (gwzVar != gwz.PROCESS_COMPLETE && gwzVar != gwz.GENERATED_AND_UNLOADED) {
            cci bd = cciVar.bd();
            throw new gck("Expected class to be processed at this point, class: " + bd + ", state: " + bd.ad);
        }
        if (this.m.am == cciVar) {
            cciVar.u(acqVar);
            cciVar.v(csv.DONT_GENERATE);
            this.m.am.bd().w(csv.RESTART_CODEGEN);
            throw new bae("Anonymous inner class unlimited recursion detected. Convert class to inner: " + cciVar.ak.f20147b);
        }
        cwx cwxVar = ((glh) cciVar.l.k(acqVar)).f18344f;
        cciVar.av();
        for (hed hedVar : cciVar.aj) {
            if (hedVar.l.g(csv.ANONYMOUS_CONSTRUCTOR) && !gs.z(hedVar.ao)) {
                hedVar.w(csv.DONT_GENERATE);
            }
        }
        eosVar.g(cciVar);
        eosVar.d("new ");
        this.l.f15651d.o(eosVar, cwxVar);
        hed x = this.m.am.f12631ab.x(eewVar.f15409a);
        if (x != null) {
            List az = x.az();
            int min = Math.min(eewVar.aj.size(), az.size());
            for (int i2 = 0; i2 < min; i2++) {
                gsh j2 = eewVar.j(i2);
                j2.getClass();
                if (j2 instanceof gks) {
                    ((gks) az.get(i2)).f18326a.n(((gks) j2).f18326a.u());
                }
            }
        }
        x(eosVar, eewVar, 0, x);
        eosVar.a(' ');
        ggg gggVar = this.l.f15651d;
        ggg gggVar2 = gggVar.h;
        if (gggVar2 != null) {
            gggVar = gggVar2;
        }
        ggg gggVar3 = new ggg(cciVar, gggVar);
        gggVar3.f18079b = this.l.f15649b;
        gggVar3.t(eosVar, true);
        this.m.am.as(cciVar);
    }

    public final void p(eos eosVar, dsj dsjVar, gsh gshVar) {
        hcd ag = this.m.am.f12631ab.ag(dsjVar);
        if (ag != null) {
            gxj gxjVar = (gxj) ag.l.k(acq.ax);
            if (gxjVar != null) {
                Object obj = gxjVar.f18943b;
                int i2 = gly.f18382a[gxjVar.f18942a.ordinal()];
                if (i2 == 1) {
                    y(eosVar, (ve) obj);
                    eosVar.d(".this");
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    aa(eosVar, (gsh) obj, true);
                    return;
                }
            }
        }
        ad(eosVar, gshVar);
        if (ag != null) {
            eosVar.b(ag);
        }
        if (ag == null) {
            eosVar.d(dsjVar.f14710b);
        } else {
            eosVar.d(ag.f19217g.f14710b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x06fe  */
    /* JADX WARN: Removed duplicated region for block: B:279:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void q(eos eosVar, eek eekVar, Set set) {
        boolean z;
        hed hedVar;
        ejh ejhVar = this.l;
        ggg gggVar = ejhVar.f15651d;
        int[] iArr = gly.f18383b;
        hay hayVar = eekVar.ah;
        List list = eekVar.aj;
        int i2 = iArr[hayVar.ordinal()];
        hed hedVar2 = this.m;
        boolean z2 = this.k;
        int i3 = 0;
        boolean z3 = true;
        switch (i2) {
            case 1:
                eosVar.d(hedVar2.am.f12631ab.t.o(((epw) eekVar).f15951a));
                return;
            case 2:
                ac(eosVar, ((dkd) eekVar).f14300a);
                eosVar.d(".class");
                return;
            case 3:
                eosVar.d(z((ekh) eekVar.j(0)));
                return;
            case 4:
                aa(eosVar, eekVar.j(0), false);
                return;
            case 5:
            case 6:
                boolean contains = set.contains(zw.BODY_ONLY);
                if (contains) {
                    eosVar.a('(');
                }
                eosVar.a('(');
                ac(eosVar, (cwx) ((adz) eekVar).f10070a);
                eosVar.d(") ");
                aa(eosVar, eekVar.j(0), true);
                if (contains) {
                    eosVar.a(')');
                    return;
                }
                return;
            case 7:
                ame ameVar = (ame) eekVar;
                csv csvVar = csv.ARITH_ONEARG;
                sm smVar = ameVar.l;
                bvj bvjVar = ameVar.f10465d;
                if (smVar.g(csvVar)) {
                    gsh j2 = ameVar.j(0);
                    gsh j3 = ameVar.j(1);
                    j3.getClass();
                    if ((j3 instanceof ekh) && (bvjVar == bvj.ADD || bvjVar == bvj.SUB)) {
                        ekh ekhVar = (ekh) j3;
                        if (ekhVar.f15702a == 1 && ekhVar.e()) {
                            aa(eosVar, j2, false);
                            String b2 = bvjVar.b();
                            eosVar.d(b2).d(b2);
                            return;
                        }
                    }
                    aa(eosVar, j2, false);
                    eosVar.a(' ').d(bvjVar.b()).d("= ");
                    aa(eosVar, j3, false);
                    return;
                }
                if (set.contains(zw.BODY_ONLY)) {
                    if (!ameVar.l.g(csv.DONT_WRAP)) {
                        z = true;
                        if (z) {
                            eosVar.a('(');
                        }
                        aa(eosVar, ameVar.j(0), true);
                        eosVar.a(' ');
                        eosVar.d(bvjVar.b());
                        eosVar.a(' ');
                        aa(eosVar, ameVar.j(1), true);
                        if (z) {
                            return;
                        }
                        eosVar.a(')');
                        return;
                    }
                }
                z = false;
                if (z) {
                }
                aa(eosVar, ameVar.j(0), true);
                eosVar.a(' ');
                eosVar.d(bvjVar.b());
                eosVar.a(' ');
                aa(eosVar, ameVar.j(1), true);
                if (z) {
                }
                break;
            case 8:
                s(eosVar, eekVar, set, '-');
                return;
            case 9:
                s(eosVar, eekVar, set, eekVar.j(0).j() == cwx.at ? '!' : '~');
                return;
            case 10:
                if (list.size() == 0) {
                    eosVar.d("return");
                    return;
                } else {
                    eosVar.d("return ");
                    aa(eosVar, eekVar.j(0), false);
                    return;
                }
            case 11:
                eosVar.d("break");
                dhu dhuVar = (dhu) eekVar.l.k(acq.x);
                if (dhuVar != null) {
                    eos a2 = eosVar.a(' ');
                    gez gezVar = ejhVar.f15649b;
                    gezVar.getClass();
                    String str = "loop" + dhuVar.f14206a.f17900a;
                    ((HashSet) gezVar.f18008e).add(str);
                    a2.d(str);
                    return;
                }
                return;
            case 12:
                eosVar.d("continue");
                return;
            case 13:
                eosVar.d("throw ");
                aa(eosVar, eekVar.j(0), true);
                return;
            case 14:
            case 15:
                eosVar.a('(');
                aa(eosVar, eekVar.j(0), true);
                eosVar.d(" > ");
                aa(eosVar, eekVar.j(1), true);
                eosVar.d(" ? 1 : (");
                aa(eosVar, eekVar.j(0), true);
                eosVar.d(" == ");
                aa(eosVar, eekVar.j(1), true);
                eosVar.d(" ? 0 : -1))");
                return;
            case 16:
                boolean contains2 = set.contains(zw.BODY_ONLY);
                if (contains2) {
                    eosVar.a('(');
                }
                aa(eosVar, eekVar.j(0), true);
                eosVar.d(" instanceof ");
                ac(eosVar, (cwx) ((adz) eekVar).f10070a);
                if (contains2) {
                    eosVar.a(')');
                    return;
                }
                return;
            case 17:
                eew eewVar = (eew) eekVar;
                dkz dkzVar = eewVar.y;
                cci cciVar = hedVar2.am;
                cci cciVar2 = hedVar2.am;
                dwg dwgVar = cciVar.f12631ab;
                ayu ayuVar = eewVar.f15409a;
                cci ae = dwgVar.ae(ayuVar.f11076d);
                if (ae != null) {
                    if (ae.l.j(acq.r) && !z2) {
                        ae(eosVar, ae, eewVar);
                        return;
                    }
                }
                if (dkzVar == dkz.SELF) {
                    throw new gck("Constructor 'self' invoke must be removed!");
                }
                hed x = cciVar2.f12631ab.x(ayuVar);
                ve veVar = ayuVar.f11076d;
                if (x != null) {
                    ghf ghfVar = (ghf) x.l.k(acq.bi);
                    if (ghfVar != null) {
                        hedVar = ghfVar.f18153a;
                        if (!eewVar.ab()) {
                            eosVar.b(hedVar);
                            eosVar.d("super");
                        } else if (dkzVar == dkz.THIS) {
                            eosVar.b(hedVar);
                            eosVar.d("this");
                        } else {
                            if (x != null) {
                                if (x.l.g(csv.SKIP_FIRST_ARG)) {
                                    cci cciVar3 = x.am;
                                    if (cciVar3.bk() && eewVar.aj.size() != 0) {
                                        gsh j4 = eewVar.j(0);
                                        if (!j4.al() && j4.j().equals(cciVar3.getDeclaringClass().au())) {
                                            ad(eosVar, j4);
                                            eosVar.d("new ");
                                            if (hedVar != null) {
                                                if (!hedVar.l.g(csv.DONT_GENERATE)) {
                                                    eosVar.b(hedVar);
                                                    if (z3) {
                                                        eosVar.d(veVar.i());
                                                        ve veVar2 = gggVar.f18082e.ak;
                                                        ve s = veVar2.s();
                                                        ve s2 = veVar.s();
                                                        if (!(s != null ? s.equals(s2) : veVar2.equals(s2))) {
                                                            gggVar.u(veVar);
                                                        }
                                                    } else {
                                                        eosVar.d(gggVar.aa(gggVar.f18082e.ak, veVar));
                                                    }
                                                    if (((apw) eewVar.l.k(acq.az)) != null) {
                                                        eosVar.a('<');
                                                        eosVar.a('>');
                                                    }
                                                }
                                            }
                                            eosVar.b(cciVar2.f12631ab.ae(veVar));
                                            if (z3) {
                                            }
                                            if (((apw) eewVar.l.k(acq.az)) != null) {
                                            }
                                        }
                                    }
                                }
                            }
                            z3 = false;
                            eosVar.d("new ");
                            if (hedVar != null) {
                            }
                            eosVar.b(cciVar2.f12631ab.ae(veVar));
                            if (z3) {
                            }
                            if (((apw) eewVar.l.k(acq.az)) != null) {
                            }
                        }
                        x(eosVar, eewVar, 0, x);
                        return;
                    }
                }
                hedVar = x;
                if (!eewVar.ab()) {
                }
                x(eosVar, eewVar, 0, x);
                return;
            case 18:
                u((hdc) eekVar, eosVar);
                return;
            case 19:
                cwx cwxVar = ((dem) eekVar).f14061a;
                eosVar.d("new ");
                ac(eosVar, cwxVar.e());
                int size = list.size();
                int i4 = 0;
                while (i4 < size) {
                    eosVar.a('[');
                    aa(eosVar, eekVar.j(i4), false);
                    eosVar.a(']');
                    i4++;
                }
                int i5 = cwxVar.i();
                while (i4 < i5) {
                    eosVar.d("[]");
                    i4++;
                }
                return;
            case 20:
                aa(eosVar, eekVar.j(0), true);
                eosVar.d(".length");
                return;
            case 21:
                fs fsVar = (fs) eekVar;
                if (!fsVar.l.g(csv.DECLARE_VAR)) {
                    eosVar.d("new ");
                    cwx cwxVar2 = fsVar.f17323a;
                    cff cffVar = cwx.an;
                    ac(eosVar, new aoe(cwxVar2));
                }
                eosVar.a('{');
                int size2 = fsVar.aj.size();
                int i6 = 0;
                while (true) {
                    int i7 = 0;
                    while (i6 < size2) {
                        aa(eosVar, fsVar.j(i6), false);
                        i6++;
                        if (i6 < size2) {
                            eosVar.d(", ");
                        }
                        i7++;
                        if (i7 == 1000) {
                            break;
                        }
                    }
                    eosVar.a('}');
                    return;
                    ((grs) eosVar).ag();
                    break;
                }
            case 22:
                og ogVar = (og) eekVar;
                if (z2) {
                    String objects = Objects.toString(ogVar._ao);
                    aa(eosVar, eekVar.j(0), true);
                    eosVar.d(" = {").d(objects.substring(1, objects.length() - 1)).d("} // fill-array");
                    return;
                }
                if (hedVar2.bx(afa.INFO)) {
                    eosVar.d("// fill-array-data instruction");
                }
                ((grs) eosVar).ag();
                gsh j5 = ogVar.j(0);
                cwx j6 = j5.j();
                ArrayList arrayList = (ArrayList) ogVar._ap((j6.h() && (j6 instanceof aoe)) ? j6.k() : ogVar._ao.i.j());
                int size3 = arrayList.size();
                while (i3 < size3) {
                    if (i3 != 0) {
                        eosVar.a(';');
                        ((grs) eosVar).ag();
                    }
                    aa(eosVar, j5, true);
                    eosVar.a('[').d(Integer.toString(i3)).d("] = ").d(z((ekh) arrayList.get(i3)));
                    i3++;
                }
                return;
            case 23:
                aa(eosVar, eekVar.j(0), true);
                eosVar.a('[');
                aa(eosVar, eekVar.j(1), false);
                eosVar.a(']');
                return;
            case 24:
                aa(eosVar, eekVar.j(0), true);
                eosVar.a('[');
                aa(eosVar, eekVar.j(1), false);
                eosVar.d("] = ");
                aa(eosVar, eekVar.j(2), false);
                return;
            case 25:
                p(eosVar, (dsj) ((adz) eekVar).f10070a, eekVar.j(0));
                return;
            case 26:
                p(eosVar, (dsj) ((adz) eekVar).f10070a, eekVar.j(1));
                eosVar.d(" = ");
                aa(eosVar, eekVar.j(0), false);
                return;
            case 27:
                r(eosVar, (dsj) ((adz) eekVar).f10070a);
                return;
            case 28:
                r(eosVar, (dsj) ((adz) eekVar).f10070a);
                eosVar.d(" = ");
                aa(eosVar, eekVar.j(0), false);
                return;
            case 29:
                boolean contains3 = set.contains(zw.BODY_ONLY);
                if (contains3) {
                    eosVar.a('(');
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    aa(eosVar, (gsh) it.next(), true);
                    if (it.hasNext()) {
                        eosVar.d(" + ");
                    }
                }
                if (contains3) {
                    eosVar.a(')');
                    return;
                }
                return;
            case 30:
                if (z2) {
                    eosVar.d("monitor-enter(");
                    aa(eosVar, eekVar.j(0), true);
                    eosVar.a(')');
                    return;
                }
                return;
            case 31:
                if (z2) {
                    eosVar.d("monitor-exit(");
                    if (list.size() == 1) {
                        aa(eosVar, eekVar.j(0), true);
                    }
                    eosVar.a(')');
                    return;
                }
                return;
            case 32:
                dwk dwkVar = (dwk) eekVar;
                boolean contains4 = set.contains(zw.BODY_ONLY);
                if (contains4) {
                    eosVar.a('(');
                }
                gsh j7 = dwkVar.j(0);
                gsh j8 = dwkVar.j(1);
                fto ftoVar = new fto(ejhVar, z2);
                if (j7.ap() && j8.ar()) {
                    ftoVar.c(eosVar, new dfa(0), dwkVar.f14942a);
                } else {
                    ftoVar.b(eosVar, new dfa(0), dwkVar.f14942a);
                    eosVar.d(" ? ");
                    aa(eosVar, j7, false);
                    eosVar.d(" : ");
                    aa(eosVar, j8, false);
                }
                if (contains4) {
                    eosVar.a(')');
                    return;
                }
                return;
            case 33:
                w(eosVar, eekVar.j(0), set);
                return;
            case 34:
                v(eekVar);
                bgw bgwVar = (bgw) eekVar;
                eosVar.d("if (");
                aa(eosVar, eekVar.j(0), true);
                eosVar.a(' ');
                eosVar.d(bgwVar.y.b()).a(' ');
                aa(eosVar, eekVar.j(1), true);
                eos d2 = eosVar.d(") goto ");
                dba dbaVar = ejh.f15648a;
                fza fzaVar = bgwVar._br;
                d2.d(fzaVar != null ? ejh.h(fzaVar) : ejh.g(bgwVar.ad()));
                return;
            case 35:
                v(eekVar);
                eosVar.d("goto ").d(ejh.g(((dfy) eekVar).ad()));
                return;
            case 36:
                v(eekVar);
                eosVar.d("move-exception");
                return;
            case 37:
                v(eekVar);
                bzm bzmVar = (bzm) eekVar;
                eosVar.d("switch(");
                aa(eosVar, eekVar.j(0), true);
                eosVar.d(") {");
                grs grsVar = (grs) eosVar;
                grsVar.aa();
                int[] iArr2 = bzmVar.ad().f12358c;
                int length = iArr2.length;
                fza[] fzaVarArr = bzmVar.f12514ab;
                if (fzaVarArr != null) {
                    while (i3 < length) {
                        grsVar.ae("case ");
                        grsVar.d(Integer.toString(iArr2[i3])).d(": goto ");
                        eosVar.d(ejh.h(fzaVarArr[i3])).a(';');
                        i3++;
                    }
                    grsVar.ae("default: goto ");
                    eosVar.d(ejh.h(bzmVar.z)).a(';');
                } else {
                    int[] iArr3 = bzmVar.ad().f12357b;
                    while (i3 < length) {
                        grsVar.ae("case ");
                        grsVar.d(Integer.toString(iArr2[i3])).d(": goto ");
                        eosVar.d(ejh.g(iArr3[i3])).a(';');
                        i3++;
                    }
                    grsVar.ae("default: goto ");
                    eosVar.d(ejh.g(bzmVar.x)).a(';');
                }
                grsVar.ab();
                grsVar.ad('}');
                return;
            case 38:
                v(eekVar);
                eosVar.d("new ").d(eekVar.ai.h.toString());
                return;
            case 39:
                v(eekVar);
                eosVar.d(hayVar.toString()).a('(');
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    aa(eosVar, (gsh) it2.next(), true);
                    eosVar.a(' ');
                }
                eosVar.a(')');
                return;
            case 40:
                v(eekVar);
                eosVar.d("move-result");
                return;
            case 41:
                v(eekVar);
                eosVar.d("fill-array " + eekVar);
                return;
            case 42:
                v(eekVar);
                eosVar.d(eekVar.toString());
                return;
            case 43:
                v(eekVar);
                int size4 = list.size();
                while (i3 < size4 - 1) {
                    aa(eosVar, eekVar.j(i3), true);
                    eosVar.d(" = ");
                    aa(eosVar, eekVar.j(i3 + 1), true);
                    eosVar.d("; ");
                    i3 += 2;
                }
                return;
            case 44:
                v(eekVar);
                eosVar.d("jsr -> ").d(ejh.g(((xi) eekVar).f20287a));
                return;
            case 45:
                v(eekVar);
                eosVar.d("ret ");
                aa(eosVar, eekVar.j(0), true);
                return;
            default:
                throw new bae(hedVar2, "Unknown instruction: " + hayVar, null);
        }
    }

    public final void r(eos eosVar, dsj dsjVar) {
        hcd ag = this.n.ag(dsjVar);
        if (ag != null) {
            cci cciVar = ag.f19216f;
            if (ag.l.g(csv.INLINE_INSTANCE_FIELD)) {
                if (cciVar.l.j(acq.r)) {
                    gos gosVar = (gos) ag.l.k(acq.bj);
                    if (gosVar != null) {
                        eek eekVar = gosVar.f18513b;
                        if (eekVar instanceof eew) {
                            ag.w(csv.DONT_GENERATE);
                            ae(eosVar, cciVar, (eew) eekVar);
                            return;
                        }
                    }
                }
            }
        }
        o(eosVar, dsjVar, ag, this.l.f15651d);
    }

    public final void s(eos eosVar, eek eekVar, Set set, char c2) {
        boolean contains = set.contains(zw.BODY_ONLY);
        if (contains) {
            eosVar.a('(');
        }
        eosVar.a(c2);
        aa(eosVar, eekVar.j(0), true);
        if (contains) {
            eosVar.a(')');
        }
    }

    public final void t(eos eosVar, ejb ejbVar) {
        String n = this.l.f15649b.n(ejbVar);
        grs grsVar = (grs) eosVar;
        grsVar.getClass();
        if (grsVar instanceof flc) {
            eosVar.g(cmw.h(this.m, ejbVar.h()));
        }
        eosVar.d(n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x0336, code lost:
    
        if (r5.l.g(g.csv.DONT_GENERATE) != false) goto L147;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(hdc hdcVar, eos eosVar) {
        ve veVar;
        eqp eqpVar = hdcVar.f19257ab;
        ayu ayuVar = hdcVar.ad;
        eqp eqpVar2 = eqp.CUSTOM;
        boolean z = this.k;
        if (eqpVar != eqpVar2) {
            hed hedVar = this.m;
            cci cciVar = hedVar.am;
            cci cciVar2 = hedVar.am;
            hed x = cciVar.f12631ab.x(ayuVar);
            String str = ayuVar.f11078f;
            ve veVar2 = ayuVar.f11076d;
            if (eqpVar == eqp.CUSTOM_RAW) {
                btg btgVar = (btg) hdcVar;
                if (z) {
                    eosVar.d("call_site(");
                    grs grsVar = (grs) eosVar;
                    grsVar.aa();
                    Iterator it = btgVar.f12188d.iterator();
                    while (it.hasNext()) {
                        grsVar.ae(((ghr) it.next()).toString());
                    }
                    grsVar.ab();
                    grsVar.ae(").invoke");
                    x(eosVar, btgVar, 0, x);
                    return;
                }
                cwx cwxVar = btgVar.ad.f11079g;
                cwxVar.getClass();
                if (!(cwxVar instanceof cff) || ((cff) cwxVar).f12778a != bjt.VOID) {
                    eosVar.a('(');
                    ac(eosVar, cwxVar);
                    eosVar.d(") ");
                }
                u(btgVar.f12187a, eosVar);
                eosVar.d(".dynamicInvoker().invoke");
                x(eosVar, btgVar, 0, x);
                eosVar.d(" /* invoke-custom */");
                return;
            }
            eqp eqpVar3 = hdcVar.f19257ab;
            if (eqpVar3 == eqp.POLYMORPHIC || (eqpVar3 == eqp.VIRTUAL && veVar2.f20147b.equals("java.lang.invoke.MethodHandle") && (str.equals("invoke") || str.equals("invokeExact")))) {
                eosVar.a('(');
                ac(eosVar, ayuVar.f11079g);
                eosVar.d(") ");
            }
            switch (gly.f18384c[eqpVar.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    gsh j2 = hdcVar.j(0);
                    if (j2.ao()) {
                        if (!j2.al()) {
                            cci w = cciVar2.f12631ab.w(j2.j());
                            if (w != null) {
                                break;
                            }
                        }
                    }
                    ad(eosVar, j2);
                    break;
                case 5:
                    cwx cwxVar2 = veVar2.f20149d;
                    cci cciVar3 = cciVar2;
                    while (true) {
                        veVar = cciVar3.ak;
                        if (!cwx.be(this.n, veVar.f20149d, cwxVar2)) {
                            cci cciVar4 = cciVar3.ai;
                            if (cciVar4 == cciVar3) {
                                veVar = null;
                            } else {
                                cciVar3 = cciVar4;
                            }
                        }
                    }
                    if (veVar == null) {
                        eosVar.d("super/*").d(veVar2.f20147b).d("*/");
                    } else if (veVar.equals(cciVar2.ak)) {
                        eosVar.d("super");
                    } else {
                        y(eosVar, veVar);
                        eosVar.d(".super");
                    }
                    eosVar.a('.');
                    break;
                case 6:
                    if (!cciVar2.ak.equals(veVar2)) {
                        y(eosVar, veVar2);
                        eosVar.a('.');
                    }
                default:
                    r9 = 0;
                    break;
            }
            if (x != null) {
                eosVar.b(x);
            }
            if (hdcVar.l.g(csv.FORCE_RAW_NAME)) {
                eosVar.d(str);
            } else if (x != null) {
                eosVar.d(x.al.f11073a);
            } else {
                eosVar.d(ayuVar.f11073a);
            }
            x(eosVar, hdcVar, r9, x);
            return;
        }
        arl arlVar = (arl) hdcVar;
        boolean z2 = arlVar._bn;
        List list = arlVar.aj;
        if (z2) {
            gif gifVar = arlVar.f10720d;
            if (gifVar instanceof eew) {
                y(eosVar, ((eew) gifVar).f15409a.f11076d);
                eosVar.d("::new");
                return;
            } else {
                if (gifVar instanceof hdc) {
                    ayu ayuVar2 = ((hdc) gifVar).ad;
                    if (arlVar._bm == ecx.INVOKE_STATIC) {
                        y(eosVar, ayuVar2.f11076d);
                    } else {
                        aa(eosVar, arlVar.j(0), true);
                    }
                    eosVar.d("::").d(ayuVar2.f11073a);
                    return;
                }
                return;
            }
        }
        if (!z && arlVar.y) {
            hed hedVar2 = (hed) arlVar.f10720d.l.k(acq.j);
            ejh ejhVar = this.l;
            ejh ejhVar2 = new ejh(ejhVar.f15651d, hedVar2);
            ((HashSet) ejhVar2.f15649b.f18008e).addAll((HashSet) ejhVar.f15649b.f18008e);
            List list2 = arlVar.f10719a.f11075c;
            List az = hedVar2.az();
            if (list2.isEmpty()) {
                eosVar.d("()");
            } else {
                int size = az.size();
                int size2 = size - list2.size();
                int i2 = size - size2;
                if (i2 > 1) {
                    eosVar.a('(');
                }
                for (int i3 = size2; i3 < size; i3++) {
                    if (i3 != size2) {
                        eosVar.d(", ");
                    }
                    t(eosVar, ((gks) az.get(i3)).f18326a.u());
                }
                if (i2 > 1) {
                    eosVar.a(')');
                }
            }
            int size3 = list.size();
            r9 = arlVar._bm == ecx.INVOKE_STATIC ? 0 : 1;
            int i4 = 0;
            while (r9 < size3) {
                gsh j3 = arlVar.j(r9);
                j3.getClass();
                if (!(j3 instanceof gks)) {
                    throw new gck("Unexpected argument type in lambda call: ".concat(j3.getClass().getSimpleName()));
                }
                ((gks) az.get(i4)).f18326a.n(((gks) j3).f18326a.u());
                r9++;
                i4++;
            }
            eosVar.d(" -> {");
            grs grsVar2 = (grs) eosVar;
            grsVar2.aa();
            ejhVar2.i(eosVar);
            grsVar2.ab();
            grsVar2.ad('}');
            return;
        }
        try {
            eek eekVar = arlVar.f10720d;
            ayu ayuVar3 = arlVar.f10719a;
            int size4 = ayuVar3.f11075c.size();
            if (size4 == 0) {
                eosVar.d("()");
            } else {
                eosVar.a('(');
                int size5 = eekVar.aj.size();
                int i5 = size5 - size4;
                if (arlVar._bm != ecx.INVOKE_STATIC && list.size() > 0 && arlVar.j(0).al()) {
                    eekVar.j(0).w(csv.THIS);
                }
                if (i5 >= 0) {
                    for (int i6 = i5; i6 < size5; i6++) {
                        if (i6 != i5) {
                            eosVar.d(", ");
                        }
                        aa(eosVar, eekVar.j(i6), true);
                    }
                } else {
                    eosVar.d("/* ERROR: " + i5 + " */");
                }
                eosVar.a(')');
            }
            eosVar.d(" -> {");
            if (z) {
                eosVar.d(" // ").d(ayuVar3.toString());
            }
            ((grs) eosVar).aa();
            ((grs) eosVar).ag();
            cwx cwxVar3 = ayuVar3.f11079g;
            cwxVar3.getClass();
            if (!((cwxVar3 instanceof cff) && ((cff) cwxVar3).f12778a == bjt.VOID)) {
                eosVar.d("return ");
            }
            ab(eekVar, eosVar, zw.INLINE);
            eosVar.d(";");
            grs grsVar3 = (grs) eosVar;
            grsVar3.ab();
            grsVar3.ad('}');
        } catch (Exception e2) {
            throw new gck("Failed to generate 'invoke-custom' instruction: " + e2.getMessage(), e2);
        }
    }

    public final void v(eek eekVar) {
        if (this.k) {
            return;
        }
        String str = eekVar.ah + " instruction can be used only in fallback mode";
        bae baeVar = new bae(str);
        hed hedVar = this.m;
        hedVar.getClass();
        dcj.d(hedVar, str, baeVar);
        hedVar.am.bd().w(csv.RESTART_CODEGEN);
        throw baeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w(eos eosVar, gsh gshVar, Set set) {
        gshVar.getClass();
        if (gshVar instanceof gks) {
            gks gksVar = (gks) gshVar;
            grs grsVar = (grs) eosVar;
            grsVar.getClass();
            if (grsVar instanceof flc) {
                vm vmVar = gksVar.f18326a;
                cmw h2 = vmVar == null ? null : cmw.h(this.m, vmVar);
                eosVar.b(h2 != null ? h2.f13150g : null);
            }
            gez gezVar = this.l.f15649b;
            gezVar.getClass();
            String name = gksVar.getName();
            if (name == null || gezVar.f18010g) {
                name = "r" + gksVar.f18327e;
            }
            eosVar.d(name);
            return;
        }
        if (gshVar instanceof ekh) {
            String z = z((ekh) gshVar);
            if (set.contains(zw.BODY_ONLY_NOWRAP) || !z.startsWith("-")) {
                eosVar.d(z);
                return;
            } else {
                eosVar.a('(').d(z).a(')');
                return;
            }
        }
        if (!(gshVar instanceof cly)) {
            if (gshVar instanceof add) {
                eosVar.d(((ehh) gshVar).getName());
                return;
            } else {
                throw new bae("Unknown arg type " + gshVar);
            }
        }
        eek eekVar = ((cly) gshVar).f13104a;
        if (!eekVar.l.g(csv.FORCE_ASSIGN_INLINE)) {
            q(eosVar, eekVar, set);
            return;
        }
        eosVar.a('(');
        ab(eekVar, eosVar, zw.INLINE);
        eosVar.a(')');
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x(eos eosVar, gif gifVar, int i2, hed hedVar) {
        int i3;
        int size;
        if (hedVar != null) {
            if (hedVar.l.g(csv.SKIP_FIRST_ARG)) {
                i3 = i2 + 1;
                size = gifVar.aj.size();
                eosVar.a('(');
                cse cseVar = hedVar != null ? null : (cse) hedVar.l.k(acq.f9982ab);
                if (i3 < size) {
                    boolean z = true;
                    while (i3 < size) {
                        gsh j2 = gifVar.j(i3);
                        if (!j2.l.g(csv.SKIP_ARG)) {
                            if (cseVar != null) {
                                if (cseVar.f13423a.get(i3 - i2)) {
                                }
                            }
                            if (z) {
                                z = false;
                            } else {
                                eosVar.d(", ");
                            }
                            if (i3 == size - 1) {
                                if (gifVar.l.g(csv.VARARG_CALL)) {
                                    cwx j3 = j2.j();
                                    j3.getClass();
                                    if ((j3 instanceof aoe) && (j2 instanceof cly)) {
                                        eek eekVar = ((cly) j2).f13104a;
                                        if (eekVar.ah == hay.FILLED_NEW_ARRAY) {
                                            int size2 = eekVar.aj.size();
                                            for (int i4 = 0; i4 < size2; i4++) {
                                                aa(eosVar, eekVar.j(i4), false);
                                                if (i4 < size2 - 1) {
                                                    eosVar.d(", ");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            aa(eosVar, j2, false);
                        }
                        i3++;
                    }
                }
                eosVar.a(')');
            }
        }
        i3 = i2;
        size = gifVar.aj.size();
        eosVar.a('(');
        if (hedVar != null) {
        }
        if (i3 < size) {
        }
        eosVar.a(')');
    }

    public final void y(eos eosVar, ve veVar) {
        this.l.f15651d.w(eosVar, veVar);
    }

    public final String z(ekh ekhVar) {
        dba dbaVar = pp.f19822a;
        return pp.b(ekhVar.f15702a, ekhVar.h, this.m.am.f12631ab.t, this.k, ekhVar.l.g(csv.EXPLICIT_PRIMITIVE_TYPE));
    }
}
