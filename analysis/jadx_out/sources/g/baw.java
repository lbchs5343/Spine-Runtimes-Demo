package g;

/* loaded from: classes.dex */
public final class baw implements ers {

    /* renamed from: a, reason: collision with root package name */
    public final String f11193a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11194b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11195c;

    /* renamed from: d, reason: collision with root package name */
    public int f11196d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11197e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11198f;

    /* renamed from: g, reason: collision with root package name */
    public int f11199g;

    public baw(int i, String str, String str2, String str3) {
        this.f11195c = i;
        this.f11197e = str;
        this.f11198f = str2;
        this.f11193a = str3;
    }

    public baw(dsg dsgVar, int i, int i2, int i3, int i4) {
        this(i, dsgVar.z(i2), dsgVar.g(i3), dsgVar.z(i4));
    }

    @Override // g.ers
    public final String getName() {
        return this.f11197e;
    }

    @Override // g.ers
    public final String getType() {
        return this.f11198f;
    }

    @Override // g.ers
    public final int h() {
        return this.f11195c;
    }

    @Override // g.ers
    public final int i() {
        return this.f11199g;
    }

    @Override // g.ers
    public final int j() {
        return this.f11196d;
    }

    @Override // g.ers
    public final String k() {
        return this.f11193a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f11196d;
        sb.append(i == -1 ? "-1 " : String.format("0x%04x", Integer.valueOf(i)));
        sb.append('-');
        sb.append(this.f11194b ? String.format("0x%04x", Integer.valueOf(this.f11199g)) : "      ");
        sb.append(": r");
        sb.append(this.f11195c);
        sb.append(" '");
        sb.append(this.f11197e);
        sb.append("' ");
        sb.append(this.f11198f);
        String str = this.f11193a;
        sb.append(str != null ? ", signature: ".concat(str) : "");
        return sb.toString();
    }
}
