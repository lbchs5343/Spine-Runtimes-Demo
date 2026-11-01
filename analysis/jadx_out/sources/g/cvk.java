package g;

/* loaded from: classes3.dex */
public final class cvk extends emo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13584a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dbb f13585b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cvk(dbb dbbVar, cyg cygVar, int i) {
        super(cygVar);
        this.f13584a = i;
        this.f13585b = dbbVar;
    }

    @Override // g.emo
    public final void c() {
        switch (this.f13584a) {
            case 0:
                dbb dbbVar = this.f13585b;
                dbbVar._e();
                if (dbbVar.v()) {
                    bgm bgmVar = ((cyg) dbbVar.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.f11519c.h("Inactivity, disconnecting from the service");
                    dbbVar.am();
                    break;
                }
                break;
            default:
                bgm bgmVar2 = ((cyg) this.f13585b.z).z;
                cyg.ak(bgmVar2);
                bgmVar2.f11520g.h("Tasks have been queued for a long time");
                break;
        }
    }
}
