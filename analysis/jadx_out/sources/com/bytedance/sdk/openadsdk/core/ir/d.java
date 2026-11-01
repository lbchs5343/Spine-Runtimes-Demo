package com.bytedance.sdk.openadsdk.core.ir;

import android.os.SystemClock;
import android.text.TextUtils;
import g.abn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static volatile d dq;
    private com.bytedance.sdk.component.mn.dq ia;
    private com.bytedance.sdk.component.mn.dq kk;
    private com.bytedance.sdk.component.mn.dq mn;
    private com.bytedance.sdk.component.mn.dq o;
    private volatile int no = 0;
    private int ig = 0;
    private int mp = 0;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Integer> f3037d = new HashMap();
    private final ConcurrentHashMap<String, Integer> ox = new ConcurrentHashMap<>();
    private final Map<String, Long> p = new HashMap();
    private final ConcurrentHashMap<String, Long> s = new ConcurrentHashMap<>();
    private final long iw = SystemClock.elapsedRealtime();

    private d() {
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j) {
        int i = this.mp;
        if (i == 0) {
            try {
                Map<String, ?> dq2 = iw().dq();
                if (dq2 != null) {
                    Iterator<?> it = dq2.values().iterator();
                    while (it.hasNext()) {
                        this.mp = (int) (this.mp + ((Long) it.next()).longValue());
                    }
                }
            } catch (Throwable unused) {
                this.mp = -1;
            }
        } else {
            this.mp = (int) (i + j);
        }
        k.dq(this.mp, this.no);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.component.mn.dq iw() {
        if (this.kk == null) {
            this.kk = n.dq("activity_foreground_time");
        }
        return this.kk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.component.mn.dq mn() {
        if (this.o == null) {
            this.o = n.dq("activity_recorder");
        }
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        try {
            Map<String, ?> dq2 = p().dq();
            if (dq2 == null) {
                return;
            }
            Iterator<?> it = dq2.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                i += ((Integer) it.next()).intValue();
            }
            if (i != 0 && i % 75 == 0) {
                final JSONArray jSONArray = new JSONArray();
                for (String str : this.f3037d.keySet()) {
                    Integer num = this.f3037d.get(str);
                    Long l = this.p.get(str);
                    Integer num2 = this.ox.get(str);
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(abn.EXTRA_UA_APP_NAME, str);
                        jSONObject.put("rc", num != null ? num.intValue() : 0);
                        jSONObject.put("ft", l != null ? l.longValue() : 0L);
                        jSONObject.put("asc", num2 != null ? num2.intValue() : 0);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                final JSONArray jSONArray2 = new JSONArray();
                Map<String, ?> dq3 = iw().dq();
                Map<String, ?> dq4 = s().dq();
                if (dq3 != null && dq4 != null) {
                    for (String str2 : dq2.keySet()) {
                        Integer num3 = (Integer) dq2.get(str2);
                        Long l2 = (Long) dq3.get(str2);
                        Integer num4 = (Integer) dq4.get(str2);
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(abn.EXTRA_UA_APP_NAME, str2);
                            jSONObject2.put("rc", num3 != null ? num3.intValue() : 0);
                            jSONObject2.put("ft", l2 != null ? l2.longValue() : 0L);
                            jSONObject2.put("asc", num4 != null ? num4.intValue() : 0);
                            jSONArray2.put(jSONObject2);
                        } catch (JSONException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
                final long elapsedRealtime = (SystemClock.elapsedRealtime() - this.iw) / 1000;
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.d.4
                    @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                    public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("ara", jSONArray);
                        jSONObject3.put("hara", jSONArray2);
                        jSONObject3.put("rt", elapsedRealtime);
                        jSONObject3.put("hrc", d.this.no);
                        jSONObject3.put("drc", d.this.ig);
                        return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("ad_activity_record").d(jSONObject3.toString());
                    }
                }, "ad_activity_record");
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.component.mn.dq p() {
        if (this.mn == null) {
            this.mn = n.dq("activity_resume_count");
        }
        return this.mn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.component.mn.dq s() {
        if (this.ia == null) {
            this.ia = n.dq("activity_adshow_count");
        }
        return this.ia;
    }

    public void d() {
        if (this.s.size() == 1) {
            for (String str : this.s.keySet()) {
                Integer num = this.ox.get(str);
                this.ox.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                p(str);
            }
        }
    }

    public void d(final String str) {
        com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.p().dq(str, d.this.p().d(str, 0) + 1);
                if (d.this.no == 0) {
                    d dVar = d.this;
                    dVar.no = dVar.mn().d("histRunningCount", 0) + 1;
                    d.this.mn().dq("histRunningCount", d.this.no);
                }
            }
        });
    }

    public void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Integer num = this.f3037d.get(str);
        this.f3037d.put(str, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
        this.s.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
        if (this.s.size() > 1) {
            this.ig++;
        }
        d(str);
    }

    public void dq(final String str, final long j) {
        com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.d.2
            @Override // java.lang.Runnable
            public void run() {
                long d2 = d.this.iw().d(str, 0L);
                d.this.iw().dq(str, (d2 >= 0 ? d2 : 0L) + j);
                d.this.ox();
                d.this.dq(j);
            }
        });
    }

    public void ox(String str) {
        if (TextUtils.isEmpty(str) || !this.s.containsKey(str)) {
            return;
        }
        long elapsedRealtime = (SystemClock.elapsedRealtime() - this.s.remove(str).longValue()) / 1000;
        if (elapsedRealtime >= 0) {
            Long l = this.p.get(str);
            if (l == null || l.longValue() < 0) {
                l = 0L;
            }
            this.p.put(str, Long.valueOf(l.longValue() + elapsedRealtime));
            dq(str, elapsedRealtime);
        }
    }

    public void p(final String str) {
        com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.d.3
            @Override // java.lang.Runnable
            public void run() {
                d.this.s().dq(str, d.this.s().d(str, 0) + 1);
            }
        });
    }
}
