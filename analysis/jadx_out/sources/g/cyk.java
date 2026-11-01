package g;

import com.google.android.gms.internal.ads.zzhai;

/* loaded from: classes3.dex */
public final class cyk {

    /* renamed from: a, reason: collision with root package name */
    public final int f13759a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhai f13760b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13761c;

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f13762d;

    public cyk(zzhai zzhaiVar, String str, Object[] objArr) {
        this.f13760b = zzhaiVar;
        this.f13761c = str;
        this.f13762d = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f13759a = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 < 55296) {
                this.f13759a = i | (charAt2 << i3);
                return;
            } else {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    public final int e() {
        int i = this.f13759a;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
