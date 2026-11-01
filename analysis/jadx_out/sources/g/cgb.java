package g;

/* loaded from: classes.dex */
public final class cgb implements gao {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12814a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gkb f12815b;

    public /* synthetic */ cgb(gkb gkbVar, int i) {
        this.f12814a = i;
        this.f12815b = gkbVar;
    }

    @Override // g.gao
    public final void dq(Object obj) {
        int i;
        gao gaoVar;
        int i2;
        switch (this.f12814a) {
            case 0:
                this.f12815b.setComposition((cgf) obj);
                break;
            default:
                Throwable th = (Throwable) obj;
                gkb gkbVar = this.f12815b;
                i = gkbVar.iw;
                if (i != 0) {
                    i2 = gkbVar.iw;
                    gkbVar.setImageResource(i2);
                }
                gaoVar = gkbVar.s;
                (gaoVar == null ? gkb.f18301d : gkbVar.s).dq(th);
                break;
        }
    }
}
