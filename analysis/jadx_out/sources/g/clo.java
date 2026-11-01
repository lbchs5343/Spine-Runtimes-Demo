package g;

/* loaded from: classes.dex */
public final class clo implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final String f13075a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13076b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13077c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13078d;

    public clo(int i, int i2, String str, String str2) {
        this.f13077c = i;
        this.f13078d = i2;
        this.f13075a = str;
        this.f13076b = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        clo cloVar = (clo) obj;
        bff.p(cloVar, "other");
        int i = this.f13077c - cloVar.f13077c;
        return i == 0 ? this.f13078d - cloVar.f13078d : i;
    }
}
