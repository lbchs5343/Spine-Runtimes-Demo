package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class bws {

    /* renamed from: a, reason: collision with root package name */
    public static final bws f12336a = new bws(gsv.be(new ArrayList()), null);

    /* renamed from: b, reason: collision with root package name */
    public final Set f12337b;

    /* renamed from: c, reason: collision with root package name */
    public final aky f12338c;

    public bws(Set set, aky akyVar) {
        this.f12337b = set;
        this.f12338c = akyVar;
    }

    public final void d(String str, cvw cvwVar) {
        bff.p(str, "hostname");
        Iterator it = this.f12337b.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bws)) {
            return false;
        }
        bws bwsVar = (bws) obj;
        return bff.n(bwsVar.f12337b, this.f12337b) && bff.n(bwsVar.f12338c, this.f12338c);
    }

    public final int hashCode() {
        int hashCode = (this.f12337b.hashCode() + 1517) * 41;
        aky akyVar = this.f12338c;
        return hashCode + (akyVar != null ? akyVar.hashCode() : 0);
    }
}
