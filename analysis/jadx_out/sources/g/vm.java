package g;

import j$.util.Collection;
import j$.util.Comparator;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class vm implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator f20175a;

    /* renamed from: b, reason: collision with root package name */
    public ejb f20176b;

    /* renamed from: c, reason: collision with root package name */
    public gks f20177c;

    /* renamed from: f, reason: collision with root package name */
    public final int f20180f;

    /* renamed from: g, reason: collision with root package name */
    public final int f20181g;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f20178d = new ArrayList(2);

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f20179e = null;
    public final ffr h = new ffr(9);

    static {
        dsr.k(vm.class);
        f20175a = Comparator.b.thenComparingInt(Comparator.a.comparingInt(new dbm(13)), new dbm(14));
    }

    public vm(int i, int i2, gks gksVar) {
        this.f20180f = i;
        this.f20181g = i2;
        this.f20177c = gksVar;
        gksVar.f18326a = this;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return f20175a.compare(this, (vm) obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vm)) {
            return false;
        }
        vm vmVar = (vm) obj;
        return this.f20180f == vmVar.f20180f && this.f20181g == vmVar.f20181g;
    }

    public final int hashCode() {
        return (this.f20180f * 31) + this.f20181g;
    }

    public final boolean i() {
        gks gksVar = this.f20177c;
        return gksVar.l.g(csv.IMMUTABLE_TYPE);
    }

    public final void j(abi abiVar) {
        ArrayList arrayList = this.f20179e;
        if (arrayList != null) {
            Collection.b.removeIf(arrayList, new egl(9, abiVar));
            if (this.f20179e.isEmpty()) {
                this.f20179e = null;
            }
        }
    }

    public final void k() {
        this.f20179e = null;
        Iterator it = this.f20178d.iterator();
        while (it.hasNext()) {
            eek eekVar = ((gks) it.next()).ae;
            if (eekVar != null && eekVar.ah == hay.PHI) {
                p((abi) eekVar);
            }
        }
    }

    public final String l() {
        return "r" + this.f20180f + 'v' + this.f20181g;
    }

    public final cwx m() {
        if (i()) {
            return this.f20177c.h;
        }
        return null;
    }

    public final void n(ejb ejbVar) {
        this.f20176b = ejbVar;
        if (ejbVar.f15633f.isEmpty()) {
            ejbVar.f15633f = new ArrayList(3);
        }
        if (!ejbVar.f15633f.contains(this)) {
            ejbVar.f15633f.add(this);
        }
        cwx m = m();
        if (m != null) {
            ejbVar.f15632e = m;
        }
    }

    public final String o() {
        ejb ejbVar = this.f20176b;
        if (ejbVar == null) {
            return null;
        }
        return ejbVar.f15630c;
    }

    public final void p(abi abiVar) {
        if (this.f20179e == null) {
            this.f20179e = new ArrayList(1);
        }
        this.f20179e.add(abiVar);
    }

    public final abi q() {
        ArrayList arrayList = this.f20179e;
        if (arrayList == null || arrayList.size() != 1) {
            return null;
        }
        return (abi) this.f20179e.get(0);
    }

    public final void r(gks gksVar) {
        vm vmVar = gksVar.f18326a;
        if (vmVar != null) {
            vmVar.v(gksVar);
        }
        gksVar.f18326a = this;
        this.f20178d.add(gksVar);
    }

    public final void s(cwx cwxVar) {
        cwx m = m();
        if (m == null || m.equals(cwxVar)) {
            this.h.f16721f = cwxVar;
            ejb ejbVar = this.f20176b;
            if (ejbVar != null) {
                ejbVar.f15632e = cwxVar;
                return;
            }
            return;
        }
        throw new gck("Can't change immutable type " + m + " to " + cwxVar + " for " + this);
    }

    public final boolean t() {
        ArrayList arrayList = this.f20179e;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(l());
        if (foj.c(o())) {
            str = " '" + o() + "' ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(' ');
        sb.append((cwx) this.h.f16721f);
        return sb.toString();
    }

    public final ejb u() {
        ejb ejbVar = this.f20176b;
        if (ejbVar != null) {
            return ejbVar;
        }
        throw new gck("Code variable not set in " + this);
    }

    public final void v(gks gksVar) {
        Collection.b.removeIf(this.f20178d, new egl(8, gksVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.Collection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.HashSet] */
    public final String w(hed hedVar) {
        HashSet hashSet = new HashSet();
        ?? r1 = Collections.EMPTY_SET;
        ArrayList arrayList = this.f20178d;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
        arrayList2.add(this.f20177c);
        arrayList2.addAll(arrayList);
        if (hedVar.l.j(acq.o)) {
            r1 = new HashSet();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                gks gksVar = (gks) it.next();
                fih fihVar = (fih) gksVar.l.k(acq.s);
                if (fihVar != null) {
                    r1.add(fihVar.f16834b);
                    hashSet.add(fihVar.f16833a);
                }
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            gks gksVar2 = (gks) it2.next();
            cwx cwxVar = gksVar2.h;
            if (cwxVar.h()) {
                hashSet.add(cwxVar);
            }
            cwx j = gksVar2.j();
            if (j.h()) {
                hashSet.add(j);
            }
        }
        StringBuilder sb = new StringBuilder("r");
        sb.append(this.f20180f);
        sb.append('v');
        sb.append(this.f20181g);
        if (!r1.isEmpty()) {
            String str = (String) Collection.b.stream(r1).sorted().collect(Collectors.joining(", ", "[", "]"));
            sb.append(", names: ");
            sb.append(str);
        }
        if (!hashSet.isEmpty()) {
            String str2 = (String) Collection.b.stream(hashSet).map(new coq(1)).sorted().collect(Collectors.joining(", ", "[", "]"));
            sb.append(", types: ");
            sb.append(str2);
        }
        return sb.toString();
    }

    public final List x() {
        eek eekVar = this.f20177c.ae;
        if (eekVar == null || eekVar.ah != hay.PHI) {
            ArrayList arrayList = this.f20179e;
            return arrayList == null ? Collections.EMPTY_LIST : arrayList;
        }
        abi abiVar = (abi) eekVar;
        if (this.f20179e == null) {
            return Collections.singletonList(abiVar);
        }
        ArrayList arrayList2 = new ArrayList(this.f20179e.size() + 1);
        arrayList2.add(abiVar);
        arrayList2.addAll(this.f20179e);
        return arrayList2;
    }
}
