package j$.util.concurrent;

/* loaded from: classes2.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public l[] f20759a;

    /* renamed from: b, reason: collision with root package name */
    public l f20760b = null;

    /* renamed from: c, reason: collision with root package name */
    public o f20761c;

    /* renamed from: d, reason: collision with root package name */
    public o f20762d;

    /* renamed from: e, reason: collision with root package name */
    public int f20763e;

    /* renamed from: f, reason: collision with root package name */
    public int f20764f;

    /* renamed from: g, reason: collision with root package name */
    public int f20765g;
    public final int h;

    public p(l[] lVarArr, int i, int i2, int i3) {
        this.f20759a = lVarArr;
        this.h = i;
        this.f20763e = i2;
        this.f20764f = i2;
        this.f20765g = i3;
    }

    public final l a() {
        l[] lVarArr;
        int length;
        int i;
        o oVar;
        l lVar = this.f20760b;
        if (lVar != null) {
            lVar = lVar.f20754d;
        }
        while (lVar == null) {
            if (this.f20764f >= this.f20765g || (lVarArr = this.f20759a) == null || (length = lVarArr.length) <= (i = this.f20763e) || i < 0) {
                this.f20760b = null;
                return null;
            }
            l k = ConcurrentHashMap.k(lVarArr, i);
            if (k == null || k.f20751a >= 0) {
                lVar = k;
            } else if (k instanceof g) {
                this.f20759a = ((g) k).f20747e;
                o oVar2 = this.f20762d;
                if (oVar2 != null) {
                    this.f20762d = oVar2.f20758d;
                } else {
                    oVar2 = new o();
                }
                oVar2.f20757c = lVarArr;
                oVar2.f20755a = length;
                oVar2.f20756b = i;
                oVar2.f20758d = this.f20761c;
                this.f20761c = oVar2;
                lVar = null;
            } else {
                lVar = k instanceof q ? ((q) k).f20767f : null;
            }
            if (this.f20761c != null) {
                while (true) {
                    oVar = this.f20761c;
                    if (oVar == null) {
                        break;
                    }
                    int i2 = this.f20763e;
                    int i3 = oVar.f20755a;
                    int i4 = i2 + i3;
                    this.f20763e = i4;
                    if (i4 < length) {
                        break;
                    }
                    this.f20763e = oVar.f20756b;
                    this.f20759a = oVar.f20757c;
                    oVar.f20757c = null;
                    o oVar3 = oVar.f20758d;
                    oVar.f20758d = this.f20762d;
                    this.f20761c = oVar3;
                    this.f20762d = oVar;
                    length = i3;
                }
                if (oVar == null) {
                    int i5 = this.f20763e + this.h;
                    this.f20763e = i5;
                    if (i5 >= length) {
                        int i6 = this.f20764f + 1;
                        this.f20764f = i6;
                        this.f20763e = i6;
                    }
                }
            } else {
                int i7 = i + this.h;
                this.f20763e = i7;
                if (i7 >= length) {
                    int i8 = this.f20764f + 1;
                    this.f20764f = i8;
                    this.f20763e = i8;
                }
            }
        }
        this.f20760b = lVar;
        return lVar;
    }
}
