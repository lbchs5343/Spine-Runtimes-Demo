package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class fnf {

    /* renamed from: g, reason: collision with root package name */
    public final gz f17075g;
    public final fpd i;

    /* renamed from: d, reason: collision with root package name */
    public int f17072d = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f17070b = 8;

    /* renamed from: c, reason: collision with root package name */
    public int[] f17071c = new int[8];

    /* renamed from: e, reason: collision with root package name */
    public int[] f17073e = new int[8];
    public float[] j = new float[8];

    /* renamed from: a, reason: collision with root package name */
    public int f17069a = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f17074f = -1;
    public boolean h = false;

    public fnf(gz gzVar, fpd fpdVar) {
        this.f17075g = gzVar;
        this.i = fpdVar;
    }

    public final float k(crb crbVar, boolean z) {
        int i = this.f17069a;
        if (i == -1) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f17072d) {
            if (this.f17071c[i] == crbVar.k) {
                if (i == this.f17069a) {
                    this.f17069a = this.f17073e[i];
                } else {
                    int[] iArr = this.f17073e;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    crbVar.p(this.f17075g);
                }
                crbVar.f13364e--;
                this.f17072d--;
                this.f17071c[i] = -1;
                if (this.h) {
                    this.f17074f = i;
                }
                return this.j[i];
            }
            i2++;
            i3 = i;
            i = this.f17073e[i];
        }
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final int l() {
        return this.f17072d;
    }

    public final crb m(int i) {
        int i2 = this.f17069a;
        for (int i3 = 0; i2 != -1 && i3 < this.f17072d; i3++) {
            if (i3 == i) {
                return ((crb[]) this.i.f17188d)[this.f17071c[i2]];
            }
            i2 = this.f17073e[i2];
        }
        return null;
    }

    public final void n(crb crbVar, float f2, boolean z) {
        if (f2 <= -0.001f || f2 >= 0.001f) {
            int i = this.f17069a;
            gz gzVar = this.f17075g;
            if (i == -1) {
                this.f17069a = 0;
                this.j[0] = f2;
                this.f17071c[0] = crbVar.k;
                this.f17073e[0] = -1;
                crbVar.f13364e++;
                crbVar.o(gzVar);
                this.f17072d++;
                if (this.h) {
                    return;
                }
                int i2 = this.f17074f + 1;
                this.f17074f = i2;
                int[] iArr = this.f17071c;
                if (i2 >= iArr.length) {
                    this.h = true;
                    this.f17074f = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f17072d; i4++) {
                int i5 = this.f17071c[i];
                int i6 = crbVar.k;
                if (i5 == i6) {
                    float[] fArr = this.j;
                    float f3 = fArr[i] + f2;
                    if (f3 > -0.001f && f3 < 0.001f) {
                        f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    }
                    fArr[i] = f3;
                    if (f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        if (i == this.f17069a) {
                            this.f17069a = this.f17073e[i];
                        } else {
                            int[] iArr2 = this.f17073e;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            crbVar.p(gzVar);
                        }
                        if (this.h) {
                            this.f17074f = i;
                        }
                        crbVar.f13364e--;
                        this.f17072d--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.f17073e[i];
            }
            int i7 = this.f17074f;
            int i8 = i7 + 1;
            if (this.h) {
                int[] iArr3 = this.f17071c;
                if (iArr3[i7] != -1) {
                    i7 = iArr3.length;
                }
            } else {
                i7 = i8;
            }
            int[] iArr4 = this.f17071c;
            if (i7 >= iArr4.length && this.f17072d < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f17071c;
                    if (i9 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i9] == -1) {
                        i7 = i9;
                        break;
                    }
                    i9++;
                }
            }
            int[] iArr6 = this.f17071c;
            if (i7 >= iArr6.length) {
                i7 = iArr6.length;
                int i10 = this.f17070b * 2;
                this.f17070b = i10;
                this.h = false;
                this.f17074f = i7 - 1;
                this.j = Arrays.copyOf(this.j, i10);
                this.f17071c = Arrays.copyOf(this.f17071c, this.f17070b);
                this.f17073e = Arrays.copyOf(this.f17073e, this.f17070b);
            }
            this.f17071c[i7] = crbVar.k;
            this.j[i7] = f2;
            if (i3 != -1) {
                int[] iArr7 = this.f17073e;
                iArr7[i7] = iArr7[i3];
                iArr7[i3] = i7;
            } else {
                this.f17073e[i7] = this.f17069a;
                this.f17069a = i7;
            }
            crbVar.f13364e++;
            crbVar.o(gzVar);
            this.f17072d++;
            if (!this.h) {
                this.f17074f++;
            }
            int i11 = this.f17074f;
            int[] iArr8 = this.f17071c;
            if (i11 >= iArr8.length) {
                this.h = true;
                this.f17074f = iArr8.length - 1;
            }
        }
    }

    public final float o(int i) {
        int i2 = this.f17069a;
        for (int i3 = 0; i2 != -1 && i3 < this.f17072d; i3++) {
            if (i3 == i) {
                return this.j[i2];
            }
            i2 = this.f17073e[i2];
        }
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final void p() {
        int i = this.f17069a;
        for (int i2 = 0; i != -1 && i2 < this.f17072d; i2++) {
            crb crbVar = ((crb[]) this.i.f17188d)[this.f17071c[i]];
            if (crbVar != null) {
                crbVar.p(this.f17075g);
            }
            i = this.f17073e[i];
        }
        this.f17069a = -1;
        this.f17074f = -1;
        this.h = false;
        this.f17072d = 0;
    }

    public final float q(crb crbVar) {
        int i = this.f17069a;
        for (int i2 = 0; i != -1 && i2 < this.f17072d; i2++) {
            if (this.f17071c[i] == crbVar.k) {
                return this.j[i];
            }
            i = this.f17073e[i];
        }
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final void r(crb crbVar, float f2) {
        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            k(crbVar, true);
            return;
        }
        int i = this.f17069a;
        gz gzVar = this.f17075g;
        if (i == -1) {
            this.f17069a = 0;
            this.j[0] = f2;
            this.f17071c[0] = crbVar.k;
            this.f17073e[0] = -1;
            crbVar.f13364e++;
            crbVar.o(gzVar);
            this.f17072d++;
            if (this.h) {
                return;
            }
            int i2 = this.f17074f + 1;
            this.f17074f = i2;
            int[] iArr = this.f17071c;
            if (i2 >= iArr.length) {
                this.h = true;
                this.f17074f = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f17072d; i4++) {
            int i5 = this.f17071c[i];
            int i6 = crbVar.k;
            if (i5 == i6) {
                this.j[i] = f2;
                return;
            }
            if (i5 < i6) {
                i3 = i;
            }
            i = this.f17073e[i];
        }
        int i7 = this.f17074f;
        int i8 = i7 + 1;
        if (this.h) {
            int[] iArr2 = this.f17071c;
            if (iArr2[i7] != -1) {
                i7 = iArr2.length;
            }
        } else {
            i7 = i8;
        }
        int[] iArr3 = this.f17071c;
        if (i7 >= iArr3.length && this.f17072d < iArr3.length) {
            int i9 = 0;
            while (true) {
                int[] iArr4 = this.f17071c;
                if (i9 >= iArr4.length) {
                    break;
                }
                if (iArr4[i9] == -1) {
                    i7 = i9;
                    break;
                }
                i9++;
            }
        }
        int[] iArr5 = this.f17071c;
        if (i7 >= iArr5.length) {
            i7 = iArr5.length;
            int i10 = this.f17070b * 2;
            this.f17070b = i10;
            this.h = false;
            this.f17074f = i7 - 1;
            this.j = Arrays.copyOf(this.j, i10);
            this.f17071c = Arrays.copyOf(this.f17071c, this.f17070b);
            this.f17073e = Arrays.copyOf(this.f17073e, this.f17070b);
        }
        this.f17071c[i7] = crbVar.k;
        this.j[i7] = f2;
        if (i3 != -1) {
            int[] iArr6 = this.f17073e;
            iArr6[i7] = iArr6[i3];
            iArr6[i3] = i7;
        } else {
            this.f17073e[i7] = this.f17069a;
            this.f17069a = i7;
        }
        crbVar.f13364e++;
        crbVar.o(gzVar);
        int i11 = this.f17072d + 1;
        this.f17072d = i11;
        if (!this.h) {
            this.f17074f++;
        }
        int[] iArr7 = this.f17071c;
        if (i11 >= iArr7.length) {
            this.h = true;
        }
        if (this.f17074f >= iArr7.length) {
            this.h = true;
            this.f17074f = iArr7.length - 1;
        }
    }

    public final String toString() {
        int i = this.f17069a;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f17072d; i2++) {
            StringBuilder o = awf.o(awf.c(str, " -> "));
            o.append(this.j[i]);
            o.append(" : ");
            StringBuilder o2 = awf.o(o.toString());
            o2.append(((crb[]) this.i.f17188d)[this.f17071c[i]]);
            str = o2.toString();
            i = this.f17073e[i];
        }
        return str;
    }
}
