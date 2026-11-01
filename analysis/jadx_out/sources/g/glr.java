package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class glr implements ghu {

    /* renamed from: d, reason: collision with root package name */
    public geg f18365d;

    /* renamed from: e, reason: collision with root package name */
    public final cmv f18366e;

    /* renamed from: f, reason: collision with root package name */
    public final efh f18367f;

    /* renamed from: g, reason: collision with root package name */
    public int f18368g;

    public glr(cmv cmvVar, efh efhVar) {
        this.f18366e = cmvVar;
        this.f18367f = efhVar;
    }

    @Override // g.ghu
    public final int a() {
        return this.f18368g;
    }

    @Override // g.ghu
    public final atc b() {
        anl anlVar = (anl) this.f18365d.c(zz.f20419a);
        if (anlVar == null) {
            return null;
        }
        return new fn(this.f18366e, anlVar.f10522a);
    }

    @Override // g.ghu
    public final ful c() {
        return this.f18367f;
    }

    @Override // g.ghu
    public final List getAttributes() {
        gca b2;
        int d2 = this.f18365d.d();
        if (d2 == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(d2);
        acr.bj(cfy.b(this.f18365d), arrayList);
        geg gegVar = this.f18365d;
        vk vkVar = (vk) gegVar.c(zz.f20421c);
        vk vkVar2 = (vk) gegVar.c(zz.k);
        if (vkVar == null && vkVar2 == null) {
            b2 = null;
        } else if (vkVar2 == null) {
            b2 = gca.b(vkVar.f20167a);
        } else {
            ArrayList arrayList2 = vkVar2.f20167a;
            if (vkVar == null) {
                b2 = gca.b(arrayList2);
            } else {
                ArrayList arrayList3 = vkVar.f20167a;
                int size = arrayList3.size();
                int size2 = arrayList2.size();
                int max = Math.max(size, size2);
                ArrayList arrayList4 = new ArrayList(max);
                int i = 0;
                while (i < max) {
                    arrayList4.add(acr.bi(i < size ? (List) arrayList3.get(i) : Collections.EMPTY_LIST, i < size2 ? (List) arrayList2.get(i) : Collections.EMPTY_LIST));
                    i++;
                }
                b2 = gca.b(arrayList4);
            }
        }
        acr.bj(b2, arrayList);
        acr.bj((gpg) this.f18365d.c(zz.o), arrayList);
        acr.bj((eue) this.f18365d.c(zz.j), arrayList);
        acr.bj((eue) this.f18365d.c(zz.p), arrayList);
        acr.bj((eue) this.f18365d.c(zz.h), arrayList);
        return arrayList;
    }

    public final String toString() {
        return this.f18367f.toString();
    }
}
