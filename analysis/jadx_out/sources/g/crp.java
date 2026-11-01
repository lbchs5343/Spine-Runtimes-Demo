package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class crp {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f13391a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f13392ab;
    public int ac;
    public int ad;
    public int ae;
    public int af;
    public int ag;
    public int ah;
    public int ai;
    public float aj;
    public float ak;
    public String al;
    public int am;
    public int an;
    public int ao;
    public int ap;
    public int aq;
    public int ar;
    public int as;
    public int at;
    public boolean au;
    public int av;
    public float aw;
    public int ax;
    public int ay;
    public int az;

    /* renamed from: b, reason: collision with root package name */
    public int f13393b;
    public int ba;
    public int bb;
    public int bc;
    public float bd;
    public int be;
    public int bf;
    public String bg;
    public int bh;
    public boolean bi;
    public int bj;
    public int bk;
    public int bl;
    public float bm;
    public boolean bn;
    public int bo;
    public int bp;

    /* renamed from: c, reason: collision with root package name */
    public int[] f13394c;

    /* renamed from: d, reason: collision with root package name */
    public int f13395d;

    /* renamed from: e, reason: collision with root package name */
    public int f13396e;

    /* renamed from: f, reason: collision with root package name */
    public int f13397f;

    /* renamed from: g, reason: collision with root package name */
    public int f13398g;
    public int h;
    public boolean i;
    public float j;
    public int k;
    public String l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public float u;
    public int v;
    public int w;
    public int x;
    public float y;
    public boolean z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13391a = sparseIntArray;
        sparseIntArray.append(43, 24);
        sparseIntArray.append(44, 25);
        sparseIntArray.append(46, 28);
        sparseIntArray.append(47, 29);
        sparseIntArray.append(52, 35);
        sparseIntArray.append(51, 34);
        sparseIntArray.append(24, 4);
        sparseIntArray.append(23, 3);
        sparseIntArray.append(19, 1);
        sparseIntArray.append(61, 6);
        sparseIntArray.append(62, 7);
        sparseIntArray.append(31, 17);
        sparseIntArray.append(32, 18);
        sparseIntArray.append(33, 19);
        sparseIntArray.append(15, 90);
        sparseIntArray.append(0, 26);
        sparseIntArray.append(48, 31);
        sparseIntArray.append(49, 32);
        sparseIntArray.append(30, 10);
        sparseIntArray.append(29, 9);
        sparseIntArray.append(66, 13);
        sparseIntArray.append(69, 16);
        sparseIntArray.append(67, 14);
        sparseIntArray.append(64, 11);
        sparseIntArray.append(68, 15);
        sparseIntArray.append(65, 12);
        sparseIntArray.append(55, 38);
        sparseIntArray.append(41, 37);
        sparseIntArray.append(40, 39);
        sparseIntArray.append(54, 40);
        sparseIntArray.append(39, 20);
        sparseIntArray.append(53, 36);
        sparseIntArray.append(28, 5);
        sparseIntArray.append(42, 91);
        sparseIntArray.append(50, 91);
        sparseIntArray.append(45, 91);
        sparseIntArray.append(22, 91);
        sparseIntArray.append(18, 91);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(5, 27);
        sparseIntArray.append(7, 30);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(4, 33);
        sparseIntArray.append(6, 2);
        sparseIntArray.append(1, 22);
        sparseIntArray.append(2, 21);
        sparseIntArray.append(56, 41);
        sparseIntArray.append(34, 42);
        sparseIntArray.append(17, 87);
        sparseIntArray.append(16, 88);
        sparseIntArray.append(71, 76);
        sparseIntArray.append(25, 61);
        sparseIntArray.append(27, 62);
        sparseIntArray.append(26, 63);
        sparseIntArray.append(60, 69);
        sparseIntArray.append(38, 70);
        sparseIntArray.append(12, 71);
        sparseIntArray.append(10, 72);
        sparseIntArray.append(11, 73);
        sparseIntArray.append(13, 74);
        sparseIntArray.append(9, 75);
        sparseIntArray.append(58, 84);
        sparseIntArray.append(59, 86);
        sparseIntArray.append(58, 83);
        sparseIntArray.append(37, 85);
        sparseIntArray.append(56, 87);
        sparseIntArray.append(34, 88);
        sparseIntArray.append(91, 89);
        sparseIntArray.append(15, 90);
    }

    public final void bq(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bfv.f11476c);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray = f13391a;
            int i2 = sparseIntArray.get(index);
            switch (i2) {
                case 1:
                    this.ao = ebt.g(obtainStyledAttributes, index, this.ao);
                    break;
                case 2:
                    this.bk = obtainStyledAttributes.getDimensionPixelSize(index, this.bk);
                    break;
                case 3:
                    this.k = ebt.g(obtainStyledAttributes, index, this.k);
                    break;
                case 4:
                    this.s = ebt.g(obtainStyledAttributes, index, this.s);
                    break;
                case 5:
                    this.l = obtainStyledAttributes.getString(index);
                    break;
                case 6:
                    this.ad = obtainStyledAttributes.getDimensionPixelOffset(index, this.ad);
                    break;
                case 7:
                    this.f13392ab = obtainStyledAttributes.getDimensionPixelOffset(index, this.f13392ab);
                    break;
                case 8:
                    this.am = obtainStyledAttributes.getDimensionPixelSize(index, this.am);
                    break;
                case 9:
                    this.ah = ebt.g(obtainStyledAttributes, index, this.ah);
                    break;
                case 10:
                    this.aa = ebt.g(obtainStyledAttributes, index, this.aa);
                    break;
                case 11:
                    this.as = obtainStyledAttributes.getDimensionPixelSize(index, this.as);
                    break;
                case 12:
                    this.m = obtainStyledAttributes.getDimensionPixelSize(index, this.m);
                    break;
                case 13:
                    this.ae = obtainStyledAttributes.getDimensionPixelSize(index, this.ae);
                    break;
                case 14:
                    this.bc = obtainStyledAttributes.getDimensionPixelSize(index, this.bc);
                    break;
                case 15:
                    this.ar = obtainStyledAttributes.getDimensionPixelSize(index, this.ar);
                    break;
                case 16:
                    this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                    break;
                case 17:
                    this.t = obtainStyledAttributes.getDimensionPixelOffset(index, this.t);
                    break;
                case 18:
                    this.x = obtainStyledAttributes.getDimensionPixelOffset(index, this.x);
                    break;
                case 19:
                    this.ak = obtainStyledAttributes.getFloat(index, this.ak);
                    break;
                case 20:
                    this.aj = obtainStyledAttributes.getFloat(index, this.aj);
                    break;
                case 21:
                    this.bf = obtainStyledAttributes.getLayoutDimension(index, this.bf);
                    break;
                case 22:
                    this.av = obtainStyledAttributes.getLayoutDimension(index, this.av);
                    break;
                case 23:
                    this.bb = obtainStyledAttributes.getDimensionPixelSize(index, this.bb);
                    break;
                case 24:
                    this.f13395d = ebt.g(obtainStyledAttributes, index, this.f13395d);
                    break;
                case 25:
                    this.at = ebt.g(obtainStyledAttributes, index, this.at);
                    break;
                case 26:
                    this.bl = obtainStyledAttributes.getInt(index, this.bl);
                    break;
                case 27:
                    this.p = obtainStyledAttributes.getDimensionPixelSize(index, this.p);
                    break;
                case 28:
                    this.ax = ebt.g(obtainStyledAttributes, index, this.ax);
                    break;
                case 29:
                    this.f13396e = ebt.g(obtainStyledAttributes, index, this.f13396e);
                    break;
                case 30:
                    this.ag = obtainStyledAttributes.getDimensionPixelSize(index, this.ag);
                    break;
                case 31:
                    this.an = ebt.g(obtainStyledAttributes, index, this.an);
                    break;
                case 32:
                    this.ba = ebt.g(obtainStyledAttributes, index, this.ba);
                    break;
                case 33:
                    this.f13398g = obtainStyledAttributes.getDimensionPixelSize(index, this.f13398g);
                    break;
                case 34:
                    this.ap = ebt.g(obtainStyledAttributes, index, this.ap);
                    break;
                case 35:
                    this.v = ebt.g(obtainStyledAttributes, index, this.v);
                    break;
                case 36:
                    this.bm = obtainStyledAttributes.getFloat(index, this.bm);
                    break;
                case 37:
                    this.y = obtainStyledAttributes.getFloat(index, this.y);
                    break;
                case 38:
                    this.aw = obtainStyledAttributes.getFloat(index, this.aw);
                    break;
                case 39:
                    this.r = obtainStyledAttributes.getInt(index, this.r);
                    break;
                case 40:
                    this.ai = obtainStyledAttributes.getInt(index, this.ai);
                    break;
                case 41:
                    ebt.j(this, obtainStyledAttributes, index, 0);
                    break;
                case 42:
                    ebt.j(this, obtainStyledAttributes, index, 1);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            this.f13393b = ebt.g(obtainStyledAttributes, index, this.f13393b);
                            break;
                        case 62:
                            this.az = obtainStyledAttributes.getDimensionPixelSize(index, this.az);
                            break;
                        case 63:
                            this.u = obtainStyledAttributes.getFloat(index, this.u);
                            break;
                        default:
                            switch (i2) {
                                case 69:
                                    this.j = obtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case 70:
                                    this.bd = obtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case 71:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    break;
                                case 72:
                                    this.bh = obtainStyledAttributes.getInt(index, this.bh);
                                    break;
                                case 73:
                                    this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                                    break;
                                case 74:
                                    this.bg = obtainStyledAttributes.getString(index);
                                    break;
                                case 75:
                                    this.au = obtainStyledAttributes.getBoolean(index, this.au);
                                    break;
                                case 76:
                                    this.o = obtainStyledAttributes.getInt(index, this.o);
                                    break;
                                case 77:
                                    this.ay = ebt.g(obtainStyledAttributes, index, this.ay);
                                    break;
                                case 78:
                                    this.bo = ebt.g(obtainStyledAttributes, index, this.bo);
                                    break;
                                case 79:
                                    this.be = obtainStyledAttributes.getDimensionPixelSize(index, this.be);
                                    break;
                                case 80:
                                    this.h = obtainStyledAttributes.getDimensionPixelSize(index, this.h);
                                    break;
                                case 81:
                                    this.af = obtainStyledAttributes.getInt(index, this.af);
                                    break;
                                case 82:
                                    this.bp = obtainStyledAttributes.getInt(index, this.bp);
                                    break;
                                case 83:
                                    this.aq = obtainStyledAttributes.getDimensionPixelSize(index, this.aq);
                                    break;
                                case 84:
                                    this.bj = obtainStyledAttributes.getDimensionPixelSize(index, this.bj);
                                    break;
                                case 85:
                                    this.q = obtainStyledAttributes.getDimensionPixelSize(index, this.q);
                                    break;
                                case 86:
                                    this.ac = obtainStyledAttributes.getDimensionPixelSize(index, this.ac);
                                    break;
                                case 87:
                                    this.bi = obtainStyledAttributes.getBoolean(index, this.bi);
                                    break;
                                case 88:
                                    this.i = obtainStyledAttributes.getBoolean(index, this.i);
                                    break;
                                case 89:
                                    this.al = obtainStyledAttributes.getString(index);
                                    break;
                                case 90:
                                    this.bn = obtainStyledAttributes.getBoolean(index, this.bn);
                                    break;
                                case 91:
                                    Integer.toHexString(index);
                                    sparseIntArray.get(index);
                                    break;
                                default:
                                    Integer.toHexString(index);
                                    sparseIntArray.get(index);
                                    break;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
    }
}
