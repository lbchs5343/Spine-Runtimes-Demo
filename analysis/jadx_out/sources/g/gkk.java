package g;

import j$.lang.Iterable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class gkk extends pj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18308a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18309b;

    public /* synthetic */ gkk(int i) {
        this.f18308a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008d, code lost:
    
        if ((r3.isEmpty() ? false : g.acw.bh(r3, new g.cpa(((g.hed) r3.get(0)).am, 1))) == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0134  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c(cci cciVar) {
        dhx dhxVar;
        boolean z;
        cci cciVar2;
        List list;
        if (!cciVar.f12632d.bb()) {
            String str = cciVar.ak.f20150e;
            if (!str.contains("$") && !Character.isDigit(str.charAt(0))) {
                if (cciVar.z.size() != 1 || cciVar.h.size() != 1) {
                    return;
                }
                hed hedVar = (hed) cciVar.h.get(0);
                if (!hedVar.al.m() || !hedVar.am.bi()) {
                    return;
                }
            }
        }
        cciVar.av();
        hed hedVar2 = (hed) acw.bc(cciVar.aj, new brj(12));
        if (hedVar2 == null) {
            return;
        }
        cwx cwxVar = null;
        if (Collections.unmodifiableList(hedVar2.au).size() != 1) {
            List unmodifiableList = Collections.unmodifiableList(hedVar2.au);
        }
        hed hedVar3 = (hed) Collections.unmodifiableList(hedVar2.au).get(0);
        cci cciVar3 = hedVar3.am;
        if (cciVar3.equals(cciVar)) {
            hed hedVar4 = (hed) Collections.unmodifiableList(hedVar2.au).get(0);
            if (hedVar4.al.m() && !cciVar.h.isEmpty()) {
                cciVar.av();
                hcd hcdVar = (hcd) acw.bc(cciVar.ag, new cpa(cciVar, 2));
                if (hcdVar != null) {
                    List list2 = hcdVar.f19214d;
                    if (list2.size() == 2 && list2.contains(hedVar4) && list2.containsAll(cciVar.h) && e(cciVar, hedVar2, hedVar4)) {
                        cciVar.av();
                        loop0: for (hcd hcdVar2 : cciVar.ag) {
                            if (hcdVar2 != hcdVar) {
                                Iterator it = hcdVar2.f19214d.iterator();
                                while (it.hasNext()) {
                                    if (d(cciVar, (hed) it.next(), hcdVar2.h)) {
                                    }
                                }
                            }
                        }
                        hcdVar.w(csv.INLINE_INSTANCE_FIELD);
                        z = true;
                        if (z) {
                            dhxVar = dhx.INSTANCE_FIELD;
                            if (dhxVar == null) {
                                return;
                            }
                            List list3 = cciVar.j;
                            dwg dwgVar = cciVar.f12631ab;
                            int size = list3.size();
                            if (size <= 1) {
                                cwx cwxVar2 = cciVar.af;
                                if (cwxVar2 == null || cwxVar2.equals(cwx.t)) {
                                    cwxVar = size == 1 ? (cwx) cciVar.j.get(0) : cwx.t;
                                } else {
                                    if (size != 0) {
                                        cwx cwxVar3 = (cwx) cciVar.j.get(0);
                                        if (!dwgVar.l.g(cwxVar2.l()).contains(cwxVar3.l())) {
                                            if (dwgVar.i.ak && cwxVar2.l().equals("kotlin.jvm.internal.Lambda")) {
                                                cwxVar = cwxVar3;
                                            }
                                        }
                                    }
                                    cwxVar = cwxVar2;
                                }
                            }
                            if (cwxVar == null) {
                                return;
                            }
                            if (dhxVar == dhx.INSTANCE_FIELD) {
                                if (cciVar.h.isEmpty()) {
                                    return;
                                } else {
                                    cciVar2 = ((hed) cciVar.h.get(0)).am;
                                }
                            } else if (Collections.unmodifiableList(hedVar2.au).isEmpty()) {
                                return;
                            } else {
                                cciVar2 = ((hed) Collections.unmodifiableList(hedVar2.au).get(0)).am;
                            }
                            cciVar2.as(cciVar);
                            cciVar.m(new glh(cciVar2, cwxVar, dhxVar));
                            cciVar.w(csv.DONT_GENERATE);
                            hedVar2.w(csv.ANONYMOUS_CONSTRUCTOR);
                            cci bd = cciVar2.bd();
                            cciVar.bl(bd);
                            List list4 = cciVar2.z;
                            if (list4 != null && !list4.isEmpty()) {
                                list4.remove(cciVar);
                            }
                            if (cciVar.ai == cciVar) {
                                bd.bl(cciVar);
                                if (bd.f12634f.contains(cciVar)) {
                                    return;
                                }
                                List list5 = bd.f12634f;
                                if (list5 == null || list5.isEmpty()) {
                                    ArrayList arrayList = new ArrayList(1);
                                    arrayList.add(cciVar);
                                    list = arrayList;
                                } else {
                                    list5.add(cciVar);
                                    list = list5;
                                }
                                bd.f12634f = list;
                                return;
                            }
                            return;
                        }
                        dhxVar = null;
                        if (dhxVar == null) {
                        }
                    }
                }
            }
            z = false;
            if (z) {
            }
            dhxVar = null;
            if (dhxVar == null) {
            }
        } else {
            if (!cciVar3.bd().equals(cciVar) && e(cciVar, hedVar2, hedVar3)) {
                cciVar.av();
                loop2: for (hcd hcdVar3 : cciVar.ag) {
                    Iterator it2 = hcdVar3.f19214d.iterator();
                    while (it2.hasNext()) {
                        if (d(cciVar, (hed) it2.next(), hcdVar3.h)) {
                        }
                    }
                }
                dhxVar = dhx.CONSTRUCTOR;
                if (dhxVar == null) {
                }
            }
            dhxVar = null;
            if (dhxVar == null) {
            }
        }
    }

    public static boolean d(cci cciVar, hed hedVar, gqc gqcVar) {
        if (hedVar.am.equals(cciVar)) {
            return false;
        }
        if (gqcVar.bb()) {
            return !r2.ai.equals(cciVar);
        }
        return true;
    }

    public static boolean e(cci cciVar, hed hedVar, hed hedVar2) {
        cciVar.av();
        for (hed hedVar3 : cciVar.aj) {
            if (hedVar3 != hedVar) {
                for (hed hedVar4 : Collections.unmodifiableList(hedVar3.au)) {
                    if (!hedVar4.equals(hedVar2) && d(cciVar, hedVar4, hedVar3.ax)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @Override // g.pj
    public final String f() {
        switch (this.f18308a) {
            case 0:
                return "ProcessAnonymous";
            default:
                return "ProcessMethodsForInline";
        }
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        switch (this.f18308a) {
            case 0:
                this.f18309b = dwgVar.i.t;
                break;
            default:
                this.f18309b = dwgVar.i.as;
                break;
        }
    }

    @Override // g.pj
    public final boolean k(cci cciVar) {
        List list;
        switch (this.f18308a) {
            case 0:
                if (this.f18309b) {
                    if (cciVar.l.g(csv.CLASS_UNLOADED)) {
                        try {
                            c(cciVar);
                        } catch (Exception | StackOverflowError e2) {
                            dcj.d(cciVar, "Anonymous visitor error", e2);
                        }
                        Iterable.b.forEach(cciVar.i, new agx(19, this));
                        break;
                    }
                }
                break;
            default:
                if (this.f18309b) {
                    cciVar.av();
                    for (hed hedVar : cciVar.aj) {
                        boolean z = hedVar.ar;
                        cci cciVar2 = hedVar.am;
                        if (!z) {
                            if (!hedVar.l.g(csv.DONT_GENERATE)) {
                                gqc gqcVar = hedVar.ax;
                                if (gqcVar.bb() || hedVar.al.f11078f.contains("$")) {
                                    if (gqcVar.be() || (hedVar.bk() && cciVar2.f12631ab.i.t)) {
                                        hedVar.w(csv.METHOD_CANDIDATE_FOR_INLINE);
                                        cci bd = cciVar2.bd();
                                        Iterator it = Collections.unmodifiableList(hedVar.au).iterator();
                                        while (it.hasNext()) {
                                            cci bd2 = ((hed) it.next()).am.bd();
                                            if (bd2 != bd) {
                                                bd.bl(bd2);
                                                if (!bd2.f12634f.contains(bd)) {
                                                    List list2 = bd2.f12634f;
                                                    if (list2 == null || list2.isEmpty()) {
                                                        ArrayList arrayList = new ArrayList(1);
                                                        arrayList.add(bd);
                                                        list = arrayList;
                                                    } else {
                                                        list2.add(bd);
                                                        list = list2;
                                                    }
                                                    bd2.f12634f = list;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                break;
        }
        return false;
    }
}
