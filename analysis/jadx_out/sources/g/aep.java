package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class aep extends brh {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f10108a;
    public WeakReference aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f10109ab;

    /* renamed from: c, reason: collision with root package name */
    public final dcu f10111c;

    /* renamed from: d, reason: collision with root package name */
    public arf[] f10112d;

    /* renamed from: f, reason: collision with root package name */
    public int f10113f;
    public WeakReference h;
    public boolean l;
    public int n;
    public int o;
    public arf[] p;
    public WeakReference q;
    public boolean r;
    public final bwo s;
    public WeakReference t;
    public int u;
    public final ar v;
    public int w;
    public gri y;
    public int z;
    public ArrayList x = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final dzh f10110b = new dzh(this);

    public aep() {
        ar arVar = new ar();
        arVar.f10693f = true;
        arVar.f10694g = true;
        arVar.f10690c = new ArrayList();
        new ArrayList();
        arVar.f10692e = null;
        arVar.h = new dcu();
        arVar.f10688a = new ArrayList();
        arVar.f10691d = this;
        arVar.f10689b = this;
        this.v = arVar;
        this.y = null;
        this.f10109ab = false;
        this.s = new bwo();
        this.u = 0;
        this.n = 0;
        this.f10112d = new arf[4];
        this.p = new arf[4];
        this.w = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC;
        this.l = false;
        this.r = false;
        this.t = null;
        this.q = null;
        this.aa = null;
        this.h = null;
        this.f10108a = new HashSet();
        this.f10111c = new dcu();
    }

    public static void ac(brh brhVar, gri griVar, dcu dcuVar) {
        int i;
        int i2;
        if (griVar == null) {
            return;
        }
        int i3 = brhVar.aq;
        int[] iArr = brhVar.cm;
        if (i3 == 8 || (brhVar instanceof aar) || (brhVar instanceof r)) {
            dcuVar.f13984c = 0;
            dcuVar.f13986e = 0;
            return;
        }
        fol[] folVarArr = brhVar.ch;
        dcuVar.f13985d = folVarArr[0];
        dcuVar.f13988g = folVarArr[1];
        dcuVar.i = brhVar.eb();
        dcuVar.f13983b = brhVar.di();
        dcuVar.f13987f = false;
        dcuVar.h = 0;
        fol folVar = dcuVar.f13985d;
        fol folVar2 = fol.MATCH_CONSTRAINT;
        boolean z = folVar == folVar2;
        boolean z2 = dcuVar.f13988g == folVar2;
        boolean z3 = z && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        boolean z4 = z2 && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (z && brhVar.ec(0) && brhVar.da == 0 && !z3) {
            dcuVar.f13985d = fol.WRAP_CONTENT;
            if (z2 && brhVar.by == 0) {
                dcuVar.f13985d = fol.FIXED;
            }
            z = false;
        }
        if (z2 && brhVar.ec(1) && brhVar.by == 0 && !z4) {
            dcuVar.f13988g = fol.WRAP_CONTENT;
            if (z && brhVar.da == 0) {
                dcuVar.f13988g = fol.FIXED;
            }
            z2 = false;
        }
        if (brhVar.i()) {
            dcuVar.f13985d = fol.FIXED;
            z = false;
        }
        if (brhVar.e()) {
            dcuVar.f13988g = fol.FIXED;
            z2 = false;
        }
        if (z3) {
            if (iArr[0] == 4) {
                dcuVar.f13985d = fol.FIXED;
            } else if (!z2) {
                fol folVar3 = dcuVar.f13988g;
                fol folVar4 = fol.FIXED;
                if (folVar3 == folVar4) {
                    i2 = dcuVar.f13983b;
                } else {
                    dcuVar.f13985d = fol.WRAP_CONTENT;
                    griVar.j(brhVar, dcuVar);
                    i2 = dcuVar.f13986e;
                }
                dcuVar.f13985d = folVar4;
                dcuVar.i = (int) (brhVar.bq * i2);
            }
        }
        if (z4) {
            if (iArr[1] == 4) {
                dcuVar.f13988g = fol.FIXED;
            } else if (!z) {
                fol folVar5 = dcuVar.f13985d;
                fol folVar6 = fol.FIXED;
                if (folVar5 == folVar6) {
                    i = dcuVar.i;
                } else {
                    dcuVar.f13988g = fol.WRAP_CONTENT;
                    griVar.j(brhVar, dcuVar);
                    i = dcuVar.f13984c;
                }
                dcuVar.f13988g = folVar6;
                if (brhVar.db == -1) {
                    dcuVar.f13983b = (int) (i / brhVar.bq);
                } else {
                    dcuVar.f13983b = (int) (brhVar.bq * i);
                }
            }
        }
        griVar.j(brhVar, dcuVar);
        brhVar.ed(dcuVar.f13984c);
        brhVar.dj(dcuVar.f13986e);
        brhVar.cx = dcuVar.f13982a;
        brhVar.ee(dcuVar.j);
        dcuVar.h = 0;
    }

    @Override // g.brh
    public final void ad(StringBuilder sb) {
        sb.append(this.cj + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.bc);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.bt);
        sb.append("\n");
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            ((brh) it.next()).ad(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    /* JADX WARN: Removed duplicated region for block: B:264:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0849 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x08bf  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x08da  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x08e8  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0922  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0923 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x08e5  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x082f  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:594:0x0636  */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0665 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:615:0x066b  */
    /* JADX WARN: Removed duplicated region for block: B:621:0x0680  */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ae() {
        boolean[] zArr;
        fol[] folVarArr;
        hac hacVar;
        int i;
        boolean z;
        char c2;
        boolean z2;
        hac hacVar2;
        boolean z3;
        int max;
        int max2;
        ?? r14;
        int i2;
        fol folVar;
        ic icVar;
        ic icVar2;
        fol folVar2;
        int h;
        int h2;
        int i3;
        ArrayList arrayList;
        ic icVar3;
        ic icVar4;
        boolean z4;
        ArrayList arrayList2;
        ArrayList arrayList3;
        gri griVar;
        ArrayList arrayList4;
        int i4;
        int i5;
        boolean[] zArr2 = bff.f11442b;
        this.cv = 0;
        this.cb = 0;
        this.l = false;
        this.r = false;
        int size = this.x.size();
        int max3 = Math.max(0, eb());
        int max4 = Math.max(0, di());
        fol[] folVarArr2 = this.ch;
        fol folVar3 = folVarArr2[1];
        fol folVar4 = folVarArr2[0];
        int i6 = this.f10113f;
        hac hacVar3 = this.bx;
        hac hacVar4 = this.cw;
        if (i6 == 0 && bff.x(this.w, 1)) {
            gri griVar2 = this.y;
            fol folVar5 = folVarArr2[0];
            fol folVar6 = folVarArr2[1];
            ef();
            ArrayList arrayList5 = this.x;
            int size2 = arrayList5.size();
            for (int i7 = 0; i7 < size2; i7++) {
                ((brh) arrayList5.get(i7)).ef();
            }
            boolean z5 = this.f10109ab;
            zArr = zArr2;
            if (folVar5 == fol.FIXED) {
                dx(0, eb());
            } else {
                hacVar4.m(0);
                this.cv = 0;
            }
            boolean z6 = false;
            int i8 = 0;
            boolean z7 = false;
            while (i8 < size2) {
                boolean z8 = z6;
                brh brhVar = (brh) arrayList5.get(i8);
                fol[] folVarArr3 = folVarArr2;
                if (brhVar instanceof aar) {
                    aar aarVar = (aar) brhVar;
                    i5 = i8;
                    if (aarVar.f9878f == 1) {
                        int i9 = aarVar.f9874a;
                        if (i9 != -1) {
                            aarVar.l(i9);
                        } else if (aarVar.f9876c != -1 && i()) {
                            aarVar.l(eb() - aarVar.f9876c);
                        } else if (i()) {
                            aarVar.l((int) ((aarVar.f9877d * eb()) + 0.5f));
                        }
                        z8 = true;
                    }
                } else {
                    i5 = i8;
                    if ((brhVar instanceof r) && ((r) brhVar).f() == 0) {
                        z6 = z8;
                        z7 = true;
                        i8 = i5 + 1;
                        folVarArr2 = folVarArr3;
                    }
                }
                z6 = z8;
                i8 = i5 + 1;
                folVarArr2 = folVarArr3;
            }
            folVarArr = folVarArr2;
            if (z6) {
                for (int i10 = 0; i10 < size2; i10 = i4 + 1) {
                    brh brhVar2 = (brh) arrayList5.get(i10);
                    if (brhVar2 instanceof aar) {
                        aar aarVar2 = (aar) brhVar2;
                        i4 = i10;
                        if (aarVar2.f9878f == 1) {
                            ffb.bk(0, griVar2, aarVar2, z5);
                        }
                    } else {
                        i4 = i10;
                    }
                }
            }
            ffb.bk(0, griVar2, this, z5);
            if (z7) {
                for (int i11 = 0; i11 < size2; i11++) {
                    brh brhVar3 = (brh) arrayList5.get(i11);
                    if (brhVar3 instanceof r) {
                        r rVar = (r) brhVar3;
                        if (rVar.f() == 0 && rVar.h()) {
                            ffb.bk(1, griVar2, rVar, z5);
                        }
                    }
                }
            }
            if (folVar6 == fol.FIXED) {
                dt(0, di());
            } else {
                hacVar3.m(0);
                this.cb = 0;
            }
            int i12 = 0;
            boolean z9 = false;
            boolean z10 = false;
            while (i12 < size2) {
                brh brhVar4 = (brh) arrayList5.get(i12);
                int i13 = i12;
                if (brhVar4 instanceof aar) {
                    aar aarVar3 = (aar) brhVar4;
                    if (aarVar3.f9878f == 0) {
                        int i14 = aarVar3.f9874a;
                        if (i14 != -1) {
                            aarVar3.l(i14);
                        } else if (aarVar3.f9876c != -1 && e()) {
                            aarVar3.l(di() - aarVar3.f9876c);
                        } else if (e()) {
                            aarVar3.l((int) ((aarVar3.f9877d * di()) + 0.5f));
                        }
                        z9 = true;
                    }
                } else if ((brhVar4 instanceof r) && ((r) brhVar4).f() == 1) {
                    z10 = true;
                }
                i12 = i13 + 1;
            }
            if (z9) {
                for (int i15 = 0; i15 < size2; i15++) {
                    brh brhVar5 = (brh) arrayList5.get(i15);
                    if (brhVar5 instanceof aar) {
                        aar aarVar4 = (aar) brhVar5;
                        if (aarVar4.f9878f == 0) {
                            ffb.bt(1, griVar2, aarVar4);
                        }
                    }
                }
            }
            ffb.bt(0, griVar2, this);
            if (z10) {
                for (int i16 = 0; i16 < size2; i16++) {
                    brh brhVar6 = (brh) arrayList5.get(i16);
                    if (brhVar6 instanceof r) {
                        r rVar2 = (r) brhVar6;
                        if (rVar2.f() == 1 && rVar2.h()) {
                            ffb.bt(1, griVar2, rVar2);
                        }
                    }
                }
            }
            for (int i17 = 0; i17 < size2; i17++) {
                brh brhVar7 = (brh) arrayList5.get(i17);
                if (brhVar7.dg() && ffb.ax(brhVar7)) {
                    ac(brhVar7, griVar2, ffb.k);
                    if (!(brhVar7 instanceof aar)) {
                        ffb.bk(0, griVar2, brhVar7, z5);
                        ffb.bt(0, griVar2, brhVar7);
                    } else if (((aar) brhVar7).f9878f == 0) {
                        ffb.bt(0, griVar2, brhVar7);
                    } else {
                        ffb.bk(0, griVar2, brhVar7, z5);
                    }
                }
            }
            for (int i18 = 0; i18 < size; i18++) {
                brh brhVar8 = (brh) this.x.get(i18);
                if (brhVar8.dg() && !(brhVar8 instanceof aar) && !(brhVar8 instanceof r) && !(brhVar8 instanceof dbr) && !brhVar8.f12070cn) {
                    fol ea = brhVar8.ea(0);
                    fol ea2 = brhVar8.ea(1);
                    fol folVar7 = fol.MATCH_CONSTRAINT;
                    if (ea != folVar7 || brhVar8.da == 1 || ea2 != folVar7 || brhVar8.by == 1) {
                        ac(brhVar8, this.y, new dcu());
                    }
                }
            }
        } else {
            zArr = zArr2;
            folVarArr = folVarArr2;
        }
        bwo bwoVar = this.s;
        if (size <= 2 || !((folVar4 == (folVar = fol.WRAP_CONTENT) || folVar3 == folVar) && bff.x(this.w, 1024))) {
            hacVar = hacVar4;
        } else {
            gri griVar3 = this.y;
            ArrayList arrayList6 = this.x;
            int size3 = arrayList6.size();
            int i19 = 0;
            while (true) {
                if (i19 < size3) {
                    brh brhVar9 = (brh) arrayList6.get(i19);
                    fol folVar8 = folVarArr[0];
                    fol folVar9 = folVarArr[1];
                    int i20 = i19;
                    fol[] folVarArr4 = brhVar9.ch;
                    hacVar = hacVar4;
                    if (!dzm.ba(folVar8, folVar9, folVarArr4[0], folVarArr4[1]) || (brhVar9 instanceof dbr)) {
                        break;
                    }
                    i19 = i20 + 1;
                    hacVar4 = hacVar;
                } else {
                    hacVar = hacVar4;
                    int i21 = 0;
                    ArrayList arrayList7 = null;
                    ArrayList arrayList8 = null;
                    ArrayList arrayList9 = null;
                    ArrayList arrayList10 = null;
                    ArrayList arrayList11 = null;
                    ArrayList arrayList12 = null;
                    while (i21 < size3) {
                        int i22 = i21;
                        brh brhVar10 = (brh) arrayList6.get(i21);
                        ArrayList arrayList13 = arrayList7;
                        fol folVar10 = folVarArr[0];
                        ArrayList arrayList14 = arrayList8;
                        fol folVar11 = folVarArr[1];
                        ArrayList arrayList15 = arrayList9;
                        fol[] folVarArr5 = brhVar10.ch;
                        ArrayList arrayList16 = arrayList10;
                        if (!dzm.ba(folVar10, folVar11, folVarArr5[0], folVarArr5[1])) {
                            ac(brhVar10, griVar3, this.f10111c);
                        }
                        boolean z11 = brhVar10 instanceof aar;
                        if (z11) {
                            aar aarVar5 = (aar) brhVar10;
                            if (aarVar5.f9878f == 0) {
                                arrayList9 = arrayList15 == null ? new ArrayList() : arrayList15;
                                arrayList9.add(aarVar5);
                            } else {
                                arrayList9 = arrayList15;
                            }
                            z4 = z11;
                            if (aarVar5.f9878f == 1) {
                                arrayList2 = arrayList13 == null ? new ArrayList() : arrayList13;
                                arrayList2.add(aarVar5);
                            } else {
                                arrayList2 = arrayList13;
                            }
                        } else {
                            z4 = z11;
                            arrayList2 = arrayList13;
                            arrayList9 = arrayList15;
                        }
                        if (!(brhVar10 instanceof gbi)) {
                            arrayList3 = arrayList2;
                            griVar = griVar3;
                            arrayList8 = arrayList14;
                        } else if (brhVar10 instanceof r) {
                            r rVar3 = (r) brhVar10;
                            if (rVar3.f() == 0) {
                                arrayList4 = arrayList14 == null ? new ArrayList() : arrayList14;
                                arrayList4.add(rVar3);
                            } else {
                                arrayList4 = arrayList14;
                            }
                            arrayList3 = arrayList2;
                            griVar = griVar3;
                            if (rVar3.f() == 1) {
                                ArrayList arrayList17 = arrayList16 == null ? new ArrayList() : arrayList16;
                                arrayList17.add(rVar3);
                                arrayList16 = arrayList17;
                            }
                            arrayList8 = arrayList4;
                        } else {
                            arrayList3 = arrayList2;
                            griVar = griVar3;
                            gbi gbiVar = (gbi) brhVar10;
                            arrayList8 = arrayList14 == null ? new ArrayList() : arrayList14;
                            arrayList8.add(gbiVar);
                            arrayList10 = arrayList16 == null ? new ArrayList() : arrayList16;
                            arrayList10.add(gbiVar);
                            if (brhVar10.cw.f19105e == null && brhVar10.br.f19105e == null && !z4 && !(brhVar10 instanceof r)) {
                                if (arrayList11 == null) {
                                    arrayList11 = new ArrayList();
                                }
                                ArrayList arrayList18 = arrayList11;
                                arrayList18.add(brhVar10);
                                arrayList11 = arrayList18;
                            }
                            if (brhVar10.bx.f19105e == null && brhVar10.as.f19105e == null && brhVar10.bp.f19105e == null && !z4 && !(brhVar10 instanceof r)) {
                                if (arrayList12 == null) {
                                    arrayList12 = new ArrayList();
                                }
                                ArrayList arrayList19 = arrayList12;
                                arrayList19.add(brhVar10);
                                arrayList12 = arrayList19;
                            }
                            i21 = i22 + 1;
                            arrayList7 = arrayList3;
                            griVar3 = griVar;
                        }
                        arrayList10 = arrayList16;
                        if (brhVar10.cw.f19105e == null) {
                            if (arrayList11 == null) {
                            }
                            ArrayList arrayList182 = arrayList11;
                            arrayList182.add(brhVar10);
                            arrayList11 = arrayList182;
                        }
                        if (brhVar10.bx.f19105e == null) {
                            if (arrayList12 == null) {
                            }
                            ArrayList arrayList192 = arrayList12;
                            arrayList192.add(brhVar10);
                            arrayList12 = arrayList192;
                        }
                        i21 = i22 + 1;
                        arrayList7 = arrayList3;
                        griVar3 = griVar;
                    }
                    ArrayList arrayList20 = arrayList7;
                    ArrayList arrayList21 = arrayList8;
                    ArrayList arrayList22 = arrayList9;
                    ArrayList arrayList23 = arrayList10;
                    ArrayList arrayList24 = new ArrayList();
                    if (arrayList20 != null) {
                        Iterator it = arrayList20.iterator();
                        while (it.hasNext()) {
                            dzm.ab((aar) it.next(), 0, arrayList24, null);
                        }
                    }
                    ic icVar5 = null;
                    int i23 = 0;
                    if (arrayList21 != null) {
                        Iterator it2 = arrayList21.iterator();
                        while (it2.hasNext()) {
                            gbi gbiVar2 = (gbi) it2.next();
                            ic ab2 = dzm.ab(gbiVar2, i23, arrayList24, icVar5);
                            gbiVar2.ex(i23, arrayList24, ab2);
                            ab2.g(arrayList24);
                            icVar5 = null;
                            i23 = 0;
                        }
                    }
                    HashSet hashSet = m(dih.LEFT).f19104d;
                    if (hashSet != null) {
                        Iterator it3 = hashSet.iterator();
                        while (it3.hasNext()) {
                            dzm.ab(((hac) it3.next()).f19102b, 0, arrayList24, null);
                        }
                    }
                    HashSet hashSet2 = m(dih.RIGHT).f19104d;
                    if (hashSet2 != null) {
                        Iterator it4 = hashSet2.iterator();
                        while (it4.hasNext()) {
                            dzm.ab(((hac) it4.next()).f19102b, 0, arrayList24, null);
                        }
                    }
                    HashSet hashSet3 = m(dih.CENTER).f19104d;
                    if (hashSet3 != null) {
                        Iterator it5 = hashSet3.iterator();
                        while (it5.hasNext()) {
                            dzm.ab(((hac) it5.next()).f19102b, 0, arrayList24, null);
                        }
                    }
                    ic icVar6 = null;
                    if (arrayList11 != null) {
                        Iterator it6 = arrayList11.iterator();
                        while (it6.hasNext()) {
                            dzm.ab((brh) it6.next(), 0, arrayList24, null);
                        }
                    }
                    if (arrayList22 != null) {
                        Iterator it7 = arrayList22.iterator();
                        while (it7.hasNext()) {
                            dzm.ab((aar) it7.next(), 1, arrayList24, null);
                        }
                    }
                    int i24 = 1;
                    if (arrayList23 != null) {
                        Iterator it8 = arrayList23.iterator();
                        while (it8.hasNext()) {
                            gbi gbiVar3 = (gbi) it8.next();
                            ic ab3 = dzm.ab(gbiVar3, i24, arrayList24, icVar6);
                            gbiVar3.ex(i24, arrayList24, ab3);
                            ab3.g(arrayList24);
                            icVar6 = null;
                            i24 = 1;
                        }
                    }
                    HashSet hashSet4 = m(dih.TOP).f19104d;
                    if (hashSet4 != null) {
                        Iterator it9 = hashSet4.iterator();
                        while (it9.hasNext()) {
                            dzm.ab(((hac) it9.next()).f19102b, 1, arrayList24, null);
                        }
                    }
                    HashSet hashSet5 = m(dih.BASELINE).f19104d;
                    if (hashSet5 != null) {
                        Iterator it10 = hashSet5.iterator();
                        while (it10.hasNext()) {
                            dzm.ab(((hac) it10.next()).f19102b, 1, arrayList24, null);
                        }
                    }
                    HashSet hashSet6 = m(dih.BOTTOM).f19104d;
                    if (hashSet6 != null) {
                        Iterator it11 = hashSet6.iterator();
                        while (it11.hasNext()) {
                            dzm.ab(((hac) it11.next()).f19102b, 1, arrayList24, null);
                        }
                    }
                    HashSet hashSet7 = m(dih.CENTER).f19104d;
                    if (hashSet7 != null) {
                        Iterator it12 = hashSet7.iterator();
                        while (it12.hasNext()) {
                            dzm.ab(((hac) it12.next()).f19102b, 1, arrayList24, null);
                        }
                    }
                    if (arrayList12 != null) {
                        Iterator it13 = arrayList12.iterator();
                        while (it13.hasNext()) {
                            dzm.ab((brh) it13.next(), 1, arrayList24, null);
                        }
                    }
                    int i25 = 0;
                    while (i25 < size3) {
                        brh brhVar11 = (brh) arrayList6.get(i25);
                        fol[] folVarArr6 = brhVar11.ch;
                        fol folVar12 = folVarArr6[0];
                        fol folVar13 = fol.MATCH_CONSTRAINT;
                        if (folVar12 == folVar13 && folVarArr6[1] == folVar13) {
                            int i26 = brhVar11.az;
                            int size4 = arrayList24.size();
                            int i27 = 0;
                            while (true) {
                                if (i27 >= size4) {
                                    i3 = i25;
                                    arrayList = arrayList6;
                                    icVar3 = null;
                                    break;
                                }
                                i3 = i25;
                                icVar3 = (ic) arrayList24.get(i27);
                                arrayList = arrayList6;
                                if (i26 == icVar3.f19416e) {
                                    break;
                                }
                                i27++;
                                arrayList6 = arrayList;
                                i25 = i3;
                            }
                            int i28 = brhVar11.ci;
                            int size5 = arrayList24.size();
                            int i29 = 0;
                            while (true) {
                                if (i29 >= size5) {
                                    icVar4 = null;
                                    break;
                                }
                                icVar4 = (ic) arrayList24.get(i29);
                                if (i28 == icVar4.f19416e) {
                                    break;
                                } else {
                                    i29++;
                                }
                            }
                            if (icVar3 != null && icVar4 != null) {
                                icVar3.i(0, icVar4);
                                icVar4.f19417f = 2;
                                arrayList24.remove(icVar3);
                            }
                        } else {
                            i3 = i25;
                            arrayList = arrayList6;
                        }
                        i25 = i3 + 1;
                        arrayList6 = arrayList;
                    }
                    if (arrayList24.size() > 1) {
                        if (folVarArr[0] == fol.WRAP_CONTENT) {
                            Iterator it14 = arrayList24.iterator();
                            int i30 = 0;
                            icVar = null;
                            while (it14.hasNext()) {
                                ic icVar7 = (ic) it14.next();
                                if (icVar7.f19417f != 1 && (h2 = icVar7.h(bwoVar, 0)) > i30) {
                                    icVar = icVar7;
                                    i30 = h2;
                                }
                            }
                            if (icVar != null) {
                                ds(fol.FIXED);
                                ed(i30);
                                if (folVarArr[1] == fol.WRAP_CONTENT) {
                                    Iterator it15 = arrayList24.iterator();
                                    int i31 = 0;
                                    icVar2 = null;
                                    while (it15.hasNext()) {
                                        ic icVar8 = (ic) it15.next();
                                        if (icVar8.f19417f != 0 && (h = icVar8.h(bwoVar, 1)) > i31) {
                                            icVar2 = icVar8;
                                            i31 = h;
                                        }
                                    }
                                    if (icVar2 != null) {
                                        dl(fol.FIXED);
                                        dj(i31);
                                        if (icVar == null || icVar2 != null) {
                                            folVar2 = fol.WRAP_CONTENT;
                                            if (folVar4 == folVar2) {
                                                if (max3 >= eb() || max3 <= 0) {
                                                    max3 = eb();
                                                } else {
                                                    ed(max3);
                                                    this.l = true;
                                                }
                                            }
                                            if (folVar3 == folVar2) {
                                                if (max4 >= di() || max4 <= 0) {
                                                    max4 = di();
                                                } else {
                                                    dj(max4);
                                                    this.r = true;
                                                }
                                            }
                                            i = max3;
                                            z = true;
                                        }
                                    }
                                }
                                icVar2 = null;
                                if (icVar == null) {
                                }
                                folVar2 = fol.WRAP_CONTENT;
                                if (folVar4 == folVar2) {
                                }
                                if (folVar3 == folVar2) {
                                }
                                i = max3;
                                z = true;
                            }
                        }
                        icVar = null;
                        if (folVarArr[1] == fol.WRAP_CONTENT) {
                        }
                        icVar2 = null;
                        if (icVar == null) {
                        }
                        folVar2 = fol.WRAP_CONTENT;
                        if (folVar4 == folVar2) {
                        }
                        if (folVar3 == folVar2) {
                        }
                        i = max3;
                        z = true;
                    }
                }
            }
        }
        i = max3;
        z = false;
        boolean z12 = ag(64) || ag(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        bwoVar.getClass();
        bwoVar.f12324b = false;
        if (this.w == 0 || !z12) {
            c2 = 1;
        } else {
            c2 = 1;
            bwoVar.f12324b = true;
        }
        ArrayList arrayList25 = this.x;
        fol folVar14 = folVarArr[0];
        fol folVar15 = fol.WRAP_CONTENT;
        boolean z13 = folVar14 == folVar15 || folVarArr[c2] == folVar15;
        this.u = 0;
        this.n = 0;
        for (int i32 = 0; i32 < size; i32++) {
            brh brhVar12 = (brh) this.x.get(i32);
            if (brhVar12 instanceof aep) {
                ((aep) brhVar12).ae();
            }
        }
        boolean ag = ag(64);
        boolean z14 = z;
        int i33 = 0;
        boolean z15 = true;
        while (z15) {
            int i34 = i33 + 1;
            try {
                bwoVar.ah();
                this.u = 0;
                this.n = 0;
                eh(bwoVar);
                for (int i35 = 0; i35 < size; i35++) {
                    ((brh) this.x.get(i35)).eh(bwoVar);
                }
                al(bwoVar);
                try {
                    WeakReference weakReference = this.t;
                    if (weakReference == null || weakReference.get() == null) {
                        z2 = z13;
                        hacVar2 = hacVar3;
                    } else {
                        hac hacVar5 = (hac) this.t.get();
                        crb t = bwoVar.t(hacVar3);
                        bwo bwoVar2 = this.s;
                        z2 = z13;
                        hacVar2 = hacVar3;
                        try {
                            bwoVar2.z(bwoVar2.t(hacVar5), t, 0, 5);
                            this.t = null;
                        } catch (Exception e2) {
                            e = e2;
                            z15 = true;
                            e.printStackTrace();
                            System.out.println("EXCEPTION : " + e);
                            if (z15) {
                            }
                            if (!z2) {
                            }
                            max = Math.max(this.bb, eb());
                            if (max > eb()) {
                            }
                            max2 = Math.max(this.au, di());
                            if (max2 > di()) {
                            }
                            if (!z14) {
                            }
                            z15 = z3;
                            i2 = 8;
                            if (i34 <= i2) {
                            }
                            i33 = i34;
                            z13 = z2;
                            hacVar3 = hacVar2;
                        }
                    }
                    WeakReference weakReference2 = this.aa;
                    if (weakReference2 != null && weakReference2.get() != null) {
                        hac hacVar6 = (hac) this.aa.get();
                        crb t2 = bwoVar.t(this.as);
                        bwo bwoVar3 = this.s;
                        bwoVar3.z(t2, bwoVar3.t(hacVar6), 0, 5);
                        this.aa = null;
                    }
                    WeakReference weakReference3 = this.q;
                    if (weakReference3 != null && weakReference3.get() != null) {
                        hac hacVar7 = (hac) this.q.get();
                        hac hacVar8 = hacVar;
                        try {
                            crb t3 = bwoVar.t(hacVar8);
                            bwo bwoVar4 = this.s;
                            hacVar = hacVar8;
                            bwoVar4.z(bwoVar4.t(hacVar7), t3, 0, 5);
                            this.q = null;
                        } catch (Exception e3) {
                            e = e3;
                            hacVar = hacVar8;
                            z15 = true;
                            e.printStackTrace();
                            System.out.println("EXCEPTION : " + e);
                            if (z15) {
                            }
                            if (!z2) {
                            }
                            max = Math.max(this.bb, eb());
                            if (max > eb()) {
                            }
                            max2 = Math.max(this.au, di());
                            if (max2 > di()) {
                            }
                            if (!z14) {
                            }
                            z15 = z3;
                            i2 = 8;
                            if (i34 <= i2) {
                            }
                            i33 = i34;
                            z13 = z2;
                            hacVar3 = hacVar2;
                        }
                    }
                    WeakReference weakReference4 = this.h;
                    if (weakReference4 != null && weakReference4.get() != null) {
                        hac hacVar9 = (hac) this.h.get();
                        crb t4 = bwoVar.t(this.br);
                        try {
                            bwo bwoVar5 = this.s;
                            bwoVar5.z(t4, bwoVar5.t(hacVar9), 0, 5);
                            try {
                                this.h = null;
                            } catch (Exception e4) {
                                e = e4;
                                z15 = true;
                                e.printStackTrace();
                                System.out.println("EXCEPTION : " + e);
                                if (z15) {
                                }
                                if (!z2) {
                                }
                                max = Math.max(this.bb, eb());
                                if (max > eb()) {
                                }
                                max2 = Math.max(this.au, di());
                                if (max2 > di()) {
                                }
                                if (!z14) {
                                }
                                z15 = z3;
                                i2 = 8;
                                if (i34 <= i2) {
                                }
                                i33 = i34;
                                z13 = z2;
                                hacVar3 = hacVar2;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            z15 = true;
                            e.printStackTrace();
                            System.out.println("EXCEPTION : " + e);
                            if (z15) {
                            }
                            if (!z2) {
                            }
                            max = Math.max(this.bb, eb());
                            if (max > eb()) {
                            }
                            max2 = Math.max(this.au, di());
                            if (max2 > di()) {
                            }
                            if (!z14) {
                            }
                            z15 = z3;
                            i2 = 8;
                            if (i34 <= i2) {
                            }
                            i33 = i34;
                            z13 = z2;
                            hacVar3 = hacVar2;
                        }
                    }
                    bwoVar.ab();
                    z15 = true;
                } catch (Exception e6) {
                    e = e6;
                    z2 = z13;
                    hacVar2 = hacVar3;
                }
            } catch (Exception e7) {
                e = e7;
                z2 = z13;
                hacVar2 = hacVar3;
            }
            if (z15) {
                zArr[2] = false;
                boolean ag2 = ag(64);
                k(bwoVar, ag2);
                int size6 = this.x.size();
                z3 = false;
                int i36 = 0;
                while (i36 < size6) {
                    brh brhVar13 = (brh) this.x.get(i36);
                    brhVar13.k(bwoVar, ag2);
                    boolean z16 = ag2;
                    int i37 = size6;
                    if (brhVar13.ao != -1 || brhVar13.ce != -1) {
                        z3 = true;
                    }
                    i36++;
                    ag2 = z16;
                    size6 = i37;
                }
            } else {
                k(bwoVar, ag);
                for (int i38 = 0; i38 < size; i38++) {
                    ((brh) this.x.get(i38)).k(bwoVar, ag);
                }
                z3 = false;
            }
            if (!z2 && i34 < 8) {
                if (zArr[2]) {
                    int i39 = 0;
                    int i40 = 0;
                    for (int i41 = 0; i41 < size; i41++) {
                        brh brhVar14 = (brh) this.x.get(i41);
                        i40 = Math.max(i40, brhVar14.eb() + brhVar14.cv);
                        i39 = Math.max(i39, brhVar14.di() + brhVar14.cb);
                    }
                    int max5 = Math.max(this.bb, i40);
                    int max6 = Math.max(this.au, i39);
                    fol folVar16 = fol.WRAP_CONTENT;
                    if (folVar4 == folVar16 && eb() < max5) {
                        ed(max5);
                        folVarArr[0] = folVar16;
                        z3 = true;
                        z14 = true;
                    }
                    if (folVar3 == folVar16 && di() < max6) {
                        dj(max6);
                        folVarArr[1] = folVar16;
                        z3 = true;
                        z14 = true;
                    }
                }
            }
            max = Math.max(this.bb, eb());
            if (max > eb()) {
                ed(max);
                folVarArr[0] = fol.FIXED;
                z3 = true;
                z14 = true;
            }
            max2 = Math.max(this.au, di());
            if (max2 > di()) {
                dj(max2);
                r14 = 1;
                folVarArr[1] = fol.FIXED;
                z3 = true;
                z14 = true;
            } else {
                r14 = 1;
            }
            if (!z14) {
                fol folVar17 = folVarArr[0];
                fol folVar18 = fol.WRAP_CONTENT;
                if (folVar17 == folVar18 && i > 0 && eb() > i) {
                    this.l = r14;
                    folVarArr[0] = fol.FIXED;
                    ed(i);
                    z3 = true;
                    z14 = true;
                }
                if (folVarArr[r14] == folVar18 && max4 > 0 && di() > max4) {
                    this.r = r14;
                    folVarArr[r14] = fol.FIXED;
                    dj(max4);
                    i2 = 8;
                    z14 = true;
                    z15 = true;
                    if (i34 <= i2) {
                        z15 = false;
                    }
                    i33 = i34;
                    z13 = z2;
                    hacVar3 = hacVar2;
                }
            }
            z15 = z3;
            i2 = 8;
            if (i34 <= i2) {
            }
            i33 = i34;
            z13 = z2;
            hacVar3 = hacVar2;
        }
        this.x = arrayList25;
        if (z14) {
            folVarArr[0] = folVar4;
            folVarArr[1] = folVar3;
        }
        ak(bwoVar.l);
    }

    @Override // g.brh
    public final void af() {
        this.s.ah();
        this.z = 0;
        this.o = 0;
        this.x.clear();
        super.af();
    }

    public final boolean ag(int i) {
        return (this.w & i) == i;
    }

    public final void ah(brh brhVar, int i) {
        if (i == 0) {
            int i2 = this.u + 1;
            arf[] arfVarArr = this.p;
            if (i2 >= arfVarArr.length) {
                this.p = (arf[]) Arrays.copyOf(arfVarArr, arfVarArr.length * 2);
            }
            arf[] arfVarArr2 = this.p;
            int i3 = this.u;
            arfVarArr2[i3] = new arf(brhVar, 0, this.f10109ab);
            this.u = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.n + 1;
            arf[] arfVarArr3 = this.f10112d;
            if (i4 >= arfVarArr3.length) {
                this.f10112d = (arf[]) Arrays.copyOf(arfVarArr3, arfVarArr3.length * 2);
            }
            arf[] arfVarArr4 = this.f10112d;
            int i5 = this.n;
            arfVarArr4[i5] = new arf(brhVar, 1, this.f10109ab);
            this.n = i5 + 1;
        }
    }

    @Override // g.brh
    public final void ai(boolean z, boolean z2) {
        super.ai(z, z2);
        int size = this.x.size();
        for (int i = 0; i < size; i++) {
            ((brh) this.x.get(i)).ai(z, z2);
        }
    }

    public final boolean aj(int i, boolean z) {
        boolean z2;
        fol folVar;
        ar arVar = this.v;
        ArrayList arrayList = arVar.f10690c;
        aep aepVar = arVar.f10691d;
        boolean z3 = false;
        fol ea = aepVar.ea(0);
        fol[] folVarArr = aepVar.ch;
        fol ea2 = aepVar.ea(1);
        int ei = aepVar.ei();
        int dy = aepVar.dy();
        if (z && (ea == (folVar = fol.WRAP_CONTENT) || ea2 == folVar)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                mi miVar = (mi) it.next();
                if (miVar.f19649e == i && !miVar.n()) {
                    z = false;
                    break;
                }
            }
            if (i == 0) {
                if (z && ea == fol.WRAP_CONTENT) {
                    aepVar.ds(fol.FIXED);
                    aepVar.ed(arVar.i(aepVar, 0));
                    aepVar.be.f19647c.m(aepVar.eb());
                }
            } else if (z && ea2 == fol.WRAP_CONTENT) {
                aepVar.dl(fol.FIXED);
                aepVar.dj(arVar.i(aepVar, 1));
                aepVar.bi.f19647c.m(aepVar.di());
            }
        }
        if (i == 0) {
            fol folVar2 = folVarArr[0];
            if (folVar2 == fol.FIXED || folVar2 == fol.MATCH_PARENT) {
                int eb = aepVar.eb() + ei;
                aepVar.be.f19650f.m(eb);
                aepVar.be.f19647c.m(eb - ei);
                z2 = true;
            }
            z2 = false;
        } else {
            fol folVar3 = folVarArr[1];
            if (folVar3 == fol.FIXED || folVar3 == fol.MATCH_PARENT) {
                int di = aepVar.di() + dy;
                aepVar.bi.f19650f.m(di);
                aepVar.bi.f19647c.m(di - dy);
                z2 = true;
            }
            z2 = false;
        }
        arVar.o();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            mi miVar2 = (mi) it2.next();
            if (miVar2.f19649e == i && (miVar2.f19651g != aepVar || miVar2.j)) {
                miVar2.q();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z3 = true;
                break;
            }
            mi miVar3 = (mi) it3.next();
            if (miVar3.f19649e == i && (z2 || miVar3.f19651g != aepVar)) {
                if (!miVar3.f19645a.j) {
                    break;
                }
                if (!miVar3.f19650f.j) {
                    break;
                }
                if (!(miVar3 instanceof gnk) && !miVar3.f19647c.j) {
                    break;
                }
            }
        }
        aepVar.ds(ea);
        aepVar.dl(ea2);
        return z3;
    }

    @Override // g.brh
    public final void ak(fpd fpdVar) {
        super.ak(fpdVar);
        int size = this.x.size();
        for (int i = 0; i < size; i++) {
            ((brh) this.x.get(i)).ak(fpdVar);
        }
    }

    public final void al(bwo bwoVar) {
        aep aepVar;
        bwo bwoVar2;
        boolean ag = ag(64);
        g(bwoVar, ag);
        int size = this.x.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            brh brhVar = (brh) this.x.get(i);
            boolean[] zArr = brhVar.cq;
            zArr[0] = false;
            zArr[1] = false;
            if (brhVar instanceof r) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                brh brhVar2 = (brh) this.x.get(i2);
                if (brhVar2 instanceof r) {
                    r rVar = (r) brhVar2;
                    for (int i3 = 0; i3 < rVar.ev; i3++) {
                        brh brhVar3 = rVar.ew[i3];
                        if (rVar.f19885a || brhVar3.j()) {
                            int i4 = rVar.f19886b;
                            if (i4 == 0 || i4 == 1) {
                                brhVar3.cq[0] = true;
                            } else if (i4 == 2 || i4 == 3) {
                                brhVar3.cq[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.f10108a;
        hashSet.clear();
        for (int i5 = 0; i5 < size; i5++) {
            brh brhVar4 = (brh) this.x.get(i5);
            brhVar4.getClass();
            boolean z2 = brhVar4 instanceof dbr;
            if (z2 || (brhVar4 instanceof aar)) {
                if (z2) {
                    hashSet.add(brhVar4);
                } else {
                    brhVar4.g(bwoVar, ag);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                dbr dbrVar = (dbr) ((brh) it.next());
                for (int i6 = 0; i6 < dbrVar.ev; i6++) {
                    if (hashSet.contains(dbrVar.ew[i6])) {
                        dbrVar.g(bwoVar, ag);
                        hashSet.remove(dbrVar);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((brh) it2.next()).g(bwoVar, ag);
                }
                hashSet.clear();
            }
        }
        if (bwo.f12323a) {
            HashSet hashSet2 = new HashSet();
            for (int i7 = 0; i7 < size; i7++) {
                brh brhVar5 = (brh) this.x.get(i7);
                brhVar5.getClass();
                if (!(brhVar5 instanceof dbr) && !(brhVar5 instanceof aar)) {
                    hashSet2.add(brhVar5);
                }
            }
            aepVar = this;
            bwoVar2 = bwoVar;
            aepVar.dp(this, bwoVar2, hashSet2, this.ch[0] == fol.WRAP_CONTENT ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                brh brhVar6 = (brh) it3.next();
                bff.au(this, bwoVar2, brhVar6);
                brhVar6.g(bwoVar2, ag);
            }
        } else {
            aepVar = this;
            bwoVar2 = bwoVar;
            for (int i8 = 0; i8 < size; i8++) {
                brh brhVar7 = (brh) aepVar.x.get(i8);
                if (brhVar7 instanceof aep) {
                    fol[] folVarArr = brhVar7.ch;
                    fol folVar = folVarArr[0];
                    fol folVar2 = folVarArr[1];
                    fol folVar3 = fol.WRAP_CONTENT;
                    if (folVar == folVar3) {
                        brhVar7.ds(fol.FIXED);
                    }
                    if (folVar2 == folVar3) {
                        brhVar7.dl(fol.FIXED);
                    }
                    brhVar7.g(bwoVar2, ag);
                    if (folVar == folVar3) {
                        brhVar7.ds(folVar);
                    }
                    if (folVar2 == folVar3) {
                        brhVar7.dl(folVar2);
                    }
                } else {
                    bff.au(this, bwoVar2, brhVar7);
                    if (!(brhVar7 instanceof dbr) && !(brhVar7 instanceof aar)) {
                        brhVar7.g(bwoVar2, ag);
                    }
                }
            }
        }
        if (aepVar.u > 0) {
            dzm.ag(this, bwoVar2, null, 0);
        }
        if (aepVar.n > 0) {
            dzm.ag(this, bwoVar2, null, 1);
        }
    }
}
