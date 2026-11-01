package g;

/* loaded from: classes.dex */
public final class fpn {

    /* renamed from: a, reason: collision with root package name */
    public fqv f17202a;

    /* renamed from: b, reason: collision with root package name */
    public ajm f17203b;

    public final void c(iz izVar, dtn dtnVar) {
        fqv a2 = dtnVar.a();
        fqv fqvVar = this.f17202a;
        bff.p(fqvVar, "state1");
        if (a2 != null && a2.compareTo(fqvVar) < 0) {
            fqvVar = a2;
        }
        this.f17202a = fqvVar;
        this.f17203b.b(izVar, dtnVar);
        this.f17202a = a2;
    }
}
