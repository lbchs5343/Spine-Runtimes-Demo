package g;

import java.util.List;

/* loaded from: classes.dex */
public final class coe implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final List f13218a;

    public coe(List list) {
        this.f13218a = list;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.al;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof coe) {
            return this.f13218a.equals(((coe) obj).f13218a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13218a.hashCode();
    }

    public final String toString() {
        return "Catch: " + evh.h(", ", this.f13218a);
    }
}
