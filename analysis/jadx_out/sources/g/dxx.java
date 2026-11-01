package g;

import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class dxx implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15049a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fza f15050b;

    public /* synthetic */ dxx(diu diuVar, fza fzaVar) {
        this.f15049a = 4;
        this.f15050b = fzaVar;
    }

    public /* synthetic */ dxx(fza fzaVar, int i) {
        this.f15049a = i;
        this.f15050b = fzaVar;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f15049a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f15049a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f15049a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f15049a) {
            case 0:
                return ffb.ac(((aea) obj).i, this.f15050b);
            case 1:
                return ((mw) obj).f19677a == this.f15050b;
            case 2:
                return ((mw) obj).f19679f == this.f15050b;
            case 3:
                return ((exw) obj).f16343a == this.f15050b;
            case 4:
                adk adkVar = (adk) obj;
                if (adkVar.f10047a.contains(eln.f15770g)) {
                    if (diu.b(this.f15050b, adkVar.f10048b)) {
                        return true;
                    }
                }
                return false;
            case 5:
                return ((fza) obj) == this.f15050b;
            default:
                return ((fza) obj) == this.f15050b;
        }
    }
}
