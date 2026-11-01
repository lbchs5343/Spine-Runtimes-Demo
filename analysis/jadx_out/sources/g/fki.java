package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fki {

    /* renamed from: a, reason: collision with root package name */
    public final String f16921a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16922b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16923c;

    /* renamed from: d, reason: collision with root package name */
    public final char f16924d;

    /* renamed from: e, reason: collision with root package name */
    public final double f16925e;

    public fki(ArrayList arrayList, char c2, double d2, String str, String str2) {
        this.f16923c = arrayList;
        this.f16924d = c2;
        this.f16925e = d2;
        this.f16921a = str;
        this.f16922b = str2;
    }

    public static int f(char c2, String str, String str2) {
        return str2.hashCode() + tn.k(c2 * 31, 31, str);
    }

    public final int hashCode() {
        return f(this.f16924d, this.f16922b, this.f16921a);
    }
}
