package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class cpd {

    /* renamed from: a, reason: collision with root package name */
    public int f13265a;

    /* renamed from: b, reason: collision with root package name */
    public final cqz[] f13266b;

    public cpd(int i) {
        this.f13265a = -1;
        this.f13266b = new cqz[i];
    }

    public cpd(int i, cqz[] cqzVarArr) {
        this.f13265a = i;
        this.f13266b = cqzVarArr;
    }

    public final cqz c(int i) {
        int i2 = this.f13265a - i;
        if (i2 >= 0) {
            cqz[] cqzVarArr = this.f13266b;
            if (i2 < cqzVarArr.length) {
                return cqzVarArr[i2];
            }
        }
        return cqz.NARROW;
    }

    public final int d(cqz cqzVar) {
        int i = this.f13265a + 1;
        this.f13265a = i;
        if (i >= 0) {
            cqz[] cqzVarArr = this.f13266b;
            if (i < cqzVarArr.length) {
                cqzVarArr[i] = cqzVar;
            }
        }
        return i;
    }

    public final String toString() {
        String ad;
        int i = this.f13265a + 1;
        if (i == 0) {
            ad = "empty";
        } else {
            cqz[] cqzVarArr = this.f13266b;
            ad = (i <= 0 || i >= cqzVarArr.length) ? awf.ad(new StringBuilder(), Arrays.toString(cqzVarArr), " (max)") : Arrays.toString(Arrays.copyOf(cqzVarArr, i));
        }
        return "Stack: " + i + ": " + ad;
    }
}
