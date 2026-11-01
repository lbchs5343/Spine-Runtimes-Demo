package g;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class aze {

    /* renamed from: a, reason: collision with root package name */
    public final String f11105a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11106b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11107c;

    public aze(String str, boolean z, boolean z2) {
        this.f11105a = str;
        this.f11106b = z;
        this.f11107c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == aze.class) {
            aze azeVar = (aze) obj;
            if (TextUtils.equals(this.f11105a, azeVar.f11105a) && this.f11106b == azeVar.f11106b && this.f11107c == azeVar.f11107c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f11105a.hashCode() + 31) * 31) + (true != this.f11106b ? 1237 : 1231)) * 31) + (true != this.f11107c ? 1237 : 1231);
    }
}
