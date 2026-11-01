package g;

/* loaded from: classes.dex */
public final class gds implements bdu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17945a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f17946b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fts f17947c;

    public /* synthetic */ gds(fts ftsVar, float f2, int i) {
        this.f17945a = i;
        this.f17947c = ftsVar;
        this.f17946b = f2;
    }

    @Override // g.bdu
    public final void dq() {
        switch (this.f17945a) {
            case 0:
                fts ftsVar = this.f17947c;
                cgf cgfVar = ftsVar.x;
                float f2 = this.f17946b;
                if (cgfVar != null) {
                    bzg bzgVar = ftsVar.ad;
                    bzgVar.q(bzgVar.f12496c, din.d(cgfVar.f12824b, cgfVar.f12828f, f2));
                    break;
                } else {
                    ftsVar.al.add(new gds(ftsVar, f2, 0));
                    break;
                }
            case 1:
                this.f17947c.bc(this.f17946b);
                break;
            default:
                fts ftsVar2 = this.f17947c;
                cgf cgfVar2 = ftsVar2.x;
                float f3 = this.f17946b;
                if (cgfVar2 != null) {
                    ftsVar2.ar((int) din.d(cgfVar2.f12824b, cgfVar2.f12828f, f3));
                    break;
                } else {
                    ftsVar2.al.add(new gds(ftsVar2, f3, 2));
                    break;
                }
        }
    }
}
