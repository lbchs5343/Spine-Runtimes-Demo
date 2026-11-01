package g;

import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class fem extends pj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16668a;

    /* renamed from: b, reason: collision with root package name */
    public Object f16669b;

    public /* synthetic */ fem(int i) {
        this.f16668a = i;
    }

    public static void c(ebh ebhVar, int i) {
        String str;
        gqc ay = ebhVar.ay();
        int i2 = ay.f18566ab;
        int i3 = ay.f18566ab;
        frh frhVar = (frh) ay.z;
        gqc gqcVar = (i2 & 7) == i ? ay : new gqc(i | (i2 & (-8)), frhVar, 1);
        if (gqcVar != ay) {
            ebhVar.bc(gqcVar);
            if ((i3 & 7) == 0) {
                str = "package-private";
            } else if (ay.an()) {
                str = "public";
            } else if (ay.al()) {
                str = "private";
            } else {
                if (!ay.ao()) {
                    throw new gck("Unknown visibility flags: " + new gqc(i3 & 7, frhVar, 1));
                }
                str = "protected";
            }
            ebhVar.bv("Access modifiers changed from: ".concat(str));
        }
    }

    public static ayu d(dwg dwgVar, cwx cwxVar, String str) {
        cwx bf = cwx.bf(str);
        return ayu.k(dwgVar, ve.h(dwgVar, bf), "valueOf", Collections.singletonList(cwxVar), bf);
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        switch (this.f16668a) {
            case 0:
                this.f16669b = dwgVar.f14930b;
                break;
            case 1:
                HashSet hashSet = new HashSet();
                this.f16669b = hashSet;
                hashSet.add(d(dwgVar, cwx.an, "java.lang.Integer"));
                ((HashSet) this.f16669b).add(d(dwgVar, cwx.at, "java.lang.Boolean"));
                ((HashSet) this.f16669b).add(d(dwgVar, cwx.z, "java.lang.Byte"));
                ((HashSet) this.f16669b).add(d(dwgVar, cwx.ac, "java.lang.Short"));
                ((HashSet) this.f16669b).add(d(dwgVar, cwx.ai, "java.lang.Character"));
                ((HashSet) this.f16669b).add(d(dwgVar, cwx.am, "java.lang.Long"));
                break;
            case 2:
                this.f16669b = new aoy(dwgVar);
                dwgVar.i.getClass();
                break;
            default:
                this.f16669b = new HashMap();
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x01c4, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01c2, code lost:
    
        r18 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0258  */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(hed hedVar) {
        Iterator it;
        boolean z;
        boolean z2;
        boolean z3;
        eek eekVar;
        switch (this.f16668a) {
            case 0:
                if (hedVar.ar) {
                    return;
                }
                for (eek eekVar2 : hedVar.an) {
                    if (eekVar2 instanceof gif) {
                        gif gifVar = (gif) eekVar2;
                        ebp m = ((fnq) this.f16669b).m(gifVar.ac());
                        if (m != null) {
                            gifVar.m(m);
                        }
                    }
                }
                return;
            case 1:
                if (hedVar.ar) {
                    return;
                }
                Iterator it2 = hedVar.ak.iterator();
                int i = 0;
                boolean z4 = false;
                while (it2.hasNext()) {
                    fza fzaVar = (fza) it2.next();
                    ArrayList arrayList = fzaVar.ac;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        eek eekVar3 = (eek) arrayList.get(i2);
                        if (eekVar3.ah == hay.INVOKE) {
                            hdc hdcVar = (hdc) eekVar3;
                            eek eekVar4 = null;
                            if (hdcVar.f19257ab == eqp.STATIC && hdcVar.ai != null) {
                                ayu ayuVar = hdcVar.ad;
                                if (((HashSet) this.f16669b).contains(ayuVar)) {
                                    gks gksVar = hdcVar.ai;
                                    gsh j = hdcVar.j(i);
                                    j.getClass();
                                    if (j instanceof ekh) {
                                        cwx cwxVar = (cwx) ayuVar.f11075c.get(i);
                                        cwx cwxVar2 = ayuVar.f11079g;
                                        if (cwxVar == cwx.am) {
                                            z = true;
                                        } else if (cwxVar != cwx.an) {
                                            HashSet hashSet = new HashSet();
                                            Iterator it3 = gksVar.f18326a.f20178d.iterator();
                                            while (it3.hasNext()) {
                                                gks gksVar2 = (gks) it3.next();
                                                hashSet.add(gksVar2.j());
                                                hashSet.add(gksVar2.h);
                                            }
                                            hashSet.add(gksVar.j());
                                            hashSet.remove(cwxVar2);
                                            hashSet.remove(cwxVar);
                                            z = !hashSet.isEmpty();
                                        } else {
                                            z = false;
                                        }
                                        if (z) {
                                            j.w(csv.EXPLICIT_PRIMITIVE_TYPE);
                                        }
                                        j.f(cwxVar);
                                        Iterator it4 = gksVar.f18326a.u().f15633f.iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                vm vmVar = (vm) it4.next();
                                                if (!vmVar.i() && (eekVar = vmVar.f20177c.ae) != null) {
                                                    hay hayVar = eekVar.ah;
                                                    it = it2;
                                                    if (hayVar == hay.CONST || hayVar == hay.MOVE) {
                                                        z2 = false;
                                                        if (eekVar.j(0).j().m()) {
                                                        }
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    cwx cwxVar3 = eekVar.ai.h;
                                                    if (!cwxVar3.m() || cwxVar3.equals(cwxVar2)) {
                                                        Iterator it5 = vmVar.f20178d.iterator();
                                                        while (it5.hasNext()) {
                                                            gks gksVar3 = (gks) it5.next();
                                                            eek eekVar5 = gksVar3.ae;
                                                            if (eekVar5 != null) {
                                                                Iterator it6 = it4;
                                                                if (eekVar5.ah == hay.INVOKE && gksVar3.equals(((hdc) eekVar5).aa())) {
                                                                    break;
                                                                } else {
                                                                    it4 = it6;
                                                                    z2 = false;
                                                                }
                                                            }
                                                        }
                                                        it2 = it;
                                                    }
                                                }
                                            } else {
                                                it = it2;
                                                z2 = true;
                                            }
                                        }
                                        if (z2) {
                                            gksVar.f(cwxVar);
                                            z3 = false;
                                        } else {
                                            z3 = true;
                                        }
                                        eekVar4 = new eek(hay.CONST, 1);
                                        eekVar4._an(j);
                                        eekVar4.ax(gksVar);
                                        if (z3) {
                                            eekVar4.w(csv.DONT_INLINE);
                                        }
                                        if (eekVar4 != null) {
                                            ffb.bs(hedVar, fzaVar, i2, eekVar4);
                                            z4 = true;
                                        }
                                    }
                                }
                            }
                            it = it2;
                            if (eekVar4 != null) {
                            }
                        } else {
                            it = it2;
                        }
                        i2++;
                        it2 = it;
                        i = 0;
                    }
                }
                if (z4) {
                    eak.ac(hedVar);
                    return;
                }
                return;
            case 2:
                if (hedVar.l.g(csv.DONT_GENERATE)) {
                    return;
                }
                gqc gqcVar = hedVar.ax;
                fpr fprVar = (fpr) hedVar.l.k(acq.h);
                if (fprVar != null) {
                    List list = fprVar.f17209b;
                    if (!list.isEmpty()) {
                        int _cv = ((ebp) list.get(0))._cv();
                        int i3 = gqcVar.f18566ab & 7;
                        int i4 = _cv & 7;
                        if (i3 != i4 && gqc.ac(i3) < gqc.ac(i4)) {
                            c(hedVar, i4);
                        }
                    }
                }
                Iterator it7 = Collections.unmodifiableList(hedVar.au).iterator();
                while (it7.hasNext()) {
                    ((aoy) this.f16669b).ag(hedVar, (hed) it7.next(), new bfb(16));
                }
                return;
            default:
                if (hedVar.ar) {
                    return;
                }
                HashMap hashMap = (HashMap) this.f16669b;
                Iterator it8 = hedVar.ak.iterator();
                while (it8.hasNext()) {
                    Iterator it9 = ((fza) it8.next()).ac.iterator();
                    while (it9.hasNext()) {
                        eek eekVar6 = (eek) it9.next();
                        int i5 = ejg.f15647a[eekVar6.ah.ordinal()];
                        if (((i5 == 1 || i5 == 2) ? (dsj) ((adz) eekVar6).f10070a : null) != null) {
                            cwx j2 = eekVar6.j(eekVar6.aj.size() - 1).j();
                            if (j2.h() && j2.m() && hashMap.get(j2.l()) != null) {
                                throw new ClassCastException();
                            }
                        }
                    }
                }
                return;
        }
    }

    @Override // g.pj
    public boolean k(cci cciVar) {
        switch (this.f16668a) {
            case 2:
                gqc gqcVar = cciVar.f12632d;
                if (cciVar.ai != cciVar || !gqcVar.an()) {
                    if (cciVar.ai == cciVar && (gqcVar.al() || gqcVar.ao())) {
                        c(cciVar, 1);
                    } else {
                        Iterator it = cciVar.z.iterator();
                        while (it.hasNext()) {
                            ((aoy) this.f16669b).ag(cciVar, (cci) it.next(), new bfb(14));
                        }
                        for (hed hedVar : cciVar.h) {
                            fmz fmzVar = (fmz) hedVar.l.k(acq.f9987g);
                            boolean z = (fmzVar == null || fmzVar.f17057b == null) ? false : true;
                            boolean g2 = hedVar.l.g(csv.METHOD_CANDIDATE_FOR_INLINE);
                            if (z || g2) {
                                Iterator it2 = ((Set) Collection.b.stream(Collections.unmodifiableList(hedVar.au)).map(new fov(26)).collect(Collectors.toSet())).iterator();
                                while (it2.hasNext()) {
                                    ((aoy) this.f16669b).ag(cciVar, (cci) it2.next(), new bfb(15));
                                }
                            }
                        }
                    }
                }
                return true;
            default:
                return super.k(cciVar);
        }
    }
}
