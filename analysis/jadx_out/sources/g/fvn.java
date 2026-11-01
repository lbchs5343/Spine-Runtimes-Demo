package g;

/* loaded from: classes.dex */
public final class fvn implements gpe {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f17483b;

    public fvn(boolean z) {
        this.f17483b = z;
    }

    @Override // g.gpe
    public final boolean a() {
        return this.f17483b;
    }

    @Override // g.gpe
    public final amv c() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f17483b ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
