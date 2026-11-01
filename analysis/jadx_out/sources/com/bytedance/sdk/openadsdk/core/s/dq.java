package com.bytedance.sdk.openadsdk.core.s;

import android.text.TextUtils;
import com.bytedance.sdk.component.kk.d.p;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.ir.wn;
import com.bytedance.sdk.openadsdk.core.le.s;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements dq.d {
    private static volatile dq dq = null;
    private static final HashSet iw;
    private static final String p = "com.bytedance.sdk.openadsdk.core.s.dq";
    private static HashMap<String, Long> s;

    /* renamed from: d, reason: collision with root package name */
    private CopyOnWriteArrayList<JSONObject> f3529d = new CopyOnWriteArrayList<>();
    private com.bytedance.sdk.openadsdk.core.ir.dq ox;

    static {
        String name = dq.class.getName();
        s = new HashMap<>();
        iw = new HashSet(Arrays.asList("dalvik.system.VMStack.getThreadStackTrace", "java.lang.Thread.getStackTrace", name));
    }

    private dq() {
        com.bytedance.sdk.openadsdk.core.ir.dq p2 = no.ia().p();
        this.ox = p2;
        if (p2 != null) {
            p2.d(this);
        }
    }

    private JSONArray dq(StackTraceElement[] stackTraceElementArr) {
        JSONArray jSONArray = new JSONArray();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (stackTraceElement != null) {
                if (!iw.contains(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName())) {
                    String className = stackTraceElement.getClassName();
                    if (className != null && className.startsWith("android.app")) {
                        break;
                    }
                    jSONArray.put(stackTraceElement.toString());
                } else {
                    continue;
                }
            }
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject dq(int i, String str, StackTraceElement[] stackTraceElementArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rit", str);
            jSONObject.put("appid", no.ia().mp());
            jSONObject.put("app_version", c.no());
            jSONObject.put("ad_sdk_version", op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            jSONObject.put("adtype", i);
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("callstack", dq(stackTraceElementArr));
            jSONObject.put("type", "callstack");
            jSONObject.put("device_info", com.bytedance.sdk.openadsdk.core.ox.dq.dq(wp.getContext(), i));
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private boolean dq(Long l) {
        return !dq(new Date(), new Date(l.longValue()));
    }

    private boolean dq(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Long l = s.get(str);
            if (l == null || l.longValue() == 0) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis > 0) {
                    s.put(str, Long.valueOf(currentTimeMillis));
                }
            } else if (!dq(l)) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            ig.d("callstack error:" + th.getMessage());
            return true;
        }
    }

    private boolean dq(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5);
    }

    public static dq ox() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        CopyOnWriteArrayList<JSONObject> copyOnWriteArrayList = this.f3529d;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<JSONObject> it = this.f3529d.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("stats_list", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.f3529d.clear();
        String ia = c.ia("/api/ad/union/sdk/callstack/batch/");
        wn wnVar = new wn(s.dq().d().iw());
        wnVar.dq(ia);
        wnVar.ox(jSONObject, "callstack");
        wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.s.dq.2
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar != null) {
                    ig.dq("CallChainStatistic", Boolean.valueOf(dVar.ia()), dVar.p());
                } else {
                    ig.dq("CallChainStatistic", "NetResponse is null");
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(p pVar, IOException iOException) {
                ig.dq("CallChainStatistic", iOException.getMessage());
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void d() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void dq() {
        if (no.ia().le()) {
            return;
        }
        p();
    }

    public void dq(int i, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (dVar == null) {
            return;
        }
        dq(i, dVar.mn());
    }

    public void dq(final int i, final String str) {
        if (d.dq() && dq(str)) {
            final StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            mn.dq(new kk("callChainStatistic") { // from class: com.bytedance.sdk.openadsdk.core.s.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.f3529d.add(dq.this.dq(i, str, stackTrace));
                    if (dq.this.f3529d.size() < 3) {
                        return;
                    }
                    try {
                        dq.this.p();
                    } catch (OutOfMemoryError e2) {
                        e2.printStackTrace();
                    }
                }
            }, 1);
        }
    }
}
