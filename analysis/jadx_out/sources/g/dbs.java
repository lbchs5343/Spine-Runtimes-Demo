package g;

import j$.lang.Iterable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class dbs extends pj {
    static {
        dsr.k(dbs.class);
    }

    public static void a(hed hedVar) {
        esp espVar = (esp) hedVar.l.k(ao.ad);
        if (espVar == null) {
            return;
        }
        try {
            ArrayList arrayList = espVar.f16093a;
            if (arrayList.size() != hedVar.al.f11075c.size()) {
                return;
            }
            int i = 0;
            for (gks gksVar : hedVar.az()) {
                int i2 = i + 1;
                bjc bjcVar = (bjc) arrayList.get(i);
                String str = bjcVar.f11688b;
                if (cbd.e(str)) {
                    ejb u = gksVar.f18326a.u();
                    u.f15630c = str;
                    if (afo.af(bjcVar.f11687a, 16)) {
                        u.f15628a = true;
                    }
                }
                i = i2;
            }
        } catch (Exception e2) {
            hedVar.bt("Failed to process method parameters attribute: " + espVar.f16093a, e2);
        }
    }

    public static void b(hed hedVar) {
        Iterable.b.forEach(hedVar.at, new bra(hedVar, 3));
        if (!hedVar.bg()) {
            ArrayList arrayList = new ArrayList(hedVar.ad.f17685e.size());
            Iterator it = hedVar.ad.f17685e.iterator();
            eek eekVar = null;
            while (it.hasNext()) {
                eek s = ffb.s((fza) it.next());
                if (s != null) {
                    if (s.l.g(csv.ORIG_RETURN)) {
                        eekVar = s;
                    } else {
                        arrayList.add(s);
                    }
                }
            }
            if (eekVar != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    eek eekVar2 = (eek) it2.next();
                    gsh j = eekVar.j(0);
                    gsh j2 = eekVar2.j(0);
                    j.getClass();
                    if (j instanceof gks) {
                        j2.getClass();
                        if (j2 instanceof gks) {
                            gks gksVar = (gks) j;
                            c(hedVar, ((gks) j2).f18326a, gksVar.j(), gksVar.getName());
                        }
                    }
                    eekVar2.bp = eekVar.bp;
                }
            }
        }
        Iterable.b.forEach(hedVar.at, new bra(hedVar, 4));
    }

    public static boolean c(hed hedVar, vm vmVar, cwx cwxVar, String str) {
        cag cagVar = hedVar.am.f12631ab.u;
        cagVar.getClass();
        if (cagVar.p(hedVar, vmVar, cwxVar, zf.f20389b) == dgr.REJECT) {
            return false;
        }
        if (!cbd.e(str)) {
            return true;
        }
        if (str == null) {
            vmVar.getClass();
            return true;
        }
        ejb ejbVar = vmVar.f20176b;
        if (ejbVar != null) {
            ejbVar.f15630c = str;
            return true;
        }
        throw new gck("CodeVar not initialized for name set in SSAVar: " + vmVar);
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        try {
            acq acqVar = acq.o;
            if (hedVar.l.j(acqVar)) {
                b(hedVar);
                hedVar.u(acqVar);
            }
            a(hedVar);
        } catch (Exception e2) {
            hedVar.bt("Failed to apply debug info", e2);
        }
    }
}
