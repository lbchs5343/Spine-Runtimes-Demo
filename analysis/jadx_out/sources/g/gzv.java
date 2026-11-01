package g;

/* loaded from: classes.dex */
public final class gzv implements bdu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19070a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f19071b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fts f19072c;

    public /* synthetic */ gzv(fts ftsVar, String str, int i) {
        this.f19070a = i;
        this.f19072c = ftsVar;
        this.f19071b = str;
    }

    @Override // g.bdu
    public final void dq() {
        switch (this.f19070a) {
            case 0:
                this.f19072c.bd(this.f19071b);
                break;
            case 1:
                this.f19072c.ax(this.f19071b);
                break;
            default:
                this.f19072c.bf(this.f19071b);
                break;
        }
    }
}
