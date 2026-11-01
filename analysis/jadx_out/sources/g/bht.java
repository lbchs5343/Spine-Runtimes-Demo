package g;

/* loaded from: classes.dex */
public final class bht implements era {

    /* renamed from: a, reason: collision with root package name */
    public final and f11602a;

    public bht(and andVar) {
        this.f11602a = andVar;
    }

    @Override // g.era
    public final void b(Throwable th) {
        this.f11602a.invoke(th);
    }

    public final String toString() {
        return "InternalCompletionHandler.UserSupplied[" + this.f11602a.getClass().getSimpleName() + '@' + fso.o(this) + ']';
    }
}
