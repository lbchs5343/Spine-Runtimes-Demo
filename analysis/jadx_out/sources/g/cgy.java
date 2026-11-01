package g;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class cgy {

    /* renamed from: a, reason: collision with root package name */
    public final dda f12858a;

    /* renamed from: b, reason: collision with root package name */
    public final evf f12859b;

    /* renamed from: c, reason: collision with root package name */
    public final fdy f12860c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f12861d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f12862e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicReference f12863f;

    /* renamed from: g, reason: collision with root package name */
    public final evf f12864g;
    public final dda h;

    public cgy(hed hedVar, gpu gpuVar, fza fzaVar, fza fzaVar2, List list, List list2) {
        boolean z = !fzaVar.ac.isEmpty();
        boolean z2 = !fzaVar2.ac.isEmpty();
        cxc cxcVar = new cxc(gpuVar, z);
        cxc cxcVar2 = new cxc(gpuVar, z2);
        gvg gvgVar = new gvg(fzaVar, 0, 0);
        gvg gvgVar2 = new gvg(fzaVar2, 0, 0);
        int i = 1;
        aqf aqfVar = new aqf(this, cxcVar, gvgVar, i);
        aqf aqfVar2 = new aqf(this, cxcVar2, gvgVar2, i);
        this.f12864g = new evf(9, new HashSet(list));
        this.f12859b = new evf(9, new HashSet(list2));
        this.f12860c = new fdy(hedVar);
        this.f12861d = new AtomicReference(aqfVar);
        this.f12863f = new AtomicReference(aqfVar2);
        this.f12862e = new HashSet();
        this.h = new dda(0);
        this.f12858a = new dda(0);
    }

    public cgy(Set set, dda ddaVar, dda ddaVar2, fdy fdyVar, evf evfVar, evf evfVar2) {
        this.f12861d = new AtomicReference();
        this.f12863f = new AtomicReference();
        this.f12862e = set;
        this.f12864g = evfVar;
        this.f12859b = evfVar2;
        this.f12860c = fdyVar;
        this.h = ddaVar;
        this.f12858a = ddaVar2;
    }

    public static HashSet i(dda ddaVar) {
        HashSet hashSet = new HashSet();
        for (ap apVar : ddaVar.f14000b.values()) {
            if (apVar.f10601b.isEmpty()) {
                hashSet.add(apVar.f10600a);
            }
        }
        return hashSet;
    }

    public static cgy j(cgy cgyVar, afo afoVar, afo afoVar2) {
        cgy cgyVar2 = new cgy(cgyVar.f12862e, cgyVar.h, cgyVar.f12858a, cgyVar.f12860c, cgyVar.f12864g, cgyVar.f12859b);
        fkb be = afoVar.be(cgyVar2);
        cgyVar2.f12863f.set(afoVar2.be(cgyVar2));
        cgyVar2.f12861d.set(be);
        return cgyVar2;
    }

    public final void k(gvg gvgVar, int i) {
        fza fzaVar = (fza) gvgVar.f18811c;
        dda ddaVar = ((HashSet) this.f12864g.f16224f).contains(fzaVar) ? this.h : this.f12858a;
        ddaVar.getClass();
        HashMap hashMap = ddaVar.f14000b;
        if (hashMap.containsKey(fzaVar)) {
            ap.d((ap) hashMap.get(fzaVar), gvgVar, i);
            return;
        }
        ap apVar = new ap(fzaVar);
        ap.d(apVar, gvgVar, i);
    }

    public final fkb l() {
        return (fkb) this.f12861d.get();
    }

    public final evf m(fkb fkbVar) {
        if (this.f12861d.get() == fkbVar) {
            return this.f12864g;
        }
        if (this.f12863f.get() == fkbVar) {
            return this.f12859b;
        }
        throw new gck("Orphaned TraverserState node");
    }

    public final cgy n() {
        cgy cgyVar = new cgy(new HashSet(this.f12862e), dda.c(this.h), dda.c(this.f12858a), this.f12860c, this.f12864g, this.f12859b);
        fkb f2 = l().f(cgyVar);
        cgyVar.f12863f.set(p().f(cgyVar));
        cgyVar.f12861d.set(f2);
        return cgyVar;
    }

    public final void o(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cgy cgyVar = (cgy) it.next();
            this.f12862e.addAll(cgyVar.f12862e);
            dda.d(this.h, cgyVar.h);
            dda.d(this.f12858a, cgyVar.f12858a);
        }
    }

    public final fkb p() {
        return (fkb) this.f12863f.get();
    }
}
