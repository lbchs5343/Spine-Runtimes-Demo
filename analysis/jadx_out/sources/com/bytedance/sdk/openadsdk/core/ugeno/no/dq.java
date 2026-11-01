package com.bytedance.sdk.openadsdk.core.ugeno.no;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.d;
import g.dlv;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    private dlv f3604d;
    protected final e dq = new e(Looper.getMainLooper(), this);
    private int ia;
    private int iw;
    private int kk;
    private int mn;
    private boolean o;
    private dlv ox;
    private dlv p;
    private int s;

    public dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("xCreative");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("xSetting");
            String optString = jSONObject.optString("dynamic_configs", "");
            if (optJSONObject != null) {
                JSONObject optJSONObject3 = optJSONObject.optJSONObject(MediaFormat.KEY_VIDEO);
                if (optJSONObject3 != null) {
                    this.iw = optJSONObject3.optInt("video_duration");
                }
                int optInt = optJSONObject.optInt("reward_full_time_type", 0);
                int optInt2 = optJSONObject.optInt("reward_full_play_time", 0);
                if (optInt == 1) {
                    this.mn = optInt2;
                    this.o = true;
                }
            }
            if (optJSONObject2 != null) {
                if (optJSONObject2.optInt("ad_slot_type", 0) == 8) {
                    this.s = optJSONObject2.optInt("iv_skip_time", 0);
                } else {
                    this.s = optJSONObject2.optInt("rv_skip_time", 0);
                }
            }
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            try {
                if (new JSONObject(optString).optBoolean("is_show_video_duration", false)) {
                    this.o = false;
                }
            } catch (JSONException unused) {
            }
        }
    }

    private void ox() {
        int i;
        int i2;
        if (this.o) {
            i = this.mn;
            i2 = this.kk;
        } else {
            i = this.iw;
            i2 = this.ia;
        }
        int max = Math.max(0, i - i2);
        boolean z = i2 >= this.s || max == 0;
        dlv dlvVar = this.f3604d;
        if (dlvVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.dq) {
            dlvVar.d(0);
            ((com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.dq) this.f3604d).mn(String.valueOf(max));
        }
        dlv dlvVar2 = this.ox;
        if (dlvVar2 instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.d.dq) {
            ((com.bytedance.sdk.openadsdk.core.ugeno.component.d.dq) dlvVar2).p(z);
        }
        dlv dlvVar3 = this.p;
        if (dlvVar3 instanceof d) {
            ((d) dlvVar3).dq(i, i2, max, z);
        }
    }

    private boolean p() {
        return (this.f3604d == null && this.ox == null && this.p == null) ? false : true;
    }

    public void d() {
        this.dq.removeCallbacksAndMessages(null);
    }

    public void dq() {
        if (p()) {
            this.dq.sendEmptyMessage(100);
        }
    }

    public void dq(int i, int i2) {
        this.ia = i;
        this.kk = i2;
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what != 100) {
            return;
        }
        this.dq.sendEmptyMessageDelayed(100, 200L);
        ox();
    }

    public void dq(dlv dlvVar, dlv dlvVar2, dlv dlvVar3) {
        this.f3604d = dlvVar;
        this.ox = dlvVar2;
        this.p = dlvVar3;
    }
}
