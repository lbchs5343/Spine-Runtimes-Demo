package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class ctz {

    /* renamed from: a, reason: collision with root package name */
    public static final ctz f13507a;

    /* renamed from: b, reason: collision with root package name */
    public final float f13508b;

    /* renamed from: c, reason: collision with root package name */
    public final float f13509c;

    /* renamed from: d, reason: collision with root package name */
    public final float f13510d;

    /* renamed from: e, reason: collision with root package name */
    public final float f13511e;

    /* renamed from: f, reason: collision with root package name */
    public final float f13512f;

    /* renamed from: g, reason: collision with root package name */
    public final float f13513g;
    public final float h;
    public final float i;
    public final float j;
    public final float[] k;

    static {
        float[] fArr = ckd.f13016c;
        float m = (float) ((ckd.m() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = ckd.f13020g;
        float f2 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f3 = fArr3[0] * f2;
        float f4 = fArr[1];
        float f5 = (fArr3[1] * f4) + f3;
        float f6 = fArr[2];
        float f7 = (fArr3[2] * f6) + f5;
        float[] fArr4 = fArr2[1];
        float f8 = (fArr4[2] * f6) + (fArr4[1] * f4) + (fArr4[0] * f2);
        float[] fArr5 = fArr2[2];
        float f9 = (f6 * fArr5[2]) + (f4 * fArr5[1]) + (f2 * fArr5[0]);
        float f10 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float exp = (1.0f - (((float) Math.exp(((-m) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d2 = exp;
        if (d2 > 1.0d) {
            exp = 1.0f;
        } else if (d2 < 0.0d) {
            exp = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        float f11 = 1.0f / ((5.0f * m) + 1.0f);
        float f12 = f11 * f11 * f11 * f11;
        float f13 = 1.0f - f12;
        float cbrt = (0.1f * f13 * f13 * ((float) Math.cbrt(m * 5.0d))) + (f12 * m);
        float m2 = ckd.m() / fArr[1];
        double d3 = m2;
        float sqrt = ((float) Math.sqrt(d3)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d3, 0.2d));
        float[] fArr6 = {(float) Math.pow(((r2[0] * cbrt) * f7) / 100.0d, 0.42d), (float) Math.pow(((r2[1] * cbrt) * f8) / 100.0d, 0.42d), (float) Math.pow(((r2[2] * cbrt) * f9) / 100.0d, 0.42d)};
        float f14 = fArr6[0];
        float f15 = (f14 * 400.0f) / (f14 + 27.13f);
        float f16 = fArr6[1];
        float f17 = (f16 * 400.0f) / (f16 + 27.13f);
        float f18 = fArr6[2];
        float[] fArr7 = {f15, f17, (400.0f * f18) / (f18 + 27.13f)};
        f13507a = new ctz(m2, ((fArr7[2] * 0.05f) + (fArr7[0] * 2.0f) + fArr7[1]) * pow, pow, pow, f10, 1.0f, new float[]{(((100.0f / f7) * exp) + 1.0f) - exp, (((100.0f / f8) * exp) + 1.0f) - exp, (((100.0f / f9) * exp) + 1.0f) - exp}, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public ctz(float f2, float f3, float f4, float f5, float f6, float f7, float[] fArr, float f8, float f9, float f10) {
        this.f13512f = f2;
        this.f13511e = f3;
        this.h = f4;
        this.j = f5;
        this.f13509c = f6;
        this.f13510d = f7;
        this.k = fArr;
        this.f13508b = f8;
        this.f13513g = f9;
        this.i = f10;
    }
}
