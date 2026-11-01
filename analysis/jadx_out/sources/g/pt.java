package g;

/* loaded from: classes3.dex */
public final class pt extends haf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ adw f19830a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt(adw adwVar, int i) {
        super(adwVar, i, null);
        this.f19830a = adwVar;
    }

    @Override // g.haf
    public final void b(nk nkVar) {
        adw adwVar = this.f19830a;
        adwVar.f10066g._ck(nkVar);
        adwVar.ak(nkVar);
    }

    @Override // g.haf
    public final boolean c() {
        this.f19830a.f10066g._ck(nk.RESULT_SUCCESS);
        return true;
    }
}
