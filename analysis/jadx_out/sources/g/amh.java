package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class amh {

    /* renamed from: a, reason: collision with root package name */
    public final cag f10468a;

    /* renamed from: b, reason: collision with root package name */
    public final hed f10469b;

    /* renamed from: c, reason: collision with root package name */
    public final eie f10470c;

    /* renamed from: d, reason: collision with root package name */
    public final cwm f10471d;

    static {
        dsr.k(amh.class);
    }

    public amh(hed hedVar) {
        this.f10469b = hedVar;
        this.f10470c = new eie(hedVar);
        cag cagVar = hedVar.am.f12631ab.u;
        this.f10468a = cagVar;
        this.f10471d = cagVar.f12545e;
    }

    public final boolean e() {
        hed hedVar = this.f10469b;
        if (hedVar.at.size() > 5000) {
            hedVar.bu("Multi-variable search skipped. Vars limit reached: " + hedVar.at.size() + " (expected less than 5000)");
            return false;
        }
        final int i = 0;
        Iterable.b.forEach(hedVar.at, new Consumer(this) { // from class: g.cwo

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ amh f13640b;

            {
                this.f13640b = this;
            }

            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                List list;
                List list2;
                switch (i) {
                    case 0:
                        vm vmVar = (vm) obj;
                        amh amhVar = this.f13640b;
                        hed hedVar2 = amhVar.f10469b;
                        bfz q = amhVar.f10470c.q(vmVar);
                        cwx m = vmVar.m();
                        ffr ffrVar = vmVar.h;
                        if (m != null) {
                            q.f11492f = m;
                            q.f11491e = true;
                            q.f11487a = Collections.EMPTY_LIST;
                            break;
                        } else {
                            cwx cwxVar = (cwx) ffrVar.f16721f;
                            if (cwxVar.h()) {
                                q.f11492f = cwxVar;
                                q.f11491e = true;
                                q.f11487a = Collections.EMPTY_LIST;
                                break;
                            } else {
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                LinkedHashSet<fog> linkedHashSet3 = (LinkedHashSet) ffrVar.f16719c;
                                for (fog fogVar : linkedHashSet3) {
                                    if (fogVar.f() == au.ASSIGN) {
                                        linkedHashSet.add(fogVar.getType());
                                    } else {
                                        linkedHashSet2.add(fogVar.getType());
                                    }
                                }
                                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                amhVar.h(linkedHashSet3, linkedHashSet4, linkedHashSet);
                                amhVar.h(linkedHashSet3, linkedHashSet4, linkedHashSet2);
                                Iterator it = linkedHashSet.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        for (cwx cwxVar2 : linkedHashSet2) {
                                            if (!cwxVar2.h()) {
                                                ArrayList arrayList = new ArrayList();
                                                for (bjt bjtVar : cwxVar2.g()) {
                                                    arrayList.add(cwx.bc(bjtVar));
                                                }
                                                list = arrayList;
                                            } else if (cwxVar2.m()) {
                                                aog aogVar = cwx.t;
                                                if (cwxVar2.equals(aogVar)) {
                                                    list = Collections.singletonList(aogVar);
                                                } else {
                                                    List list3 = (List) hedVar2.am.f12631ab.l.f13556b.get(cwxVar2.l());
                                                    if (list3 == null) {
                                                        list3 = Collections.EMPTY_LIST;
                                                    }
                                                    list = (List) Collection.b.stream(list3).map(new fov(11)).collect(Collectors.toList());
                                                }
                                            } else {
                                                list = Collections.EMPTY_LIST;
                                            }
                                            amhVar.h(linkedHashSet3, linkedHashSet4, list);
                                        }
                                        Iterator it2 = vmVar.f20178d.iterator();
                                        while (it2.hasNext()) {
                                            eek eekVar = ((gks) it2.next()).ae;
                                            if (eekVar != null && eekVar.ah == hay.APUT) {
                                                cwx j = eekVar.j(2).j();
                                                if (j.h()) {
                                                    amhVar.g(linkedHashSet3, linkedHashSet4, new aoe(j));
                                                }
                                            }
                                        }
                                        int size = linkedHashSet4.size();
                                        if (size == 0) {
                                            q.f11491e = true;
                                            q.f11492f = cwx.ad;
                                            q.f11487a = Collections.EMPTY_LIST;
                                            break;
                                        } else if (size == 1) {
                                            q.f11491e = true;
                                            q.f11492f = (cwx) linkedHashSet4.iterator().next();
                                            q.f11487a = Collections.EMPTY_LIST;
                                            break;
                                        } else {
                                            q.f11491e = false;
                                            q.f11492f = cwx.ad;
                                            ArrayList arrayList2 = new ArrayList(linkedHashSet4);
                                            List.b.sort(arrayList2, amhVar.f10471d.f13638d);
                                            q.f11487a = Collections.unmodifiableList(arrayList2);
                                            break;
                                        }
                                    } else {
                                        cwx cwxVar3 = (cwx) it.next();
                                        if (cwxVar3.h()) {
                                            list2 = cwxVar3.m() ? (java.util.List) Collection.b.stream(hedVar2.am.f12631ab.l.g(cwxVar3.l())).map(new fov(11)).collect(Collectors.toList()) : Collections.EMPTY_LIST;
                                        } else {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (bjt bjtVar2 : cwxVar3.g()) {
                                                arrayList3.add(cwx.bc(bjtVar2));
                                            }
                                            list2 = arrayList3;
                                        }
                                        amhVar.h(linkedHashSet3, linkedHashSet4, list2);
                                    }
                                }
                            }
                        }
                        break;
                    case 1:
                        vm vmVar2 = (vm) obj;
                        amh amhVar2 = this.f13640b;
                        bfz q2 = amhVar2.f10470c.q(vmVar2);
                        if (q2.f11491e) {
                            q2.f11490d = Collections.EMPTY_LIST;
                            break;
                        } else {
                            q2.f11490d = new ArrayList();
                            bfm i2 = amhVar2.i(vmVar2.f20177c);
                            if (i2 != null) {
                                q2.f11490d.add(i2);
                            }
                            Iterator it3 = vmVar2.f20178d.iterator();
                            while (it3.hasNext()) {
                                bfm i3 = amhVar2.i((gks) it3.next());
                                if (i3 != null) {
                                    q2.f11490d.add(i3);
                                }
                            }
                            break;
                        }
                    default:
                        bfz bfzVar = (bfz) obj;
                        Stream flatMap = Collection.b.stream(bfzVar.f11490d).flatMap(new coq(10));
                        amh amhVar3 = this.f13640b;
                        if (flatMap.allMatch(new egl(12, amhVar3))) {
                            if (!bfzVar.f11491e) {
                                bfzVar.f11488b = 0;
                                bfzVar.f11492f = (cwx) bfzVar.f11487a.get(0);
                            }
                            while (!amhVar3.f(bfzVar)) {
                                if (bfzVar.g()) {
                                    break;
                                }
                            }
                            bfzVar.f11491e = true;
                            break;
                        }
                        break;
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                int i2 = i;
                return j$.util.function.j.$default$andThen(this, consumer);
            }
        });
        final int i2 = 1;
        Iterable.b.forEach(hedVar.at, new Consumer(this) { // from class: g.cwo

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ amh f13640b;

            {
                this.f13640b = this;
            }

            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                java.util.List list;
                java.util.List list2;
                switch (i2) {
                    case 0:
                        vm vmVar = (vm) obj;
                        amh amhVar = this.f13640b;
                        hed hedVar2 = amhVar.f10469b;
                        bfz q = amhVar.f10470c.q(vmVar);
                        cwx m = vmVar.m();
                        ffr ffrVar = vmVar.h;
                        if (m != null) {
                            q.f11492f = m;
                            q.f11491e = true;
                            q.f11487a = Collections.EMPTY_LIST;
                            break;
                        } else {
                            cwx cwxVar = (cwx) ffrVar.f16721f;
                            if (cwxVar.h()) {
                                q.f11492f = cwxVar;
                                q.f11491e = true;
                                q.f11487a = Collections.EMPTY_LIST;
                                break;
                            } else {
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                LinkedHashSet<fog> linkedHashSet3 = (LinkedHashSet) ffrVar.f16719c;
                                for (fog fogVar : linkedHashSet3) {
                                    if (fogVar.f() == au.ASSIGN) {
                                        linkedHashSet.add(fogVar.getType());
                                    } else {
                                        linkedHashSet2.add(fogVar.getType());
                                    }
                                }
                                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                amhVar.h(linkedHashSet3, linkedHashSet4, linkedHashSet);
                                amhVar.h(linkedHashSet3, linkedHashSet4, linkedHashSet2);
                                Iterator it = linkedHashSet.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        for (cwx cwxVar2 : linkedHashSet2) {
                                            if (!cwxVar2.h()) {
                                                ArrayList arrayList = new ArrayList();
                                                for (bjt bjtVar : cwxVar2.g()) {
                                                    arrayList.add(cwx.bc(bjtVar));
                                                }
                                                list = arrayList;
                                            } else if (cwxVar2.m()) {
                                                aog aogVar = cwx.t;
                                                if (cwxVar2.equals(aogVar)) {
                                                    list = Collections.singletonList(aogVar);
                                                } else {
                                                    java.util.List list3 = (java.util.List) hedVar2.am.f12631ab.l.f13556b.get(cwxVar2.l());
                                                    if (list3 == null) {
                                                        list3 = Collections.EMPTY_LIST;
                                                    }
                                                    list = (java.util.List) Collection.b.stream(list3).map(new fov(11)).collect(Collectors.toList());
                                                }
                                            } else {
                                                list = Collections.EMPTY_LIST;
                                            }
                                            amhVar.h(linkedHashSet3, linkedHashSet4, list);
                                        }
                                        Iterator it2 = vmVar.f20178d.iterator();
                                        while (it2.hasNext()) {
                                            eek eekVar = ((gks) it2.next()).ae;
                                            if (eekVar != null && eekVar.ah == hay.APUT) {
                                                cwx j = eekVar.j(2).j();
                                                if (j.h()) {
                                                    amhVar.g(linkedHashSet3, linkedHashSet4, new aoe(j));
                                                }
                                            }
                                        }
                                        int size = linkedHashSet4.size();
                                        if (size == 0) {
                                            q.f11491e = true;
                                            q.f11492f = cwx.ad;
                                            q.f11487a = Collections.EMPTY_LIST;
                                            break;
                                        } else if (size == 1) {
                                            q.f11491e = true;
                                            q.f11492f = (cwx) linkedHashSet4.iterator().next();
                                            q.f11487a = Collections.EMPTY_LIST;
                                            break;
                                        } else {
                                            q.f11491e = false;
                                            q.f11492f = cwx.ad;
                                            ArrayList arrayList2 = new ArrayList(linkedHashSet4);
                                            List.b.sort(arrayList2, amhVar.f10471d.f13638d);
                                            q.f11487a = Collections.unmodifiableList(arrayList2);
                                            break;
                                        }
                                    } else {
                                        cwx cwxVar3 = (cwx) it.next();
                                        if (cwxVar3.h()) {
                                            list2 = cwxVar3.m() ? (java.util.List) Collection.b.stream(hedVar2.am.f12631ab.l.g(cwxVar3.l())).map(new fov(11)).collect(Collectors.toList()) : Collections.EMPTY_LIST;
                                        } else {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (bjt bjtVar2 : cwxVar3.g()) {
                                                arrayList3.add(cwx.bc(bjtVar2));
                                            }
                                            list2 = arrayList3;
                                        }
                                        amhVar.h(linkedHashSet3, linkedHashSet4, list2);
                                    }
                                }
                            }
                        }
                        break;
                    case 1:
                        vm vmVar2 = (vm) obj;
                        amh amhVar2 = this.f13640b;
                        bfz q2 = amhVar2.f10470c.q(vmVar2);
                        if (q2.f11491e) {
                            q2.f11490d = Collections.EMPTY_LIST;
                            break;
                        } else {
                            q2.f11490d = new ArrayList();
                            bfm i22 = amhVar2.i(vmVar2.f20177c);
                            if (i22 != null) {
                                q2.f11490d.add(i22);
                            }
                            Iterator it3 = vmVar2.f20178d.iterator();
                            while (it3.hasNext()) {
                                bfm i3 = amhVar2.i((gks) it3.next());
                                if (i3 != null) {
                                    q2.f11490d.add(i3);
                                }
                            }
                            break;
                        }
                    default:
                        bfz bfzVar = (bfz) obj;
                        Stream flatMap = Collection.b.stream(bfzVar.f11490d).flatMap(new coq(10));
                        amh amhVar3 = this.f13640b;
                        if (flatMap.allMatch(new egl(12, amhVar3))) {
                            if (!bfzVar.f11491e) {
                                bfzVar.f11488b = 0;
                                bfzVar.f11492f = (cwx) bfzVar.f11487a.get(0);
                            }
                            while (!amhVar3.f(bfzVar)) {
                                if (bfzVar.g()) {
                                    break;
                                }
                            }
                            bfzVar.f11491e = true;
                            break;
                        }
                        break;
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i2;
                return j$.util.function.j.$default$andThen(this, consumer);
            }
        });
        eie eieVar = this.f10470c;
        LinkedHashMap linkedHashMap = (LinkedHashMap) eieVar.f15585g;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) eieVar.f15585g;
        final int i3 = 2;
        Iterable.b.forEach((java.util.List) Collection.b.stream(linkedHashMap.values()).filter(new brj(26)).collect(Collectors.toList()), new Consumer(this) { // from class: g.cwo

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ amh f13640b;

            {
                this.f13640b = this;
            }

            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                java.util.List list;
                java.util.List list2;
                switch (i3) {
                    case 0:
                        vm vmVar = (vm) obj;
                        amh amhVar = this.f13640b;
                        hed hedVar2 = amhVar.f10469b;
                        bfz q = amhVar.f10470c.q(vmVar);
                        cwx m = vmVar.m();
                        ffr ffrVar = vmVar.h;
                        if (m != null) {
                            q.f11492f = m;
                            q.f11491e = true;
                            q.f11487a = Collections.EMPTY_LIST;
                            break;
                        } else {
                            cwx cwxVar = (cwx) ffrVar.f16721f;
                            if (cwxVar.h()) {
                                q.f11492f = cwxVar;
                                q.f11491e = true;
                                q.f11487a = Collections.EMPTY_LIST;
                                break;
                            } else {
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                LinkedHashSet<cwx> linkedHashSet2 = new LinkedHashSet();
                                LinkedHashSet<fog> linkedHashSet3 = (LinkedHashSet) ffrVar.f16719c;
                                for (fog fogVar : linkedHashSet3) {
                                    if (fogVar.f() == au.ASSIGN) {
                                        linkedHashSet.add(fogVar.getType());
                                    } else {
                                        linkedHashSet2.add(fogVar.getType());
                                    }
                                }
                                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                amhVar.h(linkedHashSet3, linkedHashSet4, linkedHashSet);
                                amhVar.h(linkedHashSet3, linkedHashSet4, linkedHashSet2);
                                Iterator it = linkedHashSet.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        for (cwx cwxVar2 : linkedHashSet2) {
                                            if (!cwxVar2.h()) {
                                                ArrayList arrayList = new ArrayList();
                                                for (bjt bjtVar : cwxVar2.g()) {
                                                    arrayList.add(cwx.bc(bjtVar));
                                                }
                                                list = arrayList;
                                            } else if (cwxVar2.m()) {
                                                aog aogVar = cwx.t;
                                                if (cwxVar2.equals(aogVar)) {
                                                    list = Collections.singletonList(aogVar);
                                                } else {
                                                    java.util.List list3 = (java.util.List) hedVar2.am.f12631ab.l.f13556b.get(cwxVar2.l());
                                                    if (list3 == null) {
                                                        list3 = Collections.EMPTY_LIST;
                                                    }
                                                    list = (java.util.List) Collection.b.stream(list3).map(new fov(11)).collect(Collectors.toList());
                                                }
                                            } else {
                                                list = Collections.EMPTY_LIST;
                                            }
                                            amhVar.h(linkedHashSet3, linkedHashSet4, list);
                                        }
                                        Iterator it2 = vmVar.f20178d.iterator();
                                        while (it2.hasNext()) {
                                            eek eekVar = ((gks) it2.next()).ae;
                                            if (eekVar != null && eekVar.ah == hay.APUT) {
                                                cwx j = eekVar.j(2).j();
                                                if (j.h()) {
                                                    amhVar.g(linkedHashSet3, linkedHashSet4, new aoe(j));
                                                }
                                            }
                                        }
                                        int size = linkedHashSet4.size();
                                        if (size == 0) {
                                            q.f11491e = true;
                                            q.f11492f = cwx.ad;
                                            q.f11487a = Collections.EMPTY_LIST;
                                            break;
                                        } else if (size == 1) {
                                            q.f11491e = true;
                                            q.f11492f = (cwx) linkedHashSet4.iterator().next();
                                            q.f11487a = Collections.EMPTY_LIST;
                                            break;
                                        } else {
                                            q.f11491e = false;
                                            q.f11492f = cwx.ad;
                                            ArrayList arrayList2 = new ArrayList(linkedHashSet4);
                                            List.b.sort(arrayList2, amhVar.f10471d.f13638d);
                                            q.f11487a = Collections.unmodifiableList(arrayList2);
                                            break;
                                        }
                                    } else {
                                        cwx cwxVar3 = (cwx) it.next();
                                        if (cwxVar3.h()) {
                                            list2 = cwxVar3.m() ? (java.util.List) Collection.b.stream(hedVar2.am.f12631ab.l.g(cwxVar3.l())).map(new fov(11)).collect(Collectors.toList()) : Collections.EMPTY_LIST;
                                        } else {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (bjt bjtVar2 : cwxVar3.g()) {
                                                arrayList3.add(cwx.bc(bjtVar2));
                                            }
                                            list2 = arrayList3;
                                        }
                                        amhVar.h(linkedHashSet3, linkedHashSet4, list2);
                                    }
                                }
                            }
                        }
                        break;
                    case 1:
                        vm vmVar2 = (vm) obj;
                        amh amhVar2 = this.f13640b;
                        bfz q2 = amhVar2.f10470c.q(vmVar2);
                        if (q2.f11491e) {
                            q2.f11490d = Collections.EMPTY_LIST;
                            break;
                        } else {
                            q2.f11490d = new ArrayList();
                            bfm i22 = amhVar2.i(vmVar2.f20177c);
                            if (i22 != null) {
                                q2.f11490d.add(i22);
                            }
                            Iterator it3 = vmVar2.f20178d.iterator();
                            while (it3.hasNext()) {
                                bfm i32 = amhVar2.i((gks) it3.next());
                                if (i32 != null) {
                                    q2.f11490d.add(i32);
                                }
                            }
                            break;
                        }
                    default:
                        bfz bfzVar = (bfz) obj;
                        Stream flatMap = Collection.b.stream(bfzVar.f11490d).flatMap(new coq(10));
                        amh amhVar3 = this.f13640b;
                        if (flatMap.allMatch(new egl(12, amhVar3))) {
                            if (!bfzVar.f11491e) {
                                bfzVar.f11488b = 0;
                                bfzVar.f11492f = (cwx) bfzVar.f11487a.get(0);
                            }
                            while (!amhVar3.f(bfzVar)) {
                                if (bfzVar.g()) {
                                    break;
                                }
                            }
                            bfzVar.f11491e = true;
                            break;
                        }
                        break;
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i3;
                return j$.util.function.j.$default$andThen(this, consumer);
            }
        });
        java.util.List<bfz> list = (java.util.List) Collection.b.stream(linkedHashMap2.values()).filter(new brj(26)).collect(Collectors.toList());
        boolean z = true;
        if (!list.isEmpty()) {
            int size = list.size();
            for (bfz bfzVar : list) {
                if (!bfzVar.f11491e) {
                    bfzVar.f11488b = 0;
                    bfzVar.f11492f = (cwx) bfzVar.f11487a.get(0);
                }
            }
            int i4 = 0;
            loop1: do {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (!f((bfz) it.next())) {
                        if (((bfz) list.get(0)).g()) {
                            if (1 >= size) {
                                break;
                            }
                            bfz bfzVar2 = (bfz) list.get(1);
                            int i5 = 1;
                            while (bfzVar2.g()) {
                                i5++;
                                if (i5 >= size) {
                                    break loop1;
                                }
                                bfzVar2 = (bfz) list.get(i5);
                            }
                        }
                        i4++;
                    }
                }
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((bfz) it2.next()).f11491e = true;
                }
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    if (!f((bfz) it3.next())) {
                        return false;
                    }
                }
            } while (i4 <= 1000000);
            return false;
        }
        java.util.List<bfz> list2 = (java.util.List) Collection.b.stream(linkedHashMap2.values()).filter(new brj(27)).collect(Collectors.toList());
        ArrayList arrayList = new ArrayList();
        for (bfz bfzVar3 : list2) {
            vm vmVar = bfzVar3.f11489c;
            cwx cwxVar = bfzVar3.f11492f;
            if (cwxVar.h() && !cwxVar.equals((cwx) vmVar.h.f16721f)) {
                vmVar.s(cwxVar);
                arrayList.add(bfzVar3);
            }
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            bfz bfzVar4 = (bfz) it4.next();
            vm vmVar2 = bfzVar4.f11489c;
            cwx cwxVar2 = bfzVar4.f11492f;
            cag cagVar = this.f10468a;
            cagVar.getClass();
            if (cagVar.p(hedVar, vmVar2, cwxVar2, zf.f20388a) == dgr.REJECT) {
                hedVar.bw("Multi-variable search result rejected for " + bfzVar4);
                z = false;
            }
        }
        return z;
    }

    public final boolean f(bfz bfzVar) {
        if (bfzVar.f11491e) {
            return true;
        }
        Iterator it = bfzVar.f11490d.iterator();
        while (it.hasNext()) {
            if (!((bfm) it.next()).c(this.f10470c)) {
                return false;
            }
        }
        return true;
    }

    public final boolean g(Set set, LinkedHashSet linkedHashSet, cwx cwxVar) {
        if (!cwxVar.h()) {
            return false;
        }
        cag cagVar = this.f10468a;
        cagVar.getClass();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            fog fogVar = (fog) it.next();
            cwx type = fogVar.getType();
            if (type != null && !cagVar.l(cwxVar, fogVar, type)) {
                return false;
            }
        }
        linkedHashSet.add(cwxVar);
        return linkedHashSet.size() > 10;
    }

    public final void h(Set set, LinkedHashSet linkedHashSet, java.util.Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext() && !g(set, linkedHashSet, (cwx) it.next())) {
        }
    }

    public final bfm i(gks gksVar) {
        eek eekVar = gksVar.ae;
        if (eekVar == null || gksVar.i()) {
            return null;
        }
        int i = cid.f12921a[eekVar.ah.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return new etx(eekVar, gksVar);
        }
        gsh j = eekVar.j(0);
        j.getClass();
        if (j instanceof gks) {
            return new fmc(this, eekVar, gksVar);
        }
        return null;
    }
}
