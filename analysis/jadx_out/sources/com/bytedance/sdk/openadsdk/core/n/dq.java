package com.bytedance.sdk.openadsdk.core.n;

import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    public static volatile boolean dq = true;

    public static void dq() {
        JSONObject yy = wp.d().yy();
        if (yy == null) {
            return;
        }
        int optInt = yy.optInt("big_max_mum", 0);
        if (optInt > 0) {
            no.f2029d.ox(optInt);
        }
        int optInt2 = yy.optInt("core_count", 0);
        if (optInt2 > 0) {
            no.f2029d.d(optInt2);
        }
        int optInt3 = yy.optInt("big_keep_alive", 0);
        if (optInt3 > 0) {
            no.f2029d.dq(optInt3);
        }
        boolean optBoolean = yy.optBoolean("big_priority", false);
        no noVar = no.f2029d;
        noVar.ox(optBoolean);
        noVar.d(yy.optBoolean("catch_oom", true));
        noVar.dq(yy.optBoolean("forbid_autosize_oom", true));
        noVar.p(yy.optBoolean("enable_proxy", true));
        dq = yy.optBoolean("can_set_crash", true);
        mn.dq(yy.optBoolean("autosize", true));
    }
}
