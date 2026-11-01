package g;

import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class dnk extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public int f14465a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f14466ab;
    public int ac;
    public int ad;
    public boolean ae;
    public int af;
    public int ag;
    public boolean ah;
    public int ai;
    public int aj;
    public int ak;
    public int al;
    public int am;
    public int an;
    public int ao;
    public boolean ap;
    public float aq;
    public int ar;
    public int as;
    public int at;
    public int au;
    public int av;
    public brh aw;
    public int ax;
    public int ay;
    public int az;

    /* renamed from: b, reason: collision with root package name */
    public int f14467b;
    public int ba;
    public float bb;
    public int bc;
    public boolean bd;
    public float be;
    public float bf;
    public int bg;
    public int bh;
    public float bi;
    public int bj;
    public float bk;
    public float bl;
    public int bm;
    public int bn;
    public float bo;
    public String bp;

    /* renamed from: c, reason: collision with root package name */
    public int f14468c;

    /* renamed from: d, reason: collision with root package name */
    public int f14469d;

    /* renamed from: e, reason: collision with root package name */
    public int f14470e;

    /* renamed from: f, reason: collision with root package name */
    public float f14471f;

    /* renamed from: g, reason: collision with root package name */
    public int f14472g;
    public int h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public int m;
    public float n;
    public String o;
    public boolean p;
    public int q;
    public int r;
    public boolean s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public final void bq() {
        this.i = false;
        this.ap = true;
        this.f14466ab = true;
        int i = ((ViewGroup.MarginLayoutParams) this).width;
        if (i == -2 && this.ah) {
            this.ap = false;
            if (this.f14472g == 0) {
                this.f14472g = 1;
            }
        }
        int i2 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i2 == -2 && this.ae) {
            this.f14466ab = false;
            if (this.ad == 0) {
                this.ad = 1;
            }
        }
        if (i == 0 || i == -1) {
            this.ap = false;
            if (i == 0 && this.f14472g == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.ah = true;
            }
        }
        if (i2 == 0 || i2 == -1) {
            this.f14466ab = false;
            if (i2 == 0 && this.ad == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.ae = true;
            }
        }
        if (this.bf == -1.0f && this.y == -1 && this.au == -1) {
            return;
        }
        this.i = true;
        this.ap = true;
        this.f14466ab = true;
        if (!(this.aw instanceof aar)) {
            this.aw = new aar();
        }
        ((aar) this.aw).n(this.q);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void resolveLayoutDirection(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
        int i7 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
        super.resolveLayoutDirection(i);
        boolean z = false;
        boolean z2 = 1 == getLayoutDirection();
        this.f14470e = -1;
        this.f14467b = -1;
        this.bh = -1;
        this.v = -1;
        this.bg = this.ai;
        this.ak = this.k;
        float f2 = this.bl;
        this.bi = f2;
        int i8 = this.y;
        this.h = i8;
        int i9 = this.au;
        this.at = i9;
        float f3 = this.bf;
        this.n = f3;
        if (z2) {
            int i10 = this.am;
            if (i10 != -1) {
                this.f14470e = i10;
            } else {
                int i11 = this.ba;
                if (i11 != -1) {
                    this.f14467b = i11;
                }
                i2 = this.z;
                if (i2 != -1) {
                    this.v = i2;
                    z = true;
                }
                i3 = this.ag;
                if (i3 != -1) {
                    this.bh = i3;
                    z = true;
                }
                i4 = this.az;
                if (i4 != Integer.MIN_VALUE) {
                    this.ak = i4;
                }
                i5 = this.t;
                if (i5 != Integer.MIN_VALUE) {
                    this.bg = i5;
                }
                if (z) {
                    this.bi = 1.0f - f2;
                }
                if (this.i && this.q == 1 && this.s) {
                    if (f3 == -1.0f) {
                        this.n = 1.0f - f3;
                        this.h = -1;
                        this.at = -1;
                    } else if (i8 != -1) {
                        this.at = i8;
                        this.h = -1;
                        this.n = -1.0f;
                    } else if (i9 != -1) {
                        this.h = i9;
                        this.at = -1;
                        this.n = -1.0f;
                    }
                }
            }
            z = true;
            i2 = this.z;
            if (i2 != -1) {
            }
            i3 = this.ag;
            if (i3 != -1) {
            }
            i4 = this.az;
            if (i4 != Integer.MIN_VALUE) {
            }
            i5 = this.t;
            if (i5 != Integer.MIN_VALUE) {
            }
            if (z) {
            }
            if (this.i) {
                if (f3 == -1.0f) {
                }
            }
        } else {
            int i12 = this.am;
            if (i12 != -1) {
                this.v = i12;
            }
            int i13 = this.ba;
            if (i13 != -1) {
                this.bh = i13;
            }
            int i14 = this.z;
            if (i14 != -1) {
                this.f14470e = i14;
            }
            int i15 = this.ag;
            if (i15 != -1) {
                this.f14467b = i15;
            }
            int i16 = this.az;
            if (i16 != Integer.MIN_VALUE) {
                this.bg = i16;
            }
            int i17 = this.t;
            if (i17 != Integer.MIN_VALUE) {
                this.ak = i17;
            }
        }
        if (this.z == -1 && this.ag == -1 && this.ba == -1 && this.am == -1) {
            int i18 = this.bn;
            if (i18 != -1) {
                this.f14470e = i18;
                if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                    ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                }
            } else {
                int i19 = this.f14468c;
                if (i19 != -1) {
                    this.f14467b = i19;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                    }
                }
            }
            int i20 = this.w;
            if (i20 != -1) {
                this.bh = i20;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                return;
            }
            int i21 = this.aj;
            if (i21 != -1) {
                this.v = i21;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
            }
        }
    }
}
