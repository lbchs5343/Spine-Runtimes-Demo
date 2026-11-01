package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class caa {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12534a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f12535b;

    public caa(Object obj) {
        this.f12534a = obj;
        this.f12535b = null;
    }

    public caa(Throwable th) {
        this.f12535b = th;
        this.f12534a = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof caa)) {
            return false;
        }
        caa caaVar = (caa) obj;
        Object obj2 = this.f12534a;
        if (obj2 != null && obj2.equals(caaVar.f12534a)) {
            return true;
        }
        Throwable th = this.f12535b;
        if (th == null || caaVar.f12535b == null) {
            return false;
        }
        return th.toString().equals(th.toString());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12534a, this.f12535b});
    }
}
