package g;

import android.graphics.Path;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class jv {

    /* renamed from: a, reason: collision with root package name */
    public char f19514a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f19515b;

    public jv(char c2, float[] fArr) {
        this.f19514a = c2;
        this.f19515b = fArr;
    }

    public jv(jv jvVar) {
        this.f19514a = jvVar.f19514a;
        float[] fArr = jvVar.f19515b;
        this.f19515b = dzm.t(fArr, fArr.length);
    }

    public static void c(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
        double d2;
        double d3;
        double radians = Math.toRadians(f8);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d4 = f2;
        double d5 = f3;
        double d6 = f6;
        double d7 = ((d5 * sin) + (d4 * cos)) / d6;
        double d8 = f7;
        double d9 = ((d5 * cos) + ((-f2) * sin)) / d8;
        double d10 = f5;
        double d11 = ((d10 * sin) + (f4 * cos)) / d6;
        double d12 = ((d10 * cos) + ((-f4) * sin)) / d8;
        double d13 = d7 - d11;
        double d14 = d9 - d12;
        double d15 = (d7 + d11) / 2.0d;
        double d16 = (d9 + d12) / 2.0d;
        double d17 = (d14 * d14) + (d13 * d13);
        if (d17 == 0.0d) {
            return;
        }
        double d18 = (1.0d / d17) - 0.25d;
        if (d18 < 0.0d) {
            float sqrt = (float) (Math.sqrt(d17) / 1.99999d);
            c(path, f2, f3, f4, f5, f6 * sqrt, sqrt * f7, f8, z, z2);
            return;
        }
        double sqrt2 = Math.sqrt(d18);
        double d19 = d13 * sqrt2;
        double d20 = sqrt2 * d14;
        if (z == z2) {
            d2 = d15 - d20;
            d3 = d16 + d19;
        } else {
            d2 = d15 + d20;
            d3 = d16 - d19;
        }
        double atan2 = Math.atan2(d9 - d3, d7 - d2);
        double atan22 = Math.atan2(d12 - d3, d11 - d2) - atan2;
        if (z2 != (atan22 >= 0.0d)) {
            atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d21 = d2 * d6;
        double d22 = d3 * d8;
        double d23 = (d21 * cos) - (d22 * sin);
        double d24 = (d22 * cos) + (d21 * sin);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d25 = d5;
        double d26 = -d6;
        double d27 = d26 * cos2;
        double d28 = d8 * sin2;
        double d29 = (d27 * sin3) - (d28 * cos3);
        double d30 = d26 * sin2;
        double d31 = d8 * cos2;
        double d32 = (cos3 * d31) + (sin3 * d30);
        double d33 = atan22 / ceil;
        double d34 = atan2;
        int i = 0;
        while (i < ceil) {
            double d35 = d34 + d33;
            double sin4 = Math.sin(d35);
            double cos4 = Math.cos(d35);
            double d36 = d33;
            double d37 = (((d6 * cos2) * cos4) + d23) - (d28 * sin4);
            int i2 = ceil;
            double d38 = d30;
            double d39 = (d31 * sin4) + (d6 * sin2 * cos4) + d24;
            double d40 = (d27 * sin4) - (d28 * cos4);
            double d41 = (cos4 * d31) + (sin4 * d38);
            double d42 = d35 - d34;
            double tan = Math.tan(d42 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d42)) / 3.0d;
            path.rLineTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            path.cubicTo((float) ((d29 * sqrt3) + d4), (float) ((d32 * sqrt3) + d25), (float) (d37 - (sqrt3 * d40)), (float) (d39 - (sqrt3 * d41)), (float) d37, (float) d39);
            i++;
            d4 = d37;
            d25 = d39;
            d23 = d23;
            d34 = d35;
            cos2 = cos2;
            d32 = d41;
            d29 = d40;
            d33 = d36;
            ceil = i2;
            d30 = d38;
        }
    }

    public static void d(jv[] jvVarArr, Path path) {
        int i;
        float[] fArr;
        int i2;
        jv jvVar;
        int i3;
        char c2;
        float f2;
        float f3;
        jv jvVar2;
        boolean z;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        jv[] jvVarArr2 = jvVarArr;
        Path path2 = path;
        float[] fArr2 = new float[6];
        int length = jvVarArr2.length;
        char c3 = 0;
        char c4 = 'm';
        int i4 = 0;
        while (i4 < length) {
            jv jvVar3 = jvVarArr2[i4];
            char c5 = jvVar3.f19514a;
            float[] fArr3 = jvVar3.f19515b;
            float f12 = fArr2[c3];
            float f13 = fArr2[1];
            float f14 = fArr2[2];
            float f15 = fArr2[3];
            float f16 = fArr2[4];
            float f17 = fArr2[5];
            switch (c5) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f16, f17);
                    f12 = f16;
                    f14 = f12;
                    f13 = f17;
                    f15 = f13;
                default:
                    i = 2;
                    break;
            }
            float f18 = f16;
            float f19 = f17;
            float f20 = f12;
            float f21 = f13;
            int i5 = 0;
            while (i5 < fArr3.length) {
                if (c5 == 'A') {
                    fArr = fArr3;
                    i2 = i5;
                    jvVar = jvVar3;
                    float f22 = f20;
                    float f23 = f21;
                    i3 = i4;
                    c2 = c5;
                    int i6 = i2 + 5;
                    int i7 = i2 + 6;
                    c(path, f22, f23, fArr[i6], fArr[i7], fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3] != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, fArr[i2 + 4] != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    f14 = fArr[i6];
                    f2 = fArr[i7];
                    f15 = f2;
                    f3 = f14;
                } else if (c5 == 'C') {
                    fArr = fArr3;
                    i2 = i5;
                    i3 = i4;
                    jvVar = jvVar3;
                    c2 = c5;
                    int i8 = i2 + 2;
                    int i9 = i2 + 3;
                    int i10 = i2 + 4;
                    int i11 = i2 + 5;
                    path2.cubicTo(fArr[i2], fArr[i2 + 1], fArr[i8], fArr[i9], fArr[i10], fArr[i11]);
                    float f24 = fArr[i10];
                    float f25 = fArr[i11];
                    f14 = fArr[i8];
                    f15 = fArr[i9];
                    f2 = f25;
                    f3 = f24;
                } else if (c5 == 'H') {
                    fArr = fArr3;
                    i2 = i5;
                    jvVar = jvVar3;
                    c2 = c5;
                    f2 = f21;
                    i3 = i4;
                    path2.lineTo(fArr[i2], f2);
                    f3 = fArr[i2];
                } else if (c5 == 'Q') {
                    fArr = fArr3;
                    i2 = i5;
                    i3 = i4;
                    jvVar = jvVar3;
                    c2 = c5;
                    int i12 = i2 + 1;
                    int i13 = i2 + 2;
                    int i14 = i2 + 3;
                    path2.quadTo(fArr[i2], fArr[i12], fArr[i13], fArr[i14]);
                    float f26 = fArr[i2];
                    float f27 = fArr[i12];
                    float f28 = fArr[i13];
                    float f29 = fArr[i14];
                    f14 = f26;
                    f15 = f27;
                    f3 = f28;
                    f2 = f29;
                } else if (c5 == 'V') {
                    fArr = fArr3;
                    i2 = i5;
                    i3 = i4;
                    jvVar = jvVar3;
                    f3 = f20;
                    c2 = c5;
                    path2.lineTo(f3, fArr[i2]);
                    f2 = fArr[i2];
                } else if (c5 != 'a') {
                    if (c5 == 'c') {
                        fArr = fArr3;
                        i2 = i5;
                        int i15 = i2 + 2;
                        int i16 = i2 + 3;
                        int i17 = i2 + 4;
                        int i18 = i2 + 5;
                        path2.rCubicTo(fArr[i2], fArr[i2 + 1], fArr[i15], fArr[i16], fArr[i17], fArr[i18]);
                        float f30 = fArr[i15] + f20;
                        float f31 = fArr[i16] + f21;
                        f20 += fArr[i17];
                        f21 += fArr[i18];
                        f14 = f30;
                        f15 = f31;
                    } else if (c5 != 'h') {
                        if (c5 != 'q') {
                            if (c5 != 'v') {
                                if (c5 == 'L') {
                                    fArr = fArr3;
                                    i2 = i5;
                                    int i19 = i2 + 1;
                                    path2.lineTo(fArr[i2], fArr[i19]);
                                    f3 = fArr[i2];
                                    f2 = fArr[i19];
                                } else if (c5 == 'M') {
                                    fArr = fArr3;
                                    i2 = i5;
                                    f3 = fArr[i2];
                                    f2 = fArr[i2 + 1];
                                    if (i2 > 0) {
                                        path2.lineTo(f3, f2);
                                    } else {
                                        path2.moveTo(f3, f2);
                                        f18 = f3;
                                        f19 = f2;
                                    }
                                } else if (c5 != 'S') {
                                    if (c5 == 'T') {
                                        fArr = fArr3;
                                        i2 = i5;
                                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                            f20 = (f20 * 2.0f) - f14;
                                            f21 = (f21 * 2.0f) - f15;
                                        }
                                        int i20 = i2 + 1;
                                        path2.quadTo(f20, f21, fArr[i2], fArr[i20]);
                                        f3 = fArr[i2];
                                        f2 = fArr[i20];
                                        jvVar = jvVar3;
                                        f14 = f20;
                                        f15 = f21;
                                    } else if (c5 == 'l') {
                                        fArr = fArr3;
                                        i2 = i5;
                                        int i21 = i2 + 1;
                                        path2.rLineTo(fArr[i2], fArr[i21]);
                                        f20 += fArr[i2];
                                        f7 = fArr[i21];
                                    } else if (c5 == 'm') {
                                        fArr = fArr3;
                                        i2 = i5;
                                        float f32 = fArr[i2];
                                        f20 += f32;
                                        float f33 = fArr[i2 + 1];
                                        f21 += f33;
                                        if (i2 > 0) {
                                            path2.rLineTo(f32, f33);
                                        } else {
                                            path2.rMoveTo(f32, f33);
                                            jvVar = jvVar3;
                                            f3 = f20;
                                            f18 = f3;
                                            f2 = f21;
                                            f19 = f2;
                                        }
                                    } else if (c5 != 's') {
                                        if (c5 != 't') {
                                            fArr = fArr3;
                                            i2 = i5;
                                            jvVar = jvVar3;
                                            f3 = f20;
                                        } else {
                                            if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                                f10 = f20 - f14;
                                                f11 = f21 - f15;
                                            } else {
                                                f11 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                                f10 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                            }
                                            int i22 = i5 + 1;
                                            path2.rQuadTo(f10, f11, fArr3[i5], fArr3[i22]);
                                            float f34 = f10 + f20;
                                            float f35 = f11 + f21;
                                            float f36 = f20 + fArr3[i5];
                                            f21 += fArr3[i22];
                                            f15 = f35;
                                            fArr = fArr3;
                                            i2 = i5;
                                            jvVar = jvVar3;
                                            f3 = f36;
                                            f14 = f34;
                                        }
                                        f2 = f21;
                                    } else {
                                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                            f8 = f21 - f15;
                                            f9 = f20 - f14;
                                        } else {
                                            f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                            f8 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                        }
                                        int i23 = i5;
                                        int i24 = i23 + 1;
                                        int i25 = i23 + 2;
                                        int i26 = i23 + 3;
                                        fArr = fArr3;
                                        i2 = i23;
                                        path2.rCubicTo(f9, f8, fArr3[i23], fArr3[i24], fArr3[i25], fArr3[i26]);
                                        f4 = fArr[i2] + f20;
                                        f5 = fArr[i24] + f21;
                                        f20 += fArr[i25];
                                        f6 = fArr[i26];
                                    }
                                    i3 = i4;
                                    c2 = c5;
                                } else {
                                    fArr = fArr3;
                                    i2 = i5;
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        f20 = (f20 * 2.0f) - f14;
                                        f21 = (f21 * 2.0f) - f15;
                                    }
                                    float f37 = f20;
                                    float f38 = f21;
                                    int i27 = i2 + 1;
                                    int i28 = i2 + 2;
                                    int i29 = i2 + 3;
                                    path2.cubicTo(f37, f38, fArr[i2], fArr[i27], fArr[i28], fArr[i29]);
                                    float f39 = fArr[i2];
                                    f14 = f39;
                                    f15 = fArr[i27];
                                    f3 = fArr[i28];
                                    f2 = fArr[i29];
                                }
                                i3 = i4;
                                jvVar = jvVar3;
                                c2 = c5;
                            } else {
                                fArr = fArr3;
                                i2 = i5;
                                path2.rLineTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, fArr[i2]);
                                f7 = fArr[i2];
                            }
                            f21 += f7;
                        } else {
                            fArr = fArr3;
                            i2 = i5;
                            int i30 = i2 + 1;
                            int i31 = i2 + 2;
                            int i32 = i2 + 3;
                            path2.rQuadTo(fArr[i2], fArr[i30], fArr[i31], fArr[i32]);
                            f4 = fArr[i2] + f20;
                            f5 = fArr[i30] + f21;
                            f20 += fArr[i31];
                            f6 = fArr[i32];
                        }
                        f21 += f6;
                        f14 = f4;
                        f15 = f5;
                    } else {
                        fArr = fArr3;
                        i2 = i5;
                        path2.rLineTo(fArr[i2], TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        f20 += fArr[i2];
                    }
                    jvVar = jvVar3;
                    f3 = f20;
                    f2 = f21;
                    i3 = i4;
                    c2 = c5;
                } else {
                    fArr = fArr3;
                    i2 = i5;
                    int i33 = i2 + 5;
                    float f40 = fArr[i33] + f20;
                    int i34 = i2 + 6;
                    float f41 = fArr[i34] + f21;
                    float f42 = fArr[i2];
                    float f43 = fArr[i2 + 1];
                    float f44 = fArr[i2 + 2];
                    if (fArr[i2 + 3] != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        jvVar2 = jvVar3;
                        z = true;
                    } else {
                        jvVar2 = jvVar3;
                        z = false;
                    }
                    jvVar = jvVar2;
                    float f45 = f20;
                    c2 = c5;
                    float f46 = f21;
                    i3 = i4;
                    c(path, f45, f46, f40, f41, f42, f43, f44, z, fArr[i2 + 4] != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    f3 = f45 + fArr[i33];
                    f2 = f46 + fArr[i34];
                    f14 = f3;
                    f15 = f2;
                }
                i5 = i2 + i;
                path2 = path;
                jvVar3 = jvVar;
                c5 = c2;
                i4 = i3;
                f20 = f3;
                f21 = f2;
                c4 = c5;
                fArr3 = fArr;
            }
            fArr2[0] = f20;
            fArr2[1] = f21;
            fArr2[2] = f14;
            fArr2[3] = f15;
            fArr2[4] = f18;
            fArr2[5] = f19;
            c4 = jvVar3.f19514a;
            i4++;
            jvVarArr2 = jvVarArr;
            path2 = path;
            c3 = 0;
        }
    }
}
