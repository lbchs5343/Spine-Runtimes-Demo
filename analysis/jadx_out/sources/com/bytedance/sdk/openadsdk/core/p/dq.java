package com.bytedance.sdk.openadsdk.core.p;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.ox.iw;
import com.bytedance.sdk.openadsdk.core.p.ox.p;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    public static boolean dq(d dVar, j jVar, boolean z) {
        if (!wp.d().d(dVar.mn())) {
            return true;
        }
        if (jVar == null) {
            ig.dq().ox(3);
            return false;
        }
        String wp = dVar.wp();
        long f2 = jVar.f();
        String wp2 = jVar.wp();
        try {
            if (TextUtils.isEmpty(wp)) {
                ig.dq().ox(1);
                return false;
            }
            JSONObject dq = iw.dq(new JSONObject(wp), false, true);
            if (dq == null) {
                ig.dq().ox(1);
                return false;
            }
            ji.dq dq2 = ji.dq.dq(dq, dVar, null);
            com.bytedance.sdk.openadsdk.core.r.dq dqVar = dq2.ia;
            if (dqVar == null) {
                ig.dq().ox(1);
                return false;
            }
            dqVar.dq(dq);
            List<j> d2 = dq2.ia.d();
            if (d2 == null) {
                ig.dq().ox(1);
                return false;
            }
            for (j jVar2 : d2) {
                if (TextUtils.isEmpty(jVar2.wp())) {
                    ig.dq().ox(2);
                    return false;
                }
                if (!jVar2.le()) {
                    ig.dq().ox(5);
                    return false;
                }
                if (TextUtils.equals(jVar2.wp(), wp2)) {
                    jVar.ji(jVar2.iy());
                    if (jVar.h() + f2 >= System.currentTimeMillis()) {
                        return true;
                    }
                    p.dq(z ? 7 : 8).dq(dVar.mn());
                    ig.dq().ox(4);
                    return false;
                }
            }
            ig.dq().ox(3);
            return false;
        } catch (Exception e2) {
            ig.dq().ox(1000);
            e2.printStackTrace();
            return false;
        }
    }
}
