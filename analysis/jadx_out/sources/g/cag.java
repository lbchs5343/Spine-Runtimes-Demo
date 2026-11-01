package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public final class cag {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f12541a = dsr.k(cag.class);

    /* renamed from: b, reason: collision with root package name */
    public final ur f12542b;

    /* renamed from: c, reason: collision with root package name */
    public final dwg f12543c;

    /* renamed from: d, reason: collision with root package name */
    public final EnumMap f12544d;

    /* renamed from: e, reason: collision with root package name */
    public final cwm f12545e;

    public cag(dwg dwgVar) {
        this.f12543c = dwgVar;
        this.f12542b = dwgVar.i;
        EnumMap enumMap = new EnumMap(hay.class);
        enumMap.put((EnumMap) hay.CONST, (hay) new eyy(this, 0));
        enumMap.put((EnumMap) hay.MOVE, (hay) new eyy(this, 2));
        enumMap.put((EnumMap) hay.PHI, (hay) new eyy(this, 3));
        enumMap.put((EnumMap) hay.AGET, (hay) new eyy(this, 4));
        enumMap.put((EnumMap) hay.APUT, (hay) new eyy(this, 5));
        enumMap.put((EnumMap) hay.IF, (hay) new eyy(this, 6));
        enumMap.put((EnumMap) hay.ARITH, (hay) new eyy(this, 7));
        enumMap.put((EnumMap) hay.NEG, (hay) new eyy(this, 8));
        enumMap.put((EnumMap) hay.NOT, (hay) new eyy(this, 8));
        enumMap.put((EnumMap) hay.CHECK_CAST, (hay) new eyy(this, 9));
        enumMap.put((EnumMap) hay.INVOKE, (hay) new eyy(this, 1));
        enumMap.put((EnumMap) hay.CONSTRUCTOR, (hay) new eyy(this, 1));
        this.f12544d = enumMap;
        this.f12545e = new cwm(dwgVar);
    }

    public static boolean f(eek eekVar, gsh gshVar) {
        return eekVar.ai == gshVar;
    }

    public static boolean g(cwx cwxVar, cwx cwxVar2) {
        if (cwxVar == cwx.ad) {
            return true;
        }
        cwxVar2.getClass();
        boolean z = cwxVar2 instanceof aoe;
        cwxVar.getClass();
        if ((cwxVar instanceof aoe) && z) {
            return g(cwxVar.k(), cwxVar2.k());
        }
        if (z && cwxVar.o(bjt.ARRAY)) {
            return true;
        }
        if (cwxVar2.m() && cwxVar.o(bjt.OBJECT)) {
            return true;
        }
        return (cwxVar2 instanceof cff) && cwxVar.o(cwxVar2.f());
    }

    public static dgr h(cag cagVar, gcu gcuVar, eek eekVar, gsh gshVar, cwx cwxVar) {
        ebp r;
        dwg dwgVar = cagVar.f12543c;
        gif gifVar = (gif) eekVar;
        if (!f(gifVar, gshVar) && gifVar.aa() == gshVar && (r = dwgVar.f14930b.r(gifVar)) != null) {
            final emr emrVar = dwgVar.o;
            hed hedVar = (hed) gcuVar.f17894a;
            emrVar.getClass();
            Set w = emr.w(hedVar);
            final Map y = emrVar.y(cwxVar);
            final cwx g2 = r.g();
            List f2 = r.f();
            int size = f2.size();
            return y.isEmpty() ? cagVar.k(gcuVar, gifVar, size, w, new Supplier() { // from class: g.ckp
                @Override // java.util.function.Supplier
                public final Object get() {
                    return cwx.this;
                }
            }, new eug(6, f2)) : cagVar.k(gcuVar, gifVar, size, w, new Supplier() { // from class: g.dck
                @Override // java.util.function.Supplier
                public final Object get() {
                    return emr.this.ac(g2, y);
                }
            }, new oe(emrVar, cwxVar, f2, 1));
        }
        return dgr.SAME;
    }

    public static cwx i(Set set, cwx cwxVar) {
        if (cwxVar == null || (cwxVar instanceof gzg)) {
            return null;
        }
        if (!cwxVar.bn() || (!set.isEmpty() && ((Boolean) cwxVar.bh(new bpf(0, set))) == null)) {
            return cwxVar;
        }
        return null;
    }

    public final dgr j(gcu gcuVar, gsh gshVar, cwx cwxVar) {
        dgr dgrVar;
        if (cwxVar == null) {
            throw new gck("Null type update for arg: " + gshVar);
        }
        if (((IdentityHashMap) gcuVar.f17897d).containsKey(gshVar)) {
            return dgr.CHANGED;
        }
        cwx j = gshVar.j();
        zf zfVar = (zf) gcuVar.f17895b;
        if (Objects.equals(j, cwxVar)) {
            if (!zfVar.f20392e.contains(eic.IGNORE_SAME)) {
                dgrVar = dgr.SAME;
            }
            dgrVar = null;
        } else if (cwxVar instanceof gzg) {
            dgrVar = dgr.REJECT;
        } else {
            dho h = this.f12545e.h(cwxVar, j);
            h.getClass();
            if (h == dho.CONFLICT || h == dho.CONFLICT_BY_GENERIC) {
                dgrVar = dgr.REJECT;
            } else if (h == dho.UNKNOWN && zfVar.f20392e.contains(eic.IGNORE_UNKNOWN)) {
                dgrVar = dgr.REJECT;
            } else if (gshVar.i() && j != cwx.ad) {
                dgrVar = h == dho.EQUAL ? dgr.SAME : dgr.REJECT;
            } else if (h == dho.WIDER_BY_GENERIC && zfVar.f20392e.contains(eic.KEEP_GENERICS)) {
                dgrVar = dgr.REJECT;
            } else if (!h.b() || zfVar.f20392e.contains(eic.ALLOW_WIDER)) {
                if (cwxVar.bn()) {
                    emr emrVar = this.f12543c.o;
                    hed hedVar = (hed) gcuVar.f17894a;
                    emrVar.getClass();
                    if (((cwx) cwxVar.bh(new bpf(1, emr.w(hedVar)))) != null) {
                        dgrVar = dgr.REJECT;
                    }
                }
                dgrVar = null;
            } else {
                dgrVar = dgr.REJECT;
            }
        }
        if (dgrVar != null) {
            return dgrVar;
        }
        if (!(gshVar instanceof gks)) {
            return m(gcuVar, gshVar, cwxVar);
        }
        vm vmVar = ((gks) gshVar).f18326a;
        ffr ffrVar = vmVar.h;
        ArrayList arrayList = vmVar.f20178d;
        cwx m = vmVar.m();
        if (m != null && !m.equals(cwxVar)) {
            return dgr.REJECT;
        }
        for (fog fogVar : (LinkedHashSet) ffrVar.f16719c) {
            cwx e2 = fogVar instanceof dhc ? ((dhc) fogVar).e(gcuVar) : fogVar.getType();
            if (e2 != null && !l(cwxVar, fogVar, e2)) {
                return dgr.REJECT;
            }
        }
        dgr m2 = m(gcuVar, vmVar.f20177c, cwxVar);
        boolean z = m2 == dgr.SAME;
        if (m2 != dgr.REJECT) {
            Iterator it = arrayList.iterator();
            while (it.hasNext() && (m2 = m(gcuVar, (gks) it.next(), cwxVar)) != dgr.REJECT) {
                if (m2 != dgr.SAME) {
                    z = false;
                }
            }
        }
        dgr dgrVar2 = dgr.REJECT;
        if (m2 != dgrVar2) {
            return z ? dgr.SAME : dgr.CHANGED;
        }
        gcuVar.i(vmVar.f20177c);
        Iterable.b.forEach(arrayList, new agx(25, gcuVar));
        return dgrVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dgr k(gcu gcuVar, gif gifVar, int i, Set set, Supplier supplier, Function function) {
        boolean z;
        int i2;
        cwx i3;
        cwx i4;
        gks gksVar = gifVar.ai;
        cwm cwmVar = this.f12545e;
        if (gksVar != null && !gksVar.i() && (i4 = i(set, (cwx) supplier.get())) != null) {
            dgr j = j(gcuVar, gksVar, i4);
            dgr dgrVar = dgr.REJECT;
            if (j == dgrVar && cwmVar.h(i4, gksVar.j()).b()) {
                return dgrVar;
            }
            if (j == dgr.CHANGED) {
                z = false;
                int z2 = gifVar.z();
                for (i2 = 0; i2 < i; i2++) {
                    gsh j2 = gifVar.j(z2 + i2);
                    if (!j2.i() && (i3 = i(set, (cwx) function.apply(Integer.valueOf(i2)))) != null) {
                        dgr j3 = j(gcuVar, j2, i3);
                        dgr dgrVar2 = dgr.REJECT;
                        if (j3 == dgrVar2 && cwmVar.h(i3, j2.j()).e()) {
                            return dgrVar2;
                        }
                        if (j3 == dgr.CHANGED) {
                            z = false;
                        }
                    }
                }
                return !z ? dgr.SAME : dgr.CHANGED;
            }
        }
        z = true;
        int z22 = gifVar.z();
        while (i2 < i) {
        }
        if (!z) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(cwx cwxVar, fog fogVar, cwx cwxVar2) {
        cwm cwmVar = this.f12545e;
        dho h = cwmVar.h(cwxVar, cwxVar2);
        switch (cns.f13196a[h.ordinal()]) {
            case 1:
            case 4:
            case 5:
                return true;
            case 2:
                if (fogVar.f() == au.USE) {
                    return false;
                }
                break;
            case 3:
                if (fogVar.f() == au.ASSIGN && (cwxVar2.h() || !g(cwxVar2, cwxVar))) {
                    return false;
                }
                break;
            case 6:
            case 7:
                return false;
            case 8:
                f12541a.t(cwxVar, "Can't compare types, unknown hierarchy: {} and {}", cwxVar2);
                cwmVar.h(cwxVar, cwxVar2);
                return true;
            default:
                throw new gck("Not processed type compare enum: " + h);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0183, code lost:
    
        if (((g.cff) r1).f12778a != r2) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009a, code lost:
    
        if (g.afo.af(r7.f10239d, 512) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a5, code lost:
    
        if (g.afo.af(r3.f10239d, 512) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bb, code lost:
    
        if (g.afo.af(r7.f10239d, 512) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0165, code lost:
    
        if (r1.o(g.bjt.ARRAY) != false) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dgr m(gcu gcuVar, gsh gshVar, cwx cwxVar) {
        dgr j;
        dgr dgrVar;
        dho h;
        IdentityHashMap identityHashMap = (IdentityHashMap) gcuVar.f17897d;
        if (identityHashMap.containsKey(gshVar)) {
            return dgr.CHANGED;
        }
        int i = gcuVar.f17899f;
        gcuVar.f17899f = i + 1;
        gpf gpfVar = (gpf) identityHashMap.put(gshVar, new gpf(i, gshVar, cwxVar));
        if (gpfVar != null) {
            throw new gck("Unexpected type update override for arg: " + gshVar + " types: prev=" + gpfVar.f18532a + ", new=" + cwxVar + ", insn: " + gshVar.ae);
        }
        int i2 = gcuVar.f17899f;
        if (i2 > gcuVar.f17898e) {
            throw new blf(awf.x(new StringBuilder("Type inference error: updates count limit reached with updateSeq = "), gcuVar.f17899f, ". Try increasing type updates limit count."));
        }
        if (i2 % 100 == 0) {
            evh.n();
        }
        eek eekVar = gshVar.ae;
        if (eekVar != null) {
            eyy eyyVar = (eyy) this.f12544d.get(eekVar.ah);
            if (eyyVar != null) {
                int i3 = eyyVar.f16393a;
                boolean z = true;
                cag cagVar = eyyVar.f16394b;
                switch (i3) {
                    case 0:
                        gsh j2 = f(eekVar, gshVar) ? eekVar.j(0) : eekVar.ai;
                        gpf gpfVar2 = (gpf) ((IdentityHashMap) gcuVar.f17897d).get(j2);
                        if (!(gpfVar2 != null ? gpfVar2.f18532a.equals(cwxVar) : false)) {
                            j = cagVar.j(gcuVar, j2, cwxVar);
                            break;
                        } else {
                            j = dgr.CHANGED;
                            break;
                        }
                    case 1:
                        j = h(cagVar, gcuVar, eekVar, gshVar, cwxVar);
                        break;
                    case 2:
                        gsh gshVar2 = eekVar.ai;
                        if (gshVar2 != null) {
                            boolean z2 = gshVar2 == gshVar;
                            if (z2) {
                                gshVar2 = eekVar.j(0);
                            }
                            dho h2 = cagVar.f12545e.h(cwxVar, gshVar2.j());
                            if (!h2.d() && (!z2 ? !h2.e() : !h2.b())) {
                                z = false;
                            }
                            j = cagVar.j(gcuVar, gshVar2, cwxVar);
                            if (j == dgr.SAME && !z) {
                                j = dgr.REJECT;
                                break;
                            } else if (j == dgr.REJECT && z) {
                                j = dgr.CHANGED;
                                break;
                            }
                        } else {
                            j = dgr.CHANGED;
                            break;
                        }
                        break;
                    case 3:
                        j = cagVar.n(gcuVar, eekVar, gshVar, cwxVar);
                        break;
                    case 4:
                        cwm cwmVar = cagVar.f12545e;
                        if (f(eekVar, gshVar)) {
                            gsh j3 = eekVar.j(0);
                            cff cffVar = cwx.an;
                            dgrVar = cagVar.j(gcuVar, j3, new aoe(cwxVar));
                            if (dgrVar == dgr.REJECT) {
                                cwx j4 = eekVar.j(0).j();
                                if (j4.h() && (j4 instanceof aoe)) {
                                    cwx k = j4.k();
                                    k.getClass();
                                    if ((k instanceof cff) && cwmVar.h(cwxVar, j4.k()) == dho.WIDER) {
                                        dgrVar = dgr.CHANGED;
                                    }
                                }
                            }
                        } else if (eekVar.j(0) == gshVar) {
                            cwx k2 = cwxVar.k();
                            if (k2 == null) {
                                dgrVar = dgr.REJECT;
                            } else {
                                dgrVar = cagVar.j(gcuVar, eekVar.ai, k2);
                                if (dgrVar == dgr.REJECT) {
                                    cwx j5 = eekVar.ai.j();
                                    if (j5.h() && (j5 instanceof cff) && cwmVar.h(j5, k2) == dho.WIDER) {
                                        dgrVar = dgr.CHANGED;
                                    }
                                }
                            }
                        } else {
                            dgrVar = dgr.SAME;
                        }
                        j = dgrVar;
                        break;
                    case 5:
                        gsh j6 = eekVar.j(0);
                        gsh j7 = eekVar.j(2);
                        if (j6 != gshVar) {
                            if (j6 != j7) {
                                j = dgr.SAME;
                                break;
                            } else {
                                cff cffVar2 = cwx.an;
                                j = cagVar.j(gcuVar, j6, new aoe(cwxVar));
                                break;
                            }
                        } else {
                            cwx k3 = cwxVar.k();
                            if (k3 != null) {
                                dgr j8 = cagVar.j(gcuVar, j7, k3);
                                if (j8 == dgr.REJECT) {
                                    cwx j9 = j7.j();
                                    if (j9.h() && ((h = cagVar.f12545e.h(k3, j9)) == dho.WIDER || h == dho.WIDER_BY_GENERIC)) {
                                        j = dgr.CHANGED;
                                        break;
                                    }
                                }
                                j = j8;
                                break;
                            } else {
                                j = dgr.REJECT;
                                break;
                            }
                        }
                        break;
                    case 6:
                        gsh j10 = eekVar.j(0);
                        gsh j11 = eekVar.j(1);
                        if (j10 == gshVar) {
                            j10 = j11;
                        }
                        dgr j12 = cagVar.j(gcuVar, j10, cwxVar);
                        if (j12 == dgr.REJECT) {
                            cwx j13 = j10.j();
                            if (!cwxVar.m() || (!j13.m() && (j13.h() || !j13.o(bjt.OBJECT)))) {
                                if (cwxVar instanceof aoe) {
                                    if (!(j13 instanceof aoe)) {
                                        if (!j13.h()) {
                                            break;
                                        }
                                    } else {
                                        j13.getClass();
                                    }
                                    j12 = dgr.SAME;
                                }
                                if (cwxVar instanceof cff) {
                                    bjt bjtVar = ((cff) cwxVar).f12778a;
                                    if (j13 instanceof cff) {
                                        j13.getClass();
                                        break;
                                    }
                                    if (j13.h() || !j13.o(bjtVar)) {
                                        z = false;
                                    }
                                    if (z) {
                                        j12 = dgr.SAME;
                                    } else if (j13.h() && cwxVar.bi() == j13.bi()) {
                                        j12 = dgr.SAME;
                                    }
                                }
                            } else {
                                j12 = dgr.SAME;
                            }
                        }
                        j = j12;
                        break;
                    case 7:
                        ame ameVar = (ame) eekVar;
                        if (cwxVar != cwx.at || !ameVar.f10465d.c()) {
                            j = cagVar.o(gcuVar, eekVar, gshVar, cwxVar);
                            break;
                        } else {
                            j = cagVar.n(gcuVar, eekVar, gshVar, cwxVar);
                            break;
                        }
                        break;
                    case 8:
                        j = cagVar.o(gcuVar, eekVar, gshVar, cwxVar);
                        break;
                    default:
                        adz adzVar = (adz) eekVar;
                        if (!f(eekVar, gshVar)) {
                            cwx cwxVar2 = (cwx) adzVar.f10070a;
                            dho h3 = cagVar.f12545e.h(cwxVar, cwxVar2);
                            if (h3 == dho.CONFLICT) {
                                dwg dwgVar = cagVar.f12543c;
                                if (cwxVar.m() && cwxVar2.m()) {
                                    aht l = dwgVar.l.l(cwxVar);
                                    aht l2 = dwgVar.l.l(cwxVar2);
                                    if (l != null) {
                                        break;
                                    }
                                    if (l2 != null) {
                                        break;
                                    }
                                    if (l != null) {
                                        if (l2 != null) {
                                            if (afo.af(l2.f10239d, 512)) {
                                                break;
                                            }
                                        }
                                    }
                                }
                                j = dgr.REJECT;
                                break;
                            }
                            if (h3 == dho.CONFLICT_BY_GENERIC) {
                                if (!eekVar.l.g(csv.SOFT_CAST)) {
                                    j = dgr.REJECT;
                                    break;
                                }
                            }
                            if (h3 != dho.NARROW_BY_GENERIC || !cwxVar.bk()) {
                                if (!cwxVar.equals(adzVar.j(0).j())) {
                                    j = dgr.CHANGED;
                                    break;
                                } else {
                                    j = dgr.SAME;
                                    break;
                                }
                            } else {
                                j = cagVar.j(gcuVar, adzVar.ai, cwxVar);
                                break;
                            }
                        } else {
                            j = cagVar.j(gcuVar, eekVar.j(0), cwxVar);
                            if (j == dgr.REJECT) {
                                j = dgr.SAME;
                                break;
                            }
                        }
                        break;
                }
            } else {
                j = dgr.CHANGED;
            }
        } else {
            j = dgr.SAME;
        }
        if (j == dgr.REJECT) {
            gcuVar.i(gshVar);
        }
        return j;
    }

    public final dgr n(gcu gcuVar, eek eekVar, gsh gshVar, cwx cwxVar) {
        if (!f(eekVar, gshVar)) {
            return j(gcuVar, eekVar.ai, cwxVar);
        }
        boolean z = true;
        for (gsh gshVar2 : eekVar.aj) {
            if (gshVar2 != gshVar) {
                dgr j = j(gcuVar, gshVar2, cwxVar);
                if (j == dgr.REJECT) {
                    return j;
                }
                if (j != dgr.SAME) {
                    z = false;
                }
            }
        }
        return z ? dgr.SAME : dgr.CHANGED;
    }

    public final dgr o(gcu gcuVar, eek eekVar, gsh gshVar, cwx cwxVar) {
        dgr j;
        gks gksVar;
        if (!f(eekVar, gshVar) && (gksVar = eekVar.ai) != null) {
            j(gcuVar, gksVar, cwxVar);
        }
        boolean z = true;
        for (gsh gshVar2 : eekVar.aj) {
            if (gshVar2 != gshVar && (j = j(gcuVar, gshVar2, cwxVar)) != dgr.REJECT && j != dgr.SAME) {
                z = false;
            }
        }
        return z ? dgr.SAME : dgr.CHANGED;
    }

    public final dgr p(hed hedVar, vm vmVar, cwx cwxVar, zf zfVar) {
        if (cwxVar != null) {
            try {
                if (cwxVar.h()) {
                    gcu gcuVar = new gcu(hedVar, zfVar, this.f12542b);
                    IdentityHashMap identityHashMap = (IdentityHashMap) gcuVar.f17897d;
                    dgr j = j(gcuVar, vmVar.f20177c, cwxVar);
                    if (j == dgr.REJECT) {
                        return j;
                    }
                    if (identityHashMap.isEmpty()) {
                        return dgr.SAME;
                    }
                    Collection.b.stream(identityHashMap.values()).sorted().forEach(new abs(4));
                    return dgr.CHANGED;
                }
            } catch (Exception e2) {
                hedVar.bt("Type update failed for variable: " + vmVar + ", new type: " + cwxVar, e2);
                return dgr.REJECT;
            }
        }
        return dgr.REJECT;
    }
}
