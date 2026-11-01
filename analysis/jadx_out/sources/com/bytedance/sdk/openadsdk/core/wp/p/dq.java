package com.bytedance.sdk.openadsdk.core.wp.p;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.ox.p;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.core.wp.d;
import com.bytedance.sdk.openadsdk.core.wp.ia;
import com.bytedance.sdk.openadsdk.core.wp.kk;
import com.bytedance.sdk.openadsdk.core.wp.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends kk implements d {

    /* renamed from: d, reason: collision with root package name */
    private static volatile dq f3728d;
    private static long ox;
    private AtomicBoolean dq = new AtomicBoolean(false);

    private dq() {
    }

    public static boolean iw() {
        long currentTimeMillis = System.currentTimeMillis() - ox;
        return currentTimeMillis <= 120000 && currentTimeMillis > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn() {
        try {
            AtomicBoolean atomicBoolean = this.dq;
            if (atomicBoolean == null || atomicBoolean.getAndSet(true)) {
                return;
            }
            dq(wp.getContext());
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static dq ox() {
        if (f3728d == null) {
            synchronized (dq.class) {
                try {
                    if (f3728d == null) {
                        f3728d = new dq();
                    }
                } finally {
                }
            }
        }
        return f3728d;
    }

    public static void s() {
        ox().p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.kk
    public JSONObject d(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("business_name", "common");
            jSONObject.put("business_type", 2);
            jSONObject.put("general_params", new JSONObject());
            return jSONObject;
        } catch (Exception e2) {
            e2.getMessage();
            return jSONObject;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.kk
    public boolean d() {
        return o.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq() {
        return MediationConstant.RIT_TYPE_SPLASH;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq(String str) {
        return TextUtils.isEmpty(str) ? "" : "spl_load_strategy".equalsIgnoreCase(str) ? p.dq().j() : com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).d(str, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.kk
    public void dq(int i, ia iaVar) {
        if (no.ia().ce()) {
            try {
                ig.p("lqmt", "onPredictResult : type: " + i);
                ig.p("lqmt", "onPredictResult : resultModel  isSuccess: " + iaVar.ox().isSuccess());
                ig.p("lqmt", "===============");
                Field[] declaredFields = iaVar.ox().getClass().getDeclaredFields();
                for (int i2 = 0; i2 < declaredFields.length; i2++) {
                    declaredFields[i2].setAccessible(true);
                    declaredFields[i2].get(iaVar.ox());
                }
                ig.p("lqmt", "===============");
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if ("spl_load_strategy".equalsIgnoreCase(str)) {
            p.dq().n(str2);
        } else {
            com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).dq(str, str2);
        }
    }

    public void p() {
        mn.d(new com.bytedance.sdk.component.o.kk("pity_splopt") { // from class: com.bytedance.sdk.openadsdk.core.wp.p.dq.1
            @Override // java.lang.Runnable
            public void run() {
                dq.this.mn();
            }
        });
    }
}
