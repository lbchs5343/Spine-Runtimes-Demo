package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import g.aar;
import g.aep;
import g.afu;
import g.bfv;
import g.brh;
import g.dbr;
import g.dcu;
import g.fol;
import g.gcr;
import g.gri;
import g.hac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Flow extends gcr {

    /* renamed from: a, reason: collision with root package name */
    public final dbr f128a;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = new int[32];
        this.f10835d = new HashMap();
        this.f10836e = context;
        super.r(attributeSet);
        dbr dbrVar = new dbr();
        dbrVar.al = 0;
        dbrVar.n = 0;
        dbrVar.en = 0;
        dbrVar.eq = 0;
        dbrVar.aa = 0;
        dbrVar.eo = 0;
        dbrVar.u = false;
        dbrVar.aj = 0;
        dbrVar.t = 0;
        dbrVar.h = new dcu();
        dbrVar.x = null;
        dbrVar.ek = -1;
        dbrVar.q = -1;
        dbrVar.z = -1;
        dbrVar.ah = -1;
        dbrVar.y = -1;
        dbrVar.ep = -1;
        dbrVar.p = 0.5f;
        dbrVar.f13925a = 0.5f;
        dbrVar.f13929d = 0.5f;
        dbrVar.v = 0.5f;
        dbrVar.f13927b = 0.5f;
        dbrVar.f13928c = 0.5f;
        dbrVar.f13926ab = 0;
        dbrVar.w = 0;
        dbrVar.ac = 2;
        dbrVar.l = 2;
        dbrVar.em = 0;
        dbrVar.o = -1;
        dbrVar.ag = 0;
        dbrVar.r = new ArrayList();
        dbrVar.ae = null;
        dbrVar.el = null;
        dbrVar.s = null;
        dbrVar.f13930f = 0;
        this.f128a = dbrVar;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, bfv.f11480g);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f128a.ag = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    dbr dbrVar2 = this.f128a;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    dbrVar2.al = dimensionPixelSize;
                    dbrVar2.n = dimensionPixelSize;
                    dbrVar2.en = dimensionPixelSize;
                    dbrVar2.eq = dimensionPixelSize;
                } else if (index == 18) {
                    dbr dbrVar3 = this.f128a;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    dbrVar3.en = dimensionPixelSize2;
                    dbrVar3.aa = dimensionPixelSize2;
                    dbrVar3.eo = dimensionPixelSize2;
                } else if (index == 19) {
                    this.f128a.eq = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f128a.aa = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f128a.al = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f128a.eo = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f128a.n = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.f128a.em = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.f128a.ek = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.f128a.q = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.f128a.z = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.f128a.y = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.f128a.ah = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.f128a.ep = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.f128a.p = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.f128a.f13929d = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.f128a.f13927b = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.f128a.v = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.f128a.f13928c = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.f128a.f13925a = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.f128a.ac = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.f128a.l = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.f128a.f13926ab = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.f128a.w = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.f128a.o = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f10837f = this.f128a;
        o();
    }

    @Override // g.atw
    public final void b(brh brhVar, boolean z) {
        dbr dbrVar = this.f128a;
        int i = dbrVar.en;
        if (i > 0 || dbrVar.eq > 0) {
            if (z) {
                dbrVar.aa = dbrVar.eq;
                dbrVar.eo = i;
            } else {
                dbrVar.aa = i;
                dbrVar.eo = dbrVar.eq;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:239:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0721  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x072f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x074e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0732  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:265:0x0491 -> B:210:0x03d6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:266:0x0493 -> B:210:0x03d6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:268:0x0499 -> B:210:0x03d6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:269:0x049b -> B:210:0x03d6). Please report as a decompilation issue!!! */
    @Override // g.gcr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(dbr dbrVar, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        int i8;
        int i9;
        afu afuVar;
        char c2;
        char c3;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z;
        Object obj;
        brh brhVar;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        hac hacVar;
        hac hacVar2;
        hac hacVar3;
        ArrayList arrayList;
        int i21;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (dbrVar == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        fol[] folVarArr = dbrVar.ch;
        hac hacVar4 = dbrVar.bx;
        hac hacVar5 = dbrVar.cw;
        hac hacVar6 = dbrVar.br;
        hac hacVar7 = dbrVar.as;
        ArrayList arrayList2 = dbrVar.r;
        if (dbrVar.ev > 0) {
            dcu dcuVar = dbrVar.h;
            brh brhVar2 = dbrVar.bj;
            gri griVar = brhVar2 != null ? ((aep) brhVar2).y : null;
            if (griVar == null) {
                dbrVar.aj = 0;
                dbrVar.t = 0;
                dbrVar.u = false;
                setMeasuredDimension(dbrVar.aj, dbrVar.t);
            }
            int i22 = 0;
            while (i22 < dbrVar.ev) {
                brh brhVar3 = dbrVar.ew[i22];
                if (brhVar3 == null) {
                    hacVar = hacVar5;
                } else {
                    hacVar = hacVar5;
                    if (!(brhVar3 instanceof aar)) {
                        hacVar2 = hacVar6;
                        fol ea = brhVar3.ea(0);
                        hacVar3 = hacVar7;
                        fol ea2 = brhVar3.ea(1);
                        fol folVar = fol.MATCH_CONSTRAINT;
                        arrayList = arrayList2;
                        if (ea == folVar) {
                            i21 = i22;
                            if (brhVar3.da != 1 && ea2 == folVar && brhVar3.by != 1) {
                                i22 = i21 + 1;
                                hacVar5 = hacVar;
                                hacVar6 = hacVar2;
                                hacVar7 = hacVar3;
                                arrayList2 = arrayList;
                            }
                        } else {
                            i21 = i22;
                        }
                        if (ea == folVar) {
                            ea = fol.WRAP_CONTENT;
                        }
                        if (ea2 == folVar) {
                            ea2 = fol.WRAP_CONTENT;
                        }
                        dcuVar.f13985d = ea;
                        dcuVar.f13988g = ea2;
                        dcuVar.i = brhVar3.eb();
                        dcuVar.f13983b = brhVar3.di();
                        griVar.j(brhVar3, dcuVar);
                        brhVar3.ed(dcuVar.f13984c);
                        brhVar3.dj(dcuVar.f13986e);
                        brhVar3.ee(dcuVar.j);
                        i22 = i21 + 1;
                        hacVar5 = hacVar;
                        hacVar6 = hacVar2;
                        hacVar7 = hacVar3;
                        arrayList2 = arrayList;
                    }
                }
                hacVar2 = hacVar6;
                hacVar3 = hacVar7;
                arrayList = arrayList2;
                i21 = i22;
                i22 = i21 + 1;
                hacVar5 = hacVar;
                hacVar6 = hacVar2;
                hacVar7 = hacVar3;
                arrayList2 = arrayList;
            }
        }
        hac hacVar8 = hacVar5;
        hac hacVar9 = hacVar6;
        hac hacVar10 = hacVar7;
        ArrayList arrayList3 = arrayList2;
        int i23 = dbrVar.aa;
        int i24 = dbrVar.eo;
        int i25 = dbrVar.al;
        int i26 = dbrVar.n;
        int[] iArr2 = new int[2];
        int i27 = (size - i23) - i24;
        int i28 = dbrVar.ag;
        if (i28 == 1) {
            i27 = (size2 - i25) - i26;
        }
        int i29 = i27;
        if (i28 == 0) {
            if (dbrVar.ek == -1) {
                i20 = 0;
                dbrVar.ek = 0;
            } else {
                i20 = 0;
            }
            if (dbrVar.q == -1) {
                dbrVar.q = i20;
            }
        } else {
            if (dbrVar.ek == -1) {
                dbrVar.ek = 0;
            }
            if (dbrVar.q == -1) {
                dbrVar.q = 0;
            }
        }
        brh[] brhVarArr = dbrVar.ew;
        int i30 = 0;
        int i31 = 0;
        while (true) {
            i3 = dbrVar.ev;
            i4 = i25;
            if (i30 >= i3) {
                break;
            }
            if (dbrVar.ew[i30].aq == 8) {
                i31++;
            }
            i30++;
            i25 = i4;
        }
        if (i31 > 0) {
            brhVarArr = new brh[i3 - i31];
            int i32 = 0;
            int i33 = 0;
            while (i32 < dbrVar.ev) {
                brh brhVar4 = dbrVar.ew[i32];
                int i34 = i32;
                if (brhVar4.aq != 8) {
                    brhVarArr[i33] = brhVar4;
                    i33++;
                }
                i32 = i34 + 1;
            }
            i3 = i33;
        }
        brh[] brhVarArr2 = brhVarArr;
        dbrVar.ej = brhVarArr2;
        dbrVar.f13930f = i3;
        int i35 = dbrVar.em;
        if (i35 == 0) {
            i5 = i23;
            int i36 = i3;
            i6 = i26;
            iArr = iArr2;
            i7 = size2;
            i8 = i24;
            i9 = i4;
            int i37 = dbrVar.ag;
            if (i36 != 0) {
                if (arrayList3.size() == 0) {
                    afuVar = new afu(dbrVar, i37, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                    arrayList3.add(afuVar);
                } else {
                    afu afuVar2 = (afu) arrayList3.get(0);
                    afuVar2.p = 0;
                    afuVar2.m = null;
                    afuVar2.f10159f = 0;
                    afuVar2.k = 0;
                    afuVar2.f10157d = 0;
                    afuVar2.f10156c = 0;
                    afuVar2.j = 0;
                    afuVar2.v(i37, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, dbrVar.aa, dbrVar.al, dbrVar.eo, dbrVar.n, i29);
                    afuVar = afuVar2;
                }
                for (int i38 = 0; i38 < i36; i38++) {
                    afuVar.u(brhVarArr2[i38]);
                }
                c2 = 0;
                iArr[0] = afuVar.s();
                c3 = 1;
                iArr[1] = afuVar.x();
                int i39 = iArr[c2] + i5 + i8;
                int i40 = iArr[c3] + i9 + i6;
                if (mode != 1073741824) {
                    size = mode == Integer.MIN_VALUE ? Math.min(i39, size) : mode == 0 ? i39 : 0;
                }
                int min = mode2 != 1073741824 ? i7 : mode2 == Integer.MIN_VALUE ? Math.min(i40, i7) : mode2 == 0 ? i40 : 0;
                dbrVar.aj = size;
                dbrVar.t = min;
                dbrVar.ed(size);
                dbrVar.dj(min);
                dbrVar.u = dbrVar.ev <= 0;
                setMeasuredDimension(dbrVar.aj, dbrVar.t);
            }
        } else if (i35 == 1) {
            i5 = i23;
            i6 = i26;
            iArr = iArr2;
            i7 = size2;
            i8 = i24;
            i9 = i4;
            int i41 = i3;
            int i42 = dbrVar.ag;
            if (i41 != 0) {
                arrayList3.clear();
                afu afuVar3 = new afu(dbrVar, i42, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                arrayList3.add(afuVar3);
                if (i42 == 0) {
                    int i43 = 0;
                    i10 = 0;
                    int i44 = 0;
                    while (i43 < i41) {
                        brh brhVar5 = brhVarArr2[i43];
                        int es = dbrVar.es(brhVar5, i29);
                        if (brhVar5.ch[0] == fol.MATCH_CONSTRAINT) {
                            i10++;
                        }
                        int i45 = i10;
                        boolean z2 = (i44 == i29 || (dbrVar.f13926ab + i44) + es > i29) && afuVar3.m != null;
                        if (!z2 && i43 > 0 && (i12 = dbrVar.o) > 0 && i43 % i12 == 0) {
                            z2 = true;
                        }
                        if (z2) {
                            afuVar3 = new afu(dbrVar, i42, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                            afuVar3.f10157d = i43;
                            arrayList3.add(afuVar3);
                        } else if (i43 > 0) {
                            i44 = dbrVar.f13926ab + es + i44;
                            afuVar3.u(brhVar5);
                            i43++;
                            i10 = i45;
                        }
                        i44 = es;
                        afuVar3.u(brhVar5);
                        i43++;
                        i10 = i45;
                    }
                } else {
                    int i46 = 0;
                    i10 = 0;
                    int i47 = 0;
                    while (i46 < i41) {
                        brh brhVar6 = brhVarArr2[i46];
                        int et = dbrVar.et(brhVar6, i29);
                        if (brhVar6.ch[1] == fol.MATCH_CONSTRAINT) {
                            i10++;
                        }
                        int i48 = i10;
                        boolean z3 = (i47 == i29 || (dbrVar.w + i47) + et > i29) && afuVar3.m != null;
                        if (!z3 && i46 > 0 && (i11 = dbrVar.o) > 0 && i46 % i11 == 0) {
                            z3 = true;
                        }
                        if (z3) {
                            afuVar3 = new afu(dbrVar, i42, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                            afuVar3.f10157d = i46;
                            arrayList3.add(afuVar3);
                        } else if (i46 > 0) {
                            i47 = dbrVar.w + et + i47;
                            afuVar3.u(brhVar6);
                            i46++;
                            i10 = i48;
                        }
                        i47 = et;
                        afuVar3.u(brhVar6);
                        i46++;
                        i10 = i48;
                    }
                }
                int size3 = arrayList3.size();
                int i49 = dbrVar.aa;
                int i50 = dbrVar.al;
                int i51 = dbrVar.eo;
                int i52 = dbrVar.n;
                fol folVar2 = folVarArr[0];
                fol folVar3 = fol.WRAP_CONTENT;
                boolean z4 = folVar2 == folVar3 || folVarArr[1] == folVar3;
                if (i10 > 0 && z4) {
                    for (int i53 = 0; i53 < size3; i53++) {
                        afu afuVar4 = (afu) arrayList3.get(i53);
                        if (i42 == 0) {
                            afuVar4.t(i29 - afuVar4.s());
                        } else {
                            afuVar4.t(i29 - afuVar4.x());
                        }
                    }
                }
                int i54 = i49;
                int i55 = i50;
                int i56 = i51;
                int i57 = i52;
                hac hacVar11 = hacVar8;
                hac hacVar12 = hacVar9;
                hac hacVar13 = hacVar10;
                hac hacVar14 = hacVar4;
                int i58 = 0;
                int i59 = 0;
                for (int i60 = 0; i60 < size3; i60++) {
                    afu afuVar5 = (afu) arrayList3.get(i60);
                    if (i42 == 0) {
                        if (i60 < size3 - 1) {
                            hacVar13 = ((afu) arrayList3.get(i60 + 1)).m.bx;
                            i57 = 0;
                        } else {
                            i57 = dbrVar.n;
                            hacVar13 = hacVar10;
                        }
                        hac hacVar15 = afuVar5.m.as;
                        afuVar5.v(i42, hacVar11, hacVar14, hacVar12, hacVar13, i54, i55, i56, i57, i29);
                        i58 = Math.max(i58, afuVar5.s());
                        int x = afuVar5.x() + i59;
                        if (i60 > 0) {
                            x += dbrVar.w;
                        }
                        i59 = x;
                        hacVar14 = hacVar15;
                        i55 = 0;
                    } else {
                        if (i60 < size3 - 1) {
                            hacVar12 = ((afu) arrayList3.get(i60 + 1)).m.cw;
                            i56 = 0;
                        } else {
                            i56 = dbrVar.eo;
                            hacVar12 = hacVar9;
                        }
                        hac hacVar16 = afuVar5.m.br;
                        afuVar5.v(i42, hacVar11, hacVar14, hacVar12, hacVar13, i54, i55, i56, i57, i29);
                        int s = afuVar5.s() + i58;
                        int max = Math.max(i59, afuVar5.x());
                        if (i60 > 0) {
                            s += dbrVar.f13926ab;
                        }
                        i59 = max;
                        i58 = s;
                        hacVar11 = hacVar16;
                        i54 = 0;
                    }
                }
                iArr[0] = i58;
                iArr[1] = i59;
            }
        } else if (i35 == 2) {
            int i61 = i3;
            i6 = i26;
            iArr = iArr2;
            i7 = size2;
            i5 = i23;
            i8 = i24;
            i9 = i4;
            int i62 = dbrVar.ag;
            if (i62 == 0) {
                int i63 = dbrVar.o;
                if (i63 <= 0) {
                    int i64 = 0;
                    i14 = 0;
                    for (int i65 = 0; i65 < i61; i65++) {
                        if (i65 > 0) {
                            i64 += dbrVar.f13926ab;
                        }
                        brh brhVar7 = brhVarArr2[i65];
                        if (brhVar7 != null) {
                            int es2 = dbrVar.es(brhVar7, i29) + i64;
                            if (es2 > i29) {
                                break;
                            }
                            i14++;
                            i64 = es2;
                        }
                    }
                } else {
                    i14 = i63;
                }
                i13 = 0;
            } else {
                i13 = dbrVar.o;
                if (i13 <= 0) {
                    int i66 = 0;
                    int i67 = 0;
                    for (int i68 = 0; i68 < i61; i68++) {
                        if (i68 > 0) {
                            i66 += dbrVar.w;
                        }
                        brh brhVar8 = brhVarArr2[i68];
                        if (brhVar8 != null) {
                            int et2 = dbrVar.et(brhVar8, i29) + i66;
                            if (et2 > i29) {
                                break;
                            }
                            i67++;
                            i66 = et2;
                        }
                    }
                    i13 = i67;
                }
                i14 = 0;
            }
            if (dbrVar.s == null) {
                dbrVar.s = new int[2];
            }
            if ((i13 != 0 || i62 != 1) && (i14 != 0 || i62 != 0)) {
                z = false;
                while (!z) {
                    if (i62 == 0) {
                        i13 = (int) Math.ceil(i61 / i14);
                    } else {
                        i14 = (int) Math.ceil(i61 / i13);
                    }
                    brh[] brhVarArr3 = dbrVar.el;
                    if (brhVarArr3 == null || brhVarArr3.length < i14) {
                        obj = null;
                        dbrVar.el = new brh[i14];
                    } else {
                        obj = null;
                        Arrays.fill(brhVarArr3, (Object) null);
                    }
                    brh[] brhVarArr4 = dbrVar.ae;
                    if (brhVarArr4 == null || brhVarArr4.length < i13) {
                        dbrVar.ae = new brh[i13];
                    } else {
                        Arrays.fill(brhVarArr4, obj);
                    }
                    for (int i69 = 0; i69 < i14; i69++) {
                        for (int i70 = 0; i70 < i13; i70++) {
                            int i71 = (i70 * i14) + i69;
                            if (i62 == 1) {
                                i71 = (i69 * i13) + i70;
                            }
                            if (i71 < brhVarArr2.length && (brhVar = brhVarArr2[i71]) != null) {
                                int es3 = dbrVar.es(brhVar, i29);
                                brh brhVar9 = dbrVar.el[i69];
                                if (brhVar9 == null || brhVar9.eb() < es3) {
                                    dbrVar.el[i69] = brhVar;
                                }
                                int et3 = dbrVar.et(brhVar, i29);
                                brh brhVar10 = dbrVar.ae[i70];
                                if (brhVar10 == null || brhVar10.di() < et3) {
                                    dbrVar.ae[i70] = brhVar;
                                }
                            }
                        }
                    }
                    int i72 = 0;
                    for (int i73 = 0; i73 < i14; i73++) {
                        brh brhVar11 = dbrVar.el[i73];
                        if (brhVar11 != null) {
                            if (i73 > 0) {
                                i72 += dbrVar.f13926ab;
                            }
                            i72 = dbrVar.es(brhVar11, i29) + i72;
                        }
                    }
                    int i74 = 0;
                    for (int i75 = 0; i75 < i13; i75++) {
                        brh brhVar12 = dbrVar.ae[i75];
                        if (brhVar12 != null) {
                            if (i75 > 0) {
                                i74 += dbrVar.w;
                            }
                            i74 = dbrVar.et(brhVar12, i29) + i74;
                        }
                    }
                    iArr[0] = i72;
                    iArr[1] = i74;
                    if (i62 != 0) {
                        if (i74 > i29 && i13 > 1) {
                            i13--;
                        }
                    } else if (i72 > i29 && i14 > 1) {
                        i14--;
                    }
                    while (!z) {
                    }
                }
                int[] iArr3 = dbrVar.s;
                iArr3[0] = i14;
                iArr3[1] = i13;
            }
            z = true;
            while (!z) {
            }
            int[] iArr32 = dbrVar.s;
            iArr32[0] = i14;
            iArr32[1] = i13;
        } else if (i35 != 3) {
            i6 = i26;
            iArr = iArr2;
            i7 = size2;
            i5 = i23;
            i8 = i24;
            i9 = i4;
        } else {
            int i76 = dbrVar.ag;
            if (i3 == 0) {
                i6 = i26;
                iArr = iArr2;
                i7 = size2;
                i5 = i23;
                i8 = i24;
                i9 = i4;
            } else {
                arrayList3.clear();
                int i77 = i3;
                i5 = i23;
                i6 = i26;
                i8 = i24;
                i9 = i4;
                iArr = iArr2;
                afu afuVar6 = new afu(dbrVar, i76, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                arrayList3.add(afuVar6);
                if (i76 == 0) {
                    int i78 = 0;
                    int i79 = 0;
                    i15 = 0;
                    int i80 = 0;
                    while (i78 < i77) {
                        i79++;
                        brh brhVar13 = brhVarArr2[i78];
                        int es4 = dbrVar.es(brhVar13, i29);
                        int i81 = i76;
                        int i82 = i78;
                        if (brhVar13.ch[0] == fol.MATCH_CONSTRAINT) {
                            i15++;
                        }
                        int i83 = i15;
                        boolean z5 = (i80 == i29 || (dbrVar.f13926ab + i80) + es4 > i29) && afuVar6.m != null;
                        if (!z5 && i82 > 0 && (i19 = dbrVar.o) > 0 && i79 > i19) {
                            z5 = true;
                        }
                        if (z5) {
                            i76 = i81;
                            i17 = size2;
                            i18 = i82;
                            afuVar6 = new afu(dbrVar, i76, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                            afuVar6.f10157d = i18;
                            arrayList3.add(afuVar6);
                            i80 = es4;
                            i79 = 1;
                        } else {
                            i76 = i81;
                            i17 = size2;
                            i18 = i82;
                            i80 = i18 > 0 ? dbrVar.f13926ab + es4 + i80 : es4;
                        }
                        afuVar6.u(brhVar13);
                        i78 = i18 + 1;
                        i15 = i83;
                        size2 = i17;
                    }
                    i7 = size2;
                } else {
                    i7 = size2;
                    int i84 = 0;
                    int i85 = 0;
                    int i86 = 0;
                    int i87 = 0;
                    while (i84 < i77) {
                        i85++;
                        brh brhVar14 = brhVarArr2[i84];
                        int et4 = dbrVar.et(brhVar14, i29);
                        int i88 = i76;
                        if (brhVar14.ch[1] == fol.MATCH_CONSTRAINT) {
                            i86++;
                        }
                        int i89 = i86;
                        boolean z6 = (i87 == i29 || (dbrVar.w + i87) + et4 > i29) && afuVar6.m != null;
                        if (!z6 && i84 > 0 && (i16 = dbrVar.o) > 0 && i85 > i16) {
                            z6 = true;
                        }
                        if (z6) {
                            i76 = i88;
                            afuVar6 = new afu(dbrVar, i76, dbrVar.cw, dbrVar.bx, dbrVar.br, dbrVar.as, i29);
                            afuVar6.f10157d = i84;
                            arrayList3.add(afuVar6);
                            i87 = et4;
                            i85 = 1;
                        } else {
                            i76 = i88;
                            i87 = i84 > 0 ? dbrVar.w + et4 + i87 : et4;
                        }
                        afuVar6.u(brhVar14);
                        i84++;
                        i86 = i89;
                    }
                    i15 = i86;
                }
                int size4 = arrayList3.size();
                int i90 = dbrVar.aa;
                int i91 = dbrVar.al;
                int i92 = dbrVar.eo;
                int i93 = dbrVar.n;
                fol folVar4 = folVarArr[0];
                fol folVar5 = fol.WRAP_CONTENT;
                boolean z7 = folVar4 == folVar5 || folVarArr[1] == folVar5;
                if (i15 > 0 && z7) {
                    for (int i94 = 0; i94 < size4; i94++) {
                        afu afuVar7 = (afu) arrayList3.get(i94);
                        if (i76 == 0) {
                            afuVar7.t(i29 - afuVar7.s());
                        } else {
                            afuVar7.t(i29 - afuVar7.x());
                        }
                    }
                }
                int i95 = i90;
                int i96 = i91;
                int i97 = i92;
                int i98 = i93;
                hac hacVar17 = hacVar8;
                hac hacVar18 = hacVar9;
                hac hacVar19 = hacVar10;
                hac hacVar20 = hacVar4;
                int i99 = 0;
                int i100 = 0;
                for (int i101 = 0; i101 < size4; i101++) {
                    afu afuVar8 = (afu) arrayList3.get(i101);
                    if (i76 == 0) {
                        if (i101 < size4 - 1) {
                            hacVar19 = ((afu) arrayList3.get(i101 + 1)).m.bx;
                            i98 = 0;
                        } else {
                            i98 = dbrVar.n;
                            hacVar19 = hacVar10;
                        }
                        hac hacVar21 = afuVar8.m.as;
                        afuVar8.v(i76, hacVar17, hacVar20, hacVar18, hacVar19, i95, i96, i97, i98, i29);
                        i99 = Math.max(i99, afuVar8.s());
                        int x2 = afuVar8.x() + i100;
                        if (i101 > 0) {
                            x2 += dbrVar.w;
                        }
                        i100 = x2;
                        hacVar20 = hacVar21;
                        i96 = 0;
                    } else {
                        if (i101 < size4 - 1) {
                            hacVar18 = ((afu) arrayList3.get(i101 + 1)).m.cw;
                            i97 = 0;
                        } else {
                            i97 = dbrVar.eo;
                            hacVar18 = hacVar9;
                        }
                        hac hacVar22 = afuVar8.m.br;
                        afuVar8.v(i76, hacVar17, hacVar20, hacVar18, hacVar19, i95, i96, i97, i98, i29);
                        int s2 = afuVar8.s() + i99;
                        int max2 = Math.max(i100, afuVar8.x());
                        if (i101 > 0) {
                            s2 += dbrVar.f13926ab;
                        }
                        i100 = max2;
                        i99 = s2;
                        hacVar17 = hacVar22;
                        i95 = 0;
                    }
                }
                iArr[0] = i99;
                iArr[1] = i100;
            }
        }
        c3 = 1;
        c2 = 0;
        int i392 = iArr[c2] + i5 + i8;
        int i402 = iArr[c3] + i9 + i6;
        if (mode != 1073741824) {
        }
        if (mode2 != 1073741824) {
        }
        dbrVar.aj = size;
        dbrVar.t = min;
        dbrVar.ed(size);
        dbrVar.dj(min);
        dbrVar.u = dbrVar.ev <= 0;
        setMeasuredDimension(dbrVar.aj, dbrVar.t);
    }

    @Override // g.atw, android.view.View
    public final void onMeasure(int i, int i2) {
        c(this.f128a, i, i2);
    }

    public void setFirstHorizontalBias(float f2) {
        this.f128a.f13929d = f2;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.f128a.z = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f2) {
        this.f128a.v = f2;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.f128a.ah = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.f128a.ac = i;
        requestLayout();
    }

    public void setHorizontalBias(float f2) {
        this.f128a.p = f2;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.f128a.f13926ab = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.f128a.ek = i;
        requestLayout();
    }

    public void setLastHorizontalBias(float f2) {
        this.f128a.f13927b = f2;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i) {
        this.f128a.y = i;
        requestLayout();
    }

    public void setLastVerticalBias(float f2) {
        this.f128a.f13928c = f2;
        requestLayout();
    }

    public void setLastVerticalStyle(int i) {
        this.f128a.ep = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.f128a.o = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.f128a.ag = i;
        requestLayout();
    }

    public void setPadding(int i) {
        dbr dbrVar = this.f128a;
        dbrVar.al = i;
        dbrVar.n = i;
        dbrVar.en = i;
        dbrVar.eq = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.f128a.n = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.f128a.aa = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.f128a.eo = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.f128a.al = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.f128a.l = i;
        requestLayout();
    }

    public void setVerticalBias(float f2) {
        this.f128a.f13925a = f2;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.f128a.w = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.f128a.q = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.f128a.em = i;
        requestLayout();
    }
}
