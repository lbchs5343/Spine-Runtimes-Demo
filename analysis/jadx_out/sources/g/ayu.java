package g;

import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ayu implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public String f11073a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11074b;

    /* renamed from: c, reason: collision with root package name */
    public final List f11075c;

    /* renamed from: d, reason: collision with root package name */
    public final ve f11076d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11077e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11078f;

    /* renamed from: g, reason: collision with root package name */
    public final cwx f11079g;
    public final String h;

    public ayu(ve veVar, String str, List list, cwx cwxVar) {
        this.f11078f = str;
        this.f11073a = str;
        this.f11076d = veVar;
        this.f11075c = list;
        this.f11079g = cwxVar;
        String i = i(str, list, cwxVar);
        this.f11077e = i;
        this.h = veVar.l() + '.' + i;
        this.f11074b = (veVar.f20149d.az * 31) + i.hashCode();
    }

    public static String i(String str, List list, cwx cwxVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('(');
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sb.append(pp.c((cwx) it.next()));
        }
        sb.append(')');
        if (cwxVar != null) {
            sb.append(pp.c(cwxVar));
        }
        return sb.toString();
    }

    public static ayu j(dwg dwgVar, ful fulVar) {
        ayu ayuVar;
        fzn fznVar = dwgVar.h;
        int j = fulVar.j();
        if (j != 0) {
            synchronized (((HashMap) fznVar.f17731f)) {
                ayuVar = (ayu) ((HashMap) fznVar.f17731f).get(Integer.valueOf(j));
            }
            if (ayuVar != null) {
                return ayuVar;
            }
        }
        fulVar.m();
        ve h = ve.h(dwgVar, cwx.ba(fulVar.l()));
        cwx ba = cwx.ba(fulVar.b());
        ayu o = fznVar.o(new ayu(h, fulVar.getName(), evh.g(fulVar.a(), new gpn(13)), ba));
        if (j != 0) {
            fznVar.y(j, o);
        }
        return o;
    }

    public static ayu k(dwg dwgVar, ve veVar, String str, List list, cwx cwxVar) {
        return dwgVar.h.o(new ayu(veVar, str, list, cwxVar));
    }

    public static ayu l(dwg dwgVar, ve veVar, String str, fw fwVar) {
        return k(dwgVar, veVar, str, evh.g(fwVar.a(), new gpn(13)), cwx.ba(fwVar.b()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ayu)) {
            return false;
        }
        ayu ayuVar = (ayu) obj;
        return this.f11077e.equals(ayuVar.f11077e) && this.f11076d.equals(ayuVar.f11076d);
    }

    public final int hashCode() {
        return this.f11074b;
    }

    public final boolean m() {
        return this.f11078f.equals("<clinit>");
    }

    @Override // java.lang.Comparable
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ayu ayuVar) {
        int compareTo = this.f11076d.compareTo(ayuVar.f11076d);
        return compareTo != 0 ? compareTo : this.f11077e.compareTo(ayuVar.f11077e);
    }

    public final boolean o() {
        return this.f11078f.equals("<init>");
    }

    public final String p(boolean z, boolean z2) {
        return i(z ? this.f11073a : this.f11078f, this.f11075c, z2 ? this.f11079g : null);
    }

    public final boolean q(ayu ayuVar) {
        return this.f11075c.size() == ayuVar.f11075c.size() && this.f11078f.equals(ayuVar.f11078f) && !Objects.equals(this.f11077e, ayuVar.f11077e);
    }

    public final String toString() {
        return this.f11076d.f20147b + '.' + this.f11078f + '(' + evh.h(", ", this.f11075c) + "):" + this.f11079g;
    }
}
