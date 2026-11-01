package g;

import android.animation.TimeInterpolator;

/* loaded from: classes3.dex */
public final class att {

    /* renamed from: a, reason: collision with root package name */
    public int f10826a;

    /* renamed from: b, reason: collision with root package name */
    public int f10827b;

    /* renamed from: c, reason: collision with root package name */
    public long f10828c;

    /* renamed from: d, reason: collision with root package name */
    public long f10829d;

    /* renamed from: e, reason: collision with root package name */
    public TimeInterpolator f10830e;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof att)) {
            return false;
        }
        att attVar = (att) obj;
        if (this.f10828c == attVar.f10828c && this.f10829d == attVar.f10829d && this.f10826a == attVar.f10826a && this.f10827b == attVar.f10827b) {
            return f().getClass().equals(attVar.f().getClass());
        }
        return false;
    }

    public final TimeInterpolator f() {
        TimeInterpolator timeInterpolator = this.f10830e;
        return timeInterpolator != null ? timeInterpolator : gtk.f18728c;
    }

    public final int hashCode() {
        long j = this.f10828c;
        long j2 = this.f10829d;
        return ((((f().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.f10826a) * 31) + this.f10827b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(att.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f10828c);
        sb.append(" duration: ");
        sb.append(this.f10829d);
        sb.append(" interpolator: ");
        sb.append(f().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f10826a);
        sb.append(" repeatMode: ");
        return awf.x(sb, this.f10827b, "}\n");
    }
}
