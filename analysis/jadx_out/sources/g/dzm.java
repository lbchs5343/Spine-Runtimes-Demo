package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzffo;
import com.google.android.gms.internal.ads.zzfkq;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dzm {

    /* renamed from: f, reason: collision with root package name */
    public static Method f15131f;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f15132g;
    public static boolean i;
    public static volatile exu k;
    public static Method m;
    public static acq p;
    public static final hy o = new hy("COMPLETING_ALREADY", 1);
    public static final hy q = new hy("COMPLETING_WAITING_CHILDREN", 1);
    public static final hy h = new hy("COMPLETING_RETRY", 1);
    public static final hy j = new hy("TOO_LATE_TO_CANCEL", 1);
    public static final hy l = new hy("SEALED", 1);
    public static final fvn r = new fvn(false);

    /* renamed from: e, reason: collision with root package name */
    public static final fvn f15130e = new fvn(true);
    public static final fhh n = new fhh();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzfkq aa(Bundle bundle) {
        char c2;
        Bundle bundle2 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 != null) {
            bundle = bundle2;
        }
        String string = bundle.getString("query_info_type");
        if (TextUtils.isEmpty(string)) {
            return zzfkq.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
        switch (string.hashCode()) {
            case 1743582862:
                if (string.equals("requester_type_0")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582863:
                if (string.equals("requester_type_1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582864:
                if (string.equals("requester_type_2")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582865:
                if (string.equals("requester_type_3")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582866:
                if (string.equals("requester_type_4")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582867:
                if (string.equals("requester_type_5")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582868:
                if (string.equals("requester_type_6")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582869:
                if (string.equals("requester_type_7")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582870:
                if (string.equals("requester_type_8")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
        }
        return zzfkq.SCAR_REQUEST_TYPE_UNSPECIFIED;
    }

    public static ic ab(brh brhVar, int i2, ArrayList arrayList, ic icVar) {
        int i3;
        int i4 = i2 == 0 ? brhVar.az : brhVar.ci;
        if (i4 != -1 && (icVar == null || i4 != icVar.f19416e)) {
            int i5 = 0;
            while (true) {
                if (i5 >= arrayList.size()) {
                    break;
                }
                ic icVar2 = (ic) arrayList.get(i5);
                if (icVar2.f19416e == i4) {
                    if (icVar != null) {
                        icVar.i(i2, icVar2);
                        arrayList.remove(icVar);
                    }
                    icVar = icVar2;
                } else {
                    i5++;
                }
            }
        } else if (i4 != -1) {
            return icVar;
        }
        if (icVar == null) {
            if (brhVar instanceof gbi) {
                gbi gbiVar = (gbi) brhVar;
                int i6 = 0;
                while (true) {
                    if (i6 >= gbiVar.ev) {
                        i3 = -1;
                        break;
                    }
                    brh brhVar2 = gbiVar.ew[i6];
                    if ((i2 == 0 && (i3 = brhVar2.az) != -1) || (i2 == 1 && (i3 = brhVar2.ci) != -1)) {
                        break;
                    }
                    i6++;
                }
                if (i3 != -1) {
                    int i7 = 0;
                    while (true) {
                        if (i7 >= arrayList.size()) {
                            break;
                        }
                        ic icVar3 = (ic) arrayList.get(i7);
                        if (icVar3.f19416e == i3) {
                            icVar = icVar3;
                            break;
                        }
                        i7++;
                    }
                }
            }
            if (icVar == null) {
                icVar = new ic();
                icVar.f19415d = new ArrayList();
                icVar.f19413b = null;
                icVar.f19414c = -1;
                int i8 = ic.f19412a;
                ic.f19412a = i8 + 1;
                icVar.f19416e = i8;
                icVar.f19417f = i2;
            }
            arrayList.add(icVar);
        }
        int i9 = icVar.f19416e;
        ArrayList arrayList2 = icVar.f19415d;
        if (arrayList2.contains(brhVar)) {
            return icVar;
        }
        arrayList2.add(brhVar);
        if (brhVar instanceof aar) {
            aar aarVar = (aar) brhVar;
            aarVar.f9875b.t(aarVar.f9878f == 0 ? 1 : 0, arrayList, icVar);
        }
        if (i2 == 0) {
            brhVar.az = i9;
            brhVar.cw.t(i2, arrayList, icVar);
            brhVar.br.t(i2, arrayList, icVar);
        } else {
            brhVar.ci = i9;
            brhVar.bx.t(i2, arrayList, icVar);
            brhVar.bp.t(i2, arrayList, icVar);
            brhVar.as.t(i2, arrayList, icVar);
        }
        brhVar.cd.t(i2, arrayList, icVar);
        return icVar;
    }

    public static float ac(float f2, float f3, float f4) {
        return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
    }

    public static final Object ad(azc azcVar, azc azcVar2, bto btoVar) {
        Object whVar;
        Object al;
        gpe gpeVar;
        try {
            baf.bc(2, btoVar);
            whVar = btoVar.d(azcVar2, azcVar);
        } catch (Throwable th) {
            whVar = new wh(th, false);
        }
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        if (whVar == cxrVar || (al = azcVar.al(whVar)) == q) {
            return cxrVar;
        }
        if (al instanceof wh) {
            throw ((wh) al).f20211c;
        }
        xk xkVar = al instanceof xk ? (xk) al : null;
        return (xkVar == null || (gpeVar = xkVar.f20295a) == null) ? al : gpeVar;
    }

    public static String ae(String str, JSONObject jSONObject) {
        cld aq;
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                if (str.startsWith("${") && str.endsWith("}") && ((gpu) fzn.j().f17731f) != null) {
                    cgd cgdVar = new cgd(str.substring(2, str.length() - 1));
                    HashMap hashMap = new HashMap();
                    hashMap.put("default_key", jSONObject);
                    Object dq = cgdVar.f12820d.dq(hashMap);
                    if (!(dq instanceof String)) {
                        if (dq instanceof gqx) {
                            gqx gqxVar = (gqx) dq;
                            Object obj = null;
                            if (gqxVar != null && (aq = aq(gqxVar.f18610a)) != null) {
                                obj = aq.p(null, gqxVar.f18611b);
                            }
                            dq = String.valueOf(obj);
                        } else {
                            dq = String.valueOf(dq);
                        }
                    }
                    return (String) dq;
                }
                return str;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return str;
    }

    public static int af(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x029b, code lost:
    
        if (r8.f19102b == r6) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0111, code lost:
    
        if (r4.f19102b == r7) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:188:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0444 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0693 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x069f  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x06ca  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x06ea A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x06b6  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x057d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x058a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ag(aep aepVar, bwo bwoVar, ArrayList arrayList, int i2) {
        int i3;
        arf[] arfVarArr;
        int i4;
        int i5;
        float f2;
        float f3;
        boolean z;
        boolean z2;
        boolean z3;
        brh brhVar;
        boolean z4;
        int i6;
        arf[] arfVarArr2;
        ArrayList arrayList2;
        brh brhVar2;
        brh brhVar3;
        bwo bwoVar2;
        hac hacVar;
        hac hacVar2;
        hac hacVar3;
        crb crbVar;
        hac hacVar4;
        crb crbVar2;
        brh brhVar4;
        hac hacVar5;
        crb crbVar3;
        brh brhVar5;
        brh brhVar6;
        int i7;
        hac hacVar6;
        hac[] hacVarArr;
        int i8;
        hac hacVar7;
        crb crbVar4;
        crb crbVar5;
        int size;
        int i9;
        ArrayList arrayList3;
        int i10;
        int i11;
        brh brhVar7;
        float f4;
        int i12;
        arf[] arfVarArr3;
        brh brhVar8;
        int i13;
        int i14;
        int i15;
        int i16;
        hac hacVar8;
        brh brhVar9;
        float f5;
        aep aepVar2 = aepVar;
        bwo bwoVar3 = bwoVar;
        ArrayList arrayList4 = arrayList;
        if (i2 == 0) {
            i3 = aepVar2.u;
            arfVarArr = aepVar2.p;
            i4 = 0;
        } else {
            i3 = aepVar2.n;
            arfVarArr = aepVar2.f10112d;
            i4 = 2;
        }
        int i17 = i3;
        arf[] arfVarArr4 = arfVarArr;
        int i18 = 0;
        while (i18 < i17) {
            arf arfVar = arfVarArr4[i18];
            boolean z5 = arfVar.o;
            brh brhVar10 = arfVar.h;
            int i19 = 8;
            if (z5) {
                i5 = i18;
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            } else {
                int i20 = arfVar.f10704f;
                int i21 = i20 * 2;
                brh brhVar11 = brhVar10;
                brh brhVar12 = brhVar11;
                boolean z6 = false;
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                while (!z6) {
                    arfVar.l++;
                    brh[] brhVarArr = brhVar11.cf;
                    hac[] hacVarArr2 = brhVar11.ax;
                    brhVarArr[i20] = null;
                    brhVar11.at[i20] = null;
                    if (brhVar11.aq != i19) {
                        brhVar11.ea(i20);
                        fol folVar = fol.MATCH_CONSTRAINT;
                        hacVarArr2[i21].n();
                        int i22 = i21 + 1;
                        hacVarArr2[i22].n();
                        hacVarArr2[i21].n();
                        hacVarArr2[i22].n();
                        if (arfVar.m == null) {
                            arfVar.m = brhVar11;
                        }
                        arfVar.f10703e = brhVar11;
                        fol folVar2 = brhVar11.ch[i20];
                        if (folVar2 == folVar) {
                            i14 = i18;
                            int i23 = brhVar11.cm[i20];
                            i15 = i20;
                            if (i23 == 0 || i23 == 3 || i23 == 2) {
                                arfVar.n++;
                                float f6 = brhVar11.cu[i15];
                                if (f6 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                    f5 = f6;
                                    arfVar.f10700b += f5;
                                } else {
                                    f5 = f6;
                                }
                                i16 = i21;
                                if (brhVar11.aq != 8 && folVar2 == folVar && (i23 == 0 || i23 == 3)) {
                                    if (f5 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                        arfVar.f10702d = true;
                                    } else {
                                        arfVar.f10701c = true;
                                    }
                                    if (arfVar.f10699a == null) {
                                        arfVar.f10699a = new ArrayList();
                                    }
                                    arfVar.f10699a.add(brhVar11);
                                }
                                if (arfVar.i == null) {
                                    arfVar.i = brhVar11;
                                }
                                brh brhVar13 = arfVar.q;
                                if (brhVar13 != null) {
                                    brhVar13.at[i15] = brhVar11;
                                }
                                arfVar.q = brhVar11;
                            } else {
                                i16 = i21;
                            }
                            if (i15 == 0) {
                                if (brhVar11.da == 0 && brhVar11.bl == 0) {
                                    int i24 = brhVar11.bs;
                                }
                            } else if (brhVar11.by == 0 && brhVar11.cy == 0) {
                                int i25 = brhVar11.aw;
                            }
                            if (brhVar12 != brhVar11) {
                                brhVar12.cf[i15] = brhVar11;
                            }
                            hacVar8 = hacVarArr2[i16 + 1].f19105e;
                            if (hacVar8 != null) {
                                brhVar9 = hacVar8.f19102b;
                                hac hacVar9 = brhVar9.ax[i16].f19105e;
                                if (hacVar9 != null) {
                                }
                            }
                            brhVar9 = null;
                            if (brhVar9 != null) {
                                brhVar9 = brhVar11;
                                z6 = true;
                            }
                            brhVar12 = brhVar11;
                            i20 = i15;
                            i21 = i16;
                            i19 = 8;
                            brhVar11 = brhVar9;
                            i18 = i14;
                        }
                    }
                    i14 = i18;
                    i15 = i20;
                    i16 = i21;
                    if (brhVar12 != brhVar11) {
                    }
                    hacVar8 = hacVarArr2[i16 + 1].f19105e;
                    if (hacVar8 != null) {
                    }
                    brhVar9 = null;
                    if (brhVar9 != null) {
                    }
                    brhVar12 = brhVar11;
                    i20 = i15;
                    i21 = i16;
                    i19 = 8;
                    brhVar11 = brhVar9;
                    i18 = i14;
                }
                i5 = i18;
                int i26 = i20;
                int i27 = i21;
                brh brhVar14 = arfVar.m;
                if (brhVar14 != null) {
                    brhVar14.ax[i27].n();
                }
                brh brhVar15 = arfVar.f10703e;
                if (brhVar15 != null) {
                    brhVar15.ax[i27 + 1].n();
                }
                arfVar.p = brhVar11;
                if (i26 == 0 && arfVar.k) {
                    arfVar.f10705g = brhVar11;
                } else {
                    arfVar.f10705g = brhVar10;
                }
                arfVar.j = arfVar.f10701c && arfVar.f10702d;
            }
            arfVar.o = true;
            if (arrayList4 == null || arrayList4.contains(brhVar10)) {
                brh brhVar16 = arfVar.p;
                brh brhVar17 = arfVar.m;
                brh brhVar18 = arfVar.f10703e;
                brh brhVar19 = arfVar.f10705g;
                float f7 = arfVar.f10700b;
                fol[] folVarArr = aepVar2.ch;
                hac[] hacVarArr3 = aepVar2.ax;
                boolean z7 = folVarArr[i2] == fol.WRAP_CONTENT;
                if (i2 == 0) {
                    int i28 = brhVar19.cs;
                    boolean z8 = i28 == 0;
                    f3 = f7;
                    z2 = i28 == 1;
                    z3 = i28 == 2;
                    brhVar = brhVar10;
                    z4 = z7;
                    z = z8;
                } else {
                    f3 = f7;
                    int i29 = brhVar19.bw;
                    z = i29 == 0;
                    z2 = i29 == 1;
                    z3 = i29 == 2;
                    brhVar = brhVar10;
                    z4 = z7;
                }
                boolean z9 = z2;
                boolean z10 = false;
                while (!z10) {
                    hac[] hacVarArr4 = brhVar.ax;
                    fol[] folVarArr2 = brhVar.ch;
                    hac hacVar10 = hacVarArr4[i4];
                    int i30 = z3 ? 1 : 4;
                    int n2 = hacVar10.n();
                    hac[] hacVarArr5 = hacVarArr3;
                    fol folVar3 = folVarArr2[i2];
                    boolean z11 = z3;
                    fol folVar4 = fol.MATCH_CONSTRAINT;
                    boolean z12 = folVar3 == folVar4 && brhVar.cm[i2] == 0;
                    hac hacVar11 = hacVar10.f19105e;
                    if (hacVar11 != null && brhVar != brhVar10) {
                        n2 = hacVar11.n() + n2;
                    }
                    int i31 = n2;
                    if (z11 && brhVar != brhVar10 && brhVar != brhVar17) {
                        i30 = 8;
                    }
                    hac hacVar12 = hacVar10.f19105e;
                    if (hacVar12 != null) {
                        if (brhVar == brhVar17) {
                            i12 = i17;
                            arfVarArr3 = arfVarArr4;
                            bwoVar3.z(hacVar10.f19106f, hacVar12.f19106f, i31, 6);
                        } else {
                            i12 = i17;
                            arfVarArr3 = arfVarArr4;
                            bwoVar3.z(hacVar10.f19106f, hacVar12.f19106f, i31, 8);
                        }
                        if (z12 && !z11) {
                            i30 = 5;
                        }
                        bwoVar3.x(hacVar10.f19106f, hacVar10.f19105e.f19106f, i31, (brhVar == brhVar17 && z11 && brhVar.cq[i2]) ? 5 : i30);
                    } else {
                        i12 = i17;
                        arfVarArr3 = arfVarArr4;
                    }
                    if (z4) {
                        if (brhVar.aq == 8 || folVarArr2[i2] != folVar4) {
                            i13 = 0;
                        } else {
                            i13 = 0;
                            bwoVar3.z(hacVarArr4[i4 + 1].f19106f, hacVarArr4[i4].f19106f, 0, 5);
                        }
                        bwoVar3.z(hacVarArr4[i4].f19106f, hacVarArr5[i4].f19106f, i13, 8);
                    }
                    hac hacVar13 = hacVarArr4[i4 + 1].f19105e;
                    if (hacVar13 != null) {
                        brhVar8 = hacVar13.f19102b;
                        hac hacVar14 = brhVar8.ax[i4].f19105e;
                        if (hacVar14 != null) {
                        }
                    }
                    brhVar8 = null;
                    if (brhVar8 != null) {
                        brhVar = brhVar8;
                    } else {
                        z10 = true;
                    }
                    i17 = i12;
                    hacVarArr3 = hacVarArr5;
                    z3 = z11;
                    arfVarArr4 = arfVarArr3;
                }
                hac[] hacVarArr6 = hacVarArr3;
                boolean z13 = z3;
                i6 = i17;
                arfVarArr2 = arfVarArr4;
                if (brhVar18 != null) {
                    int i32 = i4 + 1;
                    if (brhVar16.ax[i32].f19105e != null) {
                        hac hacVar15 = brhVar18.ax[i32];
                        if (brhVar18.ch[i2] == fol.MATCH_CONSTRAINT && brhVar18.cm[i2] == 0 && !z13) {
                            hac hacVar16 = hacVar15.f19105e;
                            if (hacVar16.f19102b == aepVar2) {
                                bwoVar3.x(hacVar15.f19106f, hacVar16.f19106f, -hacVar15.n(), 5);
                                bwoVar3.aj(hacVar15.f19106f, brhVar16.ax[i32].f19105e.f19106f, -hacVar15.n(), 6);
                                if (z4) {
                                    int i33 = i4 + 1;
                                    crb crbVar6 = hacVarArr6[i33].f19106f;
                                    hac hacVar17 = brhVar16.ax[i33];
                                    bwoVar3.z(crbVar6, hacVar17.f19106f, hacVar17.n(), 8);
                                }
                                arrayList2 = arfVar.f10699a;
                                if (arrayList2 != null && (size = arrayList2.size()) > 1) {
                                    if (arfVar.f10702d && !arfVar.j) {
                                        f3 = arfVar.n;
                                    }
                                    brh brhVar20 = null;
                                    i9 = 0;
                                    float f8 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    while (i9 < size) {
                                        brh brhVar21 = (brh) arrayList2.get(i9);
                                        float[] fArr = brhVar21.cu;
                                        hac[] hacVarArr7 = brhVar21.ax;
                                        float f9 = fArr[i2];
                                        if (f9 < f2) {
                                            if (arfVar.j) {
                                                arrayList3 = arrayList2;
                                                bwoVar3.x(hacVarArr7[i4 + 1].f19106f, hacVarArr7[i4].f19106f, 0, 4);
                                                i10 = i9;
                                                i11 = size;
                                                i9 = i10 + 1;
                                                size = i11;
                                                arrayList2 = arrayList3;
                                            } else {
                                                f9 = 1.0f;
                                            }
                                        }
                                        arrayList3 = arrayList2;
                                        if (f9 == f2) {
                                            i10 = i9;
                                            bwoVar3.x(hacVarArr7[i4 + 1].f19106f, hacVarArr7[i4].f19106f, 0, 8);
                                            i11 = size;
                                            i9 = i10 + 1;
                                            size = i11;
                                            arrayList2 = arrayList3;
                                        } else {
                                            i10 = i9;
                                            if (brhVar20 != null) {
                                                hac[] hacVarArr8 = brhVar20.ax;
                                                crb crbVar7 = hacVarArr8[i4].f19106f;
                                                int i34 = i4 + 1;
                                                crb crbVar8 = hacVarArr8[i34].f19106f;
                                                crb crbVar9 = hacVarArr7[i4].f19106f;
                                                crb crbVar10 = hacVarArr7[i34].f19106f;
                                                i11 = size;
                                                gz w = bwoVar3.w();
                                                brhVar7 = brhVar21;
                                                w.f19040d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                                if (f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f8 == f9) {
                                                    f4 = f9;
                                                    w.f19037a.r(crbVar7, 1.0f);
                                                    w.f19037a.r(crbVar8, -1.0f);
                                                    w.f19037a.r(crbVar10, 1.0f);
                                                    w.f19037a.r(crbVar9, -1.0f);
                                                } else {
                                                    if (f8 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                        w.f19037a.r(crbVar7, 1.0f);
                                                        w.f19037a.r(crbVar8, -1.0f);
                                                    } else if (f9 == f2) {
                                                        w.f19037a.r(crbVar9, 1.0f);
                                                        w.f19037a.r(crbVar10, -1.0f);
                                                    } else {
                                                        float f10 = (f8 / f3) / (f9 / f3);
                                                        f4 = f9;
                                                        w.f19037a.r(crbVar7, 1.0f);
                                                        w.f19037a.r(crbVar8, -1.0f);
                                                        w.f19037a.r(crbVar10, f10);
                                                        w.f19037a.r(crbVar9, -f10);
                                                    }
                                                    f4 = f9;
                                                }
                                                bwoVar3.ai(w);
                                            } else {
                                                i11 = size;
                                                brhVar7 = brhVar21;
                                                f4 = f9;
                                            }
                                            f8 = f4;
                                            brhVar20 = brhVar7;
                                            i9 = i10 + 1;
                                            size = i11;
                                            arrayList2 = arrayList3;
                                        }
                                    }
                                }
                                if (brhVar17 == null && (brhVar17 == brhVar18 || z13)) {
                                    hac hacVar18 = brhVar10.ax[i4];
                                    int i35 = i4 + 1;
                                    hac hacVar19 = brhVar16.ax[i35];
                                    hac hacVar20 = hacVar18.f19105e;
                                    crb crbVar11 = hacVar20 != null ? hacVar20.f19106f : null;
                                    hac hacVar21 = hacVar19.f19105e;
                                    crb crbVar12 = hacVar21 != null ? hacVar21.f19106f : null;
                                    hac hacVar22 = brhVar17.ax[i4];
                                    if (brhVar18 != null) {
                                        hacVar19 = brhVar18.ax[i35];
                                    }
                                    if (crbVar11 == null || crbVar12 == null) {
                                        brhVar2 = brhVar18;
                                    } else {
                                        float f11 = i2 == 0 ? brhVar19.cp : brhVar19.ct;
                                        int n3 = hacVar22.n();
                                        int n4 = hacVar19.n();
                                        crb crbVar13 = hacVar22.f19106f;
                                        crb crbVar14 = hacVar19.f19106f;
                                        crb crbVar15 = crbVar11;
                                        brhVar2 = brhVar18;
                                        bwoVar3.ae(crbVar13, crbVar15, n3, f11, crbVar12, crbVar14, n4, 7);
                                    }
                                } else {
                                    brhVar2 = brhVar18;
                                    if (!z && brhVar17 != null) {
                                        int i36 = arfVar.n;
                                        boolean z14 = i36 > 0 && arfVar.l == i36;
                                        brh brhVar22 = brhVar17;
                                        brh brhVar23 = brhVar22;
                                        while (brhVar22 != null) {
                                            hac[] hacVarArr9 = brhVar22.ax;
                                            brh brhVar24 = brhVar22.cf[i2];
                                            while (brhVar24 != null && brhVar24.aq == 8) {
                                                brhVar24 = brhVar24.cf[i2];
                                            }
                                            if (brhVar24 != null || brhVar22 == brhVar2) {
                                                hac hacVar23 = hacVarArr9[i4];
                                                crb crbVar16 = hacVar23.f19106f;
                                                hac hacVar24 = hacVar23.f19105e;
                                                crb crbVar17 = hacVar24 != null ? hacVar24.f19106f : null;
                                                if (brhVar23 != brhVar22) {
                                                    crbVar17 = brhVar23.ax[i4 + 1].f19106f;
                                                } else if (brhVar22 == brhVar17) {
                                                    hac hacVar25 = brhVar10.ax[i4].f19105e;
                                                    crbVar17 = hacVar25 != null ? hacVar25.f19106f : null;
                                                }
                                                int n5 = hacVar23.n();
                                                int i37 = i4 + 1;
                                                int n6 = hacVarArr9[i37].n();
                                                if (brhVar24 != null) {
                                                    hacVar5 = brhVar24.ax[i4];
                                                    crbVar3 = hacVar5.f19106f;
                                                } else {
                                                    hacVar5 = brhVar16.ax[i37].f19105e;
                                                    crbVar3 = hacVar5 != null ? hacVar5.f19106f : null;
                                                }
                                                crb crbVar18 = hacVarArr9[i37].f19106f;
                                                if (hacVar5 != null) {
                                                    n6 += hacVar5.n();
                                                }
                                                int n7 = brhVar23.ax[i37].n() + n5;
                                                if (crbVar16 != null && crbVar17 != null && crbVar3 != null && crbVar18 != null) {
                                                    if (brhVar22 == brhVar17) {
                                                        n7 = brhVar17.ax[i4].n();
                                                    }
                                                    if (brhVar22 == brhVar2) {
                                                        n6 = brhVar2.ax[i37].n();
                                                    }
                                                    brhVar5 = brhVar10;
                                                    brhVar6 = brhVar23;
                                                    i7 = 8;
                                                    bwoVar.ae(crbVar16, crbVar17, n7, 0.5f, crbVar3, crbVar18, n6, z14 ? 8 : 5);
                                                    if (brhVar22.aq == i7) {
                                                        brhVar6 = brhVar22;
                                                    }
                                                    brhVar22 = brhVar24;
                                                    brhVar23 = brhVar6;
                                                    brhVar10 = brhVar5;
                                                }
                                            }
                                            brhVar5 = brhVar10;
                                            brhVar6 = brhVar23;
                                            i7 = 8;
                                            if (brhVar22.aq == i7) {
                                            }
                                            brhVar22 = brhVar24;
                                            brhVar23 = brhVar6;
                                            brhVar10 = brhVar5;
                                        }
                                    } else if (z9 && brhVar17 != null) {
                                        int i38 = arfVar.n;
                                        boolean z15 = i38 <= 0 && arfVar.l == i38;
                                        brhVar3 = brhVar17;
                                        brh brhVar25 = brhVar3;
                                        while (brhVar3 != null) {
                                            hac[] hacVarArr10 = brhVar3.ax;
                                            brh brhVar26 = brhVar3.cf[i2];
                                            while (brhVar26 != null && brhVar26.aq == 8) {
                                                brhVar26 = brhVar26.cf[i2];
                                            }
                                            if (brhVar3 != brhVar17 && brhVar3 != brhVar2 && brhVar26 != null) {
                                                if (brhVar26 == brhVar2) {
                                                    brhVar26 = null;
                                                }
                                                hac hacVar26 = hacVarArr10[i4];
                                                crb crbVar19 = hacVar26.f19106f;
                                                int i39 = i4 + 1;
                                                crb crbVar20 = brhVar25.ax[i39].f19106f;
                                                int n8 = hacVar26.n();
                                                int n9 = hacVarArr10[i39].n();
                                                if (brhVar26 != null) {
                                                    hacVar4 = brhVar26.ax[i4];
                                                    crbVar2 = hacVar4.f19106f;
                                                    hac hacVar27 = hacVar4.f19105e;
                                                    crbVar = hacVar27 != null ? hacVar27.f19106f : null;
                                                } else {
                                                    hac hacVar28 = brhVar2.ax[i4];
                                                    crb crbVar21 = hacVar28 != null ? hacVar28.f19106f : null;
                                                    crbVar = hacVarArr10[i39].f19106f;
                                                    hacVar4 = hacVar28;
                                                    crbVar2 = crbVar21;
                                                }
                                                if (hacVar4 != null) {
                                                    n9 += hacVar4.n();
                                                }
                                                int n10 = brhVar25.ax[i39].n() + n8;
                                                int i40 = z15 ? 8 : 4;
                                                if (crbVar19 == null || crbVar20 == null || crbVar2 == null || crbVar == null) {
                                                    brhVar4 = brhVar26;
                                                } else {
                                                    brhVar4 = brhVar26;
                                                    bwoVar.ae(crbVar19, crbVar20, n10, 0.5f, crbVar2, crbVar, n9, i40);
                                                }
                                                brhVar26 = brhVar4;
                                            }
                                            if (brhVar3.aq != 8) {
                                                brhVar25 = brhVar3;
                                            }
                                            brhVar3 = brhVar26;
                                        }
                                        bwoVar2 = bwoVar;
                                        hac hacVar29 = brhVar17.ax[i4];
                                        hacVar = brhVar10.ax[i4].f19105e;
                                        int i41 = i4 + 1;
                                        hacVar2 = brhVar2.ax[i41];
                                        hacVar3 = brhVar16.ax[i41].f19105e;
                                        if (hacVar != null) {
                                            if (brhVar17 != brhVar2) {
                                                bwoVar2.x(hacVar29.f19106f, hacVar.f19106f, hacVar29.n(), 5);
                                            } else if (hacVar3 != null) {
                                                bwoVar2.ae(hacVar29.f19106f, hacVar.f19106f, hacVar29.n(), 0.5f, hacVar2.f19106f, hacVar3.f19106f, hacVar2.n(), 5);
                                            }
                                        }
                                        if (hacVar3 != null && brhVar17 != brhVar2) {
                                            bwoVar2.x(hacVar2.f19106f, hacVar3.f19106f, -hacVar2.n(), 5);
                                        }
                                        if ((!z || z9) && brhVar17 != null && brhVar17 != brhVar2) {
                                            hac[] hacVarArr11 = brhVar17.ax;
                                            hacVar6 = hacVarArr11[i4];
                                            if (brhVar2 == null) {
                                                brhVar2 = brhVar17;
                                            }
                                            hacVarArr = brhVar2.ax;
                                            i8 = i4 + 1;
                                            hacVar7 = hacVarArr[i8];
                                            hac hacVar30 = hacVar6.f19105e;
                                            crbVar4 = hacVar30 != null ? hacVar30.f19106f : null;
                                            hac hacVar31 = hacVar7.f19105e;
                                            crbVar5 = hacVar31 != null ? hacVar31.f19106f : null;
                                            if (brhVar16 != brhVar2) {
                                                hac hacVar32 = brhVar16.ax[i8].f19105e;
                                                crbVar5 = hacVar32 != null ? hacVar32.f19106f : null;
                                            }
                                            if (brhVar17 == brhVar2) {
                                                hacVar7 = hacVarArr11[i8];
                                            }
                                            if (crbVar4 == null && crbVar5 != null) {
                                                bwoVar2.ae(hacVar6.f19106f, crbVar4, hacVar6.n(), 0.5f, crbVar5, hacVar7.f19106f, hacVarArr[i8].n(), 5);
                                            }
                                        }
                                    }
                                }
                                bwoVar2 = bwoVar;
                                if (!z) {
                                }
                                hac[] hacVarArr112 = brhVar17.ax;
                                hacVar6 = hacVarArr112[i4];
                                if (brhVar2 == null) {
                                }
                                hacVarArr = brhVar2.ax;
                                i8 = i4 + 1;
                                hacVar7 = hacVarArr[i8];
                                hac hacVar302 = hacVar6.f19105e;
                                if (hacVar302 != null) {
                                }
                                hac hacVar312 = hacVar7.f19105e;
                                if (hacVar312 != null) {
                                }
                                if (brhVar16 != brhVar2) {
                                }
                                if (brhVar17 == brhVar2) {
                                }
                                if (crbVar4 == null) {
                                    bwoVar2.ae(hacVar6.f19106f, crbVar4, hacVar6.n(), 0.5f, crbVar5, hacVar7.f19106f, hacVarArr[i8].n(), 5);
                                }
                            }
                        }
                        if (z13) {
                            hac hacVar33 = hacVar15.f19105e;
                            if (hacVar33.f19102b == aepVar2) {
                                bwoVar3.x(hacVar15.f19106f, hacVar33.f19106f, -hacVar15.n(), 4);
                            }
                        }
                        bwoVar3.aj(hacVar15.f19106f, brhVar16.ax[i32].f19105e.f19106f, -hacVar15.n(), 6);
                        if (z4) {
                        }
                        arrayList2 = arfVar.f10699a;
                        if (arrayList2 != null) {
                            if (arfVar.f10702d) {
                                f3 = arfVar.n;
                            }
                            brh brhVar202 = null;
                            i9 = 0;
                            float f82 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            while (i9 < size) {
                            }
                        }
                        if (brhVar17 == null) {
                        }
                        brhVar2 = brhVar18;
                        if (!z) {
                        }
                        if (z9) {
                            int i382 = arfVar.n;
                            if (i382 <= 0) {
                            }
                            brhVar3 = brhVar17;
                            brh brhVar252 = brhVar3;
                            while (brhVar3 != null) {
                            }
                            bwoVar2 = bwoVar;
                            hac hacVar292 = brhVar17.ax[i4];
                            hacVar = brhVar10.ax[i4].f19105e;
                            int i412 = i4 + 1;
                            hacVar2 = brhVar2.ax[i412];
                            hacVar3 = brhVar16.ax[i412].f19105e;
                            if (hacVar != null) {
                            }
                            if (hacVar3 != null) {
                                bwoVar2.x(hacVar2.f19106f, hacVar3.f19106f, -hacVar2.n(), 5);
                            }
                            if (!z) {
                            }
                            hac[] hacVarArr1122 = brhVar17.ax;
                            hacVar6 = hacVarArr1122[i4];
                            if (brhVar2 == null) {
                            }
                            hacVarArr = brhVar2.ax;
                            i8 = i4 + 1;
                            hacVar7 = hacVarArr[i8];
                            hac hacVar3022 = hacVar6.f19105e;
                            if (hacVar3022 != null) {
                            }
                            hac hacVar3122 = hacVar7.f19105e;
                            if (hacVar3122 != null) {
                            }
                            if (brhVar16 != brhVar2) {
                            }
                            if (brhVar17 == brhVar2) {
                            }
                            if (crbVar4 == null) {
                            }
                        }
                        bwoVar2 = bwoVar;
                        if (!z) {
                        }
                        hac[] hacVarArr11222 = brhVar17.ax;
                        hacVar6 = hacVarArr11222[i4];
                        if (brhVar2 == null) {
                        }
                        hacVarArr = brhVar2.ax;
                        i8 = i4 + 1;
                        hacVar7 = hacVarArr[i8];
                        hac hacVar30222 = hacVar6.f19105e;
                        if (hacVar30222 != null) {
                        }
                        hac hacVar31222 = hacVar7.f19105e;
                        if (hacVar31222 != null) {
                        }
                        if (brhVar16 != brhVar2) {
                        }
                        if (brhVar17 == brhVar2) {
                        }
                        if (crbVar4 == null) {
                        }
                    }
                }
                if (z4) {
                }
                arrayList2 = arfVar.f10699a;
                if (arrayList2 != null) {
                }
                if (brhVar17 == null) {
                }
                brhVar2 = brhVar18;
                if (!z) {
                }
                if (z9) {
                }
                bwoVar2 = bwoVar;
                if (!z) {
                }
                hac[] hacVarArr112222 = brhVar17.ax;
                hacVar6 = hacVarArr112222[i4];
                if (brhVar2 == null) {
                }
                hacVarArr = brhVar2.ax;
                i8 = i4 + 1;
                hacVar7 = hacVarArr[i8];
                hac hacVar302222 = hacVar6.f19105e;
                if (hacVar302222 != null) {
                }
                hac hacVar312222 = hacVar7.f19105e;
                if (hacVar312222 != null) {
                }
                if (brhVar16 != brhVar2) {
                }
                if (brhVar17 == brhVar2) {
                }
                if (crbVar4 == null) {
                }
            } else {
                i6 = i17;
                arfVarArr2 = arfVarArr4;
            }
            i18 = i5 + 1;
            aepVar2 = aepVar;
            bwoVar3 = bwoVar;
            arrayList4 = arrayList;
            i17 = i6;
            arfVarArr4 = arfVarArr2;
        }
    }

    public static void ah(Context context, String str, String str2) {
        if (p != null) {
            Bundle bundle = new Bundle();
            bundle.putString("item_id", str2);
            acq.br(context, str2, bundle);
            acq.br(context, str, bundle);
        }
    }

    public static int ai(int i2, int i3, String str) {
        return (int) aj(str, i2, 1, (i3 & 8) != 0 ? he.UNDEFINED_ITEM_ID : 2097150);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long aj(String str, long j2, long j3, long j4) {
        String str2;
        boolean z;
        String str3;
        Long valueOf;
        int i2 = fst.f17352a;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException unused) {
            str2 = null;
        }
        if (str2 == null) {
            return j2;
        }
        egh.al(10);
        int length = str2.length();
        if (length != 0) {
            int i3 = 0;
            char charAt = str2.charAt(0);
            long j5 = -9223372036854775807L;
            if (bff.ad(charAt, 48) < 0) {
                z = true;
                if (length != 1) {
                    if (charAt == '+') {
                        i3 = 1;
                    } else if (charAt == '-') {
                        j5 = Long.MIN_VALUE;
                        i3 = 1;
                        long j6 = 0;
                        long j7 = -256204778801521550L;
                        while (i3 < length) {
                            int digit = Character.digit((int) str2.charAt(i3), 10);
                            if (digit >= 0) {
                                if (j6 >= j7) {
                                    str3 = str2;
                                } else if (j7 == -256204778801521550L) {
                                    str3 = str2;
                                    j7 = j5 / 10;
                                    if (j6 < j7) {
                                        valueOf = null;
                                        break;
                                    }
                                }
                                long j8 = j6 * 10;
                                long j9 = digit;
                                if (j8 < j5 + j9) {
                                    valueOf = null;
                                    break;
                                }
                                j6 = j8 - j9;
                                i3++;
                                str2 = str3;
                            }
                        }
                        str3 = str2;
                        valueOf = !z ? Long.valueOf(j6) : Long.valueOf(-j6);
                        if (valueOf == null) {
                            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + str3 + '\'').toString());
                        }
                        long longValue = valueOf.longValue();
                        if (j3 <= longValue && longValue <= j4) {
                            return longValue;
                        }
                        throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + longValue + '\'').toString());
                    }
                }
            }
            z = false;
            long j62 = 0;
            long j72 = -256204778801521550L;
            while (i3 < length) {
            }
            str3 = str2;
            if (!z) {
            }
            if (valueOf == null) {
            }
        }
        str3 = str2;
        valueOf = null;
        if (valueOf == null) {
        }
    }

    public static gey ak(gwa gwaVar, dpa dpaVar, ArrayList arrayList, boolean z) {
        gey geyVar;
        byh.bf(1, "reduce", arrayList);
        byh.ba("reduce", 2, arrayList);
        gey aj = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
        if (!(aj instanceof fdk)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (arrayList.size() == 2) {
            geyVar = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
            if (geyVar instanceof enl) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (gwaVar.s() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            geyVar = null;
        }
        fdk fdkVar = (fdk) aj;
        int s = gwaVar.s();
        int i2 = z ? 0 : s - 1;
        int i3 = z ? s - 1 : 0;
        int i4 = true == z ? 1 : -1;
        if (geyVar == null) {
            geyVar = gwaVar.g(i2);
            i2 += i4;
        }
        while ((i3 - i2) * i4 >= 0) {
            if (gwaVar.f(i2)) {
                geyVar = fdkVar.e(dpaVar, Arrays.asList(geyVar, gwaVar.g(i2), new hbz(Double.valueOf(i2)), gwaVar));
                if (geyVar instanceof enl) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i2 += i4;
            } else {
                i2 += i4;
            }
        }
        return geyVar;
    }

    public static void al(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void am(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            am(((InsetDrawable) drawable).getDrawable());
            return;
        }
        if (drawable instanceof ai) {
            am(((brt) ((ai) drawable)).h);
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            Drawable child = drawableContainerState.getChild(i2);
            if (child != null) {
                am(child);
            }
        }
    }

    public static gwa an(gwa gwaVar, dpa dpaVar, dxk dxkVar, Boolean bool, Boolean bool2) {
        gwa gwaVar2 = new gwa();
        Iterator t = gwaVar.t();
        while (t.hasNext()) {
            int intValue = ((Integer) t.next()).intValue();
            if (gwaVar.f(intValue)) {
                gey e2 = dxkVar.e(dpaVar, Arrays.asList(gwaVar.g(intValue), new hbz(Double.valueOf(intValue)), gwaVar));
                if (e2.zzg().equals(bool)) {
                    break;
                }
                if (bool2 == null || e2.zzg().equals(bool2)) {
                    gwaVar2.r(intValue, e2);
                }
            }
        }
        return gwaVar2;
    }

    public static void ao(Context context, String str) {
        if (p != null) {
            Bundle bundle = new Bundle();
            bundle.putString("item_id", str);
            acq.br(context, str, bundle);
        }
    }

    public static int ap(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return id.y(drawable);
        }
        if (!f15132g) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", null);
                m = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f15132g = true;
        }
        Method method = m;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, null)).intValue();
        } catch (Exception unused2) {
            m = null;
            return 0;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static cld aq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3143097:
                if (str.equals("find")) {
                    c2 = 0;
                    break;
                }
                break;
            case 96955127:
                if (str.equals("exist")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c2 = 2;
                    break;
                }
                break;
            case 2056988195:
                if (str.equals("isDigit")) {
                    c2 = 3;
                    break;
                }
                break;
        }
        int i2 = 16;
        switch (c2) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0098 A[Catch: NumberFormatException -> 0x00ac, LOOP:3: B:25:0x006a->B:35:0x0098, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:35:0x0098, B:39:0x009e, B:44:0x00b3, B:56:0x00b6), top: B:21:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e A[Catch: NumberFormatException -> 0x00ac, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:35:0x0098, B:39:0x009e, B:44:0x00b3, B:56:0x00b6), top: B:21:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b3 A[Catch: NumberFormatException -> 0x00ac, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:35:0x0098, B:39:0x009e, B:44:0x00b3, B:56:0x00b6), top: B:21:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static jv[] ar(String str) {
        int i2;
        String trim;
        float[] fArr;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i4 < str.length()) {
            while (i4 < str.length()) {
                char charAt = str.charAt(i4);
                if ((charAt - 'Z') * (charAt - 'A') > 0) {
                    if ((charAt - 'z') * (charAt - 'a') > 0) {
                        continue;
                        i4++;
                    }
                }
                if (charAt != 'e' && charAt != 'E') {
                    trim = str.substring(i5, i4).trim();
                    if (!trim.isEmpty()) {
                        if (trim.charAt(i3) == 'z' || trim.charAt(i3) == 'Z') {
                            fArr = new float[i3];
                        } else {
                            try {
                                float[] fArr2 = new float[trim.length()];
                                int length = trim.length();
                                int i6 = 1;
                                int i7 = 0;
                                while (i6 < length) {
                                    boolean z = false;
                                    boolean z2 = false;
                                    boolean z3 = false;
                                    boolean z4 = false;
                                    for (int i8 = i6; i8 < trim.length(); i8++) {
                                        char charAt2 = trim.charAt(i8);
                                        if (charAt2 != ' ') {
                                            if (charAt2 != 'E' && charAt2 != 'e') {
                                                switch (charAt2) {
                                                    case ',':
                                                        break;
                                                    case '-':
                                                        if (i8 != i6 && !z) {
                                                            z = false;
                                                            z3 = true;
                                                            z4 = true;
                                                            break;
                                                        }
                                                        z = false;
                                                        break;
                                                    case '.':
                                                        if (!z2) {
                                                            z = false;
                                                            z2 = true;
                                                            break;
                                                        }
                                                        z = false;
                                                        z3 = true;
                                                        z4 = true;
                                                        break;
                                                    default:
                                                        z = false;
                                                        break;
                                                }
                                            } else {
                                                z = true;
                                            }
                                            if (!z3) {
                                                if (i6 < i8) {
                                                    fArr2[i7] = Float.parseFloat(trim.substring(i6, i8));
                                                    i7++;
                                                }
                                                i6 = !z4 ? i8 : i8 + 1;
                                            }
                                        }
                                        z = false;
                                        z3 = true;
                                        if (!z3) {
                                        }
                                    }
                                    if (i6 < i8) {
                                    }
                                    if (!z4) {
                                    }
                                }
                                fArr = t(fArr2, i7);
                                i3 = 0;
                            } catch (NumberFormatException e2) {
                                throw new RuntimeException(tn.ad("error in parsing \"", trim, "\""), e2);
                            }
                        }
                        arrayList.add(new jv(trim.charAt(i3), fArr));
                    }
                    i5 = i4;
                    i4++;
                    i3 = 0;
                }
                i4++;
            }
            trim = str.substring(i5, i4).trim();
            if (!trim.isEmpty()) {
            }
            i5 = i4;
            i4++;
            i3 = 0;
        }
        if (i4 - i5 != 1 || i5 >= str.length()) {
            i2 = 0;
        } else {
            i2 = 0;
            arrayList.add(new jv(str.charAt(i5), new float[0]));
        }
        return (jv[]) arrayList.toArray(new jv[i2]);
    }

    public static Path as(String str) {
        Path path = new Path();
        try {
            jv.d(ar(str), path);
            return path;
        } catch (RuntimeException e2) {
            throw new RuntimeException("Error in parsing ".concat(str), e2);
        }
    }

    public static final boolean at(Context context) {
        gez e2 = hca.e(context);
        if (e2 == null) {
            e2 = new gez(false);
        }
        String[] strArr = (String[]) e2.f18008e;
        if (!acw.n(strArr)) {
            for (String str : strArr) {
                if (context.getResources().getInteger(R.integer.skst) == 2) {
                    if (str != null && str.length() != 0) {
                        char[] charArray = str.toCharArray();
                        try {
                            if (charArray[0] == charArray[36] && charArray[1] == charArray[24]) {
                                int i2 = 0;
                                while (true) {
                                    if (i2 < 13) {
                                        char c2 = charArray[(i2 * 3) + 2];
                                        i2++;
                                        if (c2 != charArray[(i2 * 3) + 2]) {
                                            break;
                                        }
                                    } else if (charArray[3] == charArray[28] && charArray[46] == 'E') {
                                        if (charArray[48] <= 0) {
                                            if (charArray[87] > 0) {
                                                continue;
                                            }
                                            int i3 = 0;
                                            for (char c3 : charArray) {
                                                i3 += c3;
                                            }
                                            int i4 = i3 - 56;
                                            if (i3 <= 2779 && i3 >= 2775 && i4 == 2723) {
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception unused) {
                            continue;
                        }
                    }
                } else {
                    if (str != null && str.length() != 0) {
                        char[] charArray2 = str.toCharArray();
                        if (charArray2[0] == charArray2[25] && charArray2[1] == charArray2[10]) {
                            int i5 = 0;
                            while (true) {
                                if (i5 < 13) {
                                    char c4 = charArray2[(i5 * 3) + 2];
                                    i5++;
                                    if (c4 != charArray2[(i5 * 3) + 2]) {
                                        break;
                                    }
                                } else if (charArray2[7] == charArray2[45] && charArray2[43] == 'E') {
                                    try {
                                        if (charArray2[48] <= 0 && charArray2[87] <= 0) {
                                        }
                                    } catch (Exception unused2) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            hca.f19208b.set(buj.be(3, 59));
            return false;
        }
        return true;
    }

    public static void au(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    public static void av(Context context, String str, String str2) {
        if (p != null) {
            Bundle bundle = new Bundle();
            bundle.putString("item_id", str2);
            acq.br(context, str, bundle);
        }
    }

    public static Drawable aw(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23 || (drawable instanceof djx)) {
            return drawable;
        }
        brt brtVar = new brt();
        brtVar.f12091d = brtVar.n();
        brtVar.p(drawable);
        if (brt.f12088a == null) {
            try {
                brt.f12088a = Drawable.class.getDeclaredMethod("isProjected", null);
            } catch (Exception unused) {
            }
        }
        return brtVar;
    }

    public static int ax(zzffo zzffoVar) {
        if (zzffoVar.zzr) {
            return 2;
        }
        aeh aehVar = zzffoVar.zzd;
        acl aclVar = aehVar.zzs;
        if (aclVar == null && aehVar.zzx == null) {
            return 1;
        }
        if (aclVar == null || aehVar.zzx == null) {
            return aclVar != null ? 3 : 4;
        }
        return 5;
    }

    public static boolean ay(jv[] jvVarArr, jv[] jvVarArr2) {
        if (jvVarArr == null || jvVarArr2 == null || jvVarArr.length != jvVarArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < jvVarArr.length; i2++) {
            jv jvVar = jvVarArr[i2];
            char c2 = jvVar.f19514a;
            jv jvVar2 = jvVarArr2[i2];
            if (c2 != jvVar2.f19514a || jvVar.f19515b.length != jvVar2.f19515b.length) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String az(String str) {
        char c2;
        if (TextUtils.isEmpty(str)) {
            return "unspecified";
        }
        switch (str.hashCode()) {
            case 1743582862:
                if (str.equals("requester_type_0")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582863:
                if (str.equals("requester_type_1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582864:
                if (str.equals("requester_type_2")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582865:
                if (str.equals("requester_type_3")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582866:
                if (str.equals("requester_type_4")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582867:
                if (str.equals("requester_type_5")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582868:
                if (str.equals("requester_type_6")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582869:
                if (str.equals("requester_type_7")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1743582870:
                if (str.equals("requester_type_8")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return "0";
            case 1:
                return "1";
            case 2:
                return "2";
            case 3:
                return "3";
            case 4:
                return "4";
            case 5:
                return "5";
            case 6:
                return "6";
            case 7:
                return "7";
            case '\b':
                return "8";
            default:
                return str;
        }
    }

    public static boolean ba(fol folVar, fol folVar2, fol folVar3, fol folVar4) {
        fol folVar5;
        fol folVar6;
        fol folVar7 = fol.FIXED;
        return (folVar3 == folVar7 || folVar3 == (folVar6 = fol.WRAP_CONTENT) || (folVar3 == fol.MATCH_PARENT && folVar != folVar6)) || (folVar4 == folVar7 || folVar4 == (folVar5 = fol.WRAP_CONTENT) || (folVar4 == fol.MATCH_PARENT && folVar2 != folVar5));
    }

    public static boolean bb(Drawable drawable, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return id.o(drawable, i2);
        }
        if (!i) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f15131f = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            i = true;
        }
        Method method = f15131f;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i2));
                return true;
            } catch (Exception unused2) {
                f15131f = null;
            }
        }
        return false;
    }

    public static boolean bc() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, 2022);
        calendar.set(2, 8);
        calendar.set(5, 27);
        calendar.set(11, 23);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        return System.currentTimeMillis() >= calendar.getTimeInMillis();
    }

    public static final int bd(Context context) {
        return (!bc() || at(context)) ? buj.be(0, 3289) + 2246 : buj.be(0, 2245);
    }

    public static void s(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    public static float[] t(float[] fArr, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int min = Math.min(i2, length);
        float[] fArr2 = new float[i2];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    public static jv[] u(jv[] jvVarArr) {
        jv[] jvVarArr2 = new jv[jvVarArr.length];
        for (int i2 = 0; i2 < jvVarArr.length; i2++) {
            jvVarArr2[i2] = new jv(jvVarArr[i2]);
        }
        return jvVarArr2;
    }

    public static void v(long j2, String str) {
        if (j2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j2 + ") must be >= 0");
    }

    public static String w(aeh aehVar) {
        Bundle bundle;
        return (aehVar == null || (bundle = aehVar.zzc) == null) ? "unspecified" : bundle.getString("query_info_type");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class x(aas aasVar) {
        bff.p(aasVar, "<this>");
        Class e2 = ((hcp) aasVar).e();
        if (e2.isPrimitive()) {
            String name = e2.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.class;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return Long.class;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        return Boolean.class;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.class;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    break;
            }
        }
        return e2;
    }

    public static void y(Drawable drawable, int i2) {
        drawable.setTint(i2);
    }

    public static void z(zzdsr zzdsrVar, String str, Pair... pairArr) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgO)).booleanValue()) {
            zzcaj.zza.execute(new eax(zzdsrVar, str, pairArr, 23, false));
        }
    }

    public void be(int i2) {
        new Handler(Looper.getMainLooper()).post(new cdl(this, i2, 1));
    }

    public abstract void c(int i2);

    public abstract void d(Typeface typeface);
}
