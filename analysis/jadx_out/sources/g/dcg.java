package g;

import java.util.HashSet;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class dcg implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13952a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashSet f13953b;

    public /* synthetic */ dcg(HashSet hashSet, int i) {
        this.f13952a = i;
        this.f13953b = hashSet;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f13952a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f13952a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f13952a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        HashSet hashSet;
        Object obj2;
        switch (this.f13952a) {
            case 0:
                hashSet = this.f13953b;
                obj2 = (eek) obj;
                break;
            case 1:
                pj pjVar = (pj) obj;
                if (!this.f13953b.contains(pjVar.f())) {
                    return false;
                }
                dwg.f14929a.v(pjVar.f(), "Disable pass: {}");
                return true;
            default:
                hashSet = this.f13953b;
                obj2 = (fza) obj;
                break;
        }
        return hashSet.contains(obj2);
    }
}
