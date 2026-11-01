package g;

import j$.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class eio implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15601a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ guv f15602b;

    public /* synthetic */ eio(guv guvVar, int i) {
        this.f15601a = i;
        this.f15602b = guvVar;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f15601a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f15601a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f15601a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        fza fzaVar = (fza) obj;
        switch (this.f15601a) {
            case 0:
                coe coeVar = (coe) fzaVar.l.k(acq.al);
                return coeVar != null && Objects.equals(coeVar.f13218a, this.f15602b.i);
            default:
                return this.f15602b.f18788b.contains(fzaVar);
        }
    }
}
