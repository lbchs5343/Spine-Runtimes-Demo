package g;

/* loaded from: classes.dex */
public final class mw implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final fza f19677a;

    /* renamed from: b, reason: collision with root package name */
    public final hbg f19678b;

    /* renamed from: f, reason: collision with root package name */
    public final fza f19679f;

    public mw(hbg hbgVar, fza fzaVar, fza fzaVar2) {
        this.f19678b = hbgVar;
        this.f19679f = fzaVar;
        this.f19677a = fzaVar2;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.q;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        return this.f19678b + ": " + this.f19679f + " -> " + this.f19677a;
    }
}
