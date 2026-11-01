package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private j f2958d;
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dq;
    private Map<String, Object> ia;
    private int iw;
    private View mn;
    private Context ox;
    private String p;
    private String s;

    public iw(j jVar, Context context, String str, String str2) {
        this.f2958d = jVar;
        this.ox = context;
        this.p = str;
        this.s = str2;
        d();
    }

    private void d() {
        j jVar = this.f2958d;
        if (jVar != null) {
            this.iw = jVar.po();
        } else {
            this.iw = -1;
        }
    }

    private boolean d(int i) {
        switch (i) {
            case 101:
            case 102:
            case 103:
                return true;
            default:
                return false;
        }
    }

    private boolean dq() {
        if (this.iw < 2) {
            return false;
        }
        HashMap hashMap = new HashMap(2);
        if (d(this.iw)) {
            hashMap.put("live_saas_param_interaction_type", Integer.valueOf(this.iw));
        }
        hashMap.put("event_tag", this.p);
        String str = this.s;
        if (str != null) {
            hashMap.put("dpa_tag", str);
        }
        if (this.ia == null) {
            this.ia = new HashMap();
        }
        com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.mn, this.f2958d.nr(), hashMap, this.ia);
        int dq = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.ox, this.f2958d, hashMap);
        int i = dq & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i2 = (dq & 65280) >> 8;
        if (i2 > 0) {
            this.ia.put("click_saas_action", Integer.valueOf(i2));
        }
        return i == 0;
    }

    public void d(Map<String, Object> map) {
        this.ia = map;
    }

    public void dq(int i) {
        this.iw = i;
    }

    public void dq(View view) {
        this.mn = view;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(Map<String, Object> map) {
        boolean dq = dq();
        d();
        if (dq) {
            return true;
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("event_tag", this.p);
        if (!TextUtils.isEmpty(this.s)) {
            hashMap.put("dpa_tag", this.s);
        }
        if ((com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.ox, this.f2958d, hashMap) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) == 0) {
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar = this.dq;
        return dqVar != null && dqVar.dq(map);
    }
}
