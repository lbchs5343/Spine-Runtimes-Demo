package com.bytedance.msdk.core.iw;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.dq.dq.p;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {
    private final Map<String, com.bytedance.msdk.api.p.dq.d.iw.dq> dq = new ConcurrentHashMap();

    public p d(String str) {
        return com.bytedance.msdk.iw.d.d.dq().dq(str);
    }

    public Map<String, Object> d(Context context, Map<String, Object> map, String str) {
        com.bytedance.msdk.dq.s.p.dq(context);
        com.bytedance.msdk.api.p.dq.d.iw.dq dq = dq(str);
        if (dq != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("buyerId", dq.dq(context, map));
            hashMap.put("sdkInfo", dq.d(context, map));
            return hashMap;
        }
        p d2 = d(str);
        if (d2 == null) {
            return null;
        }
        return d2.d(context, map);
    }

    public com.bytedance.msdk.api.p.dq.d.iw.dq dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.dq.get(str);
    }

    public String dq(Context context, Map<String, Object> map, String str) {
        com.bytedance.msdk.dq.s.p.dq(context);
        com.bytedance.msdk.api.p.dq.d.iw.dq dq = dq(str);
        if (dq != null) {
            return dq.dq(null, null);
        }
        p d2 = d(str);
        if (d2 == null) {
            return null;
        }
        return d2.dq(context, map);
    }

    public Map<String, com.bytedance.msdk.api.p.dq.d.iw.dq> dq() {
        return this.dq;
    }

    public void dq(String str, com.bytedance.msdk.api.p.dq.d.iw.dq dqVar) {
        this.dq.put(str, dqVar);
    }
}
