package g;

import android.graphics.Matrix;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class axy {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f11043a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f11044b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f11045c;

    public axy() {
        this.f11043a = new float[2];
        this.f11044b = new float[]{1.0f, 0.0f};
        this.f11045c = new Matrix();
    }

    public axy(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[2];
        this.f11043a = fArr3;
        float[] fArr4 = new float[2];
        this.f11044b = fArr4;
        System.arraycopy(fArr, 0, fArr3, 0, 2);
        System.arraycopy(fArr2, 0, fArr4, 0, 2);
        this.f11045c = new Matrix();
    }

    public final void d(float f2) {
        float[] fArr = this.f11043a;
        fArr[0] = fArr[0] * 1.0f;
        fArr[1] = fArr[1] * f2;
        float[] fArr2 = this.f11044b;
        fArr2[0] = fArr2[0] * 1.0f;
        fArr2[1] = fArr2[1] * f2;
    }

    public final void e(float f2) {
        float[] fArr = this.f11043a;
        fArr[0] = fArr[0] + f2;
        fArr[1] = fArr[1] + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final void f(float f2) {
        float[] fArr = this.f11044b;
        float atan2 = (float) (Math.atan2(fArr[1], fArr[0]) + 1.5707963267948966d);
        float[] fArr2 = this.f11043a;
        double d2 = f2;
        double d3 = atan2;
        fArr2[0] = (float) ((Math.cos(d3) * d2) + fArr2[0]);
        fArr2[1] = (float) ((Math.sin(d3) * d2) + fArr2[1]);
    }

    public final void g() {
        Arrays.fill(this.f11043a, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        float[] fArr = this.f11044b;
        Arrays.fill(fArr, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        fArr[0] = 1.0f;
        this.f11045c.reset();
    }

    public final void h(float f2) {
        Matrix matrix = this.f11045c;
        matrix.reset();
        matrix.setRotate(f2);
        matrix.mapPoints(this.f11043a);
        matrix.mapPoints(this.f11044b);
    }
}
