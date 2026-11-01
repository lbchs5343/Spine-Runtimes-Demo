package j$.util.function;

import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20803a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f20804b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Predicate f20805c;

    public /* synthetic */ f(Predicate predicate, Predicate predicate2, int i) {
        this.f20803a = i;
        this.f20804b = predicate;
        this.f20805c = predicate2;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f20803a) {
        }
        return m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f20803a) {
        }
        return m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f20803a) {
        }
        return m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f20803a) {
            case 0:
                return this.f20804b.test(obj) && this.f20805c.test(obj);
            default:
                return this.f20804b.test(obj) || this.f20805c.test(obj);
        }
    }
}
