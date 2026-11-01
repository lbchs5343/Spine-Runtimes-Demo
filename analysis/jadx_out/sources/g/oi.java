package g;

import android.graphics.Insets;

/* loaded from: classes.dex */
public final class oi {

    /* renamed from: a, reason: collision with root package name */
    public static final oi f19757a = new oi(0, 0, 0, 0);

    /* renamed from: b, reason: collision with root package name */
    public final int f19758b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19759c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19760d;

    /* renamed from: e, reason: collision with root package name */
    public final int f19761e;

    public oi(int i, int i2, int i3, int i4) {
        this.f19759c = i;
        this.f19760d = i2;
        this.f19761e = i3;
        this.f19758b = i4;
    }

    public static oi f(oi oiVar, oi oiVar2) {
        return g(Math.max(oiVar.f19759c, oiVar2.f19759c), Math.max(oiVar.f19760d, oiVar2.f19760d), Math.max(oiVar.f19761e, oiVar2.f19761e), Math.max(oiVar.f19758b, oiVar2.f19758b));
    }

    public static oi g(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f19757a : new oi(i, i2, i3, i4);
    }

    public static oi h(Insets insets) {
        int i;
        int i2;
        int i3;
        int i4;
        i = insets.left;
        i2 = insets.top;
        i3 = insets.right;
        i4 = insets.bottom;
        return g(i, i2, i3, i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || oi.class != obj.getClass()) {
            return false;
        }
        oi oiVar = (oi) obj;
        return this.f19758b == oiVar.f19758b && this.f19759c == oiVar.f19759c && this.f19761e == oiVar.f19761e && this.f19760d == oiVar.f19760d;
    }

    public final int hashCode() {
        return (((((this.f19759c * 31) + this.f19760d) * 31) + this.f19761e) * 31) + this.f19758b;
    }

    public final Insets i() {
        return agl.b(this.f19759c, this.f19760d, this.f19761e, this.f19758b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Insets{left=");
        sb.append(this.f19759c);
        sb.append(", top=");
        sb.append(this.f19760d);
        sb.append(", right=");
        sb.append(this.f19761e);
        sb.append(", bottom=");
        return awf.s(sb, this.f19758b, '}');
    }
}
