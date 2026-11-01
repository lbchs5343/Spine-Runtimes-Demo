package g;

/* loaded from: classes3.dex */
public final class cvg extends bke {

    /* renamed from: b, reason: collision with root package name */
    public static final rt f13578b = new rt(dxs.DOUBLE);

    /* renamed from: c, reason: collision with root package name */
    public final eem f13579c;

    public cvg(eem eemVar) {
        this.f13579c = eemVar;
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        if (obj == null) {
            fwgVar.af();
            return;
        }
        Class<?> cls = obj.getClass();
        eem eemVar = this.f13579c;
        eemVar.getClass();
        bke n = eemVar.n(new ri(cls));
        if (!(n instanceof cvg)) {
            n.a(fwgVar, obj);
        } else {
            fwgVar.p();
            fwgVar.ag();
        }
    }
}
