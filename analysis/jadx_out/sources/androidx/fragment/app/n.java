package androidx.fragment.app;

import g.ac;
import g.gdn;
import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: e, reason: collision with root package name */
    public final a f201e;

    /* renamed from: f, reason: collision with root package name */
    public final ac f202f;

    public n(a aVar, ac acVar) {
        this.f201e = aVar;
        this.f202f = acVar;
    }

    public final void g() {
        a aVar = this.f201e;
        HashSet hashSet = aVar.f172c;
        if (hashSet.remove(this.f202f) && hashSet.isEmpty()) {
            aVar.k();
        }
    }

    public final boolean h() {
        a aVar = this.f201e;
        gdn c2 = gdn.c(aVar.f176g.mView);
        gdn gdnVar = aVar.f173d;
        if (c2 == gdnVar) {
            return true;
        }
        gdn gdnVar2 = gdn.VISIBLE;
        return (c2 == gdnVar2 || gdnVar == gdnVar2) ? false : true;
    }
}
