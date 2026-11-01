package g;

import android.animation.TimeInterpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class fuq implements TimeInterpolator {

    /* renamed from: a, reason: collision with root package name */
    public int[] f17451a;

    /* renamed from: b, reason: collision with root package name */
    public int f17452b;

    /* renamed from: c, reason: collision with root package name */
    public int f17453c;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        int i = (int) ((f2 * this.f17453c) + 0.5f);
        int i2 = this.f17452b;
        int[] iArr = this.f17451a;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = iArr[i3];
            if (i < i4) {
                break;
            }
            i -= i4;
            i3++;
        }
        return (i3 / i2) + (i3 < i2 ? i / this.f17453c : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }
}
