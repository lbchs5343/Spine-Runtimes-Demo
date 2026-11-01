package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class eqh extends pj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15992a;

    /* renamed from: b, reason: collision with root package name */
    public dwg f15993b;

    public /* synthetic */ eqh(int i) {
        this.f15992a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.List] */
    public static List c(cci cciVar, List list, cwx cwxVar, List list2) {
        ?? r6;
        if (!list2.isEmpty() || !cwxVar.equals(cwx.t)) {
            HashSet hashSet = new HashSet();
            cwxVar.bh(new gr(hashSet, 0));
            Iterable.b.forEach(list2, new bbm(hashSet, 3));
            if (!hashSet.isEmpty()) {
                if (cciVar.bk()) {
                    r6 = new ArrayList(list);
                    cci cciVar2 = cciVar;
                    for (cci cciVar3 = cciVar.ai; cciVar3 != cciVar2; cciVar3 = cciVar3.ai) {
                        r6.addAll(cciVar3.y);
                        cciVar2 = cciVar3;
                    }
                } else {
                    r6 = list;
                }
                Iterator it = r6.iterator();
                while (it.hasNext()) {
                    hashSet.remove(((cwx) it.next()).l());
                }
                if (!hashSet.isEmpty()) {
                    cciVar.bv("Add missing generic type declarations: " + hashSet);
                    ArrayList arrayList = new ArrayList(hashSet.size() + list.size());
                    arrayList.addAll(list);
                    Collection.b.stream(hashSet).sorted().map(new coq(2)).forEach(new efe(3, arrayList));
                    return arrayList;
                }
            }
        }
        return list;
    }

    public static List d(cci cciVar, List list) {
        List list2 = cciVar.j;
        if (list.isEmpty()) {
            return list2;
        }
        int size = list.size();
        int size2 = list2.size();
        ArrayList arrayList = new ArrayList(size2);
        int min = Math.min(size2, size);
        for (int i = 0; i < size2; i++) {
            if (i < min) {
                cwx cwxVar = (cwx) list.get(i);
                cwx cwxVar2 = (cwx) list2.get(i);
                if (cwxVar != null) {
                    if (!cwxVar.m()) {
                        cciVar.bu("Incorrect class signature, class is not an object: " + cwxVar);
                    }
                    arrayList.add(cwxVar);
                }
                cwxVar = cwxVar2;
                arrayList.add(cwxVar);
            } else {
                arrayList.add((cwx) list2.get(i));
            }
        }
        if (size2 < size) {
            cciVar.bu("Unexpected interfaces in signature: " + list.subList(size2, size));
        }
        return arrayList;
    }

    public boolean e(cwx cwxVar) {
        cwx bg = cwxVar.bg();
        if (bg != null) {
            cci w = this.f15993b.w(cwxVar.bj());
            if (w != null) {
                String str = bg.bj() != null ? ((aog) bg.bj()).f10565d : ((aog) bg).f10565d;
                if (!str.contains(".")) {
                    Iterator it = w.i.iterator();
                    while (it.hasNext()) {
                        if (((cci) it.next()).ak.i().equals(str)) {
                        }
                    }
                    return false;
                }
                dwg dwgVar = this.f15993b;
                dwgVar.getClass();
                cci ae = dwgVar.ae(ve.h(dwgVar, cwx.bf(str)));
                if (ae == null) {
                    return false;
                }
                if (!ae.ai.equals(w)) {
                    if (w.i.isEmpty()) {
                        w.i = new ArrayList(5);
                    }
                    w.i.add(ae);
                    ae.ai = w;
                    ve veVar = ae.ak;
                    veVar.getClass();
                    veVar.k(w.f12631ab, veVar.f20149d, true);
                    veVar.f20148c = w.ak;
                }
                return e(bg);
            }
        }
        return true;
    }

    @Override // g.pj
    public String f() {
        switch (this.f15992a) {
            case 1:
                return "SignatureProcessor";
            default:
                return super.f();
        }
    }

    public dns g(cwx cwxVar) {
        if (cwxVar == null || cwxVar.equals(cwx.t)) {
            return dns.NO_EXCEPTION;
        }
        if (cwxVar.h()) {
            if (this.f15993b.l.f13559e.containsKey(cwxVar.l())) {
                return (i(cwxVar, cwx.ay) || i(cwxVar, cwx.ak)) ? dns.RUNTIME : (i(cwxVar, cwx.v) || i(cwxVar, cwx.ap)) ? dns.THROWS_REQUIRED : dns.NO_EXCEPTION;
            }
        }
        return dns.UNKNOWN_TYPE;
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        switch (this.f15992a) {
            case 0:
                this.f15993b = dwgVar;
                break;
            default:
                this.f15993b = dwgVar;
                break;
        }
    }

    public boolean i(cwx cwxVar, cwx cwxVar2) {
        if (cwxVar.equals(cwxVar2)) {
            return true;
        }
        cut cutVar = this.f15993b.l;
        String l = cwxVar.l();
        return cutVar.g(l).contains(cwxVar2.l());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006d A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:15:0x0032, B:16:0x0036, B:18:0x003c, B:20:0x004c, B:24:0x005c, B:26:0x006d, B:27:0x0073, B:29:0x0079, B:31:0x0086, B:37:0x0092, B:38:0x0098, B:40:0x009e), top: B:14:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e A[Catch: Exception -> 0x0059, LOOP:2: B:38:0x0098->B:40:0x009e, LOOP_END, TRY_LEAVE, TryCatch #0 {Exception -> 0x0059, blocks: (B:15:0x0032, B:16:0x0036, B:18:0x003c, B:20:0x004c, B:24:0x005c, B:26:0x006d, B:27:0x0073, B:29:0x0079, B:31:0x0086, B:37:0x0092, B:38:0x0098, B:40:0x009e), top: B:14:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0092 A[SYNTHETIC] */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void j(hed hedVar) {
        List<fza> list;
        boolean z;
        coe coeVar;
        Iterator it;
        switch (this.f15992a) {
            case 0:
                cvo cvoVar = (cvo) hedVar.l.k(acq.ap);
                if (cvoVar == null) {
                    cvoVar = new cvo(new HashSet());
                    hedVar.m(cvoVar);
                }
                HashSet hashSet = cvoVar.f13597a;
                if (!cvoVar.f13598b) {
                    cvoVar.f13598b = true;
                    if (!hedVar.ar && (list = hedVar.ak) != null) {
                        try {
                            for (fza fzaVar : list) {
                                if (!fzaVar.l.g(csv.REMOVE)) {
                                    if (!fzaVar.l.g(csv.DONT_GENERATE)) {
                                        z = false;
                                        HashSet hashSet2 = new HashSet();
                                        coeVar = (coe) fzaVar.l.k(acq.al);
                                        if (coeVar == null) {
                                            for (aea aeaVar : coeVar.f13218a) {
                                                if (aeaVar.m()) {
                                                    break;
                                                } else {
                                                    hashSet2.add(aeaVar.l().toString());
                                                }
                                            }
                                        }
                                        it = fzaVar.ac.iterator();
                                        while (it.hasNext()) {
                                            n(hedVar, (eek) it.next(), hashSet2, z);
                                        }
                                    }
                                }
                                z = true;
                                HashSet hashSet22 = new HashSet();
                                coeVar = (coe) fzaVar.l.k(acq.al);
                                if (coeVar == null) {
                                }
                                it = fzaVar.ac.iterator();
                                while (it.hasNext()) {
                                }
                            }
                        } catch (Exception e2) {
                            hedVar.bt("Failed to analyze thrown exceptions", e2);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                cym cymVar = (cym) hedVar.l.k(ao.l);
                if (cymVar != null) {
                    List list2 = cymVar.f13766a;
                    if (!list2.isEmpty()) {
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            cwx bf = cwx.bf((String) it2.next());
                            if (g(bf) == dns.NO_EXCEPTION) {
                                arrayList.add(bf);
                            } else {
                                hashSet.add(((aog) bf).f10565d);
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    hedVar.bu("Byte code manipulation detected: skipped illegal throws declarations: " + arrayList);
                }
                if (hashSet.contains("java.lang.Exception")) {
                    Collection.b.removeIf(hashSet, new brj(6));
                    break;
                } else if (hashSet.contains("java.lang.Throwable")) {
                    Collection.b.removeIf(hashSet, new brj(7));
                    break;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it3 = hashSet.iterator();
                    while (it3.hasNext()) {
                        String str = (String) it3.next();
                        Iterator it4 = hashSet.iterator();
                        while (it4.hasNext()) {
                            String str2 = (String) it4.next();
                            if (!str.equals(str2)) {
                                if (str.equals(str2) ? true : this.f15993b.l.g(str).contains(str2)) {
                                    arrayList2.add(str);
                                }
                            }
                        }
                    }
                    Iterable.b.forEach(arrayList2, new bbm(hashSet, 1));
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x012e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v23, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v24, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r3v25, types: [java.util.HashSet, java.util.Set] */
    @Override // g.pj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean k(cci cciVar) {
        ?? r3;
        switch (this.f15992a) {
            case 1:
                epz e2 = epz.e(cciVar);
                if (e2 != null) {
                    try {
                        List l = e2.l();
                        cwx h = e2.h();
                        cwx cwxVar = cciVar.af;
                        if (Objects.equals(h.l(), cciVar.ak.f20149d.l())) {
                            cciVar.bu("Incorrect class signature: super class is equals to this class");
                        } else {
                            if (!h.m()) {
                                cciVar.bu("Incorrect class signature, class is not an object: " + h);
                                h = cwxVar;
                            }
                            cwxVar = h;
                        }
                        List list = null;
                        while (true) {
                            cwx h2 = e2.h();
                            if (h2 == null) {
                                if (list == null) {
                                    list = Collections.EMPTY_LIST;
                                }
                                List d2 = d(cciVar, list);
                                cciVar.y = c(cciVar, l, cwxVar, d2);
                                cciVar.af = cwxVar;
                                cciVar.j = d2;
                            } else {
                                if (list == null) {
                                    list = new ArrayList();
                                }
                                list.add(h2);
                            }
                        }
                    } catch (Exception e3) {
                        cciVar.bt("Failed to parse class signature: ".concat(e2.f15962b), e3);
                    }
                }
                cciVar.av();
                for (hcd hcdVar : cciVar.ag) {
                    epz e4 = epz.e(hcdVar);
                    if (e4 != null) {
                        String str = e4.f15962b;
                        cci cciVar2 = hcdVar.f19216f;
                        try {
                            cwx h3 = e4.h();
                            if (h3 != null) {
                                if (e(h3)) {
                                    this.f15993b.o.getClass();
                                    if (h3.bn()) {
                                        if (cciVar2.bk()) {
                                            r3 = new HashSet(cciVar2.y);
                                            cci cciVar3 = cciVar2;
                                            for (cci cciVar4 = cciVar2.ai; cciVar4 != cciVar3; cciVar4 = cciVar4.ai) {
                                                r3.addAll(cciVar4.y);
                                                cciVar3 = cciVar4;
                                            }
                                        } else {
                                            r3 = cciVar2.y;
                                        }
                                        emr.u(cciVar2, h3, r3);
                                    }
                                    if (l(h3, hcdVar.f19215e)) {
                                        hcdVar.f19215e = h3;
                                    } else {
                                        hcdVar.bv("Incorrect field signature: " + str);
                                    }
                                } else {
                                    hcdVar.bu("Incorrect inner types in field signature: " + str);
                                }
                            }
                        } catch (Exception e5) {
                            cciVar2.bt("Field signature parse error: " + hcdVar.f19217g.f14712e, e5);
                        }
                    }
                }
                cciVar.av();
                Iterator it = cciVar.aj.iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        return true;
                    }
                    hed hedVar = (hed) it.next();
                    epz e6 = epz.e(hedVar);
                    if (e6 != null) {
                        try {
                            List l2 = e6.l();
                            List n = e6.n(hedVar.al.f11075c.size());
                            cwx h4 = e6.h();
                            if (e(h4)) {
                                Iterator it2 = n.iterator();
                                while (it2.hasNext()) {
                                    if (!e((cwx) it2.next())) {
                                    }
                                }
                                hedVar.ae = l2;
                                emr emrVar = this.f15993b.o;
                                emrVar.getClass();
                                emr.q(hedVar, h4);
                                List g2 = evh.g(n, new fss(emrVar, 1, hedVar));
                                String str2 = e6.f15962b;
                                try {
                                } catch (Exception e7) {
                                    hedVar.bt("Type validation failed for signature: ".concat(str2), e7);
                                }
                                if (l(h4, hedVar.al.f11079g)) {
                                    List m = m(hedVar, e6, g2);
                                    if (m != null) {
                                        hedVar.as = Collections.unmodifiableList(m);
                                        hedVar.aw = h4;
                                        if (z) {
                                            hedVar.ae = Collections.EMPTY_LIST;
                                        }
                                    }
                                } else {
                                    hedVar.bu("Incorrect return type in method signature: ".concat(str2));
                                }
                                z = false;
                                if (z) {
                                }
                            }
                            hedVar.bu("Incorrect inner types in method signature: " + e6.f15962b);
                        } catch (Exception e8) {
                            hedVar.bt("Failed to parse method signature: ".concat(e6.f15962b), e8);
                        }
                    }
                }
            default:
                return super.k(cciVar);
        }
    }

    public boolean l(cwx cwxVar, cwx cwxVar2) {
        dho h = this.f15993b.u.f12545e.h(cwxVar, cwxVar2);
        if (h == dho.UNKNOWN && cwxVar.m()) {
            String l = cwxVar.l();
            Pattern pattern = cbd.f12584a;
            if (!foj.c(l) || cbd.f12586c.contains(l) || !cbd.f12585b.matcher(l).matches()) {
                return false;
            }
            if (l.indexOf(46) > 0) {
                for (String str : l.split("\\.")) {
                    if (!cbd.f(str)) {
                        break;
                    }
                }
            }
        }
        return h != dho.CONFLICT;
    }

    public List m(hed hedVar, epz epzVar, List list) {
        String str = epzVar.f15962b;
        ayu ayuVar = hedVar.al;
        List list2 = ayuVar.f11075c;
        int size = list.size();
        if (size == list2.size()) {
            for (int i = 0; i < size; i++) {
                if (!l((cwx) list.get(i), (cwx) list2.get(i))) {
                    hedVar.bu("Incorrect types in method signature: ".concat(str));
                    return null;
                }
            }
            return list;
        }
        if (hedVar.am.f12632d.ag()) {
            return null;
        }
        if (ayuVar.o() && !list2.isEmpty() && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList(list);
            arrayList.add(0, (cwx) list2.get(0));
            if (arrayList.size() == list2.size()) {
                return arrayList;
            }
        }
        hedVar.bw("Incorrect args count in method signature: ".concat(str));
        return null;
    }

    public void n(hed hedVar, eek eekVar, HashSet hashSet, boolean z) {
        List list;
        eek aa;
        acq acqVar = acq.ap;
        if (!z && eekVar.ah == hay.THROW) {
            if (!eekVar.l.g(csv.DONT_GENERATE)) {
                gsh j = eekVar.j(0);
                if (!(j instanceof gks)) {
                    if (j instanceof cly) {
                        o(hedVar, ((cly) j).h, hashSet);
                        return;
                    }
                    return;
                }
                gks gksVar = (gks) j;
                cwx j2 = gksVar.j();
                if (j2.equals(cwx.v) && (aa = gksVar.aa()) != null && aa.ah == hay.MOVE_EXCEPTION) {
                    if (aa.ai.l.g(csv.CUSTOM_DECLARE)) {
                        return;
                    }
                }
                o(hedVar, j2, hashSet);
                return;
            }
        }
        if (eekVar.ah == hay.INVOKE) {
            ayu ayuVar = ((hdc) eekVar).ad;
            String p = ayuVar.p(false, true);
            ve veVar = ayuVar.f11076d;
            cci ae = this.f15993b.ae(veVar);
            fhm fhmVar = null;
            hed hedVar2 = null;
            if (ae == null) {
                aht l = this.f15993b.l.l(veVar.f20149d);
                if (l != null) {
                    Iterator it = l.f10236a.entrySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry entry = (Map.Entry) it.next();
                        if (((String) entry.getKey()).startsWith(p)) {
                            fhmVar = (fhm) entry.getValue();
                            break;
                        }
                    }
                    if (fhmVar == null || (list = fhmVar.l) == null || list.isEmpty() || ((cvo) hedVar.l.k(acqVar)) == null) {
                        return;
                    }
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        o(hedVar, (cwx) it2.next(), hashSet);
                    }
                    return;
                }
                return;
            }
            String str = ayuVar.f11077e;
            ae.av();
            Iterator it3 = ae.aj.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    ae.av();
                    Iterator it4 = ae.aj.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            break;
                        }
                        hed hedVar3 = (hed) it4.next();
                        if (hedVar3.al.f11077e.startsWith(p) && !hedVar3.ax.be() && ae.f12631ab.u.f12545e.h(hedVar3.al.f11079g, ayuVar.f11079g).b()) {
                            hedVar2 = hedVar3;
                            break;
                        }
                    }
                } else {
                    hed hedVar4 = (hed) it3.next();
                    if (hedVar4.al.f11077e.equals(str)) {
                        hedVar2 = hedVar4;
                        break;
                    }
                }
            }
            if (hedVar2 == null) {
                return;
            }
            j(hedVar2);
            cvo cvoVar = (cvo) hedVar2.l.k(acqVar);
            if (((cvo) hedVar.l.k(acqVar)) == null || cvoVar == null) {
                return;
            }
            HashSet hashSet2 = cvoVar.f13597a;
            if (hashSet2.isEmpty()) {
                return;
            }
            Iterator it5 = hashSet2.iterator();
            while (it5.hasNext()) {
                o(hedVar, cwx.bf((String) it5.next()), hashSet);
            }
        }
    }

    public void o(hed hedVar, cwx cwxVar, HashSet hashSet) {
        if (cwxVar.h()) {
            dns g2 = g(cwxVar);
            if (g2 == dns.UNKNOWN_TYPE) {
                hedVar.bv("Thrown type has an unknown type hierarchy: " + cwxVar);
            } else if (g2 != dns.THROWS_REQUIRED) {
                return;
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                String l = cwxVar.l();
                if (l.equals(str) ? true : this.f15993b.l.g(l).contains(str)) {
                    return;
                }
            }
            ((cvo) hedVar.l.k(acq.ap)).f13597a.add(cwxVar.l());
        }
    }
}
