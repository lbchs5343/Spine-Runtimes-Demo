package g;

import java.util.Set;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class fev implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16683a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f16684b;

    public /* synthetic */ fev(int i, Set set) {
        this.f16683a = i;
        this.f16684b = set;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f16683a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f16683a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f16683a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f16683a) {
            case 0:
                return this.f16684b.contains((zz) obj);
            case 1:
                return !this.f16684b.contains((fza) obj);
            default:
                return this.f16684b.contains(((ej) obj).f15621a.f19217g);
        }
    }
}
