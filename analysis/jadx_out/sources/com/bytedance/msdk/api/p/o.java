package com.bytedance.msdk.api.p;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.msdk.api.activity.TTDelegateActivity;
import com.bytedance.msdk.ia.e;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: d, reason: collision with root package name */
    private static dq f791d = null;
    private static Context dq = null;
    private static long ox = -1;
    private static long p = -1;

    public static long d() {
        return ox;
    }

    public static String d(Context context) {
        return e.d();
    }

    @Deprecated
    public static void d(int i) {
        com.bytedance.msdk.core.dq.d().ox(i);
    }

    private static void d(Context context, dq dqVar) {
        com.bytedance.msdk.mn.dq.dq.jy().dq(dqVar.dq(), dqVar.f());
        com.bytedance.msdk.mn.dq.dq.jy().f();
        com.bytedance.msdk.iw.ox.dq(dqVar, context.getApplicationContext());
        com.bytedance.msdk.mn.dq.dq.jy().fw();
    }

    public static void d(String str) {
        com.bytedance.msdk.core.d.no().s(str);
    }

    public static boolean d(String str, String str2) {
        return com.bytedance.msdk.iw.dq.d(str, str2);
    }

    public static int dq(ox oxVar) {
        com.bytedance.msdk.dq.dq.p dq2 = com.bytedance.msdk.iw.d.d.dq().dq(MediationConstant.ADN_GDT);
        if (dq2 == null) {
            return 0;
        }
        return dq2.dq(oxVar);
    }

    public static void dq(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put(com.bytedance.msdk.dq.dq.dq.s, Integer.valueOf(i));
        Map<String, com.bytedance.msdk.dq.dq.p> d2 = com.bytedance.msdk.iw.d.d.dq().d();
        if (d2 == null || d2.size() == 0) {
            return;
        }
        for (com.bytedance.msdk.dq.dq.p pVar : com.bytedance.msdk.iw.d.d.dq().ox()) {
            if (pVar != null) {
                pVar.dq(hashMap);
            }
        }
    }

    public static void dq(final Activity activity, final List<mp> list, final int i, final int i2) {
        dq(new f() { // from class: com.bytedance.msdk.api.p.o.1
            @Override // com.bytedance.msdk.api.p.f
            public void dq() {
                com.bytedance.msdk.core.s.d.p.dq().dq(activity, list, i, i2);
            }
        });
    }

    public static void dq(Context context) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 3);
        com.bytedance.msdk.ia.p.dq(context, intent, null);
    }

    public static void dq(Context context, dq dqVar) {
        if (ox == -1) {
            ox = System.currentTimeMillis();
            if (dqVar != null && dqVar.ox()) {
                com.bytedance.msdk.dq.s.ox.dq();
                com.bytedance.sdk.component.kk.dq.dq();
            }
            com.bytedance.msdk.dq.s.ox.d("TMe", "call init time " + ox);
            dq = context;
            f791d = dqVar;
        }
    }

    public static void dq(Context context, int[] iArr) {
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 1);
        intent.putExtra("permissions", iArr);
        if (context != null) {
            com.bytedance.msdk.ia.p.dq(context, intent, null);
        }
    }

    public static void dq(com.bytedance.msdk.api.p.dq.kk.dq dqVar) {
        if (!com.bytedance.msdk.iw.ox.d()) {
            com.bytedance.msdk.core.d.no().dq(dqVar);
        } else if (dqVar != null) {
            dqVar.dq();
        }
    }

    public static void dq(f fVar) {
        com.bytedance.msdk.core.dq.d().dq(fVar);
    }

    public static void dq(iw iwVar) {
        com.bytedance.msdk.core.d.no().dq(iwVar, false);
    }

    public static void dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar) {
        com.bytedance.msdk.core.d.no().d().d(com.bytedance.msdk.iw.d.s.dq(pVar));
        com.bytedance.msdk.core.d.no().n();
        com.bytedance.msdk.iw.ox.dq(com.bytedance.msdk.iw.d.s.dq(pVar));
    }

    public static void dq(String str) {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "app运行中setPulisherDid: ".concat(String.valueOf(str)));
        com.bytedance.msdk.core.d.no().p(str);
    }

    public static boolean dq() {
        if (TextUtils.isEmpty(com.bytedance.msdk.core.d.no().ig())) {
            return false;
        }
        return com.bytedance.msdk.core.dq.d().bl();
    }

    public static boolean dq(String str, String str2) {
        return com.bytedance.msdk.iw.dq.dq(str, str2);
    }

    public static Map<String, String> ia() {
        return com.bytedance.msdk.core.d.no().fw();
    }

    @Deprecated
    public static void ig() {
        com.bytedance.msdk.core.dq.d().ox(com.bytedance.msdk.mn.s.dq().ox("if_test"));
    }

    @Deprecated
    public static com.bytedance.msdk.dq.dq.p iw(String str) {
        return com.bytedance.msdk.iw.d.d.dq().dq(str);
    }

    public static boolean iw() {
        return com.bytedance.msdk.core.d.no().jy();
    }

    public static boolean kk() {
        return com.bytedance.msdk.core.d.no().e();
    }

    public static String mn() {
        return com.bytedance.msdk.core.d.no().f();
    }

    public static Map<String, Object> mp() {
        return com.bytedance.msdk.core.d.no().ob();
    }

    public static String no() {
        return com.bytedance.msdk.core.d.no().ig();
    }

    public static String o() {
        return com.bytedance.msdk.core.d.no().i();
    }

    public static long ox() {
        return p;
    }

    public static String ox(String str) {
        str.getClass();
        switch (str) {
            case "tt_pangle_preview_ext":
                return com.bytedance.msdk.ia.p.p.ox();
            case "tt_pangle_preview_creative_id":
                return com.bytedance.msdk.ia.p.p.d();
            case "tt_pangle_preview_ad_id":
                return com.bytedance.msdk.ia.p.p.dq();
            default:
                return null;
        }
    }

    public static void p() {
        if (dq == null || f791d == null) {
            return;
        }
        if (p == -1) {
            p = System.currentTimeMillis();
            com.bytedance.msdk.dq.s.ox.d("TMe", "call start up time " + p);
        }
        d(dq, f791d);
        com.bytedance.msdk.s.iw.d();
    }

    @Deprecated
    public static boolean p(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(com.bytedance.msdk.core.d.no().ig())) {
            return false;
        }
        return com.bytedance.msdk.core.dq.d().ox(str);
    }

    @Deprecated
    public static com.bytedance.msdk.api.p.dq.d.iw.dq s(String str) {
        return com.bytedance.msdk.iw.d.dq.dq(str);
    }

    public static String s() {
        return com.bytedance.msdk.d.p.d();
    }
}
