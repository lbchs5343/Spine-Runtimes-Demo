package g;

import android.graphics.Color;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class dwf {

    /* renamed from: a, reason: collision with root package name */
    public final float f14923a;

    /* renamed from: b, reason: collision with root package name */
    public final float f14924b;

    /* renamed from: c, reason: collision with root package name */
    public final float f14925c;

    /* renamed from: d, reason: collision with root package name */
    public final float f14926d;

    /* renamed from: e, reason: collision with root package name */
    public final float f14927e;

    /* renamed from: f, reason: collision with root package name */
    public final float f14928f;

    public dwf(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f14925c = f2;
        this.f14927e = f3;
        this.f14928f = f4;
        this.f14923a = f5;
        this.f14924b = f6;
        this.f14926d = f7;
    }

    public static dwf g(int i) {
        ctz ctzVar = ctz.f13507a;
        float ax = ckd.ax(Color.red(i));
        float ax2 = ckd.ax(Color.green(i));
        float ax3 = ckd.ax(Color.blue(i));
        float[][] fArr = ckd.f13018e;
        float[] fArr2 = fArr[0];
        float f2 = (fArr2[2] * ax3) + (fArr2[1] * ax2) + (fArr2[0] * ax);
        float[] fArr3 = fArr[1];
        float f3 = (fArr3[2] * ax3) + (fArr3[1] * ax2) + (fArr3[0] * ax);
        float[] fArr4 = fArr[2];
        float f4 = (ax3 * fArr4[2]) + (ax2 * fArr4[1]) + (ax * fArr4[0]);
        float[][] fArr5 = ckd.f13020g;
        float[] fArr6 = fArr5[0];
        float f5 = (fArr6[2] * f4) + (fArr6[1] * f3) + (fArr6[0] * f2);
        float[] fArr7 = fArr5[1];
        float f6 = (fArr7[2] * f4) + (fArr7[1] * f3) + (fArr7[0] * f2);
        float[] fArr8 = fArr5[2];
        float f7 = (f4 * fArr8[2]) + (f3 * fArr8[1]) + (f2 * fArr8[0]);
        float[] fArr9 = ctzVar.k;
        float f8 = ctzVar.f13513g;
        float f9 = ctzVar.f13509c;
        float f10 = ctzVar.f13511e;
        float f11 = fArr9[0] * f5;
        float f12 = fArr9[1] * f6;
        float f13 = fArr9[2] * f7;
        float f14 = ctzVar.f13508b;
        float pow = (float) Math.pow((Math.abs(f11) * f14) / 100.0d, 0.42d);
        float pow2 = (float) Math.pow((Math.abs(f12) * f14) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f13) * f14) / 100.0d, 0.42d);
        float signum = ((Math.signum(f11) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f12) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f13) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d2 = signum3;
        float f15 = ((float) (((signum2 * (-12.0d)) + (signum * 11.0d)) + d2)) / 11.0f;
        float f16 = ((float) ((signum + signum2) - (d2 * 2.0d))) / 9.0f;
        float f17 = signum2 * 20.0f;
        float f18 = ((21.0f * signum3) + ((signum * 20.0f) + f17)) / 20.0f;
        float f19 = (((signum * 40.0f) + f17) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f16, f15)) * 180.0f) / 3.1415927f;
        if (atan2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f20 = (3.1415927f * atan2) / 180.0f;
        float pow4 = ((float) Math.pow((f19 * ctzVar.h) / f10, ctzVar.i * f9)) * 100.0f;
        Math.sqrt(pow4 / 100.0f);
        float f21 = f10 + 4.0f;
        float pow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, ctzVar.f13512f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) atan2) < 20.14d ? 360.0f + atan2 : atan2) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * ctzVar.f13510d) * ctzVar.j) * ((float) Math.sqrt((f16 * f16) + (f15 * f15)))) / (f18 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow4 / 100.0d));
        Math.sqrt((r0 * f9) / f21);
        float f22 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((f8 * pow5 * 0.0228f) + 1.0f)) * 43.85965f;
        double d3 = f20;
        return new dwf(atan2, pow5, pow4, f22, log * ((float) Math.cos(d3)), log * ((float) Math.sin(d3)));
    }

    public static dwf h(float f2, float f3, float f4) {
        ctz ctzVar = ctz.f13507a;
        float f5 = ctzVar.f13509c;
        Math.sqrt(f2 / 100.0d);
        float f6 = ctzVar.f13511e + 4.0f;
        float f7 = ctzVar.f13513g * f3;
        Math.sqrt(((f3 / ((float) Math.sqrt(r1))) * ctzVar.f13509c) / f6);
        float f8 = (1.7f * f2) / ((0.007f * f2) + 1.0f);
        float log = ((float) Math.log((f7 * 0.0228d) + 1.0d)) * 43.85965f;
        double d2 = (3.1415927f * f4) / 180.0f;
        return new dwf(f4, f3, f2, f8, log * ((float) Math.cos(d2)), log * ((float) Math.sin(d2)));
    }

    public final int i(ctz ctzVar) {
        float f2;
        float f3 = this.f14927e;
        double d2 = f3;
        float f4 = this.f14928f;
        if (d2 != 0.0d) {
            double d3 = f4;
            if (d3 != 0.0d) {
                f2 = f3 / ((float) Math.sqrt(d3 / 100.0d));
                float f5 = ctzVar.f13512f;
                float f6 = ctzVar.f13508b;
                float pow = (float) Math.pow(f2 / Math.pow(1.64d - Math.pow(0.29d, f5), 0.73d), 1.1111111111111112d);
                double d4 = (this.f14925c * 3.1415927f) / 180.0f;
                float cos = ((float) (Math.cos(2.0d + d4) + 3.8d)) * 0.25f;
                float pow2 = ctzVar.f13511e * ((float) Math.pow(f4 / 100.0d, (1.0d / ctzVar.f13509c) / ctzVar.i));
                float f7 = cos * 3846.1538f * ctzVar.f13510d * ctzVar.j;
                float f8 = pow2 / ctzVar.h;
                float sin = (float) Math.sin(d4);
                float cos2 = (float) Math.cos(d4);
                float f9 = (((0.305f + f8) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (f7 * 23.0f)));
                float f10 = cos2 * f9;
                float f11 = f9 * sin;
                float f12 = f8 * 460.0f;
                float f13 = ((288.0f * f11) + ((451.0f * f10) + f12)) / 1403.0f;
                float f14 = ((f12 - (891.0f * f10)) - (261.0f * f11)) / 1403.0f;
                float f15 = ((f12 - (f10 * 220.0f)) - (f11 * 6300.0f)) / 1403.0f;
                float f16 = 100.0f / f6;
                float signum = Math.signum(f13) * f16 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f13) * 27.13d) / (400.0d - Math.abs(f13))), 2.380952380952381d));
                float signum2 = Math.signum(f14) * f16 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f14) * 27.13d) / (400.0d - Math.abs(f14))), 2.380952380952381d));
                float signum3 = Math.signum(f15) * f16 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f15) * 27.13d) / (400.0d - Math.abs(f15))), 2.380952380952381d));
                float[] fArr = ctzVar.k;
                float f17 = signum / fArr[0];
                float f18 = signum2 / fArr[1];
                float f19 = signum3 / fArr[2];
                float[][] fArr2 = ckd.f13015b;
                float[] fArr3 = fArr2[0];
                float f20 = (fArr3[2] * f19) + (fArr3[1] * f18) + (fArr3[0] * f17);
                float[] fArr4 = fArr2[1];
                float f21 = (fArr4[2] * f19) + (fArr4[1] * f18) + (fArr4[0] * f17);
                float[] fArr5 = fArr2[2];
                return afr.d(f20, f21, (f19 * fArr5[2]) + (f18 * fArr5[1]) + (f17 * fArr5[0]));
            }
        }
        f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f52 = ctzVar.f13512f;
        float f62 = ctzVar.f13508b;
        float pow3 = (float) Math.pow(f2 / Math.pow(1.64d - Math.pow(0.29d, f52), 0.73d), 1.1111111111111112d);
        double d42 = (this.f14925c * 3.1415927f) / 180.0f;
        float cos3 = ((float) (Math.cos(2.0d + d42) + 3.8d)) * 0.25f;
        float pow22 = ctzVar.f13511e * ((float) Math.pow(f4 / 100.0d, (1.0d / ctzVar.f13509c) / ctzVar.i));
        float f72 = cos3 * 3846.1538f * ctzVar.f13510d * ctzVar.j;
        float f82 = pow22 / ctzVar.h;
        float sin2 = (float) Math.sin(d42);
        float cos22 = (float) Math.cos(d42);
        float f92 = (((0.305f + f82) * 23.0f) * pow3) / (((pow3 * 108.0f) * sin2) + (((11.0f * pow3) * cos22) + (f72 * 23.0f)));
        float f102 = cos22 * f92;
        float f112 = f92 * sin2;
        float f122 = f82 * 460.0f;
        float f132 = ((288.0f * f112) + ((451.0f * f102) + f122)) / 1403.0f;
        float f142 = ((f122 - (891.0f * f102)) - (261.0f * f112)) / 1403.0f;
        float f152 = ((f122 - (f102 * 220.0f)) - (f112 * 6300.0f)) / 1403.0f;
        float f162 = 100.0f / f62;
        float signum4 = Math.signum(f132) * f162 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f132) * 27.13d) / (400.0d - Math.abs(f132))), 2.380952380952381d));
        float signum22 = Math.signum(f142) * f162 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f142) * 27.13d) / (400.0d - Math.abs(f142))), 2.380952380952381d));
        float signum32 = Math.signum(f152) * f162 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f152) * 27.13d) / (400.0d - Math.abs(f152))), 2.380952380952381d));
        float[] fArr6 = ctzVar.k;
        float f172 = signum4 / fArr6[0];
        float f182 = signum22 / fArr6[1];
        float f192 = signum32 / fArr6[2];
        float[][] fArr22 = ckd.f13015b;
        float[] fArr32 = fArr22[0];
        float f202 = (fArr32[2] * f192) + (fArr32[1] * f182) + (fArr32[0] * f172);
        float[] fArr42 = fArr22[1];
        float f212 = (fArr42[2] * f192) + (fArr42[1] * f182) + (fArr42[0] * f172);
        float[] fArr52 = fArr22[2];
        return afr.d(f202, f212, (f192 * fArr52[2]) + (f182 * fArr52[1]) + (f172 * fArr52[0]));
    }
}
