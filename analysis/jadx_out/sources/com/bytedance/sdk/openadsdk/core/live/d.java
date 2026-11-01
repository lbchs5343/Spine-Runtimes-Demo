package com.bytedance.sdk.openadsdk.core.live;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.iw;
import com.bytedance.sdk.openadsdk.core.live.dq.mn;
import com.bytedance.sdk.openadsdk.core.live.dq.p;
import com.bytedance.sdk.openadsdk.core.live.dq.s;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.er;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private final p dq;

    public static final class dq {
        private static final d dq = new d();
    }

    private d() {
        if (op.s) {
            this.dq = new mn();
        } else if (op.iw()) {
            this.dq = new s();
        } else {
            this.dq = new com.bytedance.sdk.openadsdk.core.live.dq.d();
        }
    }

    public static final d dq() {
        return dq.dq;
    }

    public int d(Context context, j jVar, Map<String, Object> map) {
        return this.dq.d(context, jVar, map);
    }

    public void d() {
        this.dq.dq();
    }

    public boolean d(j jVar) {
        if (jVar == null || TextUtils.isEmpty(jVar.ap())) {
            return false;
        }
        return dq(jVar.ap(), jVar.po());
    }

    public int dq(Context context, j jVar, Map<String, Object> map) {
        if (context == null || jVar == null) {
            return 5;
        }
        return this.dq.dq(context, jVar, map);
    }

    public int dq(iw iwVar) {
        if (iwVar == null) {
            return 5;
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("event_tag", iwVar.no());
        hashMap.put("reward_countdown", Long.valueOf(iwVar.jy()));
        return d(iwVar.getContext(), iwVar.d(), hashMap);
    }

    public int dq(com.bytedance.sdk.openadsdk.core.live.d.d dVar, boolean z) {
        return this.dq.dq(dVar, z);
    }

    public int dq(j jVar, com.bytedance.sdk.openadsdk.core.live.dq.ox oxVar, String str) {
        return this.dq.dq(jVar, oxVar, str);
    }

    public int dq(String str) {
        return this.dq.dq(str);
    }

    public void dq(View view, er erVar, Map<String, Object> map, Map<String, Object> map2) {
        Object tag;
        if (view == null || erVar == null || (tag = view.getTag(TTAdConstant.KEY_CLICK_AREA)) == null || !(tag instanceof Integer)) {
            return;
        }
        int intValue = ((Integer) tag).intValue();
        int i = intValue & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i2 = (intValue & 65280) >>> 8;
        if (i <= 0 || i2 <= 0) {
            return;
        }
        if (i == 101 && !erVar.ox()) {
            i = 102;
        }
        map.put("live_saas_param_interaction_type", Integer.valueOf(i));
        map2.put("click_saas_area", Integer.valueOf(i2));
    }

    public void dq(Bridge bridge) {
        this.dq.dq(bridge);
    }

    public void dq(String str, j jVar, long j) {
        this.dq.dq(str, jVar, j);
    }

    public void dq(String str, boolean z) {
        p pVar = this.dq;
        if (pVar != null) {
            pVar.dq(str, z);
        }
    }

    public boolean dq(j jVar) {
        return this.dq.dq(jVar);
    }

    public boolean dq(String str, int i) {
        return this.dq.dq(str, i);
    }

    public JSONObject ia() {
        return this.dq.mn();
    }

    public int iw() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().ia();
    }

    public String mn() {
        return this.dq.iw();
    }

    public int ox() {
        return this.dq.d();
    }

    public int ox(j jVar) {
        if (wp.d().kf()) {
            return this.dq.b_(jVar);
        }
        return 0;
    }

    public void p() {
        this.dq.ox();
    }

    public void p(j jVar) {
        if (jVar == null || TextUtils.isEmpty(jVar.ap())) {
            return;
        }
        int ia = com.bytedance.sdk.openadsdk.core.ox.p.dq().ia() + 1;
        if (ia > 100) {
            ia = 100;
        }
        com.bytedance.sdk.openadsdk.core.ox.p.dq().d(ia);
    }

    public int s() {
        return this.dq.p();
    }
}
