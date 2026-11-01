package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class crb implements Comparable {
    public float h;
    public boolean i;
    public gdo j;
    public int k = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f13363d = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f13366g = 0;
    public boolean l = false;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f13361b = new float[9];

    /* renamed from: a, reason: collision with root package name */
    public final float[] f13360a = new float[9];

    /* renamed from: c, reason: collision with root package name */
    public gz[] f13362c = new gz[16];

    /* renamed from: f, reason: collision with root package name */
    public int f13365f = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f13364e = 0;

    public crb(gdo gdoVar) {
        this.j = gdoVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.k - ((crb) obj).k;
    }

    public final void m(bwo bwoVar, float f2) {
        this.h = f2;
        this.l = true;
        int i = this.f13365f;
        this.f13363d = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13362c[i2].f(bwoVar, this, false);
        }
        this.f13365f = 0;
    }

    public final void n(bwo bwoVar, gz gzVar) {
        int i = this.f13365f;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13362c[i2].k(bwoVar, gzVar, false);
        }
        this.f13365f = 0;
    }

    public final void o(gz gzVar) {
        int i = 0;
        while (true) {
            int i2 = this.f13365f;
            if (i >= i2) {
                gz[] gzVarArr = this.f13362c;
                if (i2 >= gzVarArr.length) {
                    this.f13362c = (gz[]) Arrays.copyOf(gzVarArr, gzVarArr.length * 2);
                }
                gz[] gzVarArr2 = this.f13362c;
                int i3 = this.f13365f;
                gzVarArr2[i3] = gzVar;
                this.f13365f = i3 + 1;
                return;
            }
            if (this.f13362c[i] == gzVar) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void p(gz gzVar) {
        int i = this.f13365f;
        int i2 = 0;
        while (i2 < i) {
            if (this.f13362c[i2] == gzVar) {
                while (i2 < i - 1) {
                    gz[] gzVarArr = this.f13362c;
                    int i3 = i2 + 1;
                    gzVarArr[i2] = gzVarArr[i3];
                    i2 = i3;
                }
                this.f13365f--;
                return;
            }
            i2++;
        }
    }

    public final void q() {
        this.j = gdo.UNKNOWN;
        this.f13366g = 0;
        this.k = -1;
        this.f13363d = -1;
        this.h = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.l = false;
        int i = this.f13365f;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13362c[i2] = null;
        }
        this.f13365f = 0;
        this.f13364e = 0;
        this.i = false;
        Arrays.fill(this.f13360a, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    public final String toString() {
        return "" + this.k;
    }
}
