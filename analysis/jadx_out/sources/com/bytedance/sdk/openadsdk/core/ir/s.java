package com.bytedance.sdk.openadsdk.core.ir;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {

    public static class dq implements Comparable<dq> {

        /* renamed from: d, reason: collision with root package name */
        private String f3081d;
        private long dq;

        public dq(String str, long j) {
            this.f3081d = str;
            this.dq = j;
        }

        @Override // java.lang.Comparable
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compareTo(dq dqVar) {
            if (dqVar == null) {
                return 1;
            }
            long j = this.dq;
            long j2 = dqVar.dq;
            if (j > j2) {
                return 1;
            }
            return j == j2 ? 0 : -1;
        }
    }

    private static void delete(int i, int i2, com.bytedance.sdk.component.mn.dq dqVar, int i3) {
        if (dqVar == null) {
            return;
        }
        try {
            Map<String, ?> dq2 = dqVar.dq();
            if (dq2 != null && dq2.size() != 0) {
                int size = dq2.size();
                if (dq(i)) {
                    if (size > 1) {
                        dqVar.d();
                        return;
                    }
                    return;
                }
                if (i3 >= i2) {
                    dqVar.d();
                    return;
                }
                int i4 = size + i3;
                if (i4 > i2) {
                    PriorityQueue priorityQueue = new PriorityQueue();
                    for (Map.Entry<String, ?> entry : dq2.entrySet()) {
                        String str = (String) entry.getValue();
                        JSONObject jSONObject = (str == null || !str.contains("pre_fetch_time")) ? str != null ? new JSONObject(com.bytedance.sdk.component.utils.dq.ox(str)) : null : new JSONObject(str);
                        if (jSONObject != null) {
                            priorityQueue.add(new dq(entry.getKey(), jSONObject.optLong("pre_fetch_time")));
                        }
                    }
                    int size2 = priorityQueue.size();
                    int i5 = i4 - i2;
                    if (size2 == 0 || size2 < i5) {
                        dqVar.d();
                        return;
                    }
                    for (int i6 = 0; i6 < i5; i6++) {
                        dq dqVar2 = (dq) priorityQueue.poll();
                        if (dqVar2 != null) {
                            dqVar.dq(dqVar2.f3081d);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static j dq(String str, int i) {
        if (com.bytedance.sdk.openadsdk.core.wp.d().e() <= 0) {
            return null;
        }
        com.bytedance.sdk.component.mn.dq dq2 = n.dq(i + "_prefetch");
        String d2 = dq2.d(str, (String) null);
        if (!TextUtils.isEmpty(d2)) {
            try {
                if (d2.contains("pre_fetch_time")) {
                    d2 = new JSONObject(d2).optString("message");
                }
                j dq3 = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(com.bytedance.sdk.component.utils.dq.ox(d2)));
                dq2.dq(str);
                return dq3;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, int i, int i2) {
        if (dqVar == null || dqVar.d() == null || i2 <= 0) {
            return;
        }
        List<j> d2 = dqVar.d();
        int size = d2.size();
        try {
            com.bytedance.sdk.component.mn.dq dq2 = n.dq(i + "_prefetch");
            delete(i, i2, dq2, size);
            for (j jVar : d2) {
                String wp = jVar.wp();
                String d3 = com.bytedance.sdk.component.utils.dq.d(jVar.ve().toString());
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pre_fetch_time", System.currentTimeMillis());
                jSONObject.put("message", d3);
                dq2.dq(wp, jSONObject.toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static boolean dq(int i) {
        return i == 3 || i == 7 || i == 8;
    }
}
