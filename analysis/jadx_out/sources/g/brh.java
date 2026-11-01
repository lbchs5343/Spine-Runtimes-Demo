package g;

import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class brh {
    public float am;
    public String an;
    public boolean ap;
    public int aq;
    public int ar;
    public final hac as;
    public final brh[] at;
    public int au;
    public int av;
    public int aw;
    public final hac[] ax;
    public final hac ay;
    public int az;
    public int ba;
    public int bb;
    public int bc;
    public boolean bd;
    public float bf;
    public boolean bg;
    public View bh;
    public brh bj;
    public int bl;
    public float bm;
    public int bn;
    public final int[] bo;
    public final hac bp;
    public float bq;
    public final hac br;
    public int bs;
    public int bt;
    public float bu;
    public int bw;
    public final hac bx;
    public int by;
    public int bz;
    public boolean ca;
    public int cb;
    public final ArrayList cc;
    public final hac cd;
    public final brh[] cf;
    public gnk cg;
    public final fol[] ch;
    public int ci;
    public String cj;
    public int ck;
    public int cl;
    public final int[] cm;

    /* renamed from: cn, reason: collision with root package name */
    public boolean f12070cn;
    public final hac co;
    public float cp;
    public final boolean[] cq;
    public gnk cr;
    public int cs;
    public float ct;
    public final float[] cu;
    public int cv;
    public final hac cw;
    public boolean cx;
    public int cy;
    public int da;
    public int db;
    public boolean bk = false;
    public dza be = null;
    public fju bi = null;
    public final boolean[] bv = {true, true};
    public boolean cz = true;
    public int ao = -1;
    public int ce = -1;

    public brh() {
        new HashMap();
        this.ap = false;
        this.bg = false;
        this.ca = false;
        this.bd = false;
        this.av = -1;
        this.bz = -1;
        this.ck = 0;
        this.da = 0;
        this.by = 0;
        this.cm = new int[2];
        this.bl = 0;
        this.bs = 0;
        this.bu = 1.0f;
        this.cy = 0;
        this.aw = 0;
        this.am = 1.0f;
        this.cl = -1;
        this.bf = 1.0f;
        this.bo = new int[]{he.UNDEFINED_ITEM_ID, he.UNDEFINED_ITEM_ID};
        this.bm = Float.NaN;
        this.cx = false;
        this.f12070cn = false;
        this.ba = 0;
        this.ar = 0;
        hac hacVar = new hac(this, dih.LEFT);
        this.cw = hacVar;
        hac hacVar2 = new hac(this, dih.TOP);
        this.bx = hacVar2;
        hac hacVar3 = new hac(this, dih.RIGHT);
        this.br = hacVar3;
        hac hacVar4 = new hac(this, dih.BOTTOM);
        this.as = hacVar4;
        hac hacVar5 = new hac(this, dih.BASELINE);
        this.bp = hacVar5;
        hac hacVar6 = new hac(this, dih.CENTER_X);
        this.ay = hacVar6;
        hac hacVar7 = new hac(this, dih.CENTER_Y);
        this.co = hacVar7;
        hac hacVar8 = new hac(this, dih.CENTER);
        this.cd = hacVar8;
        this.ax = new hac[]{hacVar, hacVar3, hacVar2, hacVar4, hacVar5, hacVar8};
        ArrayList arrayList = new ArrayList();
        this.cc = arrayList;
        this.cq = new boolean[2];
        fol folVar = fol.FIXED;
        this.ch = new fol[]{folVar, folVar};
        this.bj = null;
        this.bc = 0;
        this.bt = 0;
        this.bq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.db = -1;
        this.cv = 0;
        this.cb = 0;
        this.bn = 0;
        this.cp = 0.5f;
        this.ct = 0.5f;
        this.aq = 0;
        this.an = null;
        this.cs = 0;
        this.bw = 0;
        this.cu = new float[]{-1.0f, -1.0f};
        this.at = new brh[]{null, null};
        this.cf = new brh[]{null, null};
        this.az = -1;
        this.ci = -1;
        arrayList.add(hacVar);
        arrayList.add(hacVar2);
        arrayList.add(hacVar3);
        arrayList.add(hacVar4);
        arrayList.add(hacVar6);
        arrayList.add(hacVar7);
        arrayList.add(hacVar8);
        arrayList.add(hacVar5);
    }

    public static void dc(StringBuilder sb, String str, float f2, float f3) {
        if (f2 == f3) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f2);
        sb.append(",\n");
    }

    public static void dd(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, float f2, fol folVar) {
        sb.append(str);
        sb.append(" :  {\n");
        String obj = folVar.toString();
        if (!fol.FIXED.toString().equals(obj)) {
            awf.y(sb, "      behavior", " :   ", obj, ",\n");
        }
        de(i, 0, "      size", sb);
        de(i2, 0, "      min", sb);
        de(i3, he.UNDEFINED_ITEM_ID, "      max", sb);
        de(i4, 0, "      matchMin", sb);
        de(i5, 0, "      matchDef", sb);
        dc(sb, "      matchPercent", f2, 1.0f);
        sb.append("    },\n");
    }

    public static void de(int i, int i2, String str, StringBuilder sb) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    public static void df(StringBuilder sb, String str, hac hacVar) {
        if (hacVar.f19105e == null) {
            return;
        }
        awf.a("    ", str, " : [ '", sb);
        sb.append(hacVar.f19105e);
        sb.append("'");
        if (hacVar.f19101a != Integer.MIN_VALUE || hacVar.i != 0) {
            sb.append(",");
            sb.append(hacVar.i);
            if (hacVar.f19101a != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(hacVar.f19101a);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public void ad(StringBuilder sb) {
        sb.append("  " + this.cj + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.bc);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.bt);
        sb.append("\n");
        sb.append("    actualLeft:" + this.cv);
        sb.append("\n");
        sb.append("    actualTop:" + this.cb);
        sb.append("\n");
        df(sb, "left", this.cw);
        df(sb, "top", this.bx);
        df(sb, "right", this.br);
        df(sb, "bottom", this.as);
        df(sb, "baseline", this.bp);
        df(sb, "centerX", this.ay);
        df(sb, "centerY", this.co);
        int i = this.bc;
        int i2 = this.bb;
        int[] iArr = this.bo;
        int i3 = iArr[0];
        int i4 = this.bl;
        int i5 = this.da;
        float f2 = this.bu;
        fol[] folVarArr = this.ch;
        fol folVar = folVarArr[0];
        float[] fArr = this.cu;
        float f3 = fArr[0];
        dd(sb, "    width", i, i2, i3, i4, i5, f2, folVar);
        int i6 = this.bt;
        int i7 = this.au;
        int i8 = iArr[1];
        int i9 = this.cy;
        int i10 = this.by;
        float f4 = this.am;
        fol folVar2 = folVarArr[1];
        float f5 = fArr[1];
        dd(sb, "    height", i6, i7, i8, i9, i10, f4, folVar2);
        float f6 = this.bq;
        int i11 = this.db;
        if (f6 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f6);
            sb.append(",");
            sb.append(i11);
            sb.append("");
            sb.append("],\n");
        }
        dc(sb, "    horizontalBias", this.cp, 0.5f);
        dc(sb, "    verticalBias", this.ct, 0.5f);
        de(this.cs, 0, "    horizontalChainStyle", sb);
        de(this.bw, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public void af() {
        this.cw.s();
        this.bx.s();
        this.br.s();
        this.as.s();
        this.bp.s();
        this.ay.s();
        this.co.s();
        this.cd.s();
        this.bj = null;
        this.bm = Float.NaN;
        this.bc = 0;
        this.bt = 0;
        this.bq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.db = -1;
        this.cv = 0;
        this.cb = 0;
        this.bn = 0;
        this.bb = 0;
        this.au = 0;
        this.cp = 0.5f;
        this.ct = 0.5f;
        fol folVar = fol.FIXED;
        fol[] folVarArr = this.ch;
        folVarArr[0] = folVar;
        folVarArr[1] = folVar;
        this.bh = null;
        this.aq = 0;
        this.cs = 0;
        this.bw = 0;
        float[] fArr = this.cu;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.av = -1;
        this.bz = -1;
        int[] iArr = this.bo;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.da = 0;
        this.by = 0;
        this.bu = 1.0f;
        this.am = 1.0f;
        this.bs = he.UNDEFINED_ITEM_ID;
        this.aw = he.UNDEFINED_ITEM_ID;
        this.bl = 0;
        this.cy = 0;
        this.cl = -1;
        this.bf = 1.0f;
        boolean[] zArr = this.bv;
        zArr[0] = true;
        zArr[1] = true;
        this.f12070cn = false;
        boolean[] zArr2 = this.cq;
        zArr2[0] = false;
        zArr2[1] = false;
        this.cz = true;
        int[] iArr2 = this.cm;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.ao = -1;
        this.ce = -1;
    }

    public void ai(boolean z, boolean z2) {
        int i;
        int i2;
        dza dzaVar = this.be;
        boolean z3 = z & dzaVar.j;
        fju fjuVar = this.bi;
        boolean z4 = z2 & fjuVar.j;
        int i3 = dzaVar.f19645a.l;
        int i4 = fjuVar.f19645a.l;
        int i5 = dzaVar.f19650f.l;
        int i6 = fjuVar.f19650f.l;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.cv = i3;
        }
        if (z4) {
            this.cb = i4;
        }
        if (this.aq == 8) {
            this.bc = 0;
            this.bt = 0;
            return;
        }
        fol[] folVarArr = this.ch;
        if (z3) {
            if (folVarArr[0] == fol.FIXED && i8 < (i2 = this.bc)) {
                i8 = i2;
            }
            this.bc = i8;
            int i10 = this.bb;
            if (i8 < i10) {
                this.bc = i10;
            }
        }
        if (z4) {
            if (folVarArr[1] == fol.FIXED && i9 < (i = this.bt)) {
                i9 = i;
            }
            this.bt = i9;
            int i11 = this.au;
            if (i9 < i11) {
                this.bt = i11;
            }
        }
    }

    public void ak(fpd fpdVar) {
        this.cw.k();
        this.bx.k();
        this.br.k();
        this.as.k();
        this.bp.k();
        this.cd.k();
        this.ay.k();
        this.co.k();
    }

    public final boolean dg() {
        return this.cz && this.aq != 8;
    }

    public final void dh() {
        if (this.be == null) {
            dza dzaVar = new dza(this);
            dzaVar.f19645a.f11645e = gfv.LEFT;
            dzaVar.f19650f.f11645e = gfv.RIGHT;
            dzaVar.f19649e = 0;
            this.be = dzaVar;
        }
        if (this.bi == null) {
            fju fjuVar = new fju(this);
            big bigVar = new big(fjuVar);
            fjuVar.w = bigVar;
            fjuVar.x = null;
            fjuVar.f19645a.f11645e = gfv.TOP;
            fjuVar.f19650f.f11645e = gfv.BOTTOM;
            bigVar.f11645e = gfv.BASELINE;
            fjuVar.f19649e = 1;
            this.bi = fjuVar;
        }
    }

    public final int di() {
        if (this.aq == 8) {
            return 0;
        }
        return this.bt;
    }

    public final void dj(int i) {
        this.bt = i;
        int i2 = this.au;
        if (i < i2) {
            this.bt = i2;
        }
    }

    public final boolean dk() {
        hac hacVar = this.bx;
        hac hacVar2 = hacVar.f19105e;
        if (hacVar2 != null && hacVar2.f19105e == hacVar) {
            return true;
        }
        hac hacVar3 = this.as;
        hac hacVar4 = hacVar3.f19105e;
        return hacVar4 != null && hacVar4.f19105e == hacVar3;
    }

    public final void dl(fol folVar) {
        this.ch[1] = folVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x03a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0424 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0498 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:290:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0192 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x04b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dm(bwo bwoVar, boolean z, boolean z2, boolean z3, boolean z4, crb crbVar, crb crbVar2, fol folVar, boolean z5, hac hacVar, hac hacVar2, int i, int i2, int i3, int i4, float f2, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, int i8, float f3, boolean z11) {
        int i9;
        boolean z12;
        int i10;
        int i11;
        boolean z13;
        crb t;
        crb t2;
        hac hacVar3;
        crb crbVar3;
        boolean z14;
        int i12;
        crb crbVar4;
        crb crbVar5;
        crb crbVar6;
        crb crbVar7;
        int i13;
        int i14;
        int i15;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        brh brhVar;
        int i16;
        int i17;
        hac hacVar4;
        boolean z19;
        int i18;
        boolean z20;
        int i19;
        HashSet hashSet;
        boolean z21;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        boolean z22;
        boolean z23;
        int i26;
        bwo bwoVar2 = bwoVar;
        int i27 = i7;
        int i28 = i8;
        crb t3 = bwoVar2.t(hacVar);
        crb t4 = bwoVar2.t(hacVar2);
        crb t5 = bwoVar2.t(hacVar.f19105e);
        crb t6 = bwoVar2.t(hacVar2.f19105e);
        boolean j = hacVar.j();
        boolean j2 = hacVar2.j();
        boolean j3 = this.cd.j();
        int i29 = j2 ? (j ? 1 : 0) + 1 : j ? 1 : 0;
        if (j3) {
            i29++;
        }
        int i30 = i29;
        int i31 = z6 ? 3 : i5;
        int ordinal = folVar.ordinal();
        boolean z24 = (ordinal == 0 || ordinal == 1 || ordinal != 2 || i31 == 4) ? false : true;
        int i32 = this.ao;
        if (i32 != -1 && z) {
            this.ao = -1;
            i2 = i32;
            z24 = false;
        }
        int i33 = this.ce;
        if (i33 == -1 || z) {
            i33 = i2;
        } else {
            this.ce = -1;
            z24 = false;
        }
        int i34 = i33;
        if (this.aq == 8) {
            z24 = false;
            i9 = 0;
        } else {
            i9 = i34;
        }
        if (z11) {
            if (!j && !j2 && !j3) {
                bwoVar2.v(t3, i);
            } else if (j && !j2) {
                z12 = z24;
                i10 = 8;
                bwoVar2.x(t3, t5, hacVar.n(), 8);
                if (!z12) {
                    if (i30 == 2 || z6 || !(i31 == 1 || i31 == 0)) {
                        if (i27 == -2) {
                            i27 = i9;
                        }
                        if (i28 == -2) {
                            i28 = i9;
                        }
                        if (i9 > 0 && i31 != 1) {
                            i9 = 0;
                        }
                        if (i27 > 0) {
                            bwoVar2.z(t4, t3, i27, 8);
                            i9 = Math.max(i9, i27);
                        }
                        if (i28 > 0) {
                            if (!z2 || i31 != 1) {
                                bwoVar2.aj(t4, t3, i28, 8);
                            }
                            i9 = Math.min(i9, i28);
                        }
                        if (i31 == 1) {
                            if (z2) {
                                bwoVar2.x(t4, t3, i9, 8);
                            } else if (z8) {
                                bwoVar2.x(t4, t3, i9, 5);
                                bwoVar2.aj(t4, t3, i9, 8);
                            } else {
                                bwoVar2.x(t4, t3, i9, 5);
                                bwoVar2.aj(t4, t3, i9, 8);
                            }
                        } else if (i31 == 2) {
                            dih dihVar = hacVar.f19103c;
                            dih dihVar2 = dih.TOP;
                            if (dihVar == dihVar2 || dihVar == dih.BOTTOM) {
                                t = bwoVar2.t(this.bj.m(dihVar2));
                                t2 = bwoVar2.t(this.bj.m(dih.BOTTOM));
                            } else {
                                t = bwoVar2.t(this.bj.m(dih.LEFT));
                                t2 = bwoVar2.t(this.bj.m(dih.RIGHT));
                            }
                            gz w = bwoVar2.w();
                            int i35 = i27;
                            w.f19037a.r(t4, -1.0f);
                            w.f19037a.r(t3, 1.0f);
                            w.f19037a.r(t2, f3);
                            w.f19037a.r(t, -f3);
                            bwoVar2.ai(w);
                            if (z2) {
                                z12 = false;
                            }
                            z13 = z4;
                            i11 = i35;
                        } else {
                            i11 = i27;
                            z13 = true;
                        }
                    } else {
                        int max = Math.max(i27, i9);
                        if (i28 > 0) {
                            max = Math.min(i28, max);
                        }
                        bwoVar2.x(t4, t3, max, 8);
                        z13 = z4;
                        i11 = i27;
                        z12 = false;
                    }
                    if (z11 || z8) {
                        boolean z25 = z13;
                        if (i30 < 2 && z2 && z25) {
                            bwoVar2.z(t3, crbVar, 0, 8);
                            hac hacVar5 = this.bp;
                            boolean z26 = z || hacVar5.f19105e == null;
                            if (!z && (hacVar3 = hacVar5.f19105e) != null) {
                                brh brhVar2 = hacVar3.f19102b;
                                if (brhVar2.bq != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                    fol[] folVarArr = brhVar2.ch;
                                    fol folVar2 = folVarArr[0];
                                    fol folVar3 = fol.MATCH_CONSTRAINT;
                                    if (folVar2 == folVar3 && folVarArr[1] == folVar3) {
                                        z26 = true;
                                    }
                                }
                                z26 = false;
                            }
                            if (z26) {
                                bwoVar2.z(crbVar2, t4, 0, 8);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (!j && !j2 && !j3) {
                        hacVar4 = hacVar2;
                        crbVar6 = t4;
                        z14 = z13;
                        crbVar3 = t6;
                    } else if (!j || j2) {
                        if (j || !j2) {
                            crbVar3 = t6;
                            if (j && j2) {
                                brh brhVar3 = hacVar.f19105e.f19102b;
                                brh brhVar4 = hacVar2.f19105e.f19102b;
                                z14 = z13;
                                brh brhVar5 = this.bj;
                                int i36 = 6;
                                if (z12) {
                                    if (i31 == 0) {
                                        if (i28 != 0 || i11 != 0) {
                                            i24 = 5;
                                            i25 = 5;
                                            z22 = true;
                                            z23 = false;
                                            z16 = true;
                                        } else if (t5.l && crbVar3.l) {
                                            bwoVar2.x(t3, t5, hacVar.n(), 8);
                                            bwoVar2.x(t4, crbVar3, -hacVar2.n(), 8);
                                            return;
                                        } else {
                                            i24 = 8;
                                            i25 = 8;
                                            z22 = false;
                                            z23 = true;
                                            z16 = false;
                                        }
                                        if ((brhVar3 instanceof r) || (brhVar4 instanceof r)) {
                                            i14 = i24;
                                            crbVar7 = t5;
                                            bwoVar2 = bwoVar;
                                            i12 = i31;
                                            crbVar5 = t3;
                                            crbVar6 = t4;
                                            z17 = z23;
                                            i13 = 6;
                                            crbVar4 = crbVar2;
                                            z15 = z22;
                                            i15 = 4;
                                            if (z16 || crbVar7 != crbVar3 || brhVar3 == brhVar5) {
                                                z18 = true;
                                            } else {
                                                z16 = false;
                                                z18 = false;
                                            }
                                            if (z15) {
                                                brhVar = brhVar4;
                                                i16 = i11;
                                                i17 = i12;
                                                hacVar4 = hacVar2;
                                                z19 = z2;
                                            } else {
                                                if (z12 || z7 || z9 || crbVar7 != crbVar || crbVar3 != crbVar4) {
                                                    z19 = z2;
                                                    z21 = z18;
                                                    i20 = i14;
                                                    i21 = i13;
                                                } else {
                                                    i21 = 8;
                                                    z19 = false;
                                                    i20 = 8;
                                                    z21 = false;
                                                }
                                                crb crbVar8 = crbVar7;
                                                i16 = i11;
                                                i17 = i12;
                                                brhVar = brhVar4;
                                                hacVar4 = hacVar2;
                                                bwoVar2.ae(crbVar5, crbVar8, hacVar.n(), f2, crbVar3, crbVar6, hacVar2.n(), i21);
                                                crbVar7 = crbVar8;
                                                i14 = i20;
                                                z18 = z21;
                                            }
                                            if (this.aq != 8 && ((hashSet = hacVar4.f19104d) == null || hashSet.size() <= 0)) {
                                                return;
                                            }
                                            if (z16) {
                                                if (z19 && crbVar7 != crbVar3 && !z12 && ((brhVar3 instanceof r) || (brhVar instanceof r))) {
                                                    i14 = 6;
                                                }
                                                bwoVar2.z(crbVar5, crbVar7, hacVar.n(), i14);
                                                bwoVar2.aj(crbVar6, crbVar3, -hacVar4.n(), i14);
                                            }
                                            if (z19 || !z10 || (brhVar3 instanceof r) || (brhVar instanceof r) || brhVar == brhVar5) {
                                                i18 = i15;
                                                z20 = z18;
                                            } else {
                                                i18 = 6;
                                                i14 = 6;
                                                z20 = true;
                                            }
                                            if (z20) {
                                                if (z17 && (!z9 || z3)) {
                                                    if (brhVar3 != brhVar5 && brhVar != brhVar5) {
                                                        i36 = i18;
                                                    }
                                                    if ((brhVar3 instanceof aar) || (brhVar instanceof aar)) {
                                                        i36 = 5;
                                                    }
                                                    if ((brhVar3 instanceof r) || (brhVar instanceof r)) {
                                                        i36 = 5;
                                                    }
                                                    i18 = Math.max(z9 ? 5 : i36, i18);
                                                }
                                                if (z19) {
                                                    i18 = Math.min(i14, i18);
                                                    if (z6 && !z9 && (brhVar3 == brhVar5 || brhVar == brhVar5)) {
                                                        i19 = 4;
                                                        bwoVar2.x(crbVar5, crbVar7, hacVar.n(), i19);
                                                        bwoVar2.x(crbVar6, crbVar3, -hacVar4.n(), i19);
                                                    }
                                                }
                                                i19 = i18;
                                                bwoVar2.x(crbVar5, crbVar7, hacVar.n(), i19);
                                                bwoVar2.x(crbVar6, crbVar3, -hacVar4.n(), i19);
                                            }
                                            if (z19) {
                                                int n = crbVar == crbVar7 ? hacVar.n() : 0;
                                                if (crbVar7 != crbVar) {
                                                    bwoVar2.z(crbVar5, crbVar, n, 5);
                                                }
                                            }
                                            if (z19 && z12 && i3 == 0 && i16 == 0) {
                                                if (z12 || i17 != 3) {
                                                    bwoVar2.z(crbVar6, crbVar5, 0, 5);
                                                } else {
                                                    bwoVar2.z(crbVar6, crbVar5, 0, 8);
                                                }
                                            }
                                        } else {
                                            i14 = i24;
                                            crbVar7 = t5;
                                            bwoVar2 = bwoVar;
                                            crbVar5 = t3;
                                            crbVar6 = t4;
                                            z17 = z23;
                                            i13 = 6;
                                            z15 = z22;
                                            i15 = i25;
                                            i12 = i31;
                                            crbVar4 = crbVar2;
                                            if (z16) {
                                            }
                                            z18 = true;
                                            if (z15) {
                                            }
                                            if (this.aq != 8) {
                                            }
                                            if (z16) {
                                            }
                                            if (z19) {
                                            }
                                            i18 = i15;
                                            z20 = z18;
                                            if (z20) {
                                            }
                                            if (z19) {
                                            }
                                            if (z19) {
                                                if (z12) {
                                                }
                                                bwoVar2.z(crbVar6, crbVar5, 0, 5);
                                            }
                                        }
                                    } else {
                                        if (i31 == 2) {
                                            if ((brhVar3 instanceof r) || (brhVar4 instanceof r)) {
                                                bwoVar2 = bwoVar;
                                                i12 = i31;
                                                crbVar5 = t3;
                                                crbVar6 = t4;
                                                crbVar7 = t5;
                                                i13 = 6;
                                                i14 = 5;
                                            } else {
                                                bwoVar2 = bwoVar;
                                                i12 = i31;
                                                crbVar5 = t3;
                                                crbVar6 = t4;
                                                crbVar7 = t5;
                                                i13 = 6;
                                                i14 = 5;
                                                i15 = 5;
                                                z15 = true;
                                                z16 = true;
                                                z17 = false;
                                                crbVar4 = crbVar2;
                                                if (z16) {
                                                }
                                                z18 = true;
                                                if (z15) {
                                                }
                                                if (this.aq != 8) {
                                                }
                                                if (z16) {
                                                }
                                                if (z19) {
                                                }
                                                i18 = i15;
                                                z20 = z18;
                                                if (z20) {
                                                }
                                                if (z19) {
                                                }
                                                if (z19) {
                                                }
                                            }
                                        } else if (i31 == 1) {
                                            bwoVar2 = bwoVar;
                                            i12 = i31;
                                            crbVar5 = t3;
                                            crbVar6 = t4;
                                            crbVar7 = t5;
                                            i13 = 6;
                                            i14 = 8;
                                        } else if (i31 == 3) {
                                            i12 = i31;
                                            if (this.cl == -1) {
                                                if (z9) {
                                                    bwoVar2 = bwoVar;
                                                    crbVar4 = crbVar2;
                                                    crbVar5 = t3;
                                                    crbVar6 = t4;
                                                    crbVar7 = t5;
                                                    i13 = z2 ? 5 : 4;
                                                } else {
                                                    bwoVar2 = bwoVar;
                                                    crbVar4 = crbVar2;
                                                    crbVar5 = t3;
                                                    crbVar6 = t4;
                                                    crbVar7 = t5;
                                                    i13 = 8;
                                                }
                                                i14 = 8;
                                            } else {
                                                if (z6) {
                                                    if (i6 == 2 || i6 == 1) {
                                                        i22 = 5;
                                                        i23 = 4;
                                                    } else {
                                                        i22 = 8;
                                                        i23 = 5;
                                                    }
                                                    i15 = i23;
                                                    crbVar5 = t3;
                                                    crbVar6 = t4;
                                                    crbVar7 = t5;
                                                    i13 = 6;
                                                    z15 = true;
                                                    z16 = true;
                                                    z17 = true;
                                                    crbVar4 = crbVar2;
                                                } else if (i28 > 0) {
                                                    bwoVar2 = bwoVar;
                                                    crbVar4 = crbVar2;
                                                    crbVar5 = t3;
                                                    crbVar6 = t4;
                                                    crbVar7 = t5;
                                                    i13 = 6;
                                                    i14 = 5;
                                                } else {
                                                    if (i28 != 0 || i11 != 0) {
                                                        bwoVar2 = bwoVar;
                                                        crbVar4 = crbVar2;
                                                        crbVar5 = t3;
                                                        crbVar6 = t4;
                                                        crbVar7 = t5;
                                                        i13 = 6;
                                                        i14 = 5;
                                                        i15 = 4;
                                                    } else if (z9) {
                                                        i22 = (brhVar3 == brhVar5 || brhVar4 == brhVar5) ? 5 : 4;
                                                        crbVar4 = crbVar2;
                                                        crbVar5 = t3;
                                                        crbVar6 = t4;
                                                        crbVar7 = t5;
                                                        i13 = 6;
                                                        i15 = 4;
                                                        z15 = true;
                                                        z16 = true;
                                                        z17 = true;
                                                    } else {
                                                        bwoVar2 = bwoVar;
                                                        crbVar4 = crbVar2;
                                                        crbVar5 = t3;
                                                        crbVar6 = t4;
                                                        crbVar7 = t5;
                                                        i13 = 6;
                                                        i14 = 5;
                                                        i15 = 8;
                                                    }
                                                    z15 = true;
                                                    z16 = true;
                                                    z17 = true;
                                                    if (z16) {
                                                    }
                                                    z18 = true;
                                                    if (z15) {
                                                    }
                                                    if (this.aq != 8) {
                                                    }
                                                    if (z16) {
                                                    }
                                                    if (z19) {
                                                    }
                                                    i18 = i15;
                                                    z20 = z18;
                                                    if (z20) {
                                                    }
                                                    if (z19) {
                                                    }
                                                    if (z19) {
                                                    }
                                                }
                                                i14 = i22;
                                                bwoVar2 = bwoVar;
                                                if (z16) {
                                                }
                                                z18 = true;
                                                if (z15) {
                                                }
                                                if (this.aq != 8) {
                                                }
                                                if (z16) {
                                                }
                                                if (z19) {
                                                }
                                                i18 = i15;
                                                z20 = z18;
                                                if (z20) {
                                                }
                                                if (z19) {
                                                }
                                                if (z19) {
                                                }
                                            }
                                            i15 = 5;
                                            z15 = true;
                                            z16 = true;
                                            z17 = true;
                                            if (z16) {
                                            }
                                            z18 = true;
                                            if (z15) {
                                            }
                                            if (this.aq != 8) {
                                            }
                                            if (z16) {
                                            }
                                            if (z19) {
                                            }
                                            i18 = i15;
                                            z20 = z18;
                                            if (z20) {
                                            }
                                            if (z19) {
                                            }
                                            if (z19) {
                                            }
                                        } else {
                                            i12 = i31;
                                            bwoVar2 = bwoVar;
                                            crbVar4 = crbVar2;
                                            crbVar5 = t3;
                                            crbVar6 = t4;
                                            crbVar7 = t5;
                                            i13 = 6;
                                            i14 = 5;
                                            i15 = 4;
                                            z15 = false;
                                            z16 = false;
                                        }
                                        i15 = 4;
                                        z15 = true;
                                        z16 = true;
                                        z17 = false;
                                        crbVar4 = crbVar2;
                                        if (z16) {
                                        }
                                        z18 = true;
                                        if (z15) {
                                        }
                                        if (this.aq != 8) {
                                        }
                                        if (z16) {
                                        }
                                        if (z19) {
                                        }
                                        i18 = i15;
                                        z20 = z18;
                                        if (z20) {
                                        }
                                        if (z19) {
                                        }
                                        if (z19) {
                                        }
                                    }
                                    i26 = 5;
                                    if (z19 || !z14) {
                                        return;
                                    }
                                    int n2 = hacVar4.f19105e != null ? hacVar4.n() : 0;
                                    if (crbVar3 != crbVar2) {
                                        bwoVar2.z(crbVar2, crbVar6, n2, i26);
                                        return;
                                    }
                                    return;
                                }
                                i12 = i31;
                                if (t5.l && crbVar3.l) {
                                    bwoVar.ae(t3, t5, hacVar.n(), f2, crbVar3, t4, hacVar2.n(), 8);
                                    if (z2 && z14) {
                                        int n3 = hacVar2.f19105e != null ? hacVar2.n() : 0;
                                        if (crbVar3 != crbVar2) {
                                            bwoVar.z(crbVar2, t4, n3, 5);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                bwoVar2 = bwoVar;
                                crbVar4 = crbVar2;
                                crbVar5 = t3;
                                crbVar6 = t4;
                                crbVar7 = t5;
                                i13 = 6;
                                i14 = 5;
                                i15 = 4;
                                z15 = true;
                                z16 = true;
                                z17 = false;
                                if (z16) {
                                }
                                z18 = true;
                                if (z15) {
                                }
                                if (this.aq != 8) {
                                }
                                if (z16) {
                                }
                                if (z19) {
                                }
                                i18 = i15;
                                z20 = z18;
                                if (z20) {
                                }
                                if (z19) {
                                }
                                if (z19) {
                                }
                                i26 = 5;
                                if (z19) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                        } else {
                            crbVar3 = t6;
                            bwoVar2.x(t4, crbVar3, -hacVar2.n(), 8);
                            if (z2) {
                                bwoVar2.z(t3, crbVar, 0, 5);
                            }
                        }
                        hacVar4 = hacVar2;
                        crbVar6 = t4;
                        z14 = z13;
                    } else {
                        hacVar4 = hacVar2;
                        crbVar6 = t4;
                        z14 = z13;
                        crbVar3 = t6;
                        z19 = z2;
                        i26 = (z2 && (hacVar.f19105e.f19102b instanceof r)) ? 8 : 5;
                        if (z19) {
                        }
                    }
                    z19 = z2;
                    i26 = 5;
                    if (z19) {
                    }
                } else if (z5) {
                    bwoVar2.x(t4, t3, 0, 3);
                    if (i3 > 0) {
                        bwoVar2.z(t4, t3, i3, i10);
                    }
                    if (i4 < Integer.MAX_VALUE) {
                        bwoVar2.aj(t4, t3, i4, i10);
                    }
                } else {
                    bwoVar2.x(t4, t3, i9, i10);
                }
                z13 = z4;
                i11 = i27;
                if (z11) {
                }
                boolean z252 = z13;
                if (i30 < 2) {
                    return;
                } else {
                    return;
                }
            }
        }
        z12 = z24;
        i10 = 8;
        if (!z12) {
        }
        z13 = z4;
        i11 = i27;
        if (z11) {
        }
        boolean z2522 = z13;
        if (i30 < 2) {
        }
    }

    public final brh dn(int i) {
        hac hacVar;
        hac hacVar2;
        if (i != 0) {
            if (i == 1 && (hacVar2 = (hacVar = this.as).f19105e) != null && hacVar2.f19105e == hacVar) {
                return hacVar2.f19102b;
            }
            return null;
        }
        hac hacVar3 = this.br;
        hac hacVar4 = hacVar3.f19105e;
        if (hacVar4 == null || hacVar4.f19105e != hacVar3) {
            return null;
        }
        return hacVar4.f19102b;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2do(dih dihVar, brh brhVar, dih dihVar2, int i) {
        dih dihVar3;
        dih dihVar4;
        boolean z;
        dih dihVar5 = dih.CENTER;
        if (dihVar == dihVar5) {
            if (dihVar2 != dihVar5) {
                dih dihVar6 = dih.LEFT;
                if (dihVar2 == dihVar6 || dihVar2 == dih.RIGHT) {
                    m2do(dihVar6, brhVar, dihVar2, 0);
                    m2do(dih.RIGHT, brhVar, dihVar2, 0);
                    m(dihVar5).o(brhVar.m(dihVar2), 0);
                    return;
                }
                dih dihVar7 = dih.TOP;
                if (dihVar2 == dihVar7 || dihVar2 == dih.BOTTOM) {
                    m2do(dihVar7, brhVar, dihVar2, 0);
                    m2do(dih.BOTTOM, brhVar, dihVar2, 0);
                    m(dihVar5).o(brhVar.m(dihVar2), 0);
                    return;
                }
                return;
            }
            dih dihVar8 = dih.LEFT;
            hac m = m(dihVar8);
            dih dihVar9 = dih.RIGHT;
            hac m2 = m(dihVar9);
            dih dihVar10 = dih.TOP;
            hac m3 = m(dihVar10);
            dih dihVar11 = dih.BOTTOM;
            hac m4 = m(dihVar11);
            boolean z2 = true;
            if ((m == null || !m.j()) && (m2 == null || !m2.j())) {
                m2do(dihVar8, brhVar, dihVar8, 0);
                m2do(dihVar9, brhVar, dihVar9, 0);
                z = true;
            } else {
                z = false;
            }
            if ((m3 == null || !m3.j()) && (m4 == null || !m4.j())) {
                m2do(dihVar10, brhVar, dihVar10, 0);
                m2do(dihVar11, brhVar, dihVar11, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                m(dihVar5).o(brhVar.m(dihVar5), 0);
                return;
            }
            if (z) {
                dih dihVar12 = dih.CENTER_X;
                m(dihVar12).o(brhVar.m(dihVar12), 0);
                return;
            } else {
                if (z2) {
                    dih dihVar13 = dih.CENTER_Y;
                    m(dihVar13).o(brhVar.m(dihVar13), 0);
                    return;
                }
                return;
            }
        }
        dih dihVar14 = dih.CENTER_X;
        if (dihVar == dihVar14 && (dihVar2 == (dihVar4 = dih.LEFT) || dihVar2 == dih.RIGHT)) {
            hac m5 = m(dihVar4);
            hac m6 = brhVar.m(dihVar2);
            hac m7 = m(dih.RIGHT);
            m5.o(m6, 0);
            m7.o(m6, 0);
            m(dihVar14).o(m6, 0);
            return;
        }
        dih dihVar15 = dih.CENTER_Y;
        if (dihVar == dihVar15 && (dihVar2 == (dihVar3 = dih.TOP) || dihVar2 == dih.BOTTOM)) {
            hac m8 = brhVar.m(dihVar2);
            m(dihVar3).o(m8, 0);
            m(dih.BOTTOM).o(m8, 0);
            m(dihVar15).o(m8, 0);
            return;
        }
        if (dihVar == dihVar14 && dihVar2 == dihVar14) {
            dih dihVar16 = dih.LEFT;
            m(dihVar16).o(brhVar.m(dihVar16), 0);
            dih dihVar17 = dih.RIGHT;
            m(dihVar17).o(brhVar.m(dihVar17), 0);
            m(dihVar14).o(brhVar.m(dihVar2), 0);
            return;
        }
        if (dihVar == dihVar15 && dihVar2 == dihVar15) {
            dih dihVar18 = dih.TOP;
            m(dihVar18).o(brhVar.m(dihVar18), 0);
            dih dihVar19 = dih.BOTTOM;
            m(dihVar19).o(brhVar.m(dihVar19), 0);
            m(dihVar15).o(brhVar.m(dihVar2), 0);
            return;
        }
        hac m9 = m(dihVar);
        hac m10 = brhVar.m(dihVar2);
        if (m9.q(m10)) {
            dih dihVar20 = dih.BASELINE;
            if (dihVar == dihVar20) {
                hac m11 = m(dih.TOP);
                hac m12 = m(dih.BOTTOM);
                if (m11 != null) {
                    m11.s();
                }
                if (m12 != null) {
                    m12.s();
                }
            } else if (dihVar == dih.TOP || dihVar == dih.BOTTOM) {
                hac m13 = m(dihVar20);
                if (m13 != null) {
                    m13.s();
                }
                hac m14 = m(dihVar5);
                if (m14.f19105e != m10) {
                    m14.s();
                }
                hac p = m(dihVar).p();
                hac m15 = m(dihVar15);
                if (m15.j()) {
                    p.s();
                    m15.s();
                }
            } else if (dihVar == dih.LEFT || dihVar == dih.RIGHT) {
                hac m16 = m(dihVar5);
                if (m16.f19105e != m10) {
                    m16.s();
                }
                hac p2 = m(dihVar).p();
                hac m17 = m(dihVar14);
                if (m17.j()) {
                    p2.s();
                    m17.s();
                }
            }
            m9.o(m10, i);
        }
    }

    public final void dp(aep aepVar, bwo bwoVar, HashSet hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            bff.au(aepVar, bwoVar, this);
            hashSet.remove(this);
            g(bwoVar, aepVar.ag(64));
        }
        if (i == 0) {
            HashSet hashSet2 = this.cw.f19104d;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((hac) it.next()).f19102b.dp(aepVar, bwoVar, hashSet, i, true);
                }
            }
            HashSet hashSet3 = this.br.f19104d;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((hac) it2.next()).f19102b.dp(aepVar, bwoVar, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.bx.f19104d;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((hac) it3.next()).f19102b.dp(aepVar, bwoVar, hashSet, i, true);
            }
        }
        HashSet hashSet5 = this.as.f19104d;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((hac) it4.next()).f19102b.dp(aepVar, bwoVar, hashSet, i, true);
            }
        }
        HashSet hashSet6 = this.bp.f19104d;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((hac) it5.next()).f19102b.dp(aepVar, bwoVar, hashSet, i, true);
            }
        }
    }

    public final boolean dq(int i, int i2) {
        hac hacVar;
        hac hacVar2;
        hac hacVar3;
        hac hacVar4;
        if (i == 0) {
            hac hacVar5 = this.cw;
            hac hacVar6 = hacVar5.f19105e;
            if (hacVar6 == null || !hacVar6.h || (hacVar4 = (hacVar3 = this.br).f19105e) == null || !hacVar4.h) {
                return false;
            }
            return (hacVar4.l() - hacVar3.n()) - (hacVar5.n() + hacVar5.f19105e.l()) >= i2;
        }
        hac hacVar7 = this.bx;
        hac hacVar8 = hacVar7.f19105e;
        if (hacVar8 == null || !hacVar8.h || (hacVar2 = (hacVar = this.as).f19105e) == null || !hacVar2.h) {
            return false;
        }
        return (hacVar2.l() - hacVar.n()) - (hacVar7.n() + hacVar7.f19105e.l()) >= i2;
    }

    public final void dr() {
        brh brhVar = this.bj;
        if (brhVar != null && (brhVar instanceof aep)) {
            ((aep) brhVar).getClass();
        }
        ArrayList arrayList = this.cc;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((hac) arrayList.get(i)).s();
        }
    }

    public final void ds(fol folVar) {
        this.ch[0] = folVar;
    }

    public final void dt(int i, int i2) {
        if (this.bg) {
            return;
        }
        this.bx.m(i);
        this.as.m(i2);
        this.cb = i;
        this.bt = i2 - i;
        if (this.cx) {
            this.bp.m(i + this.bn);
        }
        this.bg = true;
    }

    public final void du(dih dihVar, brh brhVar, dih dihVar2, int i, int i2) {
        m(dihVar).r(brhVar.m(dihVar2), i, i2, true);
    }

    public final boolean dv(int i) {
        hac hacVar;
        hac hacVar2;
        int i2 = i * 2;
        hac[] hacVarArr = this.ax;
        hac hacVar3 = hacVarArr[i2];
        hac hacVar4 = hacVar3.f19105e;
        return (hacVar4 == null || hacVar4.f19105e == hacVar3 || (hacVar2 = (hacVar = hacVarArr[i2 + 1]).f19105e) == null || hacVar2.f19105e != hacVar) ? false : true;
    }

    public final void dw(hac hacVar, hac hacVar2, int i) {
        if (hacVar.f19102b == this) {
            m2do(hacVar.f19103c, hacVar2.f19102b, hacVar2.f19103c, i);
        }
    }

    public final void dx(int i, int i2) {
        if (this.ap) {
            return;
        }
        this.cw.m(i);
        this.br.m(i2);
        this.cv = i;
        this.bc = i2 - i;
        this.ap = true;
    }

    public final int dy() {
        brh brhVar = this.bj;
        return (brhVar == null || !(brhVar instanceof aep)) ? this.cb : ((aep) brhVar).o + this.cb;
    }

    public final brh dz(int i) {
        hac hacVar;
        hac hacVar2;
        if (i != 0) {
            if (i == 1 && (hacVar2 = (hacVar = this.bx).f19105e) != null && hacVar2.f19105e == hacVar) {
                return hacVar2.f19102b;
            }
            return null;
        }
        hac hacVar3 = this.cw;
        hac hacVar4 = hacVar3.f19105e;
        if (hacVar4 == null || hacVar4.f19105e != hacVar3) {
            return null;
        }
        return hacVar4.f19102b;
    }

    public boolean e() {
        if (this.bg) {
            return true;
        }
        return this.bx.h && this.as.h;
    }

    public final fol ea(int i) {
        fol[] folVarArr = this.ch;
        if (i == 0) {
            return folVarArr[0];
        }
        if (i == 1) {
            return folVarArr[1];
        }
        return null;
    }

    public final int eb() {
        if (this.aq == 8) {
            return 0;
        }
        return this.bc;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ec(int i) {
        if (i == 0) {
            return (this.cw.f19105e != null ? 1 : 0) + (this.br.f19105e != null ? 1 : 0) < 2;
        }
        if ((this.bx.f19105e != null ? 1 : 0) + (this.as.f19105e != null ? 1 : 0) + (this.bp.f19105e != null ? 1 : 0) < 2) {
        }
    }

    public final void ed(int i) {
        this.bc = i;
        int i2 = this.bb;
        if (i < i2) {
            this.bc = i2;
        }
    }

    public final void ee(int i) {
        this.bn = i;
        this.cx = i > 0;
    }

    public final void ef() {
        this.ap = false;
        this.bg = false;
        this.ca = false;
        this.bd = false;
        ArrayList arrayList = this.cc;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            hac hacVar = (hac) arrayList.get(i);
            hacVar.h = false;
            hacVar.f19107g = 0;
        }
    }

    public final boolean eg() {
        hac hacVar = this.cw;
        hac hacVar2 = hacVar.f19105e;
        if (hacVar2 != null && hacVar2.f19105e == hacVar) {
            return true;
        }
        hac hacVar3 = this.br;
        hac hacVar4 = hacVar3.f19105e;
        return hacVar4 != null && hacVar4.f19105e == hacVar3;
    }

    public final void eh(bwo bwoVar) {
        bwoVar.t(this.cw);
        bwoVar.t(this.bx);
        bwoVar.t(this.br);
        bwoVar.t(this.as);
        if (this.bn > 0) {
            bwoVar.t(this.bp);
        }
    }

    public final int ei() {
        brh brhVar = this.bj;
        return (brhVar == null || !(brhVar instanceof aep)) ? this.cv : ((aep) brhVar).z + this.cv;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
    
        if (r13 != 3) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(bwo bwoVar, boolean z) {
        char c2;
        char c3;
        boolean z2;
        boolean z3;
        int i;
        boolean z4;
        boolean z5;
        brh brhVar;
        brh brhVar2;
        boolean[] zArr;
        hac hacVar;
        boolean[] zArr2;
        hac hacVar2;
        hac hacVar3;
        boolean z6;
        boolean z7;
        boolean z8;
        int i2;
        int i3;
        float f2;
        crb crbVar;
        crb crbVar2;
        hac hacVar4;
        int i4;
        int i5;
        int i6;
        boolean z9;
        int i7;
        boolean z10;
        fol folVar;
        fol folVar2;
        fol folVar3;
        boolean z11;
        hac hacVar5;
        int i8;
        int[] iArr;
        hac hacVar6;
        crb crbVar3;
        fol folVar4;
        crb crbVar4;
        fol folVar5;
        hac hacVar7;
        boolean z12;
        int[] iArr2;
        boolean z13;
        Object obj;
        crb crbVar5;
        crb crbVar6;
        crb crbVar7;
        boolean[] zArr3;
        int i9;
        boolean z14;
        crb crbVar8;
        crb crbVar9;
        crb crbVar10;
        int i10;
        int i11;
        char c4;
        boolean z15;
        crb crbVar11;
        crb crbVar12;
        fju fjuVar;
        big bigVar;
        brh brhVar3;
        hac hacVar8;
        dza dzaVar;
        int i12;
        boolean eg;
        boolean dk;
        dza dzaVar2;
        fju fjuVar2;
        boolean z16;
        bwo bwoVar2 = bwoVar;
        hac hacVar9 = this.cw;
        crb t = bwoVar2.t(hacVar9);
        hac hacVar10 = this.br;
        crb t2 = bwoVar2.t(hacVar10);
        hac hacVar11 = this.bx;
        crb t3 = bwoVar2.t(hacVar11);
        hac hacVar12 = this.as;
        crb t4 = bwoVar2.t(hacVar12);
        hac hacVar13 = this.bp;
        crb t5 = bwoVar2.t(hacVar13);
        brh brhVar4 = this.bj;
        if (brhVar4 != null) {
            fol[] folVarArr = brhVar4.ch;
            c2 = 0;
            fol folVar6 = folVarArr[0];
            fol folVar7 = fol.WRAP_CONTENT;
            z3 = folVar6 == folVar7;
            z2 = folVarArr[1] == folVar7;
            int i13 = this.ck;
            if (i13 != 1) {
                c3 = 1;
                if (i13 != 2) {
                }
                z3 = false;
            } else {
                c3 = 1;
                z2 = false;
            }
            i = this.aq;
            boolean[] zArr4 = this.cq;
            boolean z17 = z2;
            if (i != 8) {
                ArrayList arrayList = this.cc;
                int size = arrayList.size();
                z4 = z3;
                int i14 = 0;
                while (true) {
                    if (i14 < size) {
                        int i15 = size;
                        HashSet hashSet = ((hac) arrayList.get(i14)).f19104d;
                        if (hashSet != null && hashSet.size() > 0) {
                            break;
                        }
                        i14++;
                        size = i15;
                    } else if (!zArr4[c2] && !zArr4[c3]) {
                        return;
                    }
                }
            } else {
                z4 = z3;
            }
            z5 = this.ap;
            if (!z5 || this.bg) {
                if (z5) {
                    bwoVar2.v(t, this.cv);
                    bwoVar2.v(t2, this.cv + this.bc);
                    if (z4 && (brhVar2 = this.bj) != null) {
                        aep aepVar = (aep) brhVar2;
                        WeakReference weakReference = aepVar.q;
                        if (weakReference == null || weakReference.get() == null || hacVar9.l() > ((hac) aepVar.q.get()).l()) {
                            aepVar.q = new WeakReference(hacVar9);
                        }
                        WeakReference weakReference2 = aepVar.h;
                        if (weakReference2 == null || weakReference2.get() == null || hacVar10.l() > ((hac) aepVar.h.get()).l()) {
                            aepVar.h = new WeakReference(hacVar10);
                        }
                    }
                }
                if (this.bg) {
                    bwoVar2.v(t3, this.cb);
                    bwoVar2.v(t4, this.cb + this.bt);
                    HashSet hashSet2 = hacVar13.f19104d;
                    if (hashSet2 != null && hashSet2.size() > 0) {
                        bwoVar2.v(t5, this.cb + this.bn);
                    }
                    if (z17 && (brhVar = this.bj) != null) {
                        aep aepVar2 = (aep) brhVar;
                        WeakReference weakReference3 = aepVar2.t;
                        if (weakReference3 == null || weakReference3.get() == null || hacVar11.l() > ((hac) aepVar2.t.get()).l()) {
                            aepVar2.t = new WeakReference(hacVar11);
                        }
                        WeakReference weakReference4 = aepVar2.aa;
                        if (weakReference4 == null || weakReference4.get() == null || hacVar12.l() > ((hac) aepVar2.aa.get()).l()) {
                            aepVar2.aa = new WeakReference(hacVar12);
                        }
                    }
                }
                if (this.ap && this.bg) {
                    this.ap = false;
                    this.bg = false;
                    return;
                }
            }
            zArr = this.bv;
            if (z || (dzaVar2 = this.be) == null || (fjuVar2 = this.bi) == null) {
                hacVar = hacVar13;
                zArr2 = zArr;
            } else {
                hacVar = hacVar13;
                big bigVar2 = dzaVar2.f19645a;
                zArr2 = zArr;
                if (bigVar2.j && dzaVar2.f19650f.j && fjuVar2.f19645a.j && fjuVar2.f19650f.j) {
                    bwoVar2.v(t, bigVar2.l);
                    bwoVar2.v(t2, this.be.f19650f.l);
                    bwoVar2.v(t3, this.bi.f19645a.l);
                    bwoVar2.v(t4, this.bi.f19650f.l);
                    bwoVar2.v(t5, this.bi.w.l);
                    if (this.bj != null) {
                        if (z4 && zArr2[0] && !eg()) {
                            bwoVar2.z(bwoVar2.t(this.bj.br), t2, 0, 8);
                        }
                        if (z17 && zArr2[c3] && !dk()) {
                            z16 = false;
                            bwoVar2.z(bwoVar2.t(this.bj.as), t4, 0, 8);
                            this.ap = z16;
                            this.bg = z16;
                            return;
                        }
                    }
                    z16 = false;
                    this.ap = z16;
                    this.bg = z16;
                    return;
                }
            }
            if (this.bj == null) {
                if (dv(0)) {
                    ((aep) this.bj).ah(this, 0);
                    eg = true;
                } else {
                    eg = eg();
                }
                if (dv(1)) {
                    ((aep) this.bj).ah(this, 1);
                    dk = true;
                } else {
                    dk = dk();
                }
                if (!eg && z4 && this.aq != 8 && hacVar9.f19105e == null && hacVar10.f19105e == null) {
                    hacVar2 = hacVar9;
                    bwoVar2.z(bwoVar2.t(this.bj.br), t2, 0, 1);
                } else {
                    hacVar2 = hacVar9;
                }
                if (!dk && z17 && this.aq != 8 && hacVar11.f19105e == null && hacVar12.f19105e == null && hacVar == null) {
                    bwoVar2.z(bwoVar2.t(this.bj.as), t4, 0, 1);
                }
                hacVar3 = hacVar10;
                z6 = z17;
                z8 = dk;
                z7 = eg;
            } else {
                hacVar2 = hacVar9;
                hacVar3 = hacVar10;
                z6 = z17;
                z7 = false;
                z8 = false;
            }
            i2 = this.bc;
            i3 = this.bb;
            if (i2 >= i3) {
                i3 = i2;
            }
            int i16 = this.bt;
            hac hacVar14 = hacVar3;
            int i17 = this.au;
            int i18 = i16 >= i17 ? i17 : i16;
            fol[] folVarArr2 = this.ch;
            fol folVar8 = folVarArr2[0];
            boolean z18 = z6;
            fol folVar9 = fol.MATCH_CONSTRAINT;
            boolean z19 = folVar8 == folVar9;
            fol folVar10 = folVarArr2[1];
            boolean z20 = folVar10 == folVar9;
            int i19 = this.db;
            this.cl = i19;
            f2 = this.bq;
            this.bf = f2;
            int i20 = this.da;
            int i21 = this.by;
            if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                crbVar = t4;
                if (this.aq != 8) {
                    i5 = (folVar8 == folVar9 && i20 == 0) ? 3 : i20;
                    int i22 = (folVar10 == folVar9 && i21 == 0) ? 3 : i21;
                    if (folVar8 == folVar9 && folVar10 == folVar9) {
                        crbVar2 = t5;
                        if (i5 == 3 && i22 == 3) {
                            if (i19 == -1) {
                                if (z19 && !z20) {
                                    this.cl = 0;
                                } else if (!z19 && z20) {
                                    this.cl = 1;
                                    if (i19 == -1) {
                                        this.bf = 1.0f / f2;
                                    }
                                }
                            }
                            if (this.cl == 0 && (!hacVar11.j() || !hacVar12.j())) {
                                this.cl = 1;
                            } else if (this.cl == 1 && (!hacVar2.j() || !hacVar14.j())) {
                                this.cl = 0;
                            }
                            if (this.cl == -1 && (!hacVar11.j() || !hacVar12.j() || !hacVar2.j() || !hacVar14.j())) {
                                if (hacVar11.j() && hacVar12.j()) {
                                    this.cl = 0;
                                } else if (hacVar2.j() && hacVar14.j()) {
                                    this.bf = 1.0f / this.bf;
                                    this.cl = 1;
                                }
                            }
                            if (this.cl == -1) {
                                int i23 = this.bl;
                                if (i23 > 0 && this.cy == 0) {
                                    this.cl = 0;
                                } else if (i23 == 0 && this.cy > 0) {
                                    this.bf = 1.0f / this.bf;
                                    this.cl = 1;
                                }
                            }
                            hacVar4 = hacVar;
                            i4 = i18;
                            z9 = true;
                            i6 = i22;
                            int[] iArr3 = this.cm;
                            iArr3[0] = i5;
                            iArr3[1] = i6;
                            if (z9) {
                                i7 = -1;
                            } else {
                                int i24 = this.cl;
                                i7 = -1;
                                if (i24 == 0 || i24 == -1) {
                                    z10 = true;
                                    boolean z21 = !z9 && ((i12 = this.cl) == 1 || i12 == i7);
                                    folVar = folVarArr2[0];
                                    folVar2 = fol.WRAP_CONTENT;
                                    if (folVar == folVar2 || !(this instanceof aep)) {
                                        folVar3 = folVar2;
                                        z11 = false;
                                    } else {
                                        folVar3 = folVar2;
                                        z11 = true;
                                    }
                                    if (z11) {
                                        i3 = 0;
                                    }
                                    hacVar5 = this.cd;
                                    boolean z22 = !hacVar5.j();
                                    boolean z23 = zArr4[0];
                                    boolean z24 = zArr4[1];
                                    i8 = this.av;
                                    iArr = this.bo;
                                    if (i8 == 2 && !this.ap) {
                                        if (!z || (dzaVar = this.be) == null) {
                                            hacVar8 = hacVar4;
                                        } else {
                                            big bigVar3 = dzaVar.f19645a;
                                            hacVar8 = hacVar4;
                                            if (bigVar3.j && dzaVar.f19650f.j) {
                                                if (z) {
                                                    bwoVar2.v(t, bigVar3.l);
                                                    bwoVar2.v(t2, this.be.f19650f.l);
                                                    if (this.bj != null && z4 && zArr2[0] && !eg()) {
                                                        bwoVar2.z(bwoVar2.t(this.bj.br), t2, 0, 8);
                                                    }
                                                }
                                                crbVar3 = t;
                                                folVar4 = folVar9;
                                                crbVar4 = t2;
                                                folVar5 = folVar3;
                                                hacVar7 = hacVar5;
                                                z12 = z7;
                                                iArr2 = iArr;
                                                z13 = z4;
                                                hacVar6 = hacVar8;
                                            }
                                        }
                                        brh brhVar5 = this.bj;
                                        crb t6 = brhVar5 != null ? bwoVar2.t(brhVar5.br) : null;
                                        brh brhVar6 = this.bj;
                                        crb t7 = brhVar6 != null ? bwoVar2.t(brhVar6.cw) : null;
                                        boolean z25 = zArr2[0];
                                        z13 = z4;
                                        i9 = i5;
                                        fol folVar11 = folVarArr2[0];
                                        z12 = z7;
                                        int i25 = this.cv;
                                        int i26 = this.bb;
                                        iArr2 = iArr;
                                        int i27 = iArr2[0];
                                        float f3 = this.cp;
                                        boolean z26 = folVarArr2[1] == folVar9;
                                        hacVar7 = hacVar5;
                                        folVar4 = folVar9;
                                        crbVar4 = t2;
                                        hacVar6 = hacVar8;
                                        crbVar3 = t;
                                        z14 = z18;
                                        crbVar7 = t3;
                                        obj = hacVar12;
                                        crbVar6 = crbVar;
                                        crbVar5 = crbVar2;
                                        folVar5 = folVar3;
                                        zArr3 = zArr2;
                                        bwoVar2 = bwoVar;
                                        dm(bwoVar2, true, z13, z14, z25, t7, t6, folVar11, z11, this.cw, this.br, i25, i3, i26, i27, f3, z10, z26, z12, z8, z23, i9, i6, this.bl, this.bs, this.bu, z22);
                                        if (z && (fjuVar = this.bi) != null) {
                                            bigVar = fjuVar.f19645a;
                                            if (bigVar.j && fjuVar.f19650f.j) {
                                                int i28 = bigVar.l;
                                                crbVar8 = crbVar7;
                                                bwoVar2.v(crbVar8, i28);
                                                crbVar9 = crbVar6;
                                                bwoVar2.v(crbVar9, this.bi.f19650f.l);
                                                crbVar10 = crbVar5;
                                                bwoVar2.v(crbVar10, this.bi.w.l);
                                                brhVar3 = this.bj;
                                                if (brhVar3 == null && !z8 && z14) {
                                                    c4 = 1;
                                                    if (zArr3[1]) {
                                                        i10 = 0;
                                                        i11 = 8;
                                                        bwoVar2.z(bwoVar2.t(brhVar3.as), crbVar9, 0, 8);
                                                    } else {
                                                        i10 = 0;
                                                        i11 = 8;
                                                    }
                                                } else {
                                                    i10 = 0;
                                                    i11 = 8;
                                                    c4 = 1;
                                                }
                                                z15 = false;
                                                if (this.bz == 2) {
                                                    z15 = false;
                                                }
                                                if (z15 || this.bg) {
                                                    crbVar11 = crbVar8;
                                                    crbVar12 = crbVar9;
                                                } else {
                                                    boolean z27 = folVarArr2[c4] == folVar5 && (this instanceof aep);
                                                    int i29 = z27 ? 0 : i4;
                                                    brh brhVar7 = this.bj;
                                                    crb t8 = brhVar7 != null ? bwoVar2.t(brhVar7.as) : null;
                                                    brh brhVar8 = this.bj;
                                                    crb t9 = brhVar8 != null ? bwoVar2.t(brhVar8.bx) : null;
                                                    int i30 = this.bn;
                                                    if (i30 > 0 || this.aq == i11) {
                                                        hac hacVar15 = hacVar6;
                                                        if (hacVar15.f19105e != null) {
                                                            bwoVar2.x(crbVar10, crbVar8, i30, i11);
                                                            bwoVar2.x(crbVar10, bwoVar2.t(hacVar15.f19105e), hacVar15.n(), i11);
                                                            if (z14) {
                                                                bwoVar2.z(t8, bwoVar2.t(obj), i10, 5);
                                                            }
                                                            z22 = false;
                                                        } else if (this.aq == i11) {
                                                            bwoVar2.x(crbVar10, crbVar8, hacVar15.n(), i11);
                                                        } else {
                                                            bwoVar2.x(crbVar10, crbVar8, i30, i11);
                                                        }
                                                    }
                                                    crbVar12 = crbVar9;
                                                    crbVar11 = crbVar8;
                                                    bwoVar2 = bwoVar;
                                                    dm(bwoVar2, false, z14, z13, zArr3[c4], t9, t8, folVarArr2[c4], z27, this.bx, this.as, this.cb, i29, this.au, iArr2[1], this.ct, z21, folVarArr2[0] == folVar4, z8, z12, z24, i6, i9, this.cy, this.aw, this.am, z22);
                                                }
                                                if (z9) {
                                                    if (this.cl == 1) {
                                                        float f4 = this.bf;
                                                        gz w = bwoVar2.w();
                                                        w.f19037a.r(crbVar12, -1.0f);
                                                        w.f19037a.r(crbVar11, 1.0f);
                                                        w.f19037a.r(crbVar4, f4);
                                                        w.f19037a.r(crbVar3, -f4);
                                                        bwoVar2.ai(w);
                                                    } else {
                                                        float f5 = this.bf;
                                                        gz w2 = bwoVar2.w();
                                                        w2.f19037a.r(crbVar4, -1.0f);
                                                        w2.f19037a.r(crbVar3, 1.0f);
                                                        w2.f19037a.r(crbVar12, f5);
                                                        w2.f19037a.r(crbVar11, -f5);
                                                        bwoVar2.ai(w2);
                                                    }
                                                }
                                                if (hacVar7.j()) {
                                                    hac hacVar16 = hacVar7;
                                                    brh brhVar9 = hacVar16.f19105e.f19102b;
                                                    float radians = (float) Math.toRadians(this.bm + 90.0f);
                                                    int n = hacVar16.n();
                                                    dih dihVar = dih.LEFT;
                                                    crb t10 = bwoVar2.t(m(dihVar));
                                                    dih dihVar2 = dih.TOP;
                                                    crb t11 = bwoVar2.t(m(dihVar2));
                                                    dih dihVar3 = dih.RIGHT;
                                                    crb t12 = bwoVar2.t(m(dihVar3));
                                                    dih dihVar4 = dih.BOTTOM;
                                                    crb t13 = bwoVar2.t(m(dihVar4));
                                                    crb t14 = bwoVar2.t(brhVar9.m(dihVar));
                                                    crb t15 = bwoVar2.t(brhVar9.m(dihVar2));
                                                    crb t16 = bwoVar2.t(brhVar9.m(dihVar3));
                                                    crb t17 = bwoVar2.t(brhVar9.m(dihVar4));
                                                    gz w3 = bwoVar2.w();
                                                    double d2 = radians;
                                                    double sin = Math.sin(d2);
                                                    double d3 = n;
                                                    w3.f19037a.r(t15, 0.5f);
                                                    w3.f19037a.r(t17, 0.5f);
                                                    w3.f19037a.r(t11, -0.5f);
                                                    w3.f19037a.r(t13, -0.5f);
                                                    w3.f19040d = -((float) (sin * d3));
                                                    bwoVar2.ai(w3);
                                                    gz w4 = bwoVar2.w();
                                                    float cos = (float) (Math.cos(d2) * d3);
                                                    w4.f19037a.r(t14, 0.5f);
                                                    w4.f19037a.r(t16, 0.5f);
                                                    w4.f19037a.r(t10, -0.5f);
                                                    w4.f19037a.r(t12, -0.5f);
                                                    w4.f19040d = -cos;
                                                    bwoVar2.ai(w4);
                                                }
                                                this.ap = false;
                                                this.bg = false;
                                            }
                                        }
                                        crbVar8 = crbVar7;
                                        crbVar9 = crbVar6;
                                        crbVar10 = crbVar5;
                                        i10 = 0;
                                        i11 = 8;
                                        c4 = 1;
                                        z15 = true;
                                        if (this.bz == 2) {
                                        }
                                        if (z15) {
                                        }
                                        crbVar11 = crbVar8;
                                        crbVar12 = crbVar9;
                                        if (z9) {
                                        }
                                        if (hacVar7.j()) {
                                        }
                                        this.ap = false;
                                        this.bg = false;
                                    }
                                    hacVar6 = hacVar4;
                                    crbVar3 = t;
                                    folVar4 = folVar9;
                                    crbVar4 = t2;
                                    folVar5 = folVar3;
                                    hacVar7 = hacVar5;
                                    z12 = z7;
                                    iArr2 = iArr;
                                    z13 = z4;
                                    z14 = z18;
                                    crbVar7 = t3;
                                    obj = hacVar12;
                                    crbVar6 = crbVar;
                                    crbVar5 = crbVar2;
                                    i9 = i5;
                                    zArr3 = zArr2;
                                    if (z) {
                                        bigVar = fjuVar.f19645a;
                                        if (bigVar.j) {
                                            int i282 = bigVar.l;
                                            crbVar8 = crbVar7;
                                            bwoVar2.v(crbVar8, i282);
                                            crbVar9 = crbVar6;
                                            bwoVar2.v(crbVar9, this.bi.f19650f.l);
                                            crbVar10 = crbVar5;
                                            bwoVar2.v(crbVar10, this.bi.w.l);
                                            brhVar3 = this.bj;
                                            if (brhVar3 == null) {
                                            }
                                            i10 = 0;
                                            i11 = 8;
                                            c4 = 1;
                                            z15 = false;
                                            if (this.bz == 2) {
                                            }
                                            if (z15) {
                                            }
                                            crbVar11 = crbVar8;
                                            crbVar12 = crbVar9;
                                            if (z9) {
                                            }
                                            if (hacVar7.j()) {
                                            }
                                            this.ap = false;
                                            this.bg = false;
                                        }
                                    }
                                    crbVar8 = crbVar7;
                                    crbVar9 = crbVar6;
                                    crbVar10 = crbVar5;
                                    i10 = 0;
                                    i11 = 8;
                                    c4 = 1;
                                    z15 = true;
                                    if (this.bz == 2) {
                                    }
                                    if (z15) {
                                    }
                                    crbVar11 = crbVar8;
                                    crbVar12 = crbVar9;
                                    if (z9) {
                                    }
                                    if (hacVar7.j()) {
                                    }
                                    this.ap = false;
                                    this.bg = false;
                                }
                            }
                            z10 = false;
                            if (z9) {
                            }
                            folVar = folVarArr2[0];
                            folVar2 = fol.WRAP_CONTENT;
                            if (folVar == folVar2) {
                            }
                            folVar3 = folVar2;
                            z11 = false;
                            if (z11) {
                            }
                            hacVar5 = this.cd;
                            boolean z222 = !hacVar5.j();
                            boolean z232 = zArr4[0];
                            boolean z242 = zArr4[1];
                            i8 = this.av;
                            iArr = this.bo;
                            if (i8 == 2) {
                            }
                            hacVar6 = hacVar4;
                            crbVar3 = t;
                            folVar4 = folVar9;
                            crbVar4 = t2;
                            folVar5 = folVar3;
                            hacVar7 = hacVar5;
                            z12 = z7;
                            iArr2 = iArr;
                            z13 = z4;
                            z14 = z18;
                            crbVar7 = t3;
                            obj = hacVar12;
                            crbVar6 = crbVar;
                            crbVar5 = crbVar2;
                            i9 = i5;
                            zArr3 = zArr2;
                            if (z) {
                            }
                            crbVar8 = crbVar7;
                            crbVar9 = crbVar6;
                            crbVar10 = crbVar5;
                            i10 = 0;
                            i11 = 8;
                            c4 = 1;
                            z15 = true;
                            if (this.bz == 2) {
                            }
                            if (z15) {
                            }
                            crbVar11 = crbVar8;
                            crbVar12 = crbVar9;
                            if (z9) {
                            }
                            if (hacVar7.j()) {
                            }
                            this.ap = false;
                            this.bg = false;
                        }
                    } else {
                        crbVar2 = t5;
                    }
                    if (folVar8 == folVar9 && i5 == 3) {
                        this.cl = 0;
                        i3 = (int) (i16 * f2);
                        hacVar4 = hacVar;
                        i4 = i18;
                        if (folVar10 != folVar9) {
                            i5 = 4;
                            z9 = false;
                            i6 = i22;
                            int[] iArr32 = this.cm;
                            iArr32[0] = i5;
                            iArr32[1] = i6;
                            if (z9) {
                            }
                            z10 = false;
                            if (z9) {
                            }
                            folVar = folVarArr2[0];
                            folVar2 = fol.WRAP_CONTENT;
                            if (folVar == folVar2) {
                            }
                            folVar3 = folVar2;
                            z11 = false;
                            if (z11) {
                            }
                            hacVar5 = this.cd;
                            boolean z2222 = !hacVar5.j();
                            boolean z2322 = zArr4[0];
                            boolean z2422 = zArr4[1];
                            i8 = this.av;
                            iArr = this.bo;
                            if (i8 == 2) {
                            }
                            hacVar6 = hacVar4;
                            crbVar3 = t;
                            folVar4 = folVar9;
                            crbVar4 = t2;
                            folVar5 = folVar3;
                            hacVar7 = hacVar5;
                            z12 = z7;
                            iArr2 = iArr;
                            z13 = z4;
                            z14 = z18;
                            crbVar7 = t3;
                            obj = hacVar12;
                            crbVar6 = crbVar;
                            crbVar5 = crbVar2;
                            i9 = i5;
                            zArr3 = zArr2;
                            if (z) {
                            }
                            crbVar8 = crbVar7;
                            crbVar9 = crbVar6;
                            crbVar10 = crbVar5;
                            i10 = 0;
                            i11 = 8;
                            c4 = 1;
                            z15 = true;
                            if (this.bz == 2) {
                            }
                            if (z15) {
                            }
                            crbVar11 = crbVar8;
                            crbVar12 = crbVar9;
                            if (z9) {
                            }
                            if (hacVar7.j()) {
                            }
                            this.ap = false;
                            this.bg = false;
                        }
                    } else {
                        if (folVar10 == folVar9 && i22 == 3) {
                            this.cl = 1;
                            if (i19 == -1) {
                                this.bf = 1.0f / f2;
                            }
                            i4 = (int) (this.bf * i2);
                            if (folVar8 != folVar9) {
                                hacVar4 = hacVar;
                                i6 = 4;
                                z9 = false;
                                int[] iArr322 = this.cm;
                                iArr322[0] = i5;
                                iArr322[1] = i6;
                                if (z9) {
                                }
                                z10 = false;
                                if (z9) {
                                }
                                folVar = folVarArr2[0];
                                folVar2 = fol.WRAP_CONTENT;
                                if (folVar == folVar2) {
                                }
                                folVar3 = folVar2;
                                z11 = false;
                                if (z11) {
                                }
                                hacVar5 = this.cd;
                                boolean z22222 = !hacVar5.j();
                                boolean z23222 = zArr4[0];
                                boolean z24222 = zArr4[1];
                                i8 = this.av;
                                iArr = this.bo;
                                if (i8 == 2) {
                                }
                                hacVar6 = hacVar4;
                                crbVar3 = t;
                                folVar4 = folVar9;
                                crbVar4 = t2;
                                folVar5 = folVar3;
                                hacVar7 = hacVar5;
                                z12 = z7;
                                iArr2 = iArr;
                                z13 = z4;
                                z14 = z18;
                                crbVar7 = t3;
                                obj = hacVar12;
                                crbVar6 = crbVar;
                                crbVar5 = crbVar2;
                                i9 = i5;
                                zArr3 = zArr2;
                                if (z) {
                                }
                                crbVar8 = crbVar7;
                                crbVar9 = crbVar6;
                                crbVar10 = crbVar5;
                                i10 = 0;
                                i11 = 8;
                                c4 = 1;
                                z15 = true;
                                if (this.bz == 2) {
                                }
                                if (z15) {
                                }
                                crbVar11 = crbVar8;
                                crbVar12 = crbVar9;
                                if (z9) {
                                }
                                if (hacVar7.j()) {
                                }
                                this.ap = false;
                                this.bg = false;
                            }
                            hacVar4 = hacVar;
                        }
                        hacVar4 = hacVar;
                        i4 = i18;
                    }
                    z9 = true;
                    i6 = i22;
                    int[] iArr3222 = this.cm;
                    iArr3222[0] = i5;
                    iArr3222[1] = i6;
                    if (z9) {
                    }
                    z10 = false;
                    if (z9) {
                    }
                    folVar = folVarArr2[0];
                    folVar2 = fol.WRAP_CONTENT;
                    if (folVar == folVar2) {
                    }
                    folVar3 = folVar2;
                    z11 = false;
                    if (z11) {
                    }
                    hacVar5 = this.cd;
                    boolean z222222 = !hacVar5.j();
                    boolean z232222 = zArr4[0];
                    boolean z242222 = zArr4[1];
                    i8 = this.av;
                    iArr = this.bo;
                    if (i8 == 2) {
                    }
                    hacVar6 = hacVar4;
                    crbVar3 = t;
                    folVar4 = folVar9;
                    crbVar4 = t2;
                    folVar5 = folVar3;
                    hacVar7 = hacVar5;
                    z12 = z7;
                    iArr2 = iArr;
                    z13 = z4;
                    z14 = z18;
                    crbVar7 = t3;
                    obj = hacVar12;
                    crbVar6 = crbVar;
                    crbVar5 = crbVar2;
                    i9 = i5;
                    zArr3 = zArr2;
                    if (z) {
                    }
                    crbVar8 = crbVar7;
                    crbVar9 = crbVar6;
                    crbVar10 = crbVar5;
                    i10 = 0;
                    i11 = 8;
                    c4 = 1;
                    z15 = true;
                    if (this.bz == 2) {
                    }
                    if (z15) {
                    }
                    crbVar11 = crbVar8;
                    crbVar12 = crbVar9;
                    if (z9) {
                    }
                    if (hacVar7.j()) {
                    }
                    this.ap = false;
                    this.bg = false;
                }
            } else {
                crbVar = t4;
            }
            crbVar2 = t5;
            hacVar4 = hacVar;
            i4 = i18;
            i5 = i20;
            i6 = i21;
            z9 = false;
            int[] iArr32222 = this.cm;
            iArr32222[0] = i5;
            iArr32222[1] = i6;
            if (z9) {
            }
            z10 = false;
            if (z9) {
            }
            folVar = folVarArr2[0];
            folVar2 = fol.WRAP_CONTENT;
            if (folVar == folVar2) {
            }
            folVar3 = folVar2;
            z11 = false;
            if (z11) {
            }
            hacVar5 = this.cd;
            boolean z2222222 = !hacVar5.j();
            boolean z2322222 = zArr4[0];
            boolean z2422222 = zArr4[1];
            i8 = this.av;
            iArr = this.bo;
            if (i8 == 2) {
            }
            hacVar6 = hacVar4;
            crbVar3 = t;
            folVar4 = folVar9;
            crbVar4 = t2;
            folVar5 = folVar3;
            hacVar7 = hacVar5;
            z12 = z7;
            iArr2 = iArr;
            z13 = z4;
            z14 = z18;
            crbVar7 = t3;
            obj = hacVar12;
            crbVar6 = crbVar;
            crbVar5 = crbVar2;
            i9 = i5;
            zArr3 = zArr2;
            if (z) {
            }
            crbVar8 = crbVar7;
            crbVar9 = crbVar6;
            crbVar10 = crbVar5;
            i10 = 0;
            i11 = 8;
            c4 = 1;
            z15 = true;
            if (this.bz == 2) {
            }
            if (z15) {
            }
            crbVar11 = crbVar8;
            crbVar12 = crbVar9;
            if (z9) {
            }
            if (hacVar7.j()) {
            }
            this.ap = false;
            this.bg = false;
        }
        c2 = 0;
        c3 = 1;
        z2 = false;
        z3 = false;
        i = this.aq;
        boolean[] zArr42 = this.cq;
        boolean z172 = z2;
        if (i != 8) {
        }
        z5 = this.ap;
        if (!z5) {
        }
        if (z5) {
        }
        if (this.bg) {
        }
        if (this.ap) {
            this.ap = false;
            this.bg = false;
            return;
        }
        zArr = this.bv;
        if (z) {
        }
        hacVar = hacVar13;
        zArr2 = zArr;
        if (this.bj == null) {
        }
        i2 = this.bc;
        i3 = this.bb;
        if (i2 >= i3) {
        }
        int i162 = this.bt;
        hac hacVar142 = hacVar3;
        int i172 = this.au;
        if (i162 >= i172) {
        }
        fol[] folVarArr22 = this.ch;
        fol folVar82 = folVarArr22[0];
        boolean z182 = z6;
        fol folVar92 = fol.MATCH_CONSTRAINT;
        if (folVar82 == folVar92) {
        }
        fol folVar102 = folVarArr22[1];
        if (folVar102 == folVar92) {
        }
        int i192 = this.db;
        this.cl = i192;
        f2 = this.bq;
        this.bf = f2;
        int i202 = this.da;
        int i212 = this.by;
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
        }
        crbVar2 = t5;
        hacVar4 = hacVar;
        i4 = i18;
        i5 = i202;
        i6 = i212;
        z9 = false;
        int[] iArr322222 = this.cm;
        iArr322222[0] = i5;
        iArr322222[1] = i6;
        if (z9) {
        }
        z10 = false;
        if (z9) {
        }
        folVar = folVarArr22[0];
        folVar2 = fol.WRAP_CONTENT;
        if (folVar == folVar2) {
        }
        folVar3 = folVar2;
        z11 = false;
        if (z11) {
        }
        hacVar5 = this.cd;
        boolean z22222222 = !hacVar5.j();
        boolean z23222222 = zArr42[0];
        boolean z24222222 = zArr42[1];
        i8 = this.av;
        iArr = this.bo;
        if (i8 == 2) {
        }
        hacVar6 = hacVar4;
        crbVar3 = t;
        folVar4 = folVar92;
        crbVar4 = t2;
        folVar5 = folVar3;
        hacVar7 = hacVar5;
        z12 = z7;
        iArr2 = iArr;
        z13 = z4;
        z14 = z182;
        crbVar7 = t3;
        obj = hacVar12;
        crbVar6 = crbVar;
        crbVar5 = crbVar2;
        i9 = i5;
        zArr3 = zArr2;
        if (z) {
        }
        crbVar8 = crbVar7;
        crbVar9 = crbVar6;
        crbVar10 = crbVar5;
        i10 = 0;
        i11 = 8;
        c4 = 1;
        z15 = true;
        if (this.bz == 2) {
        }
        if (z15) {
        }
        crbVar11 = crbVar8;
        crbVar12 = crbVar9;
        if (z9) {
        }
        if (hacVar7.j()) {
        }
        this.ap = false;
        this.bg = false;
    }

    public boolean i() {
        if (this.ap) {
            return true;
        }
        return this.cw.h && this.br.h;
    }

    public boolean j() {
        return this.aq != 8;
    }

    public void k(bwo bwoVar, boolean z) {
        int i;
        int i2;
        fju fjuVar;
        dza dzaVar;
        bwoVar.getClass();
        int r = bwo.r(this.cw);
        int r2 = bwo.r(this.bx);
        int r3 = bwo.r(this.br);
        int r4 = bwo.r(this.as);
        if (z && (dzaVar = this.be) != null) {
            big bigVar = dzaVar.f19645a;
            if (bigVar.j) {
                big bigVar2 = dzaVar.f19650f;
                if (bigVar2.j) {
                    r = bigVar.l;
                    r3 = bigVar2.l;
                }
            }
        }
        if (z && (fjuVar = this.bi) != null) {
            big bigVar3 = fjuVar.f19645a;
            if (bigVar3.j) {
                big bigVar4 = fjuVar.f19650f;
                if (bigVar4.j) {
                    r2 = bigVar3.l;
                    r4 = bigVar4.l;
                }
            }
        }
        int i3 = r4 - r2;
        if (r3 - r < 0 || i3 < 0 || r == Integer.MIN_VALUE || r == Integer.MAX_VALUE || r2 == Integer.MIN_VALUE || r2 == Integer.MAX_VALUE || r3 == Integer.MIN_VALUE || r3 == Integer.MAX_VALUE || r4 == Integer.MIN_VALUE || r4 == Integer.MAX_VALUE) {
            r = 0;
            r2 = 0;
            r3 = 0;
            r4 = 0;
        }
        int i4 = r3 - r;
        int i5 = r4 - r2;
        this.cv = r;
        this.cb = r2;
        if (this.aq == 8) {
            this.bc = 0;
            this.bt = 0;
            return;
        }
        fol[] folVarArr = this.ch;
        fol folVar = folVarArr[0];
        fol folVar2 = fol.FIXED;
        if (folVar == folVar2 && i4 < (i2 = this.bc)) {
            i4 = i2;
        }
        if (folVarArr[1] == folVar2 && i5 < (i = this.bt)) {
            i5 = i;
        }
        this.bc = i4;
        this.bt = i5;
        int i6 = this.au;
        if (i5 < i6) {
            this.bt = i6;
        }
        int i7 = this.bb;
        if (i4 < i7) {
            this.bc = i7;
        }
        int i8 = this.bs;
        if (i8 > 0 && folVar == fol.MATCH_CONSTRAINT) {
            this.bc = Math.min(this.bc, i8);
        }
        int i9 = this.aw;
        if (i9 > 0 && folVarArr[1] == fol.MATCH_CONSTRAINT) {
            this.bt = Math.min(this.bt, i9);
        }
        int i10 = this.bc;
        if (i4 != i10) {
            this.ao = i10;
        }
        int i11 = this.bt;
        if (i5 != i11) {
            this.ce = i11;
        }
    }

    public hac m(dih dihVar) {
        switch (chg.f12872a[dihVar.ordinal()]) {
            case 1:
                return this.cw;
            case 2:
                return this.bx;
            case 3:
                return this.br;
            case 4:
                return this.as;
            case 5:
                return this.bp;
            case 6:
                return this.cd;
            case 7:
                return this.ay;
            case 8:
                return this.co;
            case 9:
                return null;
            default:
                throw new AssertionError(dihVar.name());
        }
    }

    public String toString() {
        StringBuilder o = awf.o("");
        o.append(this.an != null ? awf.ad(new StringBuilder("id: "), this.an, " ") : "");
        o.append("(");
        o.append(this.cv);
        o.append(", ");
        o.append(this.cb);
        o.append(") - (");
        o.append(this.bc);
        o.append(" x ");
        return awf.x(o, this.bt, ")");
    }
}
