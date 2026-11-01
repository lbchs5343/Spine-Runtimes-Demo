package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class bwo {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f12323a;

    /* renamed from: f, reason: collision with root package name */
    public final md f12328f;
    public gz k;
    public final fpd l;
    public int i = 1000;
    public boolean n = false;
    public int p = 0;
    public int h = 32;
    public int j = 32;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12324b = false;
    public boolean[] m = new boolean[32];
    public int o = 1;

    /* renamed from: c, reason: collision with root package name */
    public int f12325c = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f12329g = 32;

    /* renamed from: e, reason: collision with root package name */
    public crb[] f12327e = new crb[1000];

    /* renamed from: d, reason: collision with root package name */
    public int f12326d = 0;
    public gz[] q = new gz[32];

    public bwo() {
        aa();
        fpd fpdVar = new fpd(3);
        fpdVar.f17190f = new dqc();
        fpdVar.f17187c = new dqc();
        fpdVar.f17188d = new crb[32];
        this.l = fpdVar;
        md mdVar = new md(fpdVar);
        mdVar.p = new crb[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
        mdVar.r = new crb[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
        mdVar.o = 0;
        mdVar.q = new ffr(mdVar);
        this.f12328f = mdVar;
        this.k = new gz(fpdVar);
    }

    public static int r(Object obj) {
        crb crbVar = ((hac) obj).f19106f;
        if (crbVar != null) {
            return (int) (crbVar.h + 0.5f);
        }
        return 0;
    }

    public final void aa() {
        for (int i = 0; i < this.f12325c; i++) {
            gz gzVar = this.q[i];
            if (gzVar != null) {
                ((dqc) this.l.f17190f).f(gzVar);
            }
            this.q[i] = null;
        }
    }

    public final void ab() {
        md mdVar = this.f12328f;
        if (mdVar.h()) {
            ad();
            return;
        }
        if (!this.f12324b) {
            ag(mdVar);
            return;
        }
        for (int i = 0; i < this.f12325c; i++) {
            if (!this.q[i].f19038b) {
                ag(mdVar);
                return;
            }
        }
        ad();
    }

    public final crb ac() {
        if (this.o + 1 >= this.j) {
            u();
        }
        crb y = y(gdo.SLACK);
        int i = this.p + 1;
        this.p = i;
        this.o++;
        y.k = i;
        ((crb[]) this.l.f17188d)[i] = y;
        return y;
    }

    public final void ad() {
        for (int i = 0; i < this.f12325c; i++) {
            gz gzVar = this.q[i];
            gzVar.f19039c.h = gzVar.f19040d;
        }
    }

    public final void ae(crb crbVar, crb crbVar2, int i, float f2, crb crbVar3, crb crbVar4, int i2, int i3) {
        gz w = w();
        if (crbVar2 == crbVar3) {
            w.f19037a.r(crbVar, 1.0f);
            w.f19037a.r(crbVar4, 1.0f);
            w.f19037a.r(crbVar2, -2.0f);
        } else if (f2 == 0.5f) {
            w.f19037a.r(crbVar, 1.0f);
            w.f19037a.r(crbVar2, -1.0f);
            w.f19037a.r(crbVar3, -1.0f);
            w.f19037a.r(crbVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                w.f19040d = (-i) + i2;
            }
        } else if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            w.f19037a.r(crbVar, -1.0f);
            w.f19037a.r(crbVar2, 1.0f);
            w.f19040d = i;
        } else if (f2 >= 1.0f) {
            w.f19037a.r(crbVar4, -1.0f);
            w.f19037a.r(crbVar3, 1.0f);
            w.f19040d = -i2;
        } else {
            float f3 = 1.0f - f2;
            w.f19037a.r(crbVar, f3 * 1.0f);
            w.f19037a.r(crbVar2, f3 * (-1.0f));
            w.f19037a.r(crbVar3, (-1.0f) * f2);
            w.f19037a.r(crbVar4, 1.0f * f2);
            if (i > 0 || i2 > 0) {
                w.f19040d = (i2 * f2) + ((-i) * f3);
            }
        }
        if (i3 != 8) {
            w.i(this, i3);
        }
        ai(w);
    }

    public final crb af(int i) {
        if (this.o + 1 >= this.j) {
            u();
        }
        crb y = y(gdo.ERROR);
        float[] fArr = y.f13360a;
        int i2 = this.p + 1;
        this.p = i2;
        this.o++;
        y.k = i2;
        y.f13366g = i;
        ((crb[]) this.l.f17188d)[i2] = y;
        md mdVar = this.f12328f;
        mdVar.q.f16721f = y;
        Arrays.fill(fArr, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        fArr[y.f13366g] = 1.0f;
        mdVar.t(y);
        return y;
    }

    public final void ag(md mdVar) {
        int i = 0;
        while (true) {
            if (i >= this.f12325c) {
                break;
            }
            gz gzVar = this.q[i];
            if (gzVar.f19039c.j != gdo.UNRESTRICTED) {
                float f2 = gzVar.f19040d;
                float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    boolean z = false;
                    int i2 = 0;
                    while (!z) {
                        i2++;
                        float f4 = Float.MAX_VALUE;
                        int i3 = 0;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        while (i3 < this.f12325c) {
                            gz gzVar2 = this.q[i3];
                            if (gzVar2.f19039c.j != gdo.UNRESTRICTED && !gzVar2.f19038b && gzVar2.f19040d < f3) {
                                int l = gzVar2.f19037a.l();
                                int i7 = 0;
                                while (i7 < l) {
                                    crb m = gzVar2.f19037a.m(i7);
                                    float q = gzVar2.f19037a.q(m);
                                    if (q > f3) {
                                        for (int i8 = 0; i8 < 9; i8++) {
                                            float f5 = m.f13361b[i8] / q;
                                            if ((f5 < f4 && i8 == i6) || i8 > i6) {
                                                i6 = i8;
                                                i5 = m.k;
                                                i4 = i3;
                                                f4 = f5;
                                            }
                                        }
                                    }
                                    i7++;
                                    f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                }
                            }
                            i3++;
                            f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }
                        if (i4 != -1) {
                            gz gzVar3 = this.q[i4];
                            gzVar3.f19039c.f13363d = -1;
                            gzVar3.n(((crb[]) this.l.f17188d)[i5]);
                            crb crbVar = gzVar3.f19039c;
                            crbVar.f13363d = i4;
                            crbVar.n(this, gzVar3);
                        } else {
                            z = true;
                        }
                        if (i2 > this.o / 2) {
                            z = true;
                        }
                        f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    }
                }
            }
            i++;
        }
        ak(mdVar);
        ad();
    }

    public final void ah() {
        fpd fpdVar;
        int i = 0;
        while (true) {
            fpdVar = this.l;
            crb[] crbVarArr = (crb[]) fpdVar.f17188d;
            if (i >= crbVarArr.length) {
                break;
            }
            crb crbVar = crbVarArr[i];
            if (crbVar != null) {
                crbVar.q();
            }
            i++;
        }
        dqc dqcVar = (dqc) fpdVar.f17187c;
        crb[] crbVarArr2 = this.f12327e;
        int i2 = this.f12326d;
        dqcVar.getClass();
        if (i2 > crbVarArr2.length) {
            i2 = crbVarArr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            crb crbVar2 = crbVarArr2[i3];
            int i4 = dqcVar.f14632e;
            Object[] objArr = dqcVar.f14631d;
            if (i4 < objArr.length) {
                objArr[i4] = crbVar2;
                dqcVar.f14632e = i4 + 1;
            }
        }
        this.f12326d = 0;
        Arrays.fill((crb[]) fpdVar.f17188d, (Object) null);
        this.p = 0;
        md mdVar = this.f12328f;
        mdVar.o = 0;
        mdVar.f19040d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.o = 1;
        for (int i5 = 0; i5 < this.f12325c; i5++) {
            gz gzVar = this.q[i5];
        }
        aa();
        this.f12325c = 0;
        this.k = new gz(fpdVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d7, code lost:
    
        if (r4.f13364e <= 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d9, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00db, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e5, code lost:
    
        if (r4.f13364e <= 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00fc, code lost:
    
        if (r4.f13364e <= 1) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00fe, code lost:
    
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0100, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x010a, code lost:
    
        if (r4.f13364e <= 1) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:149:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ai(gz gzVar) {
        boolean z;
        boolean z2;
        crb crbVar;
        crb j;
        boolean z3 = true;
        if (this.f12325c + 1 >= this.f12329g || this.o + 1 >= this.j) {
            u();
        }
        if (gzVar.f19038b) {
            z = false;
        } else {
            ArrayList arrayList = gzVar.f19041e;
            if (this.q.length != 0) {
                boolean z4 = false;
                while (!z4) {
                    int l = gzVar.f19037a.l();
                    for (int i = 0; i < l; i++) {
                        crb m = gzVar.f19037a.m(i);
                        if (m.f13363d != -1 || m.l) {
                            arrayList.add(m);
                        }
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i2 = 0; i2 < size; i2++) {
                            crb crbVar2 = (crb) arrayList.get(i2);
                            if (crbVar2.l) {
                                gzVar.f(this, crbVar2, true);
                            } else {
                                gzVar.k(this, this.q[crbVar2.f13363d], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z4 = true;
                    }
                }
                if (gzVar.f19039c != null && gzVar.f19037a.l() == 0) {
                    gzVar.f19038b = true;
                    this.n = true;
                }
            }
            if (gzVar.h()) {
                return;
            }
            float f2 = gzVar.f19040d;
            if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                gzVar.f19040d = f2 * (-1.0f);
                fnf fnfVar = gzVar.f19037a;
                int i3 = fnfVar.f17069a;
                for (int i4 = 0; i3 != -1 && i4 < fnfVar.f17072d; i4++) {
                    float[] fArr = fnfVar.j;
                    fArr[i3] = fArr[i3] * (-1.0f);
                    i3 = fnfVar.f17073e[i3];
                }
            }
            int l2 = gzVar.f19037a.l();
            crb crbVar3 = null;
            crb crbVar4 = null;
            float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            boolean z5 = false;
            float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            boolean z6 = false;
            for (int i5 = 0; i5 < l2; i5++) {
                float o = gzVar.f19037a.o(i5);
                crb m2 = gzVar.f19037a.m(i5);
                if (m2.j == gdo.UNRESTRICTED) {
                    if (crbVar3 != null) {
                        if (f3 <= o) {
                            if (!z5 && m2.f13364e <= 1) {
                                crbVar3 = m2;
                                f3 = o;
                                z5 = true;
                            }
                        }
                    }
                    crbVar3 = m2;
                    f3 = o;
                } else if (crbVar3 == null && o < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    if (crbVar4 != null) {
                        if (f4 <= o) {
                            if (!z6 && m2.f13364e <= 1) {
                                crbVar4 = m2;
                                f4 = o;
                                z6 = true;
                            }
                        }
                    }
                    crbVar4 = m2;
                    f4 = o;
                }
            }
            if (crbVar3 == null) {
                crbVar3 = crbVar4;
            }
            if (crbVar3 == null) {
                z2 = true;
            } else {
                gzVar.n(crbVar3);
                z2 = false;
            }
            if (gzVar.f19037a.l() == 0) {
                gzVar.f19038b = true;
            }
            if (z2) {
                if (this.o + 1 >= this.j) {
                    u();
                }
                crb y = y(gdo.SLACK);
                int i6 = this.p + 1;
                this.p = i6;
                this.o++;
                y.k = i6;
                fpd fpdVar = this.l;
                ((crb[]) fpdVar.f17188d)[i6] = y;
                gzVar.f19039c = y;
                int i7 = this.f12325c;
                s(gzVar);
                if (this.f12325c == i7 + 1) {
                    gz gzVar2 = this.k;
                    gzVar2.f19039c = null;
                    gzVar2.f19037a.p();
                    for (int i8 = 0; i8 < gzVar.f19037a.l(); i8++) {
                        gzVar2.f19037a.n(gzVar.f19037a.m(i8), gzVar.f19037a.o(i8), true);
                    }
                    ak(this.k);
                    if (y.f13363d == -1) {
                        if (gzVar.f19039c == y && (j = gzVar.j(null, y)) != null) {
                            gzVar.n(j);
                        }
                        if (!gzVar.f19038b) {
                            gzVar.f19039c.n(this, gzVar);
                        }
                        ((dqc) fpdVar.f17190f).f(gzVar);
                        this.f12325c--;
                    }
                    crbVar = gzVar.f19039c;
                    if (crbVar != null) {
                        return;
                    }
                    if (crbVar.j != gdo.UNRESTRICTED && gzVar.f19040d < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        return;
                    } else {
                        z = z3;
                    }
                }
            }
            z3 = false;
            crbVar = gzVar.f19039c;
            if (crbVar != null) {
            }
        }
        if (z) {
            return;
        }
        s(gzVar);
    }

    public final void aj(crb crbVar, crb crbVar2, int i, int i2) {
        gz w = w();
        crb ac = ac();
        ac.f13366g = 0;
        w.m(crbVar, crbVar2, ac, i);
        if (i2 != 8) {
            w.f19037a.r(af(i2), (int) (w.f19037a.q(ac) * (-1.0f)));
        }
        ai(w);
    }

    public final void ak(gz gzVar) {
        boolean z;
        for (int i = 0; i < this.o; i++) {
            this.m[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            i2++;
            if (i2 >= this.o * 2) {
                return;
            }
            crb crbVar = gzVar.f19039c;
            if (crbVar != null) {
                this.m[crbVar.k] = true;
            }
            crb g2 = gzVar.g(this.m);
            if (g2 != null) {
                boolean[] zArr = this.m;
                int i3 = g2.k;
                if (zArr[i3]) {
                    return;
                } else {
                    zArr[i3] = true;
                }
            }
            if (g2 != null) {
                float f2 = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.f12325c; i5++) {
                    gz gzVar2 = this.q[i5];
                    if (gzVar2.f19039c.j != gdo.UNRESTRICTED && !gzVar2.f19038b) {
                        fnf fnfVar = gzVar2.f19037a;
                        int i6 = fnfVar.f17069a;
                        if (i6 != -1) {
                            for (int i7 = 0; i6 != -1 && i7 < fnfVar.f17072d; i7++) {
                                if (fnfVar.f17071c[i6] == g2.k) {
                                    z = true;
                                    break;
                                }
                                i6 = fnfVar.f17073e[i6];
                            }
                        }
                        z = false;
                        if (z) {
                            float q = gzVar2.f19037a.q(g2);
                            if (q < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                float f3 = (-gzVar2.f19040d) / q;
                                if (f3 < f2) {
                                    i4 = i5;
                                    f2 = f3;
                                }
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    gz gzVar3 = this.q[i4];
                    gzVar3.f19039c.f13363d = -1;
                    gzVar3.n(g2);
                    crb crbVar2 = gzVar3.f19039c;
                    crbVar2.f13363d = i4;
                    crbVar2.n(this, gzVar3);
                }
            } else {
                z2 = true;
            }
        }
    }

    public final void s(gz gzVar) {
        int i;
        if (gzVar.f19038b) {
            gzVar.f19039c.m(this, gzVar.f19040d);
        } else {
            gz[] gzVarArr = this.q;
            int i2 = this.f12325c;
            gzVarArr[i2] = gzVar;
            crb crbVar = gzVar.f19039c;
            crbVar.f13363d = i2;
            this.f12325c = i2 + 1;
            crbVar.n(this, gzVar);
        }
        if (this.n) {
            int i3 = 0;
            while (i3 < this.f12325c) {
                if (this.q[i3] == null) {
                    System.out.println("WTF");
                }
                gz gzVar2 = this.q[i3];
                if (gzVar2 != null && gzVar2.f19038b) {
                    gzVar2.f19039c.m(this, gzVar2.f19040d);
                    ((dqc) this.l.f17190f).f(gzVar2);
                    this.q[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.f12325c;
                        if (i4 >= i) {
                            break;
                        }
                        gz[] gzVarArr2 = this.q;
                        int i6 = i4 - 1;
                        gz gzVar3 = gzVarArr2[i4];
                        gzVarArr2[i6] = gzVar3;
                        crb crbVar2 = gzVar3.f19039c;
                        if (crbVar2.f13363d == i4) {
                            crbVar2.f13363d = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.q[i5] = null;
                    }
                    this.f12325c = i - 1;
                    i3--;
                }
                i3++;
            }
            this.n = false;
        }
    }

    public final crb t(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.o + 1 >= this.j) {
            u();
        }
        if (!(obj instanceof hac)) {
            return null;
        }
        hac hacVar = (hac) obj;
        crb crbVar = hacVar.f19106f;
        if (crbVar == null) {
            hacVar.k();
            crbVar = hacVar.f19106f;
        }
        int i = crbVar.k;
        fpd fpdVar = this.l;
        if (i != -1 && i <= this.p && ((crb[]) fpdVar.f17188d)[i] != null) {
            return crbVar;
        }
        if (i != -1) {
            crbVar.q();
        }
        int i2 = this.p + 1;
        this.p = i2;
        this.o++;
        crbVar.k = i2;
        crbVar.j = gdo.UNRESTRICTED;
        ((crb[]) fpdVar.f17188d)[i2] = crbVar;
        return crbVar;
    }

    public final void u() {
        int i = this.h * 2;
        this.h = i;
        this.q = (gz[]) Arrays.copyOf(this.q, i);
        fpd fpdVar = this.l;
        fpdVar.f17188d = (crb[]) Arrays.copyOf((crb[]) fpdVar.f17188d, this.h);
        int i2 = this.h;
        this.m = new boolean[i2];
        this.j = i2;
        this.f12329g = i2;
    }

    public final void v(crb crbVar, int i) {
        int i2 = crbVar.f13363d;
        if (i2 == -1) {
            crbVar.m(this, i);
            for (int i3 = 0; i3 < this.p + 1; i3++) {
                crb crbVar2 = ((crb[]) this.l.f17188d)[i3];
            }
            return;
        }
        if (i2 == -1) {
            gz w = w();
            w.f19039c = crbVar;
            float f2 = i;
            crbVar.h = f2;
            w.f19040d = f2;
            w.f19038b = true;
            ai(w);
            return;
        }
        gz gzVar = this.q[i2];
        if (gzVar.f19038b) {
            gzVar.f19040d = i;
            return;
        }
        if (gzVar.f19037a.l() == 0) {
            gzVar.f19038b = true;
            gzVar.f19040d = i;
            return;
        }
        gz w2 = w();
        if (i < 0) {
            w2.f19040d = i * (-1);
            w2.f19037a.r(crbVar, 1.0f);
        } else {
            w2.f19040d = i;
            w2.f19037a.r(crbVar, -1.0f);
        }
        ai(w2);
    }

    public final gz w() {
        Object obj;
        fpd fpdVar = this.l;
        dqc dqcVar = (dqc) fpdVar.f17190f;
        int i = dqcVar.f14632e;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = dqcVar.f14631d;
            obj = objArr[i2];
            objArr[i2] = null;
            dqcVar.f14632e = i2;
        } else {
            obj = null;
        }
        gz gzVar = (gz) obj;
        if (gzVar == null) {
            return new gz(fpdVar);
        }
        gzVar.f19039c = null;
        gzVar.f19037a.p();
        gzVar.f19040d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        gzVar.f19038b = false;
        return gzVar;
    }

    public final void x(crb crbVar, crb crbVar2, int i, int i2) {
        if (i2 == 8 && crbVar2.l && crbVar.f13363d == -1) {
            crbVar.m(this, crbVar2.h + i);
            return;
        }
        gz w = w();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            w.f19040d = i;
        }
        if (z) {
            w.f19037a.r(crbVar, 1.0f);
            w.f19037a.r(crbVar2, -1.0f);
        } else {
            w.f19037a.r(crbVar, -1.0f);
            w.f19037a.r(crbVar2, 1.0f);
        }
        if (i2 != 8) {
            w.i(this, i2);
        }
        ai(w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final crb y(gdo gdoVar) {
        dqc dqcVar = (dqc) this.l.f17187c;
        int i = dqcVar.f14632e;
        crb crbVar = null;
        if (i > 0) {
            int i2 = i - 1;
            ?? r3 = dqcVar.f14631d;
            ?? r4 = r3[i2];
            r3[i2] = 0;
            dqcVar.f14632e = i2;
            crbVar = r4;
        }
        crb crbVar2 = crbVar;
        if (crbVar2 == null) {
            crbVar2 = new crb(gdoVar);
            crbVar2.j = gdoVar;
        } else {
            crbVar2.q();
            crbVar2.j = gdoVar;
        }
        int i3 = this.f12326d;
        int i4 = this.i;
        if (i3 >= i4) {
            int i5 = i4 * 2;
            this.i = i5;
            this.f12327e = (crb[]) Arrays.copyOf(this.f12327e, i5);
        }
        crb[] crbVarArr = this.f12327e;
        int i6 = this.f12326d;
        this.f12326d = i6 + 1;
        crbVarArr[i6] = crbVar2;
        return crbVar2;
    }

    public final void z(crb crbVar, crb crbVar2, int i, int i2) {
        gz w = w();
        crb ac = ac();
        ac.f13366g = 0;
        w.l(crbVar, crbVar2, ac, i);
        if (i2 != 8) {
            w.f19037a.r(af(i2), (int) (w.f19037a.q(ac) * (-1.0f)));
        }
        ai(w);
    }
}
