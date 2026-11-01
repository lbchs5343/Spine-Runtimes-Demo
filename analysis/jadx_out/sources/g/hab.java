package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class hab implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final String f19099a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f19100b;

    public hab(String str, Throwable th) {
        Objects.requireNonNull(str);
        this.f19099a = str;
        this.f19100b = th;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f19099a.compareTo(((hab) obj).f19099a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || hab.class != obj.getClass()) {
            return false;
        }
        return this.f19099a.equals(((hab) obj).f19099a);
    }

    public final int hashCode() {
        return this.f19099a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JadxError: ");
        sb.append(this.f19099a);
        sb.append(' ');
        Throwable th = this.f19100b;
        if (th != null) {
            sb.append(th.getClass());
            sb.append(':');
            sb.append(th.getMessage());
            sb.append('\n');
            sb.append(evh.c(th));
        }
        return sb.toString();
    }
}
