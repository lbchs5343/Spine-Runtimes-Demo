package g;

/* loaded from: classes.dex */
public final class hea implements bdu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19322a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19323b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fts f19324c;

    public /* synthetic */ hea(fts ftsVar, int i, int i2) {
        this.f19322a = i2;
        this.f19324c = ftsVar;
        this.f19323b = i;
    }

    @Override // g.bdu
    public final void dq() {
        switch (this.f19322a) {
            case 0:
                this.f19324c.ba(this.f19323b);
                break;
            case 1:
                this.f19324c.ap(this.f19323b);
                break;
            default:
                this.f19324c.ar(this.f19323b);
                break;
        }
    }
}
