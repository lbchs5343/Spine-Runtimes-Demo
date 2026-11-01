package g;

import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public abstract class ack {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f9977a = dsr.k(ack.class);

    public static eek b(gsh gshVar) {
        if (gshVar == null || !(gshVar instanceof cly)) {
            return null;
        }
        return ((cly) gshVar).f13104a;
    }

    public static eek c(eek eekVar, hay hayVar, Predicate predicate) {
        eek c2;
        if (eekVar.ah == hayVar && predicate.test(eekVar)) {
            return eekVar;
        }
        for (gsh gshVar : eekVar.aj) {
            gshVar.getClass();
            if ((gshVar instanceof cly) && (c2 = c(((cly) gshVar).f13104a, hayVar, predicate)) != null) {
                return c2;
            }
        }
        return null;
    }

    public static String d(int i) {
        return i < 0 ? "?" : String.format("0x%04x", Integer.valueOf(i));
    }

    public static void e(hed hedVar, eek eekVar, gxl gxlVar) {
        int size = eekVar.aj.size();
        for (int i = 0; i < size; i++) {
            gsh j = eekVar.j(i);
            j.getClass();
            if (j instanceof cly) {
                eek eekVar2 = ((cly) j).f13104a;
                e(hedVar, eekVar2, gxlVar);
                eek eekVar3 = (eek) gxlVar.apply(eekVar2);
                if (eekVar3 != null) {
                    fpd.h(hedVar, j);
                    eekVar.e(i, gsh.ah(eekVar3));
                }
            }
        }
    }

    public static Object f(dwg dwgVar, gsh gshVar) {
        gshVar.getClass();
        if (gshVar instanceof ekh) {
            return gshVar;
        }
        if (!(gshVar instanceof gks)) {
            if (gshVar instanceof cly) {
                return h(dwgVar, ((cly) gshVar).f13104a);
            }
            return null;
        }
        eek aa = ((gks) gshVar).aa();
        if (aa == null) {
            return null;
        }
        return aa.ah == hay.MOVE ? f(dwgVar, aa.j(0)) : h(dwgVar, aa);
    }

    public static eek g(eek eekVar, hay hayVar) {
        if (eekVar == null || eekVar.ah != hayVar) {
            return null;
        }
        return eekVar;
    }

    public static Object h(dwg dwgVar, eek eekVar) {
        int i = bsg.f12114a[eekVar.ah.ordinal()];
        if (i == 1) {
            return eekVar.j(0);
        }
        if (i == 2) {
            return ((epw) eekVar).f15951a;
        }
        if (i == 3) {
            return ((dkd) eekVar).f14300a;
        }
        if (i != 4) {
            return null;
        }
        dsj dsjVar = (dsj) ((adz) eekVar).f10070a;
        hcd ag = dwgVar.ag(dsjVar);
        if (ag == null) {
            f9977a.p(dsjVar, "Field {} not found");
            return null;
        }
        ghr ghrVar = (ghr) ag.l.k(ao.x);
        if (ghrVar != null) {
            return bff.m(ghrVar);
        }
        return null;
    }

    public static eek i(hed hedVar, hay hayVar, Predicate predicate) {
        if (hedVar.ar) {
            return null;
        }
        Iterator it = hedVar.ak.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((fza) it.next()).ac.iterator();
            while (it2.hasNext()) {
                eek c2 = c((eek) it2.next(), hayVar, predicate);
                if (c2 != null) {
                    return c2;
                }
            }
        }
        return null;
    }

    public static String j(Object obj) {
        if (obj == null) {
            return "";
        }
        if (!(obj instanceof String)) {
            return obj.toString();
        }
        return "\"" + obj + '\"';
    }

    public static boolean k(List list, gks gksVar) {
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                gsh gshVar = (gsh) it.next();
                if (gshVar == gksVar || gksVar.x(gshVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean l(eek eekVar, hay hayVar) {
        return eekVar != null && eekVar.ah == hayVar;
    }

    public static boolean m(gsh gshVar, gks gksVar) {
        eek eekVar;
        gshVar.getClass();
        if (gshVar instanceof gks) {
            return ((gks) gshVar).x(gksVar);
        }
        if ((gshVar instanceof cly) && (eekVar = ((cly) gshVar).f13104a) != null) {
            List list = eekVar.aj;
            gks gksVar2 = eekVar.ai;
            if (gksVar2 != null && gksVar2.x(gksVar)) {
                return true;
            }
            if (list.size() != 0) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (m((gsh) it.next(), gksVar)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static gsh n(eek eekVar) {
        if (eekVar == null || eekVar.aj.size() != 1) {
            return null;
        }
        return eekVar.j(0);
    }
}
