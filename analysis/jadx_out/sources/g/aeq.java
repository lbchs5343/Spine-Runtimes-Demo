package g;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class aeq extends dct {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10114a;

    public aeq(ArrayList arrayList) {
        this.f10114a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dct)) {
            return false;
        }
        return this.f10114a.equals(((aeq) ((dct) obj)).f10114a);
    }

    public final int hashCode() {
        return this.f10114a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f10114a + "}";
    }
}
