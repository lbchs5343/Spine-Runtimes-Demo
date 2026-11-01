package g;

import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class bjl {

    /* renamed from: a, reason: collision with root package name */
    public static final bjl f11699a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11700b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11701c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11702d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11703e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11704f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f11705g;
    public final boolean h;
    public String i;
    public final int j;
    public final boolean k;
    public final boolean l;
    public final int m;
    public final boolean n;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        bff.p(timeUnit, "timeUnit");
        long seconds = timeUnit.toSeconds(he.UNDEFINED_ITEM_ID);
        f11699a = new bjl(false, false, -1, -1, false, false, false, seconds > 2147483647L ? he.UNDEFINED_ITEM_ID : (int) seconds, -1, true, false, false, null);
    }

    public bjl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f11705g = z;
        this.k = z2;
        this.m = i;
        this.f11702d = i2;
        this.f11704f = z3;
        this.h = z4;
        this.n = z5;
        this.f11700b = i3;
        this.j = i4;
        this.l = z6;
        this.f11701c = z7;
        this.f11703e = z8;
        this.i = str;
    }

    public final String toString() {
        String str = this.i;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f11705g) {
            sb.append("no-cache, ");
        }
        if (this.k) {
            sb.append("no-store, ");
        }
        int i = this.m;
        if (i != -1) {
            sb.append("max-age=");
            sb.append(i);
            sb.append(", ");
        }
        int i2 = this.f11702d;
        if (i2 != -1) {
            sb.append("s-maxage=");
            sb.append(i2);
            sb.append(", ");
        }
        if (this.f11704f) {
            sb.append("private, ");
        }
        if (this.h) {
            sb.append("public, ");
        }
        if (this.n) {
            sb.append("must-revalidate, ");
        }
        int i3 = this.f11700b;
        if (i3 != -1) {
            sb.append("max-stale=");
            sb.append(i3);
            sb.append(", ");
        }
        int i4 = this.j;
        if (i4 != -1) {
            sb.append("min-fresh=");
            sb.append(i4);
            sb.append(", ");
        }
        if (this.l) {
            sb.append("only-if-cached, ");
        }
        if (this.f11701c) {
            sb.append("no-transform, ");
        }
        if (this.f11703e) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String sb2 = sb.toString();
        bff.e(sb2, "StringBuilder().apply(builderAction).toString()");
        this.i = sb2;
        return sb2;
    }
}
