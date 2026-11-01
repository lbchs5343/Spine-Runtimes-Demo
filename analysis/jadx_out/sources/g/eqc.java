package g;

/* loaded from: classes3.dex */
public final class eqc {

    /* renamed from: a, reason: collision with root package name */
    public final int f15974a;

    /* renamed from: b, reason: collision with root package name */
    public final cir f15975b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15976c;

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f15977d;

    public eqc(cir cirVar, String str, Object[] objArr) {
        this.f15975b = cirVar;
        this.f15976c = str;
        this.f15977d = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f15974a = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f15974a = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }
}
