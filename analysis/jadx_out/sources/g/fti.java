package g;

/* loaded from: classes3.dex */
public final class fti {

    /* renamed from: a, reason: collision with root package name */
    public final Class f17376a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f17377b;

    public fti(Class cls, boolean z) {
        this.f17376a = cls;
        this.f17377b = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof fti) {
            fti ftiVar = (fti) obj;
            if (ftiVar.f17376a.equals(this.f17376a) && ftiVar.f17377b == this.f17377b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f17376a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f17377b).hashCode();
    }
}
