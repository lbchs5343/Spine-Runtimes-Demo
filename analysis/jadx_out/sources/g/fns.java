package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class fns {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f17105a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f17106b;

    public fns(float[] fArr, int[] iArr) {
        this.f17105a = fArr;
        this.f17106b = iArr;
    }

    public final fns c(float[] fArr) {
        int g2;
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            float f2 = fArr[i];
            float[] fArr2 = this.f17105a;
            int binarySearch = Arrays.binarySearch(fArr2, f2);
            int[] iArr2 = this.f17106b;
            if (binarySearch >= 0) {
                g2 = iArr2[binarySearch];
            } else {
                int i2 = -(binarySearch + 1);
                if (i2 == 0) {
                    g2 = iArr2[0];
                } else if (i2 == iArr2.length - 1) {
                    g2 = iArr2[iArr2.length - 1];
                } else {
                    int i3 = i2 - 1;
                    float f3 = fArr2[i3];
                    g2 = aky.g(iArr2[i3], (f2 - f3) / (fArr2[i2] - f3), iArr2[i2]);
                }
            }
            iArr[i] = g2;
        }
        return new fns(fArr, iArr);
    }
}
