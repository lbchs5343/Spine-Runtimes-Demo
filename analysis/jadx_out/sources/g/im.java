package g;

import android.net.NetworkRequest;

/* loaded from: classes.dex */
public final class im {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f19434a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f19435b;

    static {
        bff.e(cyl.g("NetworkRequestCompat"), "tagWithPrefix(\"NetworkRequestCompat\")");
    }

    public im(NetworkRequest networkRequest) {
        this.f19435b = networkRequest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof im) && bff.n(this.f19435b, ((im) obj).f19435b);
    }

    public final int hashCode() {
        Object obj = this.f19435b;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "NetworkRequestCompat(wrapped=" + this.f19435b + ')';
    }
}
