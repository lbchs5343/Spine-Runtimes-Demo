package g;

/* loaded from: classes.dex */
public final class awl implements eue {

    /* renamed from: a, reason: collision with root package name */
    public String f10974a;

    public awl(hed hedVar) {
        awl awlVar = (awl) hedVar.l.k(acq.ad);
        if (awlVar != null) {
            this.f10974a = awlVar.f10974a;
        } else {
            this.f10974a = "";
        }
    }

    public final void b(String str) {
        if (this.f10974a.isEmpty()) {
            this.f10974a = awf.ad(new StringBuilder(), this.f10974a, str);
        } else {
            this.f10974a = awf.f(this.f10974a, " and ", str, new StringBuilder());
        }
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.ad;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        return "RENAME_REASON:" + this.f10974a;
    }
}
