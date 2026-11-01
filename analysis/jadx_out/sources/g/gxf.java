package g;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class gxf extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f18936a = dsr.k(gxf.class);

    /* renamed from: b, reason: collision with root package name */
    public boolean f18937b;

    /* renamed from: c, reason: collision with root package name */
    public ve f18938c;

    /* renamed from: d, reason: collision with root package name */
    public HashSet f18939d;

    public static boolean e(gks gksVar, String str) {
        if (str.startsWith("$this$")) {
            str = str.substring(6);
        } else if (str.startsWith("$")) {
            str = str.substring(1);
        }
        if (!cbd.e(str)) {
            return false;
        }
        gksVar.f18326a.u().f15630c = str;
        return true;
    }

    public static String g(hed hedVar, eek eekVar, int i) {
        gsh j = eekVar.j(i);
        j.getClass();
        if (!(j instanceof cly)) {
            return null;
        }
        eek eekVar2 = ((cly) j).f13104a;
        hay hayVar = eekVar2.ah;
        if (hayVar == hay.CONST_STR) {
            return ((epw) eekVar2).f15951a;
        }
        if (hayVar != hay.SGET) {
            return null;
        }
        hcd ag = hedVar.am.f12631ab.ag((dsj) ((adz) eekVar2).f10070a);
        if (ag == null) {
            return null;
        }
        String str = (String) ((ghr) ag.l.k(ao.x)).f18176f;
        eekVar.f(j, gsh.aj(new epw(str)));
        return str;
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        dwgVar.getClass();
        cci ae = dwgVar.ae(ve.h(dwgVar, cwx.bf("kotlin.jvm.internal.Intrinsics")));
        if (ae == null) {
            ae = null;
        }
        dba dbaVar = f18936a;
        if (ae != null) {
            this.f18938c = ae.ak;
            HashSet hashSet = new HashSet();
            ae.av();
            for (hed hedVar : ae.aj) {
                gqc gqcVar = hedVar.ax;
                ayu ayuVar = hedVar.al;
                if (gqcVar.be()) {
                    String str = ayuVar.f11077e;
                    if (str.endsWith("(Ljava/lang/Object;Ljava/lang/String;)V") || str.endsWith("(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V")) {
                        hashSet.add(ayuVar);
                    }
                }
            }
            this.f18939d = hashSet;
            dbaVar.a(ae, "Kotlin Intrinsics class: {}, methods: {}", Integer.valueOf(hashSet.size()));
        } else {
            this.f18938c = null;
            dbaVar.o("Kotlin Intrinsics class not found");
        }
        this.f18937b = dwgVar.i.n == fnc.APPLY_AND_HIDE;
    }

    public final void i(hed hedVar, eek eekVar) {
        String g2;
        int size = eekVar.aj.size();
        if (size < 2) {
            return;
        }
        if (this.f18939d.contains(((hdc) eekVar).ad)) {
            boolean z = false;
            gsh j = eekVar.j(0);
            j.getClass();
            if (j instanceof gks) {
                gks gksVar = (gks) j;
                if (size == 2) {
                    String g3 = g(hedVar, eekVar, 1);
                    if (g3 != null) {
                        z = e(gksVar, g3);
                    }
                } else if (size == 3 && (g2 = g(hedVar, eekVar, 2)) != null) {
                    z = e(gksVar, g2);
                }
                if (z && this.f18937b) {
                    eekVar.w(csv.DONT_GENERATE);
                }
            }
        }
    }

    @Override // g.pj
    public final boolean k(cci cciVar) {
        if (this.f18938c == null) {
            return false;
        }
        cciVar.av();
        for (hed hedVar : cciVar.aj) {
            if (!hedVar.ar) {
                if (!hedVar.l.j(acq.af)) {
                    Iterator it = hedVar.ak.iterator();
                    while (it.hasNext()) {
                        Iterator it2 = ((fza) it.next()).ac.iterator();
                        while (it2.hasNext()) {
                            eek eekVar = (eek) it2.next();
                            if (eekVar.ah == hay.INVOKE) {
                                try {
                                    i(hedVar, eekVar);
                                } catch (Exception e2) {
                                    hedVar.bt("Failed to extract var names", e2);
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }
}
