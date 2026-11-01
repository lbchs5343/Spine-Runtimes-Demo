package g;

/* loaded from: classes.dex */
public final class fqt implements ers {

    /* renamed from: a, reason: collision with root package name */
    public String f17260a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17261b;

    /* renamed from: c, reason: collision with root package name */
    public int f17262c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17263d;

    /* renamed from: e, reason: collision with root package name */
    public final String f17264e;

    /* renamed from: f, reason: collision with root package name */
    public final String f17265f;

    public fqt(String str, int i, String str2, int i2, String str3, int i3) {
        this.f17262c = i;
        this.f17264e = str;
        this.f17265f = str2;
        this.f17260a = str3;
        this.f17261b = i2;
        this.f17263d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fqt)) {
            return false;
        }
        fqt fqtVar = (fqt) obj;
        return this.f17262c == fqtVar.f17262c && this.f17261b == fqtVar.f17261b && this.f17263d == fqtVar.f17263d && this.f17264e.equals(fqtVar.f17264e);
    }

    @Override // g.ers
    public final String getName() {
        return this.f17264e;
    }

    @Override // g.ers
    public final String getType() {
        return this.f17265f;
    }

    @Override // g.ers
    public final int h() {
        return this.f17262c;
    }

    public final int hashCode() {
        return ((tn.k(this.f17262c * 31, 31, this.f17264e) + this.f17261b) * 31) + this.f17263d;
    }

    @Override // g.ers
    public final int i() {
        return this.f17263d;
    }

    @Override // g.ers
    public final int j() {
        return this.f17261b;
    }

    @Override // g.ers
    public final String k() {
        return this.f17260a;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("0x%04x", Integer.valueOf(this.f17261b)));
        sb.append('-');
        sb.append(String.format("0x%04x", Integer.valueOf(this.f17263d)));
        sb.append(": r");
        sb.append(this.f17262c);
        sb.append(" '");
        sb.append(this.f17264e);
        sb.append("' ");
        sb.append(this.f17265f);
        if (this.f17260a != null) {
            str = ", signature: " + this.f17260a;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
