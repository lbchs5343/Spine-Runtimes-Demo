package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class md extends gz {
    public int o;
    public crb[] p;
    public ffr q;
    public crb[] r;

    @Override // g.gz
    public final crb g(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.o; i2++) {
            crb[] crbVarArr = this.p;
            crb crbVar = crbVarArr[i2];
            if (!zArr[crbVar.k]) {
                ffr ffrVar = this.q;
                ffrVar.f16721f = crbVar;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f2 = ((crb) ffrVar.f16721f).f13360a[i3];
                        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    crb crbVar2 = crbVarArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f3 = crbVar2.f13360a[i3];
                            float f4 = ((crb) ffrVar.f16721f).f13360a[i3];
                            if (f4 == f3) {
                                i3--;
                            } else if (f4 >= f3) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.p[i];
    }

    @Override // g.gz
    public final boolean h() {
        return this.o == 0;
    }

    @Override // g.gz
    public final void k(bwo bwoVar, gz gzVar, boolean z) {
        crb crbVar = gzVar.f19039c;
        if (crbVar == null) {
            return;
        }
        float[] fArr = crbVar.f13360a;
        fnf fnfVar = gzVar.f19037a;
        int l = fnfVar.l();
        for (int i = 0; i < l; i++) {
            crb m = fnfVar.m(i);
            float o = fnfVar.o(i);
            ffr ffrVar = this.q;
            ffrVar.f16721f = m;
            if (m.i) {
                boolean z2 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = ((crb) ffrVar.f16721f).f13360a;
                    float f2 = (fArr[i2] * o) + fArr2[i2];
                    fArr2[i2] = f2;
                    if (Math.abs(f2) < 1.0E-4f) {
                        ((crb) ffrVar.f16721f).f13360a[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    ((md) ffrVar.f16719c).s((crb) ffrVar.f16721f);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f3 = fArr[i3];
                    if (f3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        float f4 = f3 * o;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        ((crb) ffrVar.f16721f).f13360a[i3] = f4;
                    } else {
                        ((crb) ffrVar.f16721f).f13360a[i3] = 0.0f;
                    }
                }
                t(m);
            }
            this.f19040d = (gzVar.f19040d * o) + this.f19040d;
        }
        s(crbVar);
    }

    public final void s(crb crbVar) {
        int i = 0;
        while (i < this.o) {
            if (this.p[i] == crbVar) {
                while (true) {
                    int i2 = this.o;
                    if (i >= i2 - 1) {
                        this.o = i2 - 1;
                        crbVar.i = false;
                        return;
                    } else {
                        crb[] crbVarArr = this.p;
                        int i3 = i + 1;
                        crbVarArr[i] = crbVarArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    public final void t(crb crbVar) {
        int i;
        int i2 = this.o + 1;
        crb[] crbVarArr = this.p;
        if (i2 > crbVarArr.length) {
            crb[] crbVarArr2 = (crb[]) Arrays.copyOf(crbVarArr, crbVarArr.length * 2);
            this.p = crbVarArr2;
            this.r = (crb[]) Arrays.copyOf(crbVarArr2, crbVarArr2.length * 2);
        }
        crb[] crbVarArr3 = this.p;
        int i3 = this.o;
        crbVarArr3[i3] = crbVar;
        int i4 = i3 + 1;
        this.o = i4;
        if (i4 > 1 && crbVarArr3[i3].k > crbVar.k) {
            int i5 = 0;
            while (true) {
                i = this.o;
                if (i5 >= i) {
                    break;
                }
                this.r[i5] = this.p[i5];
                i5++;
            }
            Arrays.sort(this.r, 0, i, new aqn(8));
            for (int i6 = 0; i6 < this.o; i6++) {
                this.p[i6] = this.r[i6];
            }
        }
        crbVar.i = true;
        crbVar.o(this);
    }

    @Override // g.gz
    public final String toString() {
        ffr ffrVar = this.q;
        String str = " goal -> (" + this.f19040d + ") : ";
        for (int i = 0; i < this.o; i++) {
            ffrVar.f16721f = this.p[i];
            str = str + ffrVar + " ";
        }
        return str;
    }
}
