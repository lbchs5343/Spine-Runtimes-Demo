package g;

/* loaded from: classes.dex */
public final class buf extends dmq {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f12214a;

    public buf(Throwable th) {
        this.f12214a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof buf) {
            return bff.n(this.f12214a, ((buf) obj).f12214a);
        }
        return false;
    }

    public final int hashCode() {
        Throwable th = this.f12214a;
        if (th != null) {
            return th.hashCode();
        }
        return 0;
    }

    @Override // g.dmq
    public final String toString() {
        return "Closed(" + this.f12214a + ')';
    }
}
