package com.bytedance.embedapplog;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes.dex */
class ir extends ji {
    private final u iw;
    private final Context s;

    public ir(Context context, u uVar) {
        super(false, false);
        this.s = context;
        this.iw = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        jSONObject.put(PluginConstants.KEY_SDK_VERSION, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME);
        jSONObject.put("sdk_version_name", "3.9.1.baseChina-rc.32");
        jSONObject.put("channel", this.iw.o());
        c.dq(jSONObject, "aid", this.iw.kk());
        c.dq(jSONObject, "release_build", this.iw.kx());
        c.dq(jSONObject, "app_region", this.iw.mp());
        c.dq(jSONObject, "app_language", this.iw.ig());
        c.dq(jSONObject, "user_agent", this.iw.h());
        c.dq(jSONObject, "ab_sdk_version", this.iw.jy());
        c.dq(jSONObject, "ab_version", this.iw.gh());
        c.dq(jSONObject, "aliyun_uuid", this.iw.dq());
        String no = this.iw.no();
        if (TextUtils.isEmpty(no)) {
            no = pa.dq(this.s, this.iw);
        }
        if (!TextUtils.isEmpty(no)) {
            c.dq(jSONObject, "google_aid", no);
        }
        String e2 = this.iw.e();
        if (!TextUtils.isEmpty(e2)) {
            try {
                jSONObject.put("app_track", new JSONObject(e2));
            } catch (Throwable th) {
                jo.d(th);
            }
        }
        String q = this.iw.q();
        if (q != null && q.length() > 0) {
            jSONObject.put(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, new JSONObject(q));
        }
        c.dq(jSONObject, "user_unique_id", this.iw.f());
        return true;
    }
}
