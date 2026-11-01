package g;

/* loaded from: classes.dex */
public final class rf extends bdo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cox f19896a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ erv f19897b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rf(erv ervVar, erv ervVar2, cox coxVar) {
        super(ervVar2);
        this.f19897b = ervVar;
        this.f19896a = coxVar;
    }

    @Override // g.bdo
    public final erj c() {
        return this.f19896a;
    }

    @Override // g.bdo
    public final boolean d() {
        erv ervVar = this.f19897b;
        if (ervVar.getInternalPopup().isShowing()) {
            return true;
        }
        ervVar.i.b(ervVar.getTextDirection(), ervVar.getTextAlignment());
        return true;
    }
}
