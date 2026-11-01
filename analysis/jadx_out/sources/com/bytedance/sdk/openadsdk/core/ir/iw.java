package com.bytedance.sdk.openadsdk.core.ir;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.fw;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.awf;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private static com.bytedance.sdk.openadsdk.core.fw f3049d;
    private static final Map<String, dq> dq = awf.ab();

    public interface dq {
        void d();

        void dq();

        void ox();
    }

    public static void d(Context context, String str, String str2, dq dqVar) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        dq(str2, dqVar);
        TTDelegateActivity.ox(context, str2, str);
    }

    public static void d(final Context context, final String str, final String str2, final String str3, final dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
            return;
        }
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.2
            @Override // java.lang.Runnable
            public void run() {
                boolean dq2 = com.bytedance.sdk.openadsdk.core.no.ia().dq(true);
                if (!com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    if (iw.dq.containsKey(str)) {
                        return;
                    }
                    if (!c.p() && !dq2) {
                        return;
                    }
                }
                iw.dq(str, dqVar);
                TTDelegateActivity.d(context, str, str2, str3);
            }
        });
    }

    public static void d(final j jVar, final Context context, final String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        dq(context, jVar.fx(), jVar.ip(), new dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.4
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                iw.ox(j.this, context, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        });
    }

    public static void d(String str) {
        dq(str, 1);
    }

    public static void dq(Context context, final j jVar) {
        if (jVar == null) {
            return;
        }
        new dq.C0163dq().s(jVar.fx()).dq("pangle_logo").d("open_policy").p(jVar.dn()).dq(new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.8
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ad_info", j.this.ao());
                jSONObject2.put("ad_slot_type", c.ia(j.this));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
        TTDelegateActivity.d(context, jVar.ao());
    }

    public static void dq(final Context context, final j jVar, final String str) {
        if (jVar == null) {
            return;
        }
        String fx = jVar.fx();
        if (TextUtils.isEmpty(fx)) {
            return;
        }
        dq(fx, new dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.5
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                iw.ox(j.this, context, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        });
        com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
        if (hy == null) {
            return;
        }
        TTDelegateActivity.ox(context, fx, hy.kk());
    }

    public static void dq(Context context, String str) {
        TTDelegateActivity.dq(context, str);
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(str);
    }

    public static void dq(Context context, String str, dq dqVar, String str2) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        dq(str, dqVar);
        TTDelegateActivity.d(context, str, str2);
    }

    public static void dq(Context context, String str, j jVar) {
        TTDelegateActivity.dq(context, str, jVar);
    }

    public static void dq(Context context, String str, String str2, dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        dq(str, dqVar);
        TTDelegateActivity.dq(context, str, str2);
    }

    public static void dq(Context context, String str, String str2, String str3, dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        dq(str, dqVar);
        TTDelegateActivity.dq(context, str, str2, str3);
    }

    public static void dq(final Context context, final String str, final String str2, final String str3, final dq dqVar, final com.bytedance.sdk.openadsdk.core.ugeno.ia.mn mnVar, final j jVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
            return;
        }
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.1
            @Override // java.lang.Runnable
            public void run() {
                boolean dq2 = com.bytedance.sdk.openadsdk.core.no.ia().dq(true);
                if (!com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    if (iw.dq.containsKey(str)) {
                        return;
                    }
                    if (!c.p() && !dq2) {
                        return;
                    }
                }
                iw.dq(str, dqVar);
                TTDelegateActivity.dq(context, str, str2, str3, mnVar, jVar);
            }
        });
    }

    public static void dq(Context context, String str, String str2, String str3, String str4, String str5, dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        dq(str, dqVar);
        TTDelegateActivity.dq(context, str, str2, str3, str4, str5);
    }

    public static void dq(Context context, String str, boolean z, dq dqVar) {
        if (z) {
            TTDelegateActivity.dq(context, str, z);
        } else {
            if (TextUtils.isEmpty(str) || dqVar == null) {
                return;
            }
            dq(str, dqVar);
            TTDelegateActivity.dq(context, str, z);
        }
    }

    public static void dq(final j jVar, final Context context, final String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        dq(context, jVar.fx(), new dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.3
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                iw.ox(j.this, context, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        }, jVar.ip());
    }

    public static void dq(String str) {
        Map<String, dq> map = dq;
        if (map != null) {
            map.remove(str);
        }
    }

    private static void dq(final String str, final int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("doHandler") { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iw.ox().dq(str, i);
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
            return;
        }
        dq s = s(str);
        if (s == null) {
            return;
        }
        if (i == 1) {
            s.dq();
            return;
        }
        if (i == 2) {
            s.d();
        } else if (i != 3) {
            s.ox();
        } else {
            s.ox();
        }
    }

    public static void dq(final String str, final dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("addDialogListener") { // from class: com.bytedance.sdk.openadsdk.core.ir.iw.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        iw.ox().dq(str, new com.bytedance.sdk.openadsdk.core.multipro.aidl.d.dq(dqVar));
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
        } else {
            dq.put(str, dqVar);
        }
    }

    public static boolean dq(j jVar) {
        if (jVar == null || jVar.fn() || jVar.zi() == null || com.bytedance.sdk.openadsdk.core.r.r.mp(jVar) == 1 || jVar.y() != 4 || com.bytedance.sdk.openadsdk.core.r.r.ig(jVar) == 0) {
            return false;
        }
        int no = jVar.no();
        return no == 4 || no == 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.bytedance.sdk.openadsdk.core.fw ox() {
        if (f3049d == null) {
            f3049d = fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(com.bytedance.sdk.openadsdk.core.wp.getContext()).dq(2));
        }
        return f3049d;
    }

    public static void ox(j jVar, Context context, String str) {
        int cd = com.bytedance.sdk.openadsdk.core.r.r.cd(jVar);
        if (jVar == null || context == null) {
            return;
        }
        if (jVar.y() == 4 || cd != 0) {
            com.bytedance.sdk.openadsdk.core.o.d.ox dq2 = com.bytedance.sdk.openadsdk.core.o.s.dq(context, jVar, str, false);
            if (dq2 instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) dq2).no().dq(false);
            }
            dq2.dq(jVar, false);
        }
    }

    public static void ox(String str) {
        dq(str, 2);
    }

    public static void p(String str) {
        dq(str, 3);
    }

    public static dq s(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq.remove(str);
    }
}
