package g;

/* loaded from: classes3.dex */
public final class dez {

    /* renamed from: a, reason: collision with root package name */
    public final String f14078a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14079b;

    public dez(String str, boolean z) {
        this.f14078a = str;
        this.f14079b = z;
    }

    public final String toString() {
        String str = this.f14078a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
        sb.append("{");
        sb.append(str);
        sb.append("}");
        sb.append(this.f14079b);
        return sb.toString();
    }
}
