package com.bytedance.sdk.openadsdk.s;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.cd;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.upie.dq;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    public static boolean d(j jVar) {
        return jVar != null && jVar.kr() == 15;
    }

    public static void dq(JSONObject jSONObject, j jVar) {
        if (jSONObject == null || !dq(jVar)) {
            return;
        }
        try {
            jSONObject.put("dynamic_join_type", jVar.kr());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean dq(j jVar) {
        return d(jVar) || ox(jVar);
    }

    private static String iw(j jVar) {
        List<ji> oh;
        if (jVar == null || (oh = jVar.oh()) == null || oh.size() <= 0) {
            return null;
        }
        return oh.get(0).dq();
    }

    public static boolean ox(j jVar) {
        return jVar != null && jVar.kr() == 16;
    }

    public static boolean p(j jVar) {
        int[] s;
        if (jVar == null || (s = pa.s(jVar)) == null || s.length < 2) {
            return true;
        }
        int i = s[0];
        int i2 = s[1];
        int p = pa.p(jVar);
        int ox = pa.ox(jVar);
        return (i >= i2 && p >= ox) || (i <= i2 && p <= ox);
    }

    public static com.bytedance.sdk.openadsdk.upie.dq s(j jVar) {
        int[] s = pa.s(jVar);
        cd mn = jVar.mn();
        String dq = mn != null ? mn.dq() : null;
        dq.C0206dq c0206dq = new dq.C0206dq();
        if (TextUtils.isEmpty(dq)) {
            dq = "";
        }
        dq.C0206dq d2 = c0206dq.dq(dq).dq((s == null || s.length < 2) ? 1280 : s[0]).d((s == null || s.length < 2) ? 720 : s[1]);
        if (d(jVar)) {
            com.bykv.vk.openvk.component.video.api.ox.dq f2 = pa.f(jVar);
            d2.ox(iw(jVar)).d(f2 != null ? f2.s() : "").dq(((long) pa.iw(jVar)) * 1000);
        }
        return d2.dq();
    }
}
