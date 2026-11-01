package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class gz {

    /* renamed from: a, reason: collision with root package name */
    public final fnf f19037a;

    /* renamed from: c, reason: collision with root package name */
    public crb f19039c = null;

    /* renamed from: d, reason: collision with root package name */
    public float f19040d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f19041e = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public boolean f19038b = false;

    public gz(fpd fpdVar) {
        this.f19037a = new fnf(this, fpdVar);
    }

    public final void f(bwo bwoVar, crb crbVar, boolean z) {
        if (crbVar.l) {
            float q = this.f19037a.q(crbVar);
            this.f19040d = (crbVar.h * q) + this.f19040d;
            this.f19037a.k(crbVar, z);
            if (z) {
                crbVar.p(this);
            }
            if (this.f19037a.l() == 0) {
                this.f19038b = true;
                bwoVar.n = true;
            }
        }
    }

    public crb g(boolean[] zArr) {
        return j(zArr, null);
    }

    public boolean h() {
        return this.f19039c == null && this.f19040d == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && this.f19037a.l() == 0;
    }

    public final void i(bwo bwoVar, int i) {
        this.f19037a.r(bwoVar.af(i), 1.0f);
        this.f19037a.r(bwoVar.af(i), -1.0f);
    }

    public final crb j(boolean[] zArr, crb crbVar) {
        gdo gdoVar;
        int l = this.f19037a.l();
        crb crbVar2 = null;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i = 0; i < l; i++) {
            float o = this.f19037a.o(i);
            if (o < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                crb m = this.f19037a.m(i);
                if ((zArr == null || !zArr[m.k]) && m != crbVar && (((gdoVar = m.j) == gdo.SLACK || gdoVar == gdo.ERROR) && o < f2)) {
                    f2 = o;
                    crbVar2 = m;
                }
            }
        }
        return crbVar2;
    }

    public void k(bwo bwoVar, gz gzVar, boolean z) {
        fnf fnfVar = this.f19037a;
        fnfVar.getClass();
        float q = fnfVar.q(gzVar.f19039c);
        fnfVar.k(gzVar.f19039c, z);
        fnf fnfVar2 = gzVar.f19037a;
        int l = fnfVar2.l();
        for (int i = 0; i < l; i++) {
            crb m = fnfVar2.m(i);
            fnfVar.n(m, fnfVar2.q(m) * q, z);
        }
        this.f19040d = (gzVar.f19040d * q) + this.f19040d;
        if (z) {
            gzVar.f19039c.p(this);
        }
        if (this.f19039c == null || this.f19037a.l() != 0) {
            return;
        }
        this.f19038b = true;
        bwoVar.n = true;
    }

    public final void l(crb crbVar, crb crbVar2, crb crbVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f19040d = i;
        }
        if (z) {
            this.f19037a.r(crbVar, 1.0f);
            this.f19037a.r(crbVar2, -1.0f);
            this.f19037a.r(crbVar3, -1.0f);
        } else {
            this.f19037a.r(crbVar, -1.0f);
            this.f19037a.r(crbVar2, 1.0f);
            this.f19037a.r(crbVar3, 1.0f);
        }
    }

    public final void m(crb crbVar, crb crbVar2, crb crbVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f19040d = i;
        }
        if (z) {
            this.f19037a.r(crbVar, 1.0f);
            this.f19037a.r(crbVar2, -1.0f);
            this.f19037a.r(crbVar3, 1.0f);
        } else {
            this.f19037a.r(crbVar, -1.0f);
            this.f19037a.r(crbVar2, 1.0f);
            this.f19037a.r(crbVar3, -1.0f);
        }
    }

    public final void n(crb crbVar) {
        crb crbVar2 = this.f19039c;
        if (crbVar2 != null) {
            this.f19037a.r(crbVar2, -1.0f);
            this.f19039c.f13363d = -1;
            this.f19039c = null;
        }
        float k = this.f19037a.k(crbVar, true) * (-1.0f);
        this.f19039c = crbVar;
        if (k == 1.0f) {
            return;
        }
        this.f19040d /= k;
        fnf fnfVar = this.f19037a;
        int i = fnfVar.f17069a;
        for (int i2 = 0; i != -1 && i2 < fnfVar.f17072d; i2++) {
            float[] fArr = fnfVar.j;
            fArr[i] = fArr[i] / k;
            i = fnfVar.f17073e[i];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        boolean z;
        String c2 = awf.c(this.f19039c == null ? "0" : "" + this.f19039c, " = ");
        if (this.f19040d != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            StringBuilder o = awf.o(c2);
            o.append(this.f19040d);
            c2 = o.toString();
            z = true;
        } else {
            z = false;
        }
        int l = this.f19037a.l();
        for (int i = 0; i < l; i++) {
            crb m = this.f19037a.m(i);
            if (m != null) {
                float o2 = this.f19037a.o(i);
                if (o2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    String crbVar = m.toString();
                    if (!z) {
                        if (o2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            c2 = awf.c(c2, "- ");
                            o2 *= -1.0f;
                        }
                        c2 = o2 == 1.0f ? awf.c(c2, crbVar) : c2 + o2 + " " + crbVar;
                        z = true;
                    } else if (o2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        c2 = awf.c(c2, " + ");
                        if (o2 == 1.0f) {
                        }
                        z = true;
                    } else {
                        c2 = awf.c(c2, " - ");
                        o2 *= -1.0f;
                        if (o2 == 1.0f) {
                        }
                        z = true;
                    }
                }
            }
        }
        return !z ? awf.c(c2, "0.0") : c2;
    }
}
