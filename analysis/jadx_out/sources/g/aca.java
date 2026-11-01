package g;

/* loaded from: classes.dex */
public final class aca {

    /* renamed from: a, reason: collision with root package name */
    public final int f9957a;

    /* renamed from: b, reason: collision with root package name */
    public final aca f9958b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9959c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f9960d;

    public aca(aca acaVar, Object obj, Object obj2, int i) {
        this.f9958b = acaVar;
        this.f9959c = obj;
        this.f9960d = obj2;
        this.f9957a = i;
    }

    public final String toString() {
        aca acaVar = this.f9958b;
        if (acaVar == null) {
            return "$";
        }
        Object obj = this.f9960d;
        if (!(obj instanceof Integer)) {
            return acaVar.toString() + "." + obj;
        }
        return acaVar.toString() + "[" + obj + "]";
    }
}
