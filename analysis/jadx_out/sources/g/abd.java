package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzdb;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class abd {

    /* renamed from: a, reason: collision with root package name */
    public final int f9904a;

    /* renamed from: b, reason: collision with root package name */
    public int f9905b;

    /* renamed from: c, reason: collision with root package name */
    public int f9906c;

    /* renamed from: d, reason: collision with root package name */
    public short[] f9907d;

    /* renamed from: e, reason: collision with root package name */
    public final float f9908e;

    /* renamed from: f, reason: collision with root package name */
    public short[] f9909f;

    /* renamed from: g, reason: collision with root package name */
    public final float f9910g;
    public final int h;
    public int i;
    public int j;
    public final int k;
    public int l;
    public int m;
    public int n;
    public final short[] o;
    public final int p;
    public short[] q;
    public int r;
    public int s;
    public final float t;
    public final int u;
    public int v;

    public abd(int i, int i2, float f2, float f3, int i3) {
        this.h = i;
        this.p = i2;
        this.t = f2;
        this.f9908e = f3;
        this.f9910g = i / i3;
        this.k = i / MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        int i4 = i / 65;
        this.u = i4;
        int i5 = i4 + i4;
        this.f9904a = i5;
        this.o = new short[i5];
        int i6 = i5 * i2;
        this.q = new short[i6];
        this.f9909f = new short[i6];
        this.f9907d = new short[i6];
    }

    public static void w(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i7])) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }

    public final void aa(short[] sArr, int i, int i2) {
        short[] z = z(this.f9909f, this.n, i2);
        this.f9909f = z;
        int i3 = this.n;
        int i4 = this.p;
        System.arraycopy(sArr, i * i4, z, i3 * i4, i2 * i4);
        this.n += i2;
    }

    public final void ab(short[] sArr, int i, int i2) {
        int i3;
        for (int i4 = 0; i4 < this.f9904a / i2; i4++) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int i7 = this.p;
                i3 = i7 * i2;
                if (i5 < i3) {
                    i6 += sArr[(i3 * i4) + (i7 * i) + i5];
                    i5++;
                }
            }
            this.o[i4] = (short) (i6 / i3);
        }
    }

    public final void x() {
        float f2;
        float f3;
        float f4;
        double d2;
        int i;
        int i2;
        int i3;
        int i4;
        float f5;
        int i5;
        int i6;
        int i7;
        int i8;
        float f6 = this.t;
        float f7 = this.f9908e;
        float f8 = f6 / f7;
        double d3 = f8;
        int i9 = this.h;
        int i10 = this.p;
        int i11 = 1;
        int i12 = this.n;
        if (d3 > 1.00001d || d3 < 0.99999d) {
            int i13 = this.f9905b;
            int i14 = this.f9904a;
            if (i13 >= i14) {
                int i15 = 0;
                while (true) {
                    int i16 = this.v;
                    if (i16 > 0) {
                        int min = Math.min(i14, i16);
                        aa(this.q, i15, min);
                        this.v -= min;
                        i15 += min;
                        f3 = f8;
                        f4 = f7;
                        d2 = d3;
                        f2 = 1.0f;
                    } else {
                        short[] sArr = this.q;
                        int i17 = i9 > 4000 ? i9 / TTAdConstant.INIT_LOCAL_FAIL_CODE : 1;
                        f2 = 1.0f;
                        int i18 = this.u;
                        int i19 = this.k;
                        if (i10 == i11 && i17 == i11) {
                            i = y(sArr, i15, i19, i18);
                            f3 = f8;
                            f4 = f7;
                            d2 = d3;
                        } else {
                            ab(sArr, i15, i17);
                            f3 = f8;
                            f4 = f7;
                            short[] sArr2 = this.o;
                            d2 = d3;
                            int y = y(sArr2, 0, i19 / i17, i18 / i17);
                            if (i17 != 1) {
                                int i20 = y * i17;
                                int i21 = i17 * 4;
                                int i22 = i20 - i21;
                                if (i22 >= i19) {
                                    i19 = i22;
                                }
                                int i23 = i20 + i21;
                                if (i23 <= i18) {
                                    i18 = i23;
                                }
                                if (i10 == 1) {
                                    i = y(sArr, i15, i19, i18);
                                } else {
                                    ab(sArr, i15, 1);
                                    i = y(sArr2, 0, i19, i18);
                                }
                            } else {
                                i = y;
                            }
                        }
                        int i24 = this.i;
                        int i25 = this.j;
                        if (i24 == 0 || (i2 = this.l) == 0 || i25 > i24 * 3 || i24 + i24 <= this.s * 3) {
                            i2 = i;
                        }
                        int i26 = i15 + i2;
                        this.s = i24;
                        this.l = i;
                        float f9 = i2;
                        if (d2 > 1.0d) {
                            short[] sArr3 = this.q;
                            float f10 = f3 - 1.0f;
                            if (f3 >= 2.0f) {
                                i4 = (int) (f9 / f10);
                            } else {
                                this.v = (int) (((2.0f - f3) * f9) / f10);
                                i4 = i2;
                            }
                            short[] z = z(this.f9909f, this.n, i4);
                            this.f9909f = z;
                            int i27 = i15;
                            int i28 = i4;
                            w(i28, this.p, z, this.n, sArr3, i27, sArr3, i26);
                            this.n += i28;
                            i15 = i2 + i28 + i27;
                        } else {
                            int i29 = i15;
                            short[] sArr4 = this.q;
                            float f11 = 1.0f - f3;
                            if (f3 < 0.5f) {
                                i3 = (int) ((f9 * f3) / f11);
                            } else {
                                this.v = (int) ((((f3 + f3) - 1.0f) * f9) / f11);
                                i3 = i2;
                            }
                            int i30 = i2 + i3;
                            short[] z2 = z(this.f9909f, this.n, i30);
                            this.f9909f = z2;
                            System.arraycopy(sArr4, i29 * i10, z2, this.n * i10, i2 * i10);
                            w(i3, this.p, this.f9909f, this.n + i2, sArr4, i26, sArr4, i29);
                            this.n += i30;
                            i15 = i29 + i3;
                        }
                    }
                    if (i15 + i14 > i13) {
                        break;
                    }
                    f8 = f3;
                    f7 = f4;
                    d3 = d2;
                    i11 = 1;
                }
                int i31 = this.f9905b - i15;
                short[] sArr5 = this.q;
                System.arraycopy(sArr5, i15 * i10, sArr5, 0, i31 * i10);
                this.f9905b = i31;
                f5 = this.f9910g * f4;
                if (f5 != f2 || this.n == i12) {
                }
                int i32 = (int) (i9 / f5);
                while (true) {
                    if (i32 <= 16384 && i9 <= 16384) {
                        break;
                    }
                    i32 /= 2;
                    i9 /= 2;
                }
                int i33 = this.n - i12;
                short[] z3 = z(this.f9907d, this.f9906c, i33);
                this.f9907d = z3;
                System.arraycopy(this.f9909f, i12 * i10, z3, this.f9906c * i10, i33 * i10);
                this.n = i12;
                this.f9906c += i33;
                int i34 = 0;
                while (true) {
                    i5 = this.f9906c;
                    i6 = i5 - 1;
                    if (i34 >= i6) {
                        break;
                    }
                    while (true) {
                        i7 = this.m + 1;
                        int i35 = i7 * i32;
                        i8 = this.r;
                        if (i35 <= i8 * i9) {
                            break;
                        }
                        this.f9909f = z(this.f9909f, this.n, 1);
                        for (int i36 = 0; i36 < i10; i36++) {
                            short[] sArr6 = this.f9909f;
                            int i37 = this.n * i10;
                            short[] sArr7 = this.f9907d;
                            int i38 = (i34 * i10) + i36;
                            short s = sArr7[i38];
                            short s2 = sArr7[i38 + i10];
                            int i39 = this.r * i9;
                            int i40 = this.m;
                            int i41 = i40 * i32;
                            int i42 = (i40 + 1) * i32;
                            int i43 = i42 - i39;
                            int i44 = i42 - i41;
                            sArr6[i37 + i36] = (short) ((((i44 - i43) * s2) + (s * i43)) / i44);
                        }
                        this.r++;
                        this.n++;
                    }
                    this.m = i7;
                    if (i7 == i9) {
                        this.m = 0;
                        zzdb.zzf(i8 == i32);
                        this.r = 0;
                    }
                    i34++;
                }
                if (i6 != 0) {
                    short[] sArr8 = this.f9907d;
                    System.arraycopy(sArr8, i6 * i10, sArr8, 0, (i5 - i6) * i10);
                    this.f9906c -= i6;
                    return;
                }
                return;
            }
        } else {
            aa(this.q, 0, this.f9905b);
            this.f9905b = 0;
        }
        f4 = f7;
        f2 = 1.0f;
        f5 = this.f9910g * f4;
        if (f5 != f2) {
        }
    }

    public final int y(short[] sArr, int i, int i2, int i3) {
        int i4 = 1;
        int i5 = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i6 = 0;
        int i7 = 0;
        while (i2 <= i3) {
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = this.p * i;
                i8 += Math.abs(sArr[i10 + i9] - sArr[(i10 + i2) + i9]);
            }
            int i11 = i8 * i6;
            int i12 = i4 * i2;
            if (i11 < i12) {
                i4 = i8;
            }
            if (i11 < i12) {
                i6 = i2;
            }
            int i13 = i8 * i5;
            int i14 = i7 * i2;
            if (i13 > i14) {
                i7 = i8;
            }
            if (i13 > i14) {
                i5 = i2;
            }
            i2++;
        }
        this.i = i4 / i6;
        this.j = i7 / i5;
        return i6;
    }

    public final short[] z(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.p;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }
}
