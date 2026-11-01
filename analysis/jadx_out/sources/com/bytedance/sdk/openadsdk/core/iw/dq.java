package com.bytedance.sdk.openadsdk.core.iw;

import android.content.Context;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.fw;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.tools.LogAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static volatile boolean dq;

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        mn.d(new kk("fetch_lg_command") { // from class: com.bytedance.sdk.openadsdk.core.iw.dq.2
            @Override // java.lang.Runnable
            public void run() {
                ox.d();
            }
        });
    }

    public static void d(String str, String str2) {
        if (dq) {
            ox.d(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (dq) {
            ox.d(str, str2, th);
        }
    }

    private static void dq(Context context, d dVar) {
        if (dVar != null && LogAdapter.dq == null && fw.dq(wp.getContext()) && dVar.p()) {
            String path = com.bytedance.sdk.openadsdk.api.plugin.d.d(context).getPath();
            String file = com.bytedance.sdk.openadsdk.api.plugin.d.dq(context).toString();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("buffer_dir_path", path + "/aa");
                jSONObject.putOpt("log_dir_path", file + "/aa");
                Boolean bool = Boolean.TRUE;
                jSONObject.putOpt("compress", bool);
                jSONObject.putOpt("encrypt", bool);
                jSONObject.putOpt("level", Integer.valueOf(dVar.dq()));
                jSONObject.putOpt("log_file_exp_days", Integer.valueOf(dVar.d()));
                jSONObject.putOpt("max_dir_size", Integer.valueOf(dVar.ox() * 1048576));
                jSONObject.putOpt("per_size", 2097152);
                jSONObject.putOpt("offload_main_write", bool);
                if (!ox.dq(context, jSONObject)) {
                    ig.p("ACL", "init failed");
                    return;
                }
                ig.dq(new s());
                ox.dq(context, "3892", com.bytedance.sdk.openadsdk.core.mn.dq().d());
                ox.dq("mon.zijieapi.com");
                dq = true;
                ox.ox();
            } catch (JSONException e2) {
                ig.p("ACL", "init failed:" + e2.getMessage());
            }
        }
    }

    public static void dq(d dVar) {
        if (!dq) {
            dq(wp.getContext(), dVar);
        } else if (dVar == null || !dVar.p()) {
            ox.dq();
        } else {
            ox.dq(dVar.dq());
            ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.iw.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.d();
                }
            }, PushUIConfig.dismissTime);
        }
    }

    public static void dq(String str, String str2) {
        if (dq) {
            ox.dq(str, str2);
        }
    }

    public static void dq(String str, String str2, Throwable th) {
        if (dq) {
            ox.dq(str, str2, th);
        }
    }

    public static void dq(String str, Throwable th) {
        if (dq) {
            ox.dq(str, th);
        }
    }

    public static void ox(String str, String str2) {
        if (dq) {
            ox.ox(str, str2);
        }
    }

    public static void p(String str, String str2) {
        if (dq) {
            ox.p(str, str2);
        }
    }
}
