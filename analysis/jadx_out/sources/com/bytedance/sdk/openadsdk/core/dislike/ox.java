package com.bytedance.sdk.openadsdk.core.dislike;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.Toast;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.bl.s;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.ox.iw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.h.p;
import com.bytedance.sdk.openadsdk.mp.dq;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements com.bytedance.sdk.openadsdk.core.dislike.d.dq {

    /* renamed from: d, reason: collision with root package name */
    private final WeakReference<Context> f2802d;
    private final j dq;
    private final d ox;
    private String p;

    public ox(j jVar, Context context, d dVar) {
        this.dq = jVar;
        this.f2802d = new WeakReference<>(context);
        this.ox = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, String str2) {
        File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext()), str);
        file.mkdirs();
        ji jiVar = (ji) wp.dq();
        com.bytedance.sdk.openadsdk.f.d.ox.d ds = this.dq.ds();
        JSONObject dq = jiVar.dq(ds, new nh(), ds.k(), false, 6);
        if (dq == null) {
            return;
        }
        p.dq(iw.dq().d(dq.toString()).p().toString(), new File(file, "request.info"));
        HashMap hashMap = null;
        p.dq(com.bytedance.sdk.component.utils.dq.dq(s.dq((com.bytedance.sdk.openadsdk.core.bl.p) null).iw()).toString(), new File(file, "setting.info"));
        p.dq(com.bytedance.sdk.component.utils.dq.dq(this.dq.ve()).toString(), new File(file, "meta.info"));
        File dq2 = p.dq(file, str + ".zip");
        String ox = ox(str2, str);
        HashMap hashMap2 = new HashMap();
        Pair<Integer, JSONObject> dq3 = iw.dq().dq(ox, false);
        if (dq3 != null) {
            hashMap = new HashMap();
            hashMap2.put("deviceInfo", ((JSONObject) dq3.second).optString("message"));
            hashMap.put("x-pglcypher", String.valueOf(dq3.first));
        }
        new com.bytedance.sdk.openadsdk.mp.dq().dq(this.ox.ox(), dq2, hashMap2, new dq.InterfaceC0203dq() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ox.5
            @Override // com.bytedance.sdk.openadsdk.mp.dq.InterfaceC0203dq
            public void dq(int i, String str3) {
                ox.this.dq("反馈失败！");
            }

            @Override // com.bytedance.sdk.openadsdk.mp.dq.InterfaceC0203dq
            public void dq(String str3) {
                ox.this.dq("反馈上传成功！");
            }
        }, hashMap);
        dq2.delete();
        p.dq(file);
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar, j jVar) {
        d pa;
        if (dqVar == null || jVar == null || (pa = wp.d().pa()) == null || !pa.d() || TextUtils.isEmpty(pa.ox())) {
            return;
        }
        dqVar.dq(new ox(jVar, context, pa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final String str) {
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ox.3
            @Override // java.lang.Runnable
            public void run() {
                if (ox.this.f2802d.get() != null) {
                    Toast.makeText((Context) ox.this.f2802d.get(), str, 1).show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final String str, final String str2) {
        dq("反馈上传中，请您稍等！");
        com.bytedance.sdk.component.o.mn.d(new kk("upload_oncall") { // from class: com.bytedance.sdk.openadsdk.core.dislike.ox.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ox.this.d(str, str2);
                } catch (Throwable th) {
                    ig.d("#oncall#", th);
                }
            }
        });
    }

    private String ox(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("app_name", no.ia().q());
            jSONObject.putOpt(PluginConstants.KEY_APP_ID, no.ia().mp());
            jSONObject.putOpt("os_api", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt("os_version", Build.VERSION.RELEASE);
            jSONObject.putOpt("manufacturer", Build.MANUFACTURER);
            jSONObject.putOpt("did", com.bytedance.sdk.openadsdk.core.mn.dq().d());
            jSONObject.putOpt(PluginConstants.KEY_SDK_VERSION, 6607);
            jSONObject.putOpt("sdk_api_version", Integer.valueOf(op.f3334d));
            jSONObject.putOpt("live_sdk_version", com.bytedance.sdk.openadsdk.core.live.d.dq().mn());
            jSONObject.putOpt("msg", str);
            jSONObject.putOpt("recordId", str2);
            jSONObject.putOpt("os", "Android");
            jSONObject.putOpt("ad_info", this.dq.ao());
            com.bytedance.sdk.openadsdk.f.d.ox.d ds = this.dq.ds();
            if (ds != null) {
                jSONObject.putOpt("ad_slot_type", Integer.valueOf(ds.k()));
                jSONObject.putOpt("rit", ds.le());
            }
            return jSONObject.toString();
        } catch (Exception e2) {
            ig.d("#oncall#", e2);
            return str;
        }
    }

    public boolean dq(Context context, final String str, Dialog dialog) {
        try {
            if (this.p == null) {
                this.p = UUID.randomUUID().toString();
            }
            if (dialog != null) {
                dialog.dismiss();
            }
            new AlertDialog.Builder(context).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ox.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (dialogInterface != null) {
                        dialogInterface.dismiss();
                    }
                    ox oxVar = ox.this;
                    oxVar.dq(oxVar.p, str);
                }
            }).setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ox.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).setMessage(this.ox.p() + "\n\n您此次反馈的id为：" + this.p).setCancelable(true).create().show();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.dislike.d.dq
    public boolean dq(com.bytedance.sdk.openadsdk.f.d.d.iw iwVar, String str, Dialog dialog) {
        com.bytedance.sdk.openadsdk.core.dislike.ox.ox dq = d.dq();
        if (dq != null && TextUtils.equals(iwVar.dq(), dq.dq()) && TextUtils.equals(iwVar.d(), dq.d())) {
            return dq(this.f2802d.get(), str, dialog);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.dislike.d.dq
    public boolean dq(String str, Dialog dialog) {
        if (TextUtils.isEmpty(str) || this.f2802d.get() == null || !str.startsWith("#oncall#")) {
            return false;
        }
        return dq(this.f2802d.get(), str, dialog);
    }
}
