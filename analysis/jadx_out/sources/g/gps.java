package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class gps implements eok {

    /* renamed from: b, reason: collision with root package name */
    public int f18543b;

    /* renamed from: c, reason: collision with root package name */
    public geg f18544c;

    /* renamed from: e, reason: collision with root package name */
    public String f18545e;

    /* renamed from: f, reason: collision with root package name */
    public String f18546f;

    /* renamed from: g, reason: collision with root package name */
    public String f18547g;

    @Override // g.eok
    public final int a() {
        return this.f18543b;
    }

    @Override // g.cba
    public final String d() {
        return this.f18546f;
    }

    @Override // g.eok
    public final List getAttributes() {
        int d2 = this.f18544c.d();
        if (d2 == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(d2);
        acr.bj(cfy.b(this.f18544c), arrayList);
        gia giaVar = (gia) this.f18544c.c(zz.q);
        if (giaVar != null) {
            arrayList.add(giaVar.f18185a);
        }
        acr.bj((eue) this.f18544c.c(zz.j), arrayList);
        return arrayList;
    }

    @Override // g.cba
    public final String getName() {
        return this.f18545e;
    }

    @Override // g.cba
    public final String getType() {
        return this.f18547g;
    }

    public final String toString() {
        return this.f18546f + "->" + this.f18545e + ":" + this.f18547g;
    }
}
