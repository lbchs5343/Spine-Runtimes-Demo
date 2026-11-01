package j$.time.format;

/* loaded from: classes2.dex */
public final class d implements f {

    /* renamed from: a, reason: collision with root package name */
    public final char f20528a;

    public d(char c2) {
        this.f20528a = c2;
    }

    @Override // j$.time.format.f
    public final boolean i(p pVar, StringBuilder sb) {
        sb.append(this.f20528a);
        return true;
    }

    public final String toString() {
        char c2 = this.f20528a;
        if (c2 == '\'') {
            return "''";
        }
        return "'" + c2 + "'";
    }
}
