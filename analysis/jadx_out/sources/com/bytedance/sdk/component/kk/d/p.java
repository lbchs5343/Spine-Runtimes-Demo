package com.bytedance.sdk.component.kk.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.q;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: d, reason: collision with root package name */
    private Object f1987d;
    private Map<String, Object> dq;
    protected ig ox;
    protected String p = null;
    protected final Map<String, String> s = new HashMap();
    protected String iw = null;
    protected boolean mn = false;

    public p(ig igVar) {
        this.ox = igVar;
        d(UUID.randomUUID().toString());
    }

    public String d() {
        return this.p;
    }

    public void d(String str) {
        this.p = str;
    }

    public void d(String str, String str2) {
        this.s.put(str, str2);
    }

    public abstract com.bytedance.sdk.component.kk.d dq();

    public void dq(q.dq dqVar) {
        if (dqVar != null && this.s.size() > 0) {
            for (Map.Entry<String, String> entry : this.s.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    dqVar.d(key, value);
                }
            }
        }
    }

    public void dq(String str) {
        this.iw = str;
    }

    public void dq(boolean z) {
        this.mn = z;
    }

    public Map<String, Object> ox() {
        return this.dq;
    }

    public Object p() {
        return this.f1987d;
    }

    public void p(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.s.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public void s(Map<String, Object> map) {
        this.dq = map;
    }
}
