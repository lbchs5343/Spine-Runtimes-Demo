package com.bytedance.sdk.openadsdk.core.live.dq;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.er;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.le;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq implements p {

    /* renamed from: d, reason: collision with root package name */
    protected volatile String f3158d;
    protected volatile Bridge dq = null;
    protected JSONObject ox;

    public abstract boolean Q_();

    public boolean a_(j jVar) {
        if (jVar == null) {
            return false;
        }
        return dq(jVar.ap(), jVar.po());
    }

    public void b_(String str) {
    }

    public long d(j jVar) {
        if (jVar == null) {
            return 0L;
        }
        String ap = jVar.ap();
        if (TextUtils.isEmpty(ap)) {
            ap = dq(jVar.kf());
        }
        try {
            return Long.parseLong(ap);
        } catch (Exception unused) {
            return 0L;
        }
    }

    public String dq(fw fwVar) {
        Map<String, String> dq;
        if (fwVar == null) {
            return null;
        }
        String dq2 = fwVar.dq();
        if (TextUtils.isEmpty(dq2)) {
            return null;
        }
        if ((dq2.startsWith("snssdk2329") || dq2.startsWith("snssdk1128")) && (dq = er.dq(dq2)) != null) {
            return dq.get("room_id");
        }
        return null;
    }

    public String dq(j jVar, String str, Map map) {
        if (map != null) {
            try {
                String str2 = (String) map.get("dpa_tag");
                if (!TextUtils.isEmpty(str2)) {
                    String s = le.s(jVar, str2);
                    if (!TextUtils.isEmpty(s)) {
                        JSONObject jSONObject = new JSONObject(str);
                        JSONObject jSONObject2 = new JSONObject(s);
                        Iterator<String> keys = jSONObject2.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            jSONObject.putOpt(next, jSONObject2.opt(next));
                        }
                        return jSONObject.toString();
                    }
                }
            } catch (Exception e2) {
                ig.d("TTLiveSDkBridge", e2);
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq("getEcomLiveParams", e2);
                return str;
            }
        }
        return str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(Bridge bridge) {
        if (bridge == null) {
            return;
        }
        this.dq = new com.bytedance.sdk.openadsdk.f.dq(bridge);
    }

    public void dq(j jVar, String str, int i, int i2, int i3) {
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, str, i, i2, i3, Q_());
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(String str, j jVar, long j) {
    }

    public boolean dq(j jVar, int i) {
        return jVar.po() == 7 || i == 103;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public boolean dq(String str, int i) {
        try {
            if (Long.parseLong(str) <= 0) {
                return false;
            }
            switch (i) {
            }
            return false;
        }
    }

    public int ox(j jVar) {
        fw kf;
        if (1 != com.bytedance.sdk.openadsdk.core.live.d.dq().s()) {
            return 2;
        }
        if (!com.bytedance.sdk.openadsdk.core.live.p.dq.dq(jVar)) {
            return 3;
        }
        if (jVar != null && c.iw(wp.getContext()) && (kf = jVar.kf()) != null) {
            String dq = kf.dq();
            if (!TextUtils.isEmpty(dq)) {
                Uri parse = Uri.parse(dq);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                return c.d(wp.getContext(), intent, true) ? 0 : 4;
            }
        }
        return 0;
    }
}
