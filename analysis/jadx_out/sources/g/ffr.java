package g;

import android.content.Context;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.service.quicksettings.TileService;
import android.view.MotionEvent;
import android.view.ViewGroup;
import androidx.work.impl.WorkDatabase_Impl;
import com.android.billingclient.api.Purchase;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzapt;
import com.google.android.gms.internal.ads.zzapy;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbqh;
import com.google.android.gms.internal.ads.zzbqw;
import com.google.android.gms.internal.ads.zzbvp;
import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzdju;
import com.google.android.gms.internal.ads.zzdku;
import com.google.android.gms.internal.ads.zzdrv;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgee;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ffr implements bwb, fpt, bmm, dzt, com.tencent.bugly.proguard.ah, zzapt, gon, amw, zzbfm, zzgee {

    /* renamed from: c, reason: collision with root package name */
    public Object f16719c;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f16720e;

    /* renamed from: f, reason: collision with root package name */
    public Object f16721f;

    public ffr(int i) {
        this.f16720e = i;
        switch (i) {
            case 13:
                this.f16721f = new HashMap();
                this.f16719c = new avr(6);
                avr avrVar = new avr(0);
                gdt gdtVar = gdt.BITWISE_AND;
                ArrayList arrayList = avrVar.f10937a;
                arrayList.add(gdtVar);
                arrayList.add(gdt.BITWISE_LEFT_SHIFT);
                arrayList.add(gdt.BITWISE_NOT);
                arrayList.add(gdt.BITWISE_OR);
                arrayList.add(gdt.BITWISE_RIGHT_SHIFT);
                arrayList.add(gdt.BITWISE_UNSIGNED_RIGHT_SHIFT);
                arrayList.add(gdt.BITWISE_XOR);
                s(avrVar);
                avr avrVar2 = new avr(1);
                gdt gdtVar2 = gdt.EQUALS;
                ArrayList arrayList2 = avrVar2.f10937a;
                arrayList2.add(gdtVar2);
                arrayList2.add(gdt.GREATER_THAN);
                arrayList2.add(gdt.GREATER_THAN_EQUALS);
                arrayList2.add(gdt.IDENTITY_EQUALS);
                arrayList2.add(gdt.IDENTITY_NOT_EQUALS);
                arrayList2.add(gdt.LESS_THAN);
                arrayList2.add(gdt.LESS_THAN_EQUALS);
                arrayList2.add(gdt.NOT_EQUALS);
                s(avrVar2);
                avr avrVar3 = new avr(2);
                gdt gdtVar3 = gdt.APPLY;
                ArrayList arrayList3 = avrVar3.f10937a;
                arrayList3.add(gdtVar3);
                arrayList3.add(gdt.BLOCK);
                arrayList3.add(gdt.BREAK);
                arrayList3.add(gdt.CASE);
                arrayList3.add(gdt.DEFAULT);
                arrayList3.add(gdt.CONTINUE);
                arrayList3.add(gdt.DEFINE_FUNCTION);
                arrayList3.add(gdt.FN);
                arrayList3.add(gdt.IF);
                arrayList3.add(gdt.QUOTE);
                arrayList3.add(gdt.RETURN);
                arrayList3.add(gdt.SWITCH);
                arrayList3.add(gdt.TERNARY);
                s(avrVar3);
                avr avrVar4 = new avr(3);
                gdt gdtVar4 = gdt.AND;
                ArrayList arrayList4 = avrVar4.f10937a;
                arrayList4.add(gdtVar4);
                arrayList4.add(gdt.NOT);
                arrayList4.add(gdt.OR);
                s(avrVar4);
                avr avrVar5 = new avr(4);
                gdt gdtVar5 = gdt.FOR_IN;
                ArrayList arrayList5 = avrVar5.f10937a;
                arrayList5.add(gdtVar5);
                arrayList5.add(gdt.FOR_IN_CONST);
                arrayList5.add(gdt.FOR_IN_LET);
                arrayList5.add(gdt.FOR_LET);
                arrayList5.add(gdt.FOR_OF);
                arrayList5.add(gdt.FOR_OF_CONST);
                arrayList5.add(gdt.FOR_OF_LET);
                arrayList5.add(gdt.WHILE);
                s(avrVar5);
                avr avrVar6 = new avr(5);
                gdt gdtVar6 = gdt.ADD;
                ArrayList arrayList6 = avrVar6.f10937a;
                arrayList6.add(gdtVar6);
                arrayList6.add(gdt.DIVIDE);
                arrayList6.add(gdt.MODULUS);
                arrayList6.add(gdt.MULTIPLY);
                arrayList6.add(gdt.NEGATE);
                arrayList6.add(gdt.POST_DECREMENT);
                arrayList6.add(gdt.POST_INCREMENT);
                arrayList6.add(gdt.PRE_DECREMENT);
                arrayList6.add(gdt.PRE_INCREMENT);
                arrayList6.add(gdt.SUBTRACT);
                s(avrVar6);
                avr avrVar7 = new avr(7);
                gdt gdtVar7 = gdt.ASSIGN;
                ArrayList arrayList7 = avrVar7.f10937a;
                arrayList7.add(gdtVar7);
                arrayList7.add(gdt.CONST);
                arrayList7.add(gdt.CREATE_ARRAY);
                arrayList7.add(gdt.CREATE_OBJECT);
                arrayList7.add(gdt.EXPRESSION_LIST);
                arrayList7.add(gdt.GET);
                arrayList7.add(gdt.GET_INDEX);
                arrayList7.add(gdt.GET_PROPERTY);
                arrayList7.add(gdt.NULL);
                arrayList7.add(gdt.SET_PROPERTY);
                arrayList7.add(gdt.TYPEOF);
                arrayList7.add(gdt.UNDEFINED);
                arrayList7.add(gdt.VAR);
                s(avrVar7);
                break;
            default:
                this.f16721f = cwx.ad;
                this.f16719c = new LinkedHashSet();
                break;
        }
    }

    public /* synthetic */ ffr(int i, Object obj, Object obj2, boolean z) {
        this.f16720e = i;
        this.f16719c = obj;
        this.f16721f = obj2;
    }

    public /* synthetic */ ffr(int i, boolean z) {
        this.f16720e = i;
    }

    public ffr(Context context, djs djsVar) {
        ab abVar;
        this.f16720e = 17;
        gez gezVar = new gez(8);
        try {
            crh.f(context);
            abVar = crh.f13373a;
        } catch (Throwable unused) {
            gezVar.f18010g = true;
        }
        if (abVar == null) {
            throw new IllegalStateException("Not initialized!");
        }
        fpd g2 = ((crh) abVar.f9894f.get()).g(dzj.f15124b);
        cep cepVar = new cep("proto");
        cfg cfgVar = new cfg(20);
        Set set = (Set) g2.f17190f;
        if (!set.contains(cepVar)) {
            throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", cepVar, set));
        }
        gezVar.f18008e = new dzh((ku) g2.f17187c, cepVar, cfgVar, (crh) g2.f17188d);
        this.f16719c = gezVar;
        this.f16721f = djsVar;
    }

    public ffr(WorkDatabase_Impl workDatabase_Impl) {
        this.f16720e = 0;
        this.f16721f = workDatabase_Impl;
        this.f16719c = new sw(workDatabase_Impl, 3);
    }

    public ffr(hed hedVar) {
        this.f16720e = 6;
        this.f16721f = hedVar;
        this.f16719c = hedVar.am.f12631ab;
    }

    public ffr(md mdVar) {
        this.f16720e = 8;
        this.f16719c = mdVar;
    }

    public /* synthetic */ ffr(Object obj) {
        this.f16720e = 7;
        this.f16719c = obj;
        this.f16721f = new ArrayList();
    }

    public /* synthetic */ ffr(Object obj, int i, Object obj2) {
        this.f16720e = i;
        this.f16721f = obj;
        this.f16719c = obj2;
    }

    public static eek g(yu yuVar, cwx cwxVar, cwx cwxVar2) {
        eek eekVar = new eek(hay.AGET, 2);
        eekVar.ax(gsh.ak(yuVar, 0, cwxVar2));
        eekVar._an(gsh.ak(yuVar, 1, new aoe(cwxVar)));
        eekVar._an(new gks(yuVar.m(2), cwx.aq));
        return eekVar;
    }

    public static adz h(yu yuVar, cwx cwxVar, cwx cwxVar2) {
        adz adzVar = new adz(hay.CAST, cwxVar2, 1);
        adzVar.ax(gsh.ai(yuVar, 0, cwxVar2));
        adzVar._an(new gks(yuVar.m(1), cwxVar));
        return adzVar;
    }

    public static ame i(yu yuVar, bvj bvjVar, cwx cwxVar) {
        int i = ame.f10464a;
        cff cffVar = cwx.an;
        gks ai = gsh.ai(yuVar, 0, (cwxVar == cffVar && bvjVar.c()) ? cwx.x : cwxVar);
        if (cwxVar == cffVar && bvjVar.c()) {
            cwxVar = cwx.ae;
        }
        int i2 = yuVar.i();
        if (i2 == 2) {
            return new ame(bvjVar, ai, new gks(yuVar.m(0), cwxVar), new gks(yuVar.m(1), cwxVar));
        }
        if (i2 == 3) {
            return new ame(bvjVar, ai, new gks(yuVar.m(1), cwxVar), new gks(yuVar.m(2), cwxVar));
        }
        throw new gck("Unexpected registers count in " + yuVar);
    }

    public static eek j(yu yuVar, cwx cwxVar) {
        eek eekVar = new eek(hay.NEG, 1);
        eekVar.ax(gsh.ai(yuVar, 0, cwxVar));
        eekVar._an(new gks(yuVar.m(1), cwxVar));
        return eekVar;
    }

    public static fs k(yu yuVar, boolean z) {
        cwx k = cwx.ba(yuVar.g()).k();
        k.getClass();
        boolean z2 = k instanceof cff;
        int i = yuVar.i();
        gsh[] gshVarArr = new gsh[i];
        if (z) {
            int m = yuVar.m(0);
            for (int i2 = 0; i2 < i; i2++) {
                gshVarArr[i2] = gsh.af(m, k, z2);
                m++;
            }
        } else {
            for (int i3 = 0; i3 < i; i3++) {
                gshVarArr[i3] = gsh.af(yuVar.m(i3), k, z2);
            }
        }
        fs fsVar = new fs(i, k);
        for (int i4 = 0; i4 < i; i4++) {
            fsVar._an(gshVarArr[i4]);
        }
        return fsVar;
    }

    public static eek l(yu yuVar, hay hayVar, cwx cwxVar) {
        eek eekVar = new eek(hayVar, 2);
        eekVar.ax(gsh.ai(yuVar, 0, cwx.an));
        eekVar._an(new gks(yuVar.m(1), cwxVar));
        eekVar._an(new gks(yuVar.m(2), cwxVar));
        return eekVar;
    }

    public static eek m(yu yuVar, cwx cwxVar, cwx cwxVar2) {
        eek eekVar = new eek(hay.APUT, 3);
        cff cffVar = cwx.an;
        eekVar._an(gsh.ak(yuVar, 1, new aoe(cwxVar)));
        eekVar._an(new gks(yuVar.m(2), cwx.aq));
        eekVar._an(gsh.ak(yuVar, 0, cwxVar2));
        return eekVar;
    }

    public static ame n(yu yuVar, bvj bvjVar, cwx cwxVar) {
        int i = ame.f10464a;
        cff cffVar = cwx.an;
        gks ai = gsh.ai(yuVar, 0, (cwxVar == cffVar && bvjVar.c()) ? cwx.x : cwxVar);
        if (cwxVar == cffVar && bvjVar.c()) {
            cwxVar = cwx.ae;
        }
        ekh ag = gsh.ag(yuVar.a(), cwxVar);
        int i2 = yuVar.i();
        if (i2 == 1) {
            return new ame(bvjVar, ai, new gks(yuVar.m(0), cwxVar), ag);
        }
        if (i2 == 2) {
            return new ame(bvjVar, ai, new gks(yuVar.m(1), cwxVar), ag);
        }
        throw new gck("Unexpected registers count in " + yuVar);
    }

    public static eek o(hay hayVar, gks gksVar, gsh gshVar) {
        eek eekVar = new eek(hayVar, 1);
        eekVar.ax(gksVar);
        eekVar._an(gshVar);
        return eekVar;
    }

    @Override // com.tencent.bugly.proguard.ah
    public void a(boolean z, String str) {
        if (z) {
            com.tencent.bugly.proguard.al.c("[UserInfo] Successfully uploaded user info.", new Object[0]);
            long currentTimeMillis = System.currentTimeMillis();
            for (UserInfoBean userInfoBean : (List) this.f16721f) {
                userInfoBean.f9492f = currentTimeMillis;
                ((com.tencent.bugly.proguard.r) this.f16719c).a(userInfoBean, true);
            }
        }
    }

    public void aa(efn efnVar) {
        try {
            gez gezVar = (gez) this.f16719c;
            aqa f2 = fjq.f();
            f2.a((djs) this.f16721f);
            f2.f();
            fjq.g((fjq) f2.f14803d, efnVar);
            gezVar.h((fjq) f2.g());
        } catch (Throwable unused) {
            int i = gbs.f17875a;
        }
    }

    public bzm ab(yu yuVar, boolean z) {
        hed hedVar = (hed) this.f16721f;
        bzm bzmVar = new bzm(gsh.ai(yuVar, 0, cwx.aq), yuVar.getTarget(), z);
        gqi l = yuVar.l();
        if (l != null) {
            bx bxVar = new bx((ddo) l);
            int target = yuVar.getTarget();
            bzmVar.f12515d = bxVar;
            bzmVar.x = target;
        }
        hedVar.w(csv.COMPUTE_POST_DOM);
        fuu fuuVar = fuu.SWITCH;
        ddx ddxVar = (ddx) hedVar.l.k(acq.ay);
        if (ddxVar == null) {
            ddxVar = new ddx();
            hedVar.m(ddxVar);
        }
        ddxVar.f14029a.add(fuuVar);
        return bzmVar;
    }

    @Override // g.gon
    public void ac(ezz ezzVar) {
        switch (this.f16720e) {
            case 15:
                int i = ezzVar.f16447d;
                zzbpm zzbpmVar = (zzbpm) this.f16721f;
                try {
                    String canonicalName = ((zzbqh) this.f16719c).f4926c.getClass().getCanonicalName();
                    String str = ezzVar.f16448e;
                    agd.c(canonicalName + "failed to load mediation ad: ErrorCode = " + i + ". ErrorMessage = " + str + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar.zzh(ezzVar.h());
                    zzbpmVar.zzi(i, str);
                    zzbpmVar.zzg(i);
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                }
            default:
                try {
                    ((zzbqw) this.f16721f).zzf(ezzVar.h());
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                    return;
                }
        }
    }

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        ((guk) this.f16719c).f18775e.execute(new gtt(this, (bmm) this.f16721f, anxVar, 0));
    }

    public hdc ae(yu yuVar, eqp eqpVar, boolean z) {
        ful au = afo.au(yuVar);
        if (au != null) {
            return new hdc(ayu.j((dwg) this.f16719c, au), yuVar, eqpVar, z);
        }
        throw new gck("Failed to load method reference for insn: " + yuVar);
    }

    public void af(eos eosVar, fpa fpaVar) {
        hed at;
        ggg gggVar = (ggg) this.f16719c;
        eosVar.a('@');
        cci cciVar = (cci) this.f16721f;
        dwg dwgVar = cciVar.f12631ab;
        String str = fpaVar.f17180b;
        dwgVar.getClass();
        cci ae = dwgVar.ae(ve.g(dwgVar, str));
        if (ae != null) {
            eosVar.b(ae);
            eosVar.d(gggVar.aa(gggVar.f18082e.ak, ae.ak));
        } else {
            gggVar.o(eosVar, cwx.bf(fpaVar.f17180b));
        }
        LinkedHashMap linkedHashMap = fpaVar.f17181c;
        if (linkedHashMap.isEmpty()) {
            return;
        }
        eosVar.a('(');
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str2 = (String) entry.getKey();
            if (ae != null && (at = ae.at(str2)) != null) {
                str2 = at.al.f11073a;
            }
            if (!str2.equals("value") || linkedHashMap.size() != 1) {
                eosVar.d(str2);
                eosVar.d(" = ");
            }
            r(cciVar.f12631ab, eosVar, (ghr) entry.getValue());
            if (it.hasNext()) {
                eosVar.d(", ");
            }
        }
        eosVar.a(')');
    }

    public void ag(hd hdVar, long j, boolean z) {
        djs djsVar;
        try {
            ari ariVar = (ari) hdVar.x();
            dmu dmuVar = (dmu) hdVar.h().x();
            dmuVar.f();
            gsc.b((gsc) dmuVar.f14803d, z);
            ariVar.f();
            hd.g((hd) ariVar.f14803d, (gsc) dmuVar.g());
            hd hdVar2 = (hd) ariVar.g();
            if (j == 0) {
                djsVar = (djs) this.f16721f;
            } else {
                gzp gzpVar = (gzp) ((djs) this.f16721f).x();
                gzpVar.f();
                djs.n((djs) gzpVar.f14803d, j);
                djsVar = (djs) gzpVar.g();
            }
            z(hdVar2, djsVar);
        } catch (Throwable unused) {
            int i = gbs.f17875a;
        }
    }

    public eek ah(yu yuVar, boolean z) {
        dkb j;
        hed hedVar = (hed) this.f16721f;
        try {
            if (yuVar.e() != enn.CALL_SITE) {
                j = null;
            } else {
                gqi l = yuVar.l();
                j = l != null ? (dkb) l : yuVar.j();
            }
            if (j == null) {
                throw new gck("Failed to get call site for insn: " + yuVar);
            }
            ArrayList arrayList = j.f14297a;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ghr ghrVar = (ghr) it.next();
                int[] iArr = abk.f9922a;
                dnd dndVar = ghrVar.f18175b;
                Object obj = ghrVar.f18176f;
                int i = iArr[dndVar.ordinal()];
                if (i == 1) {
                    dpb dpbVar = (dpb) obj;
                    switch (dpbVar.f14570a) {
                        case 0:
                            break;
                        default:
                            ((ful) dpbVar.f14572c).m();
                            break;
                    }
                } else if (i == 2) {
                    ((ful) obj).m();
                }
            }
            if (dyd.as(arrayList)) {
                return dyd.be(hedVar, yuVar, z, arrayList);
            }
            if (byh.m(arrayList)) {
                return byh.am(yuVar, arrayList);
            }
            try {
                return egh.at(hedVar, yuVar, z, arrayList);
            } catch (Exception e2) {
                hedVar.bs("Failed to decode invoke-custom: \n" + evh.h("\n", arrayList) + ",\n exception: " + evh.c(e2));
                eek eekVar = new eek(hay.NOP, 0);
                eekVar.w(csv.SYNTHETIC);
                eekVar.o(acq.af, new hab("Failed to decode invoke-custom: " + arrayList, e2));
                return eekVar;
            }
        } catch (Exception e3) {
            throw new gck("'invoke-custom' instruction processing error: " + e3.getMessage(), e3);
        }
    }

    public void ai(eag eagVar, djs djsVar) {
        if (eagVar == null) {
            return;
        }
        try {
            aqa f2 = fjq.f();
            f2.a(djsVar);
            f2.f();
            fjq.a((fjq) f2.f14803d, eagVar);
            ((gez) this.f16719c).h((fjq) f2.g());
        } catch (Throwable unused) {
            int i = gbs.f17875a;
        }
    }

    public gey aj(dpa dpaVar, gey geyVar) {
        HashMap hashMap = (HashMap) this.f16721f;
        byh.at(dpaVar);
        if (!(geyVar instanceof fud)) {
            return geyVar;
        }
        fud fudVar = (fud) geyVar;
        ArrayList arrayList = fudVar.f17428c;
        String str = fudVar.f17427a;
        return (hashMap.containsKey(str) ? (avr) hashMap.get(str) : (avr) this.f16719c).i(str, dpaVar, arrayList);
    }

    @Override // g.bwb
    public void d(ArrayList arrayList) {
        ((haz) ((fc) this.f16719c).f16548e).h((String) this.f16721f, 2, arrayList);
    }

    public void p(hd hdVar, int i, long j) {
        try {
            gzp gzpVar = (gzp) ((djs) this.f16721f).x();
            gzpVar.f();
            djs.g((djs) gzpVar.f14803d, i);
            djs djsVar = (djs) gzpVar.g();
            this.f16721f = djsVar;
            if (j != 0) {
                gzp gzpVar2 = (gzp) djsVar.x();
                gzpVar2.f();
                djs.n((djs) gzpVar2.f14803d, j);
                djsVar = (djs) gzpVar2.g();
            }
            z(hdVar, djsVar);
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
    }

    @Override // g.dzt
    public void q(ejd ejdVar) {
        if (ejdVar == null || ejdVar.f15636a != 0) {
            erl.y("p ack fail1, code is " + ejdVar.f15636a);
            tq tqVar = ((efc) this.f16719c).f15423d;
            JSONObject jSONObject = ((Purchase) this.f16721f).f411c;
            String optString = jSONObject.optString(TileService.EXTRA_TOKEN, jSONObject.optString("purchaseToken"));
            if (optString == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            czw czwVar = new czw();
            czwVar.f13826a = optString;
            tqVar.aq(czwVar, new cfg(3));
        }
    }

    public void r(dwg dwgVar, eos eosVar, ghr ghrVar) {
        String n;
        String n2;
        cci cciVar = (cci) this.f16721f;
        ggg gggVar = (ggg) this.f16719c;
        cci cciVar2 = gggVar.f18082e;
        if (ghrVar == null) {
            eosVar.d("null");
            return;
        }
        dnd dndVar = ghrVar.f18175b;
        foj fojVar = cciVar.f12631ab.t;
        Object obj = ghrVar.f18176f;
        switch (cv.f13568a[dndVar.ordinal()]) {
            case 1:
                eosVar.d("null");
                return;
            case 2:
                eosVar.d(Boolean.TRUE.equals(obj) ? "true" : "false");
                return;
            case 3:
                eosVar.d(fojVar.n(1, false, ((Byte) obj).byteValue()));
                return;
            case 4:
                long shortValue = ((Short) obj).shortValue();
                if (fojVar.f17139b == csu.AUTO) {
                    short s = (short) shortValue;
                    if (s == Short.MIN_VALUE) {
                        n = "Short.MIN_VALUE";
                    } else if (s == Short.MAX_VALUE) {
                        n = "Short.MAX_VALUE";
                    }
                    eosVar.d(n);
                    return;
                }
                n = fojVar.n(2, false, shortValue);
                eosVar.d(n);
                return;
            case 5:
                char charValue = ((Character) obj).charValue();
                fojVar.getClass();
                eosVar.d(foj.f(charValue, false));
                return;
            case 6:
                long intValue = ((Integer) obj).intValue();
                if (fojVar.f17139b == csu.AUTO) {
                    int i = (int) intValue;
                    if (i == Integer.MIN_VALUE) {
                        n2 = "Integer.MIN_VALUE";
                    } else if (i == Integer.MAX_VALUE) {
                        n2 = "Integer.MAX_VALUE";
                    }
                    eosVar.d(n2);
                    return;
                }
                n2 = fojVar.n(4, false, intValue);
                eosVar.d(n2);
                return;
            case 7:
                eosVar.d(fojVar.p(((Long) obj).longValue(), false));
                return;
            case 8:
                eosVar.d(foj.i(((Float) obj).floatValue()));
                return;
            case 9:
                eosVar.d(foj.g(((Double) obj).doubleValue()));
                return;
            case 10:
                eosVar.d(fojVar.o((String) obj));
                return;
            case 11:
                gggVar.v(eosVar, cwx.ba((String) obj));
                eosVar.d(".class");
                return;
            case 12:
            case 13:
                if (obj instanceof cba) {
                    dsj f2 = dsj.f(dwgVar, (cba) obj);
                    EnumSet enumSet = grb.h;
                    grb.o(eosVar, f2, cciVar2.f12631ab.ag(f2), gggVar);
                    return;
                } else {
                    if (!(obj instanceof dsj)) {
                        throw new gck("Unexpected field type class: " + obj.getClass());
                    }
                    dsj dsjVar = (dsj) obj;
                    EnumSet enumSet2 = grb.h;
                    grb.o(eosVar, dsjVar, cciVar2.f12631ab.ag(dsjVar), gggVar);
                    return;
                }
            case 14:
                return;
            case 15:
                eosVar.a('{');
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    r(cciVar.f12631ab, eosVar, (ghr) it.next());
                    if (it.hasNext()) {
                        eosVar.d(", ");
                    }
                }
                eosVar.a('}');
                return;
            case 16:
                af(eosVar, (fpa) obj);
                return;
            default:
                throw new gck("Can't decode value: " + dndVar + " (" + ghrVar + ')');
        }
    }

    public void s(avr avrVar) {
        Iterator it = avrVar.f10937a.iterator();
        while (it.hasNext()) {
            ((HashMap) this.f16721f).put(((gdt) it.next()).c().toString(), avrVar);
        }
    }

    public eek t(yu yuVar) {
        dwg dwgVar = (dwg) this.f16719c;
        hed hedVar = (hed) this.f16721f;
        switch (bal.f11176a[yuVar.n().ordinal()]) {
            case 1:
                return new eek(hay.NOP, 0);
            case 2:
                hay hayVar = hay.MOVE_RESULT;
                gnh gnhVar = cwx.ad;
                dba dbaVar = gsh.ad;
                gks gksVar = new gks(yuVar.m(0), gnhVar);
                eek eekVar = new eek(hayVar, 0);
                eekVar.ax(gksVar);
                return eekVar;
            case 3:
                gnh gnhVar2 = cwx.w;
                dba dbaVar2 = gsh.ad;
                ekh ag = gsh.ag(yuVar.a(), gnhVar2);
                return o(hay.CONST, new gks(yuVar.m(0), ag.h), ag);
            case 4:
                gnh gnhVar3 = cwx.av;
                dba dbaVar3 = gsh.ad;
                ekh ag2 = gsh.ag(yuVar.a(), gnhVar3);
                return o(hay.CONST, new gks(yuVar.m(0), ag2.h), ag2);
            case 5:
                epw epwVar = new epw(yuVar.h());
                aog aogVar = cwx.al;
                dba dbaVar4 = gsh.ad;
                epwVar.ax(new gks(yuVar.m(0), aogVar));
                return epwVar;
            case 6:
                cwx ba = cwx.ba(yuVar.g());
                dkd dkdVar = new dkd(ba);
                aaw aawVar = new aaw(evh.p("java.lang.Class"), Collections.singletonList(ba));
                dba dbaVar5 = gsh.ad;
                dkdVar.ax(new gks(yuVar.m(0), aawVar));
                return dkdVar;
            case 7:
                hay hayVar2 = hay.MOVE;
                gnh gnhVar4 = cwx.w;
                dba dbaVar6 = gsh.ad;
                return o(hayVar2, new gks(yuVar.m(0), gnhVar4), new gks(yuVar.m(1), gnhVar4));
            case 8:
                int i = yuVar.i();
                eek eekVar2 = new eek(hay.MOVE_MULTI, i);
                for (int i2 = 0; i2 < i; i2++) {
                    gnh gnhVar5 = cwx.ad;
                    dba dbaVar7 = gsh.ad;
                    eekVar2._an(new gks(yuVar.m(i2), gnhVar5));
                }
                return eekVar2;
            case 9:
                hay hayVar3 = hay.MOVE;
                gnh gnhVar6 = cwx.av;
                dba dbaVar8 = gsh.ad;
                return o(hayVar3, new gks(yuVar.m(0), gnhVar6), new gks(yuVar.m(1), gnhVar6));
            case 10:
                hay hayVar4 = hay.MOVE;
                gnh gnhVar7 = cwx.ag;
                dba dbaVar9 = gsh.ad;
                return o(hayVar4, new gks(yuVar.m(0), gnhVar7), new gks(yuVar.m(1), gnhVar7));
            case 11:
                return i(yuVar, bvj.ADD, cwx.an);
            case 12:
                return i(yuVar, bvj.ADD, cwx.s);
            case 13:
                return i(yuVar, bvj.ADD, cwx.ax);
            case 14:
                return i(yuVar, bvj.ADD, cwx.am);
            case 15:
                return n(yuVar, bvj.ADD, cwx.an);
            case 16:
                return i(yuVar, bvj.SUB, cwx.an);
            case 17:
                bvj bvjVar = bvj.SUB;
                cff cffVar = cwx.an;
                dba dbaVar10 = gsh.ad;
                return new ame(bvjVar, new gks(yuVar.m(0), cffVar), gsh.ag(yuVar.a(), cffVar), new gks(yuVar.m(1), cffVar));
            case 18:
                return i(yuVar, bvj.SUB, cwx.am);
            case 19:
                return i(yuVar, bvj.SUB, cwx.ax);
            case 20:
                return i(yuVar, bvj.SUB, cwx.s);
            case 21:
                return i(yuVar, bvj.MUL, cwx.an);
            case 22:
                return i(yuVar, bvj.MUL, cwx.s);
            case 23:
                return i(yuVar, bvj.MUL, cwx.ax);
            case 24:
                return i(yuVar, bvj.MUL, cwx.am);
            case 25:
                return n(yuVar, bvj.MUL, cwx.an);
            case 26:
                return i(yuVar, bvj.DIV, cwx.an);
            case 27:
                return i(yuVar, bvj.REM, cwx.an);
            case 28:
                return i(yuVar, bvj.REM, cwx.am);
            case 29:
                return i(yuVar, bvj.REM, cwx.ax);
            case 30:
                return i(yuVar, bvj.REM, cwx.s);
            case 31:
                return i(yuVar, bvj.DIV, cwx.s);
            case 32:
                return i(yuVar, bvj.DIV, cwx.ax);
            case 33:
                return i(yuVar, bvj.DIV, cwx.am);
            case 34:
                return n(yuVar, bvj.DIV, cwx.an);
            case 35:
                return n(yuVar, bvj.REM, cwx.an);
            case 36:
                return i(yuVar, bvj.AND, cwx.an);
            case 37:
                return n(yuVar, bvj.AND, cwx.an);
            case 38:
                return n(yuVar, bvj.XOR, cwx.an);
            case 39:
                return i(yuVar, bvj.AND, cwx.am);
            case 40:
                return i(yuVar, bvj.OR, cwx.an);
            case 41:
                return n(yuVar, bvj.OR, cwx.an);
            case 42:
                return i(yuVar, bvj.XOR, cwx.an);
            case 43:
                return i(yuVar, bvj.OR, cwx.am);
            case 44:
                return i(yuVar, bvj.XOR, cwx.am);
            case 45:
                return i(yuVar, bvj.USHR, cwx.an);
            case 46:
                return i(yuVar, bvj.USHR, cwx.am);
            case 47:
                return i(yuVar, bvj.SHL, cwx.an);
            case 48:
                return i(yuVar, bvj.SHL, cwx.am);
            case 49:
                return i(yuVar, bvj.SHR, cwx.an);
            case 50:
                return i(yuVar, bvj.SHR, cwx.am);
            case 51:
                return n(yuVar, bvj.SHL, cwx.an);
            case 52:
                return n(yuVar, bvj.SHR, cwx.an);
            case 53:
                return n(yuVar, bvj.USHR, cwx.an);
            case 54:
                return j(yuVar, cwx.an);
            case 55:
                return j(yuVar, cwx.am);
            case 56:
                return j(yuVar, cwx.ax);
            case 57:
                return j(yuVar, cwx.s);
            case 58:
                cff cffVar2 = cwx.an;
                eek eekVar3 = new eek(hay.NOT, 1);
                eekVar3.ax(gsh.ai(yuVar, 0, cffVar2));
                eekVar3._an(new gks(yuVar.m(1), cffVar2));
                return eekVar3;
            case 59:
                cff cffVar3 = cwx.am;
                eek eekVar4 = new eek(hay.NOT, 1);
                eekVar4.ax(gsh.ai(yuVar, 0, cffVar3));
                eekVar4._an(new gks(yuVar.m(1), cffVar3));
                return eekVar4;
            case 60:
                return h(yuVar, cwx.an, cwx.z);
            case 61:
                return h(yuVar, cwx.an, cwx.ai);
            case 62:
                return h(yuVar, cwx.an, cwx.ac);
            case 63:
                return h(yuVar, cwx.an, cwx.ax);
            case 64:
                return h(yuVar, cwx.an, cwx.s);
            case 65:
                return h(yuVar, cwx.an, cwx.am);
            case 66:
                return h(yuVar, cwx.ax, cwx.an);
            case 67:
                return h(yuVar, cwx.ax, cwx.s);
            case 68:
                return h(yuVar, cwx.ax, cwx.am);
            case 69:
                return h(yuVar, cwx.s, cwx.an);
            case 70:
                return h(yuVar, cwx.s, cwx.ax);
            case 71:
                return h(yuVar, cwx.s, cwx.am);
            case 72:
                return h(yuVar, cwx.am, cwx.an);
            case 73:
                return h(yuVar, cwx.am, cwx.ax);
            case 74:
                return h(yuVar, cwx.am, cwx.s);
            case 75:
            case 76:
                return new bgw(yuVar, ges.EQ);
            case 77:
            case 78:
                return new bgw(yuVar, ges.NE);
            case 79:
            case 80:
                return new bgw(yuVar, ges.GT);
            case 81:
            case 82:
                return new bgw(yuVar, ges.GE);
            case 83:
            case 84:
                return new bgw(yuVar, ges.LT);
            case 85:
            case 86:
                return new bgw(yuVar, ges.LE);
            case 87:
                return l(yuVar, hay.CMP_L, cwx.am);
            case 88:
                return l(yuVar, hay.CMP_L, cwx.ax);
            case 89:
                return l(yuVar, hay.CMP_L, cwx.s);
            case 90:
                return l(yuVar, hay.CMP_G, cwx.ax);
            case 91:
                return l(yuVar, hay.CMP_G, cwx.s);
            case 92:
                return new dfy(yuVar.getTarget());
            case 93:
                hedVar.w(csv.RESOLVE_JAVA_JSR);
                xi xiVar = new xi(yuVar.getTarget());
                gnh gnhVar8 = cwx.au;
                dba dbaVar11 = gsh.ad;
                xiVar.ax(new gks(yuVar.m(0), gnhVar8));
                return xiVar;
            case 94:
                hedVar.w(csv.RESOLVE_JAVA_JSR);
                hay hayVar5 = hay.JAVA_RET;
                gnh gnhVar9 = cwx.au;
                dba dbaVar12 = gsh.ad;
                return o(hayVar5, null, new gks(yuVar.m(0), gnhVar9));
            case 95:
                hay hayVar6 = hay.THROW;
                aog aogVar2 = cwx.v;
                dba dbaVar13 = gsh.ad;
                return o(hayVar6, null, new gks(yuVar.m(0), aogVar2));
            case 96:
                hedVar.w(csv.COMPUTE_POST_DOM);
                hay hayVar7 = hay.MOVE_EXCEPTION;
                gnh gnhVar10 = cwx.ah;
                dba dbaVar14 = gsh.ad;
                gks gksVar2 = new gks(yuVar.m(0), gnhVar10);
                eek eekVar5 = new eek(hayVar7, 0);
                eekVar5.ax(gksVar2);
                return eekVar5;
            case 97:
                return new eek(hay.RETURN, 0);
            case 98:
                hay hayVar8 = hay.RETURN;
                cwx cwxVar = hedVar.aw;
                dba dbaVar15 = gsh.ad;
                return o(hayVar8, null, new gks(yuVar.m(0), cwxVar));
            case 99:
                adz adzVar = new adz(hay.INSTANCE_OF, cwx.ba(yuVar.g()), 1);
                cff cffVar4 = cwx.at;
                dba dbaVar16 = gsh.ad;
                adzVar.ax(new gks(yuVar.m(0), cffVar4));
                adzVar._an(new gks(yuVar.m(1), cwx.ag));
                return adzVar;
            case 100:
                cwx ba2 = cwx.ba(yuVar.g());
                adz adzVar2 = new adz(hay.CHECK_CAST, ba2, 1);
                dba dbaVar17 = gsh.ad;
                adzVar2.ax(new gks(yuVar.m(0), ba2));
                adzVar2._an(new gks(yuVar.m(yuVar.i() != 2 ? 0 : 1), cwx.ag));
                return adzVar2;
            case 101:
                dsj f2 = dsj.f(dwgVar, yuVar.f());
                adz adzVar3 = new adz(hay.IGET, f2, 1);
                hcd ag3 = dwgVar.ag(f2);
                cwx cwxVar2 = ag3 != null ? ag3.f19215e : f2.f14709a;
                dba dbaVar18 = gsh.ad;
                adzVar3.ax(new gks(yuVar.m(0), cwxVar2));
                adzVar3._an(new gks(yuVar.m(1), f2.f14711d.f20149d));
                return adzVar3;
            case 102:
                dsj f3 = dsj.f(dwgVar, yuVar.f());
                adz adzVar4 = new adz(hay.IPUT, f3, 2);
                hcd ag4 = dwgVar.ag(f3);
                cwx cwxVar3 = ag4 != null ? ag4.f19215e : f3.f14709a;
                dba dbaVar19 = gsh.ad;
                adzVar4._an(new gks(yuVar.m(0), cwxVar3));
                adzVar4._an(new gks(yuVar.m(1), f3.f14711d.f20149d));
                return adzVar4;
            case 103:
                dsj f4 = dsj.f(dwgVar, yuVar.f());
                adz adzVar5 = new adz(hay.SGET, f4, 0);
                hcd ag5 = dwgVar.ag(f4);
                cwx cwxVar4 = ag5 != null ? ag5.f19215e : f4.f14709a;
                dba dbaVar20 = gsh.ad;
                adzVar5.ax(new gks(yuVar.m(0), cwxVar4));
                return adzVar5;
            case 104:
                dsj f5 = dsj.f(dwgVar, yuVar.f());
                adz adzVar6 = new adz(hay.SPUT, f5, 1);
                hcd ag6 = dwgVar.ag(f5);
                cwx cwxVar5 = ag6 != null ? ag6.f19215e : f5.f14709a;
                dba dbaVar21 = gsh.ad;
                adzVar6._an(new gks(yuVar.m(0), cwxVar5));
                return adzVar6;
            case 105:
                eek eekVar6 = new eek(hay.ARRAY_LENGTH, 1);
                cff cffVar5 = cwx.an;
                dba dbaVar22 = gsh.ad;
                eekVar6.ax(new gks(yuVar.m(0), cffVar5));
                eekVar6._an(new gks(yuVar.m(1), new aoe(cwx.ad)));
                return eekVar6;
            case 106:
                return g(yuVar, cwx.as, cwx.aa);
            case 107:
                cff cffVar6 = cwx.at;
                return g(yuVar, cffVar6, cffVar6);
            case 108:
                return g(yuVar, cwx.z, cwx.aq);
            case 109:
                gnh gnhVar11 = cwx.u;
                return g(yuVar, gnhVar11, gnhVar11);
            case 110:
                cff cffVar7 = cwx.ai;
                return g(yuVar, cffVar7, cffVar7);
            case 111:
                cff cffVar8 = cwx.ac;
                return g(yuVar, cffVar8, cffVar8);
            case 112:
                gnh gnhVar12 = cwx.av;
                return g(yuVar, gnhVar12, gnhVar12);
            case 113:
                gnh gnhVar13 = cwx.ag;
                return g(yuVar, gnhVar13, gnhVar13);
            case 114:
                return m(yuVar, cwx.as, cwx.aa);
            case 115:
                cff cffVar9 = cwx.at;
                return m(yuVar, cffVar9, cffVar9);
            case 116:
                cff cffVar10 = cwx.z;
                return m(yuVar, cffVar10, cffVar10);
            case 117:
                gnh gnhVar14 = cwx.u;
                return m(yuVar, gnhVar14, gnhVar14);
            case 118:
                cff cffVar11 = cwx.ai;
                return m(yuVar, cffVar11, cffVar11);
            case 119:
                cff cffVar12 = cwx.ac;
                return m(yuVar, cffVar12, cffVar12);
            case 120:
                gnh gnhVar15 = cwx.av;
                return m(yuVar, gnhVar15, gnhVar15);
            case 121:
                gnh gnhVar16 = cwx.ag;
                return m(yuVar, gnhVar16, gnhVar16);
            case 122:
                return ae(yuVar, eqp.STATIC, false);
            case 123:
                return ae(yuVar, eqp.STATIC, true);
            case 124:
                return ae(yuVar, eqp.DIRECT, false);
            case 125:
                return ae(yuVar, eqp.INTERFACE, false);
            case 126:
                return ae(yuVar, eqp.SUPER, false);
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE /* 127 */:
                return ae(yuVar, eqp.VIRTUAL, false);
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME /* 128 */:
                return ah(yuVar, false);
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA /* 129 */:
                ful au = afo.au(yuVar);
                if (au != null) {
                    ayu j = ayu.j(dwgVar, au);
                    return new hdc(j, yuVar, (j.o() || Objects.equals(j.f11076d, hedVar.am.ak)) ? eqp.DIRECT : eqp.SUPER, false);
                }
                throw new gck("Failed to load method reference for insn: " + yuVar);
            case 130:
                return y(yuVar, false);
            case 131:
                return ae(yuVar, eqp.DIRECT, true);
            case 132:
                return ae(yuVar, eqp.INTERFACE, true);
            case 133:
                return ae(yuVar, eqp.SUPER, true);
            case 134:
                return ae(yuVar, eqp.VIRTUAL, true);
            case 135:
                return ah(yuVar, true);
            case 136:
                return y(yuVar, true);
            case 137:
                cwx ba3 = cwx.ba(yuVar.g());
                adz adzVar7 = new adz(hay.NEW_INSTANCE, ba3, 0);
                dba dbaVar23 = gsh.ad;
                adzVar7.ax(new gks(yuVar.m(0), ba3));
                return adzVar7;
            case 138:
                cwx ba4 = cwx.ba(yuVar.g());
                int a2 = (int) yuVar.a();
                if (a2 != 0) {
                    ba4.getClass();
                    if (!(ba4 instanceof aoe)) {
                        if (a2 == 1) {
                            ba4 = new aoe(ba4);
                        } else {
                            int i3 = 0;
                            while (i3 < a2) {
                                i3++;
                                ba4 = new aoe(ba4);
                            }
                        }
                    }
                }
                int i4 = yuVar.i();
                dem demVar = new dem(i4 - 1, ba4);
                dba dbaVar24 = gsh.ad;
                demVar.ax(new gks(yuVar.m(0), ba4));
                for (int i5 = 1; i5 < i4; i5++) {
                    demVar._an(gsh.af(yuVar.m(i5), cwx.an, true));
                }
                fuu fuuVar = fuu.NEW_ARRAY;
                ddx ddxVar = (ddx) hedVar.l.k(acq.ay);
                if (ddxVar == null) {
                    ddxVar = new ddx();
                    hedVar.m(ddxVar);
                }
                ddxVar.f14029a.add(fuuVar);
                return demVar;
            case 139:
                aoe aoeVar = cwx.aw;
                dba dbaVar25 = gsh.ad;
                return new og(yuVar.getTarget(), new gks(yuVar.m(0), aoeVar));
            case 140:
                gqi l = yuVar.l();
                Objects.requireNonNull(l);
                cor corVar = (cor) l;
                return new mt(corVar.f13239c, corVar.f13237a, corVar.f13238b);
            case 141:
                return k(yuVar, false);
            case 142:
                return k(yuVar, true);
            case 143:
                return ab(yuVar, true);
            case 144:
                return ab(yuVar, false);
            case 145:
            case 146:
                return new bx((ddo) yuVar.l());
            case 147:
                hay hayVar9 = hay.MONITOR_ENTER;
                gnh gnhVar17 = cwx.ag;
                dba dbaVar26 = gsh.ad;
                return o(hayVar9, null, new gks(yuVar.m(0), gnhVar17));
            case 148:
                hay hayVar10 = hay.MONITOR_EXIT;
                gnh gnhVar18 = cwx.ag;
                dba dbaVar27 = gsh.ad;
                return o(hayVar10, null, new gks(yuVar.m(0), gnhVar18));
            default:
                throw new heq("Unknown instruction: '" + yuVar + '\'');
        }
    }

    public String toString() {
        switch (this.f16720e) {
            case 3:
                return "CodeMetadata{\nlines=" + ((Map) this.f16721f) + "\nannotations=\n " + evh.h("\n ", ((NavigableMap) this.f16719c).descendingMap().entrySet()) + "\n}";
            case 4:
            case 5:
            case 6:
            default:
                return super.toString();
            case 7:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f16719c.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.f16721f;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    sb.append((String) arrayList.get(i));
                    if (i < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            case 8:
                String str = "[ ";
                if (((crb) this.f16721f) != null) {
                    for (int i2 = 0; i2 < 9; i2++) {
                        StringBuilder o = awf.o(str);
                        o.append(((crb) this.f16721f).f13360a[i2]);
                        o.append(" ");
                        str = o.toString();
                    }
                }
                StringBuilder l = tn.l(str, "] ");
                l.append((crb) this.f16721f);
                return l.toString();
            case 9:
                return "TypeInfo{type=" + ((cwx) this.f16721f) + ", bounds=" + ((LinkedHashSet) this.f16719c) + '}';
        }
    }

    public void u(epk epkVar, eos eosVar) {
        ks ksVar = (ks) ((lh) epkVar).l.k(ao.q);
        if (ksVar != null) {
            HashMap hashMap = ksVar.f19565a;
            if (hashMap.isEmpty()) {
                return;
            }
            for (fpa fpaVar : hashMap.values()) {
                if (!fpaVar.f17180b.equals("Ljava/lang/Override;")) {
                    ((grs) eosVar).ag();
                    af(eosVar, fpaVar);
                }
            }
        }
    }

    public void v(hd hdVar, int i, long j, boolean z) {
        djs djsVar;
        try {
            gzp gzpVar = (gzp) ((djs) this.f16721f).x();
            gzpVar.f();
            djs.g((djs) gzpVar.f14803d, i);
            this.f16721f = (djs) gzpVar.g();
            ari ariVar = (ari) hdVar.x();
            dmu dmuVar = (dmu) hdVar.h().x();
            dmuVar.f();
            gsc.b((gsc) dmuVar.f14803d, z);
            ariVar.f();
            hd.g((hd) ariVar.f14803d, (gsc) dmuVar.g());
            hd hdVar2 = (hd) ariVar.g();
            if (j == 0) {
                djsVar = (djs) this.f16721f;
            } else {
                gzp gzpVar2 = (gzp) ((djs) this.f16721f).x();
                gzpVar2.f();
                djs.n((djs) gzpVar2.f14803d, j);
                djsVar = (djs) gzpVar2.g();
            }
            z(hdVar2, djsVar);
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        ((guk) this.f16719c).f18775e.execute(new gtt(this, (bmm) this.f16721f, th, 1));
    }

    public void x(Object obj, String str) {
        ((ArrayList) this.f16721f).add(awf.i(str, "=", String.valueOf(obj)));
    }

    public eai y(yu yuVar, boolean z) {
        dwg dwgVar = (dwg) this.f16719c;
        ful au = afo.au(yuVar);
        if (au == null) {
            throw new gck("Failed to load method reference for insn: " + yuVar);
        }
        ayu j = ayu.j(dwgVar, au);
        fw c2 = yuVar.c(yuVar.getTarget());
        return new eai(ayu.k(dwgVar, j.f11076d, j.f11078f, evh.g(((dnp) c2).f14485e, new gpn(13)), cwx.ba(((dnp) c2).f14484d)), yuVar, c2, j, z);
    }

    public void z(hd hdVar, djs djsVar) {
        if (hdVar == null) {
            return;
        }
        try {
            aqa f2 = fjq.f();
            f2.a(djsVar);
            f2.f();
            fjq.b((fjq) f2.f14803d, hdVar);
            ((gez) this.f16719c).h((fjq) f2.g());
        } catch (Throwable unused) {
            int i = gbs.f17875a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public JSONObject zza() {
        return ((zzdku) this.f16721f).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzapt
    public void zza(zzapy zzapyVar) {
        agd.b("Failed to load URL: " + ((String) this.f16721f) + "\n" + zzapyVar.toString());
        ((dlc) this.f16719c).zzc(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        try {
            ((zzbvp) this.f16719c).zze(gvi.zzb(th));
        } catch (RemoteException unused) {
            agd.h();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public JSONObject zzb() {
        return ((zzdku) this.f16721f).zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        Bundle bundle;
        zzbvp zzbvpVar = (zzbvp) this.f16719c;
        zzbvx zzbvxVar = (zzbvx) this.f16721f;
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
        try {
            zzbce zzbceVar = zzbcn.zzci;
            edt edtVar = edt.f15376a;
            if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                zzbvpVar.zzf(parcelFileDescriptor);
                return;
            }
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzcj)).booleanValue() && (bundle = zzbvxVar.zzm) != null) {
                String zza = zzdrv.BINDER_CALL_START.zza();
                ti.f20033a.v.getClass();
                bundle.putLong(zza, System.currentTimeMillis());
            }
            zzbvpVar.zzg(parcelFileDescriptor, zzbvxVar);
        } catch (RemoteException unused) {
            agd.h();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public void zzc() {
        zzfzo zzfzoVar = zzdju.zza;
        zzdku zzdkuVar = (zzdku) this.f16721f;
        Map zzm = zzdkuVar.zzm();
        if (zzm == null) {
            return;
        }
        int size = zzfzoVar.size();
        int i = 0;
        while (i < size) {
            Object obj = zzm.get((String) zzfzoVar.get(i));
            i++;
            if (obj != null) {
                zzdkuVar.onClick((ViewGroup) this.f16719c);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public void zzd(MotionEvent motionEvent) {
        ((zzdku) this.f16721f).onTouch(null, motionEvent);
    }
}
