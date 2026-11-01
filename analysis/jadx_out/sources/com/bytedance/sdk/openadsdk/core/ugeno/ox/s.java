package com.bytedance.sdk.openadsdk.core.ugeno.ox;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.d.ia;
import com.bytedance.sdk.component.adexpress.d.mn;
import com.bytedance.sdk.openadsdk.core.ir.ir;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.ws;
import g.ajp;
import g.blw;
import g.dlv;
import g.dmm;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s extends ox {
    private dlv gh;
    private dlv i;
    private dlv r;

    public s(Context context, j jVar, dq dqVar, ViewGroup viewGroup) {
        super(context, jVar, dqVar, viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(dlv dlvVar, String str, blw blwVar) {
        int i;
        CharSequence text;
        String str2 = blwVar.f11807b;
        str2.getClass();
        i = 10;
        switch (str2) {
            case "openAppPermission":
                break;
            case "openPrivacy":
                i = 7;
                break;
            case "pauseVideo":
            case "videoControl":
                i = 4;
                break;
            case "skip":
                i = 6;
                break;
            case "close":
                i = 8;
                break;
            case "openAppFunction":
                i = 12;
                break;
            case "convert":
                i = 2;
                break;
            case "muteVideo":
                i = 5;
                break;
            case "openAppPolicy":
                i = 9;
                break;
            case "dislike":
                i = 3;
                break;
            default:
                i = 0;
                break;
        }
        k.dq dq = new k.dq().p(this.ig.q()).ox(this.ig.jy()).d(this.ig.f()).dq(this.ig.fw()).dq(dlvVar.n()).d(this.ig.ig()).dq(this.ig.mp());
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.equals(str, "shake") || TextUtils.equals(str, "twist")) {
            try {
                jSONObject.put("convertActionType", 1);
            } catch (Throwable unused) {
            }
        }
        View kk = dlvVar.kk();
        try {
            if ((kk instanceof TextView) && (text = ((TextView) kk).getText()) != null && text.toString().contains("下载")) {
                jSONObject.put("is_compliant_download", true);
            }
        } catch (JSONException unused2) {
        }
        dq.dq(jSONObject);
        k dq2 = dq.dq();
        ia iaVar = this.kk;
        if (iaVar != null) {
            iaVar.dq(kk, i, dq2);
        }
    }

    private void mp() {
        dmm dmmVar = new dmm();
        HashMap hashMap = new HashMap();
        hashMap.put("shake_value", Integer.valueOf(this.mn.f()));
        hashMap.put("calculation_method", Integer.valueOf(this.mn.le()));
        hashMap.put("rotation_angle", Integer.valueOf(this.mn.cd()));
        hashMap.put("calculation_method_twist", Integer.valueOf(this.mn.k()));
        hashMap.put("twist_config", this.mn.gh());
        hashMap.put("image_info", this.mn.ig());
        hashMap.put("cache_dir", this.mn.jy());
        hashMap.put("shake_interact_conf", this.mn.r());
        hashMap.put("twist_interact_conf", this.mn.i());
        dmmVar.f14435c = hashMap;
        dmmVar.f14433a = this.f3613d;
        JSONObject jSONObject = this.s;
        dmmVar.f14434b = jSONObject;
        ajp ajpVar = this.dq;
        ajpVar.f10328a = dmmVar;
        ajpVar.f10334g = jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox
    public void d(mn mnVar) {
        mp();
        this.dq.s(this);
        this.dq.f10332e = this;
        ws ny = this.iw.ny();
        try {
            if (ny != null) {
                this.ox = this.dq.p(this.p, this.s, ny.s());
            } else {
                this.ox = this.dq.p(this.p, this.s, null);
            }
            dlv dlvVar = this.ox;
            if (dlvVar != null) {
                dlv p = dlvVar.p("RVCountdown");
                this.gh = p;
                if (p == null) {
                    this.gh = this.ox.p("FVCountdown");
                }
                dlv p2 = this.ox.p("RVSkip");
                this.i = p2;
                if (p2 == null) {
                    this.i = this.ox.p("FVSkip");
                }
                this.r = this.ox.p("CycleCountDownView");
                if (this.cd == null) {
                    this.cd = new com.bytedance.sdk.openadsdk.core.ugeno.no.dq(this.mn.ox());
                }
                this.cd.dq(this.gh, this.i, this.r);
            }
            this.mn.n().d();
            this.mn.n().ox();
        } catch (NoClassDefFoundError unused) {
            if (mnVar != null) {
                mnVar.dq(140, "ugen no class def found error");
            }
        } catch (UnsatisfiedLinkError unused2) {
            if (mnVar != null) {
                mnVar.dq(139, "ugen yoga so load fail");
            }
        } catch (Throwable unused3) {
            if (mnVar != null) {
                mnVar.dq(141, "ugen other fail");
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox
    public JSONObject dq() {
        return this.mn.ox().optJSONObject("xTemplate");
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox, g.cyx
    public void dq(final dlv dlvVar, final String str, final blw blwVar) {
        if (blwVar == null) {
            return;
        }
        if (!TextUtils.equals(str, "shake") && !TextUtils.equals(str, "twist")) {
            d(dlvVar, str, blwVar);
            return;
        }
        WeakReference<ViewGroup> weakReference = this.mp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ir.dq(this.mp, new com.bytedance.sdk.openadsdk.core.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.s.1
            @Override // com.bytedance.sdk.openadsdk.core.d.ox
            public void dq() {
                WeakReference<ViewGroup> weakReference2 = s.this.mp;
                if (weakReference2 == null || weakReference2.get() == null || !ir.dq(s.this.mp.get())) {
                    return;
                }
                s.this.d(dlvVar, str, blwVar);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox, com.bytedance.sdk.component.adexpress.dynamic.p
    public void dq(CharSequence charSequence, int i, int i2, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox
    public JSONObject kk() {
        return this.mn.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox
    public dlv p() {
        dlv dlvVar = this.ox;
        if (dlvVar == null) {
            return null;
        }
        return dlvVar.p("VideoV3");
    }
}
