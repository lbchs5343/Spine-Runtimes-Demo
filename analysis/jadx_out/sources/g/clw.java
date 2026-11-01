package g;

/* loaded from: classes.dex */
public final class clw {

    /* renamed from: a, reason: collision with root package name */
    public static final dmq f13097a = new dmq();

    /* renamed from: b, reason: collision with root package name */
    public final Object f13098b;

    public /* synthetic */ clw(Object obj) {
        this.f13098b = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof clw) {
            return bff.n(this.f13098b, ((clw) obj).f13098b);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f13098b;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.f13098b;
        if (obj instanceof buf) {
            return ((buf) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
