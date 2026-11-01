package g;

import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class djm {

    /* renamed from: a, reason: collision with root package name */
    public final crp f14279a;

    /* renamed from: b, reason: collision with root package name */
    public final edp f14280b;

    /* renamed from: c, reason: collision with root package name */
    public int f14281c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f14282d;

    /* renamed from: e, reason: collision with root package name */
    public final dqy f14283e;

    /* renamed from: f, reason: collision with root package name */
    public final ggo f14284f;

    public djm() {
        dqy dqyVar = new dqy();
        dqyVar.f14658b = 0;
        dqyVar.f14659c = 0;
        dqyVar.f14660d = 1.0f;
        dqyVar.f14657a = Float.NaN;
        this.f14283e = dqyVar;
        ggo ggoVar = new ggo();
        ggoVar.f18109e = -1;
        ggoVar.h = 0;
        ggoVar.i = -1;
        ggoVar.f18107c = Float.NaN;
        ggoVar.f18108d = Float.NaN;
        ggoVar.f18110f = Float.NaN;
        ggoVar.j = -1;
        ggoVar.f18106b = null;
        ggoVar.f18111g = -1;
        this.f14284f = ggoVar;
        crp crpVar = new crp();
        crpVar.z = false;
        crpVar.t = -1;
        crpVar.x = -1;
        crpVar.ak = -1.0f;
        crpVar.bn = true;
        crpVar.f13395d = -1;
        crpVar.at = -1;
        crpVar.ax = -1;
        crpVar.f13396e = -1;
        crpVar.v = -1;
        crpVar.ap = -1;
        crpVar.s = -1;
        crpVar.k = -1;
        crpVar.ao = -1;
        crpVar.ay = -1;
        crpVar.bo = -1;
        crpVar.an = -1;
        crpVar.ba = -1;
        crpVar.aa = -1;
        crpVar.ah = -1;
        crpVar.aj = 0.5f;
        crpVar.bm = 0.5f;
        crpVar.l = null;
        crpVar.f13393b = -1;
        crpVar.az = 0;
        crpVar.u = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        crpVar.ad = -1;
        crpVar.f13392ab = -1;
        crpVar.bl = -1;
        crpVar.bb = 0;
        crpVar.p = 0;
        crpVar.f13398g = 0;
        crpVar.bk = 0;
        crpVar.am = 0;
        crpVar.ag = 0;
        crpVar.h = 0;
        crpVar.ae = Integer.MIN_VALUE;
        crpVar.n = Integer.MIN_VALUE;
        crpVar.bc = Integer.MIN_VALUE;
        crpVar.as = Integer.MIN_VALUE;
        crpVar.m = Integer.MIN_VALUE;
        crpVar.ar = Integer.MIN_VALUE;
        crpVar.be = Integer.MIN_VALUE;
        crpVar.aw = -1.0f;
        crpVar.y = -1.0f;
        crpVar.r = 0;
        crpVar.ai = 0;
        crpVar.af = 0;
        crpVar.bp = 0;
        crpVar.bj = 0;
        crpVar.aq = 0;
        crpVar.ac = 0;
        crpVar.q = 0;
        crpVar.j = 1.0f;
        crpVar.bd = 1.0f;
        crpVar.bh = -1;
        crpVar.w = 0;
        crpVar.f13397f = -1;
        crpVar.bi = false;
        crpVar.i = false;
        crpVar.au = true;
        crpVar.o = 0;
        this.f14279a = crpVar;
        edp edpVar = new edp();
        edpVar.f15373g = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        edpVar.k = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        edpVar.m = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        edpVar.f15370d = 1.0f;
        edpVar.f15372f = 1.0f;
        edpVar.h = Float.NaN;
        edpVar.n = Float.NaN;
        edpVar.f15368b = -1;
        edpVar.j = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        edpVar.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        edpVar.f15369c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        edpVar.f15371e = false;
        edpVar.i = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14280b = edpVar;
        this.f14282d = new HashMap();
    }

    public final void g(dnk dnkVar) {
        crp crpVar = this.f14279a;
        dnkVar.w = crpVar.f13395d;
        dnkVar.aj = crpVar.at;
        dnkVar.bn = crpVar.ax;
        dnkVar.f14468c = crpVar.f13396e;
        dnkVar.as = crpVar.v;
        dnkVar.ax = crpVar.ap;
        dnkVar.f14469d = crpVar.s;
        dnkVar.u = crpVar.k;
        dnkVar.ao = crpVar.ao;
        dnkVar.r = crpVar.ay;
        dnkVar.j = crpVar.bo;
        dnkVar.am = crpVar.an;
        dnkVar.ba = crpVar.ba;
        dnkVar.z = crpVar.aa;
        dnkVar.ag = crpVar.ah;
        ((ViewGroup.MarginLayoutParams) dnkVar).leftMargin = crpVar.bb;
        ((ViewGroup.MarginLayoutParams) dnkVar).rightMargin = crpVar.p;
        ((ViewGroup.MarginLayoutParams) dnkVar).topMargin = crpVar.f13398g;
        ((ViewGroup.MarginLayoutParams) dnkVar).bottomMargin = crpVar.bk;
        dnkVar.az = crpVar.ar;
        dnkVar.t = crpVar.m;
        dnkVar.bm = crpVar.n;
        dnkVar.f14465a = crpVar.as;
        dnkVar.bl = crpVar.aj;
        dnkVar.bb = crpVar.bm;
        dnkVar.an = crpVar.f13393b;
        dnkVar.ay = crpVar.az;
        dnkVar.bo = crpVar.u;
        dnkVar.o = crpVar.l;
        dnkVar.av = crpVar.ad;
        dnkVar.x = crpVar.f13392ab;
        dnkVar.bk = crpVar.aw;
        dnkVar.f14471f = crpVar.y;
        dnkVar.af = crpVar.ai;
        dnkVar.al = crpVar.r;
        dnkVar.ah = crpVar.bi;
        dnkVar.ae = crpVar.i;
        dnkVar.f14472g = crpVar.af;
        dnkVar.ad = crpVar.bp;
        dnkVar.ar = crpVar.bj;
        dnkVar.l = crpVar.aq;
        dnkVar.m = crpVar.ac;
        dnkVar.bc = crpVar.q;
        dnkVar.aq = crpVar.j;
        dnkVar.be = crpVar.bd;
        dnkVar.q = crpVar.bl;
        dnkVar.bf = crpVar.ak;
        dnkVar.y = crpVar.t;
        dnkVar.au = crpVar.x;
        ((ViewGroup.MarginLayoutParams) dnkVar).width = crpVar.av;
        ((ViewGroup.MarginLayoutParams) dnkVar).height = crpVar.bf;
        String str = crpVar.al;
        if (str != null) {
            dnkVar.bp = str;
        }
        dnkVar.bj = crpVar.o;
        dnkVar.setMarginStart(crpVar.ag);
        dnkVar.setMarginEnd(crpVar.am);
        dnkVar.bq();
    }

    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final djm clone() {
        djm djmVar = new djm();
        crp crpVar = djmVar.f14279a;
        crpVar.getClass();
        crp crpVar2 = this.f14279a;
        crpVar.z = crpVar2.z;
        crpVar.av = crpVar2.av;
        crpVar.bf = crpVar2.bf;
        crpVar.t = crpVar2.t;
        crpVar.x = crpVar2.x;
        crpVar.ak = crpVar2.ak;
        crpVar.bn = crpVar2.bn;
        crpVar.f13395d = crpVar2.f13395d;
        crpVar.at = crpVar2.at;
        crpVar.ax = crpVar2.ax;
        crpVar.f13396e = crpVar2.f13396e;
        crpVar.v = crpVar2.v;
        crpVar.ap = crpVar2.ap;
        crpVar.s = crpVar2.s;
        crpVar.k = crpVar2.k;
        crpVar.ao = crpVar2.ao;
        crpVar.ay = crpVar2.ay;
        crpVar.bo = crpVar2.bo;
        crpVar.an = crpVar2.an;
        crpVar.ba = crpVar2.ba;
        crpVar.aa = crpVar2.aa;
        crpVar.ah = crpVar2.ah;
        crpVar.aj = crpVar2.aj;
        crpVar.bm = crpVar2.bm;
        crpVar.l = crpVar2.l;
        crpVar.f13393b = crpVar2.f13393b;
        crpVar.az = crpVar2.az;
        crpVar.u = crpVar2.u;
        crpVar.ad = crpVar2.ad;
        crpVar.f13392ab = crpVar2.f13392ab;
        crpVar.bl = crpVar2.bl;
        crpVar.bb = crpVar2.bb;
        crpVar.p = crpVar2.p;
        crpVar.f13398g = crpVar2.f13398g;
        crpVar.bk = crpVar2.bk;
        crpVar.am = crpVar2.am;
        crpVar.ag = crpVar2.ag;
        crpVar.h = crpVar2.h;
        crpVar.ae = crpVar2.ae;
        crpVar.n = crpVar2.n;
        crpVar.bc = crpVar2.bc;
        crpVar.as = crpVar2.as;
        crpVar.m = crpVar2.m;
        crpVar.ar = crpVar2.ar;
        crpVar.be = crpVar2.be;
        crpVar.aw = crpVar2.aw;
        crpVar.y = crpVar2.y;
        crpVar.r = crpVar2.r;
        crpVar.ai = crpVar2.ai;
        crpVar.af = crpVar2.af;
        crpVar.bp = crpVar2.bp;
        crpVar.bj = crpVar2.bj;
        crpVar.aq = crpVar2.aq;
        crpVar.ac = crpVar2.ac;
        crpVar.q = crpVar2.q;
        crpVar.j = crpVar2.j;
        crpVar.bd = crpVar2.bd;
        crpVar.bh = crpVar2.bh;
        crpVar.w = crpVar2.w;
        crpVar.f13397f = crpVar2.f13397f;
        crpVar.al = crpVar2.al;
        int[] iArr = crpVar2.f13394c;
        if (iArr == null || crpVar2.bg != null) {
            crpVar.f13394c = null;
        } else {
            crpVar.f13394c = Arrays.copyOf(iArr, iArr.length);
        }
        crpVar.bg = crpVar2.bg;
        crpVar.bi = crpVar2.bi;
        crpVar.i = crpVar2.i;
        crpVar.au = crpVar2.au;
        crpVar.o = crpVar2.o;
        ggo ggoVar = djmVar.f14284f;
        ggoVar.getClass();
        ggo ggoVar2 = this.f14284f;
        ggoVar2.getClass();
        ggoVar.f18109e = ggoVar2.f18109e;
        ggoVar.i = ggoVar2.i;
        ggoVar.f18108d = ggoVar2.f18108d;
        ggoVar.f18107c = ggoVar2.f18107c;
        dqy dqyVar = this.f14283e;
        int i = dqyVar.f14658b;
        dqy dqyVar2 = djmVar.f14283e;
        dqyVar2.f14658b = i;
        dqyVar2.f14660d = dqyVar.f14660d;
        dqyVar2.f14657a = dqyVar.f14657a;
        dqyVar2.f14659c = dqyVar.f14659c;
        edp edpVar = djmVar.f14280b;
        edpVar.getClass();
        edp edpVar2 = this.f14280b;
        edpVar2.getClass();
        edpVar.f15373g = edpVar2.f15373g;
        edpVar.k = edpVar2.k;
        edpVar.m = edpVar2.m;
        edpVar.f15370d = edpVar2.f15370d;
        edpVar.f15372f = edpVar2.f15372f;
        edpVar.h = edpVar2.h;
        edpVar.n = edpVar2.n;
        edpVar.f15368b = edpVar2.f15368b;
        edpVar.j = edpVar2.j;
        edpVar.l = edpVar2.l;
        edpVar.f15369c = edpVar2.f15369c;
        edpVar.f15371e = edpVar2.f15371e;
        edpVar.i = edpVar2.i;
        djmVar.f14281c = this.f14281c;
        return djmVar;
    }
}
