package g;

import j$.util.Comparator;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class cwm {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f13635a = dsr.k(cwm.class);

    /* renamed from: b, reason: collision with root package name */
    public final dwg f13636b;

    /* renamed from: c, reason: collision with root package name */
    public final ens f13637c;

    /* renamed from: d, reason: collision with root package name */
    public final Comparator f13638d;

    public cwm(dwg dwgVar) {
        this.f13636b = dwgVar;
        ens ensVar = new ens(this);
        this.f13637c = ensVar;
        this.f13638d = Comparator.b.reversed(ensVar);
    }

    public static dho e(cwx cwxVar, cwx cwxVar2) {
        if (cwxVar2 == cwx.ad) {
            return dho.NARROW;
        }
        if (cwxVar2 == cwx.ag && (cwxVar.m() || (cwxVar instanceof aoe))) {
            return dho.NARROW;
        }
        if (cwxVar.equals(cwx.t) && (cwxVar2 instanceof aoe)) {
            return dho.WIDER;
        }
        bjt bjtVar = cwxVar instanceof cff ? ((cff) cwxVar).f12778a : cwxVar instanceof aoe ? bjt.ARRAY : bjt.OBJECT;
        for (bjt bjtVar2 : cwxVar2.g()) {
            if (bjtVar2 == bjtVar) {
                return dho.NARROW;
            }
        }
        return dho.CONFLICT;
    }

    public static dho f(cwx cwxVar) {
        if (!cwxVar.h()) {
            return cwxVar.o(bjt.ARRAY) ? dho.NARROW : dho.CONFLICT;
        }
        if (cwxVar.m()) {
            return cwxVar.equals(cwx.t) ? dho.NARROW : dho.CONFLICT;
        }
        if (cwxVar instanceof cff) {
            return dho.CONFLICT;
        }
        throw new gck("Unprocessed type: " + cwxVar + " in array compare");
    }

    public static byte g(bjt bjtVar) {
        switch (ml.f19655a[bjtVar.ordinal()]) {
            case 1:
                return (byte) 0;
            case 2:
                return (byte) 1;
            case 3:
                return (byte) 2;
            case 4:
                return (byte) 3;
            case 5:
                return (byte) 4;
            case 6:
                return (byte) 5;
            case 7:
                return (byte) 6;
            case 8:
            case 9:
            case 10:
            case 11:
                throw new gck("Type " + bjtVar + " should not be here");
            default:
                throw new gck("Unhandled type: " + bjtVar);
        }
    }

    public final dho h(cwx cwxVar, cwx cwxVar2) {
        byte g2;
        byte g3;
        if (cwxVar == cwxVar2 || Objects.equals(cwxVar, cwxVar2)) {
            return dho.EQUAL;
        }
        boolean h = cwxVar.h();
        if (h != cwxVar2.h()) {
            return h ? e(cwxVar, cwxVar2) : e(cwxVar2, cwxVar).c();
        }
        boolean z = cwxVar instanceof aoe;
        if (z != (cwxVar2 instanceof aoe)) {
            return z ? f(cwxVar2) : f(cwxVar).c();
        }
        if (z) {
            return h(cwxVar.k(), cwxVar2.k());
        }
        if (!h) {
            return Integer.compare(cwxVar.g().length, cwxVar2.g().length) > 0 ? dho.WIDER : dho.NARROW;
        }
        boolean z2 = cwxVar instanceof cff;
        boolean z3 = cwxVar2 instanceof cff;
        boolean m = cwxVar.m();
        boolean m2 = cwxVar2.m();
        if (m && m2) {
            return j(cwxVar, cwxVar2);
        }
        if (m && z3) {
            return dho.CONFLICT;
        }
        if (z2 && m2) {
            return dho.CONFLICT;
        }
        if (!z2 || !z3) {
            f13635a.t(cwxVar, "Type compare function not complete, can't compare {} and {}", cwxVar2);
            return dho.CONFLICT;
        }
        bjt f2 = cwxVar.f();
        bjt f3 = cwxVar2.f();
        bjt bjtVar = bjt.BOOLEAN;
        if (f2 == bjtVar || f3 == bjtVar) {
            return f2 == f3 ? dho.EQUAL : dho.CONFLICT;
        }
        bjt bjtVar2 = bjt.VOID;
        if (f2 == bjtVar2 || f3 == bjtVar2) {
            return f2 == f3 ? dho.EQUAL : dho.CONFLICT;
        }
        if (f2 == bjt.BYTE && f3 == bjt.CHAR) {
            return dho.WIDER;
        }
        if ((f2 != bjt.SHORT || f3 != bjt.CHAR) && (g2 = g(f2)) <= (g3 = g(f3))) {
            return g2 < g3 ? dho.NARROW : dho.EQUAL;
        }
        return dho.WIDER;
    }

    public final dho i(cwx cwxVar, cwx cwxVar2) {
        cwxVar2.getClass();
        if (!(cwxVar2 instanceof btl)) {
            if (cwxVar2 instanceof gzg) {
                return dho.CONFLICT_BY_GENERIC;
            }
            boolean equals = cwxVar2.equals(cwx.t);
            List q = cwxVar.q();
            if (q.isEmpty()) {
                return equals ? dho.NARROW : dho.CONFLICT;
            }
            if (q.contains(cwxVar2) || equals) {
                return dho.NARROW;
            }
            Iterator it = q.iterator();
            while (it.hasNext()) {
                dho j = j((cwx) it.next(), cwxVar2);
                if (!j.e()) {
                    return j;
                }
            }
            return dho.NARROW;
        }
        if (cwxVar.l().equals(cwxVar2.l())) {
            List q2 = cwxVar.q();
            aog aogVar = cwx.t;
            if (q2.contains(aogVar)) {
                if (q2.size() == 1) {
                    q2 = Collections.EMPTY_LIST;
                } else {
                    ArrayList arrayList = new ArrayList(q2);
                    arrayList.remove(aogVar);
                    q2 = arrayList;
                }
            }
            List q3 = cwxVar2.q();
            if (q3.contains(aogVar)) {
                if (q3.size() == 1) {
                    q3 = Collections.EMPTY_LIST;
                } else {
                    ArrayList arrayList2 = new ArrayList(q3);
                    arrayList2.remove(aogVar);
                    q3 = arrayList2;
                }
            }
            if (q2.equals(q3)) {
                return dho.EQUAL;
            }
            int size = q2.size();
            int size2 = q3.size();
            if (size == 0) {
                return dho.WIDER;
            }
            if (size2 == 0) {
                return dho.NARROW;
            }
            if (size == 1 && size2 == 1) {
                return h((cwx) q2.get(0), (cwx) q3.get(0));
            }
        }
        return dho.CONFLICT;
    }

    public final dho j(cwx cwxVar, cwx cwxVar2) {
        boolean equals = cwxVar.l().equals(cwxVar2.l());
        boolean z = cwxVar instanceof btl;
        boolean z2 = cwxVar2 instanceof btl;
        if (z && z2 && !equals) {
            return dho.CONFLICT;
        }
        boolean bm = cwxVar.bm();
        boolean bm2 = cwxVar2.bm();
        if (z || z2) {
            cwx bo = cwxVar.bo();
            cwx bo2 = cwxVar2.bo();
            if (bo != null || bo2 != null) {
                if (bo != null && z2 && cwxVar.bl() == be.UNBOUND) {
                    return dho.CONFLICT;
                }
                if (z && bo2 != null && cwxVar2.bl() == be.UNBOUND) {
                    return dho.CONFLICT;
                }
            }
            return z ? i(cwxVar, cwxVar2) : i(cwxVar2, cwxVar).c();
        }
        if (equals) {
            if (bm != bm2) {
                return bm ? dho.NARROW_BY_GENERIC : dho.WIDER_BY_GENERIC;
            }
            if (cwxVar.bl() != null && cwxVar2.bl() != null) {
                be bl = cwxVar.bl();
                be bl2 = cwxVar2.bl();
                be beVar = be.UNBOUND;
                if (bl == beVar) {
                    return dho.WIDER;
                }
                if (bl2 == beVar) {
                    return dho.NARROW;
                }
                return bl == bl2 ? h(cwxVar.bo(), cwxVar2.bo()) : dho.CONFLICT;
            }
            List c2 = cwxVar.c();
            List c3 = cwxVar2.c();
            if (evh.m(c2) || evh.m(c3)) {
                cwx bj = cwxVar.bj();
                cwx bj2 = cwxVar2.bj();
                if (bj != null && bj2 != null) {
                    return h(bj, bj2);
                }
            } else {
                int size = c2.size();
                if (size == c3.size()) {
                    for (int i = 0; i < size; i++) {
                        dho h = h((cwx) c2.get(i), (cwx) c3.get(i));
                        if (h != dho.EQUAL) {
                            return h;
                        }
                    }
                }
            }
        }
        aog aogVar = cwx.t;
        boolean equals2 = cwxVar.equals(aogVar);
        if (equals2 || cwxVar2.equals(aogVar)) {
            return equals2 ? dho.WIDER : dho.NARROW;
        }
        dwg dwgVar = this.f13636b;
        if (cwx.be(dwgVar, cwxVar, cwxVar2)) {
            return dho.NARROW;
        }
        if (cwx.be(dwgVar, cwxVar2, cwxVar)) {
            return dho.WIDER;
        }
        if (cwxVar.m() ? dwgVar.l.f13559e.containsKey(cwxVar.l()) : false) {
            if (cwxVar2.m() ? dwgVar.l.f13559e.containsKey(cwxVar2.l()) : false) {
                return dho.CONFLICT;
            }
        }
        return dho.UNKNOWN;
    }
}
