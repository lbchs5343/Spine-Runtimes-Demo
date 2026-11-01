package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class big implements exs {

    /* renamed from: c, reason: collision with root package name */
    public final mi f11643c;

    /* renamed from: g, reason: collision with root package name */
    public int f11647g;
    public int l;

    /* renamed from: f, reason: collision with root package name */
    public mi f11646f = null;
    public boolean i = false;
    public boolean k = false;

    /* renamed from: e, reason: collision with root package name */
    public gfv f11645e = gfv.UNKNOWN;

    /* renamed from: a, reason: collision with root package name */
    public int f11641a = 1;
    public eeh h = null;
    public boolean j = false;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11642b = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f11644d = new ArrayList();

    public big(mi miVar) {
        this.f11643c = miVar;
    }

    public void m(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.l = i;
        Iterator it = this.f11642b.iterator();
        while (it.hasNext()) {
            exs exsVar = (exs) it.next();
            exsVar.v(exsVar);
        }
    }

    public final void n(mi miVar) {
        this.f11642b.add(miVar);
        if (this.j) {
            miVar.v(miVar);
        }
    }

    public final void o() {
        this.f11644d.clear();
        this.f11642b.clear();
        this.j = false;
        this.l = 0;
        this.k = false;
        this.i = false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11643c.f19651g.an);
        sb.append(":");
        sb.append(this.f11645e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.l) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f11644d.size());
        sb.append(":d=");
        sb.append(this.f11642b.size());
        sb.append(">");
        return sb.toString();
    }

    @Override // g.exs
    public final void v(exs exsVar) {
        ArrayList arrayList = this.f11644d;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((big) it.next()).j) {
                return;
            }
        }
        this.k = true;
        mi miVar = this.f11646f;
        if (miVar != null) {
            miVar.v(this);
        }
        if (this.i) {
            this.f11643c.v(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        big bigVar = null;
        int i = 0;
        while (it2.hasNext()) {
            big bigVar2 = (big) it2.next();
            if (!(bigVar2 instanceof eeh)) {
                i++;
                bigVar = bigVar2;
            }
        }
        if (bigVar != null && i == 1 && bigVar.j) {
            eeh eehVar = this.h;
            if (eehVar != null) {
                if (!eehVar.j) {
                    return;
                } else {
                    this.f11647g = this.f11641a * eehVar.l;
                }
            }
            m(bigVar.l + this.f11647g);
        }
        mi miVar2 = this.f11646f;
        if (miVar2 != null) {
            miVar2.v(this);
        }
    }
}
