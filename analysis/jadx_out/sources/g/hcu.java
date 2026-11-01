package g;

/* loaded from: classes3.dex */
public final class hcu {

    /* renamed from: a, reason: collision with root package name */
    public final int f19233a;

    /* renamed from: b, reason: collision with root package name */
    public final bsv f19234b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19235c;

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f19236d;

    public hcu(bsv bsvVar, String str, Object[] objArr) {
        this.f19234b = bsvVar;
        this.f19235c = str;
        this.f19236d = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f19233a = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 < 55296) {
                this.f19233a = i | (charAt2 << i3);
                return;
            } else {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    public final int e() {
        int i = this.f19233a;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
