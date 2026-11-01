package j$.time.format;

/* loaded from: classes2.dex */
public final class l implements f {

    /* renamed from: a, reason: collision with root package name */
    public final String f20545a;

    public l(String str) {
        this.f20545a = str;
    }

    @Override // j$.time.format.f
    public final boolean i(p pVar, StringBuilder sb) {
        sb.append(this.f20545a);
        return true;
    }

    public final String toString() {
        return "'" + this.f20545a.replace("'", "''") + "'";
    }
}
