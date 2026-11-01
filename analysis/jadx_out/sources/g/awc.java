package g;

/* loaded from: classes.dex */
public final class awc implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10966a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10967b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10968c;

    /* renamed from: d, reason: collision with root package name */
    public final dlz f10969d;

    public awc(String str, int i, dlz dlzVar, boolean z) {
        this.f10967b = str;
        this.f10968c = i;
        this.f10969d = dlzVar;
        this.f10966a = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new civ(ftsVar, grqVar, this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapePath{name=");
        sb.append(this.f10967b);
        sb.append(", index=");
        return awf.s(sb, this.f10968c, '}');
    }
}
