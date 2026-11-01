package com.bytedance.msdk.core.f;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.msdk.api.p.s;
import com.bytedance.msdk.d.p;
import com.bytedance.msdk.dq.s.ia;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.f;
import com.bytedance.msdk.ia.h;
import com.bytedance.msdk.ia.k;
import com.bytedance.msdk.s.iw;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements ia.dq {
    private static volatile boolean dq;

    @SuppressLint({"StaticFieldLeak"})
    private static volatile d p;

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.msdk.core.f.dq f916d;
    private final ia ia;
    private final Context ox;
    private final AtomicInteger s = new AtomicInteger(0);
    private final AtomicBoolean iw = new AtomicBoolean(false);
    private final AtomicBoolean mn = new AtomicBoolean(false);
    private final AtomicBoolean kk = new AtomicBoolean(false);
    private int o = -1;

    /* renamed from: com.bytedance.msdk.core.f.d$d, reason: collision with other inner class name */
    public class RunnableC0054d implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final s f922d;
        private int ox;

        public RunnableC0054d(s sVar, int i) {
            this.f922d = sVar;
            this.ox = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!e.dq(d.this.ox)) {
                try {
                    d.this.f916d.dq(false);
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            d.this.iw.set(true);
            boolean ji = com.bytedance.msdk.core.dq.d().ji();
            if (!d.dq) {
                boolean unused2 = d.dq = true;
                iw.dq(ji);
            }
            if (com.bytedance.msdk.ia.p.dq.dq()) {
                return;
            }
            d.this.dq(ji, this.f922d, this.ox);
        }
    }

    public interface dq {
        public static final String dq = c.dq() + ".openadsdk.permission.TT_PANGOLIN";
    }

    public class ox extends BroadcastReceiver {
        private ox() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || no.ia().le()) {
                return;
            }
            com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "--==-- settings receiver");
            if (intent.getIntExtra("b_msg_id", -1) == 1) {
                try {
                    if (TextUtils.equals(intent.getStringExtra("b_msg_process_name"), h.d(d.this.ox))) {
                        com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "--==-- settings receiver, same process, return");
                    } else if (d.this.f916d != null) {
                        com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "--==-- settings receiver loadData");
                        d.this.f916d.dq(false);
                        com.bytedance.msdk.mn.dq.dq.jy().ig();
                        com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "--==-- settings receiver loadData end");
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    private d(com.bytedance.msdk.core.f.dq dqVar) {
        this.f916d = dqVar == null ? com.bytedance.msdk.core.dq.d() : dqVar;
        Context context = com.bytedance.msdk.core.dq.getContext();
        this.ox = context;
        this.ia = new ia(Looper.getMainLooper(), this);
        if (com.bytedance.msdk.core.d.no().mp()) {
            try {
                context.registerReceiver(new ox(), new IntentFilter("com.bytedance.msdk.core.setting.SettingsReceiver"), dq.dq, null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static JSONObject d() {
        String d2;
        JSONObject jSONObject = new JSONObject();
        com.bytedance.msdk.api.p.iw ji = com.bytedance.msdk.core.d.no().ji();
        if (ji != null) {
            try {
                d2 = ji.d();
            } catch (JSONException e2) {
                e2.printStackTrace();
                return jSONObject;
            }
        } else {
            d2 = "";
        }
        jSONObject.put("user_id", d2);
        jSONObject.put("channel", ji != null ? ji.ox() : "");
        jSONObject.put("sub_channel", ji != null ? ji.p() : "");
        jSONObject.put("age", ji != null ? ji.s() : 0);
        jSONObject.put("gender", ji != null ? ji.iw() : "");
        jSONObject.put("user_value_group", ji != null ? ji.mn() : "");
        return jSONObject;
    }

    private JSONObject d(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ts", System.currentTimeMillis());
            jSONObject2.put("media_sdk_version", p.d());
            jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, p.p());
            jSONObject2.put("is_fusion", 1);
            jSONObject2.put(PluginConstants.KEY_APP_ID, com.bytedance.msdk.core.d.no().ig());
            jSONObject2.put("package_name", c.dq());
            jSONObject2.put("app_version", c.ox());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("android_id", e.p());
            jSONObject3.put("imei", e.i());
            jSONObject3.put("imei_md5", k.dq(e.i()));
            jSONObject3.put("oaid", e.d());
            jSONObject3.put("gaid", com.bytedance.msdk.ia.ia.dq().d());
            jSONObject3.put("applog_did", e.dq());
            jSONObject3.put("publisher_did", com.bytedance.msdk.core.d.no().cd());
            jSONObject3.put("conn_type", e.s());
            jSONObject3.put("os", e.mp());
            jSONObject3.put("os_version", e.q());
            jSONObject3.put("vendor", e.fw());
            jSONObject3.put("device_model", e.mn());
            jSONObject3.put("mcc", e.no());
            jSONObject3.put("mnc", e.ig());
            jSONObject3.put("time_zone", e.cd());
            jSONObject3.put("ip", e.le());
            jSONObject3.put("locale_language", e.o());
            jSONObject3.put("total_space", e.f());
            jSONObject3.put("carrier_name", e.r());
            jSONObject3.put("device_name", e.ia());
            jSONObject3.put("pb", "");
            jSONObject3.put("boot", e.gh());
            jSONObject3.put("country_code", com.bytedance.msdk.core.dq.d().ia());
            jSONObject3.put("total_mem", e.jy());
            jSONObject3.put("device_type", e.mn());
            jSONObject3.put(MediaFormat.KEY_LANGUAGE, e.kk());
            jSONObject3.put("android_os_version_int", Build.VERSION.SDK_INT);
            jSONObject2.put("device", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("init_time", com.bytedance.msdk.core.d.no().ox());
            jSONObject2.put("app", jSONObject4);
            jSONObject2.put("grouping_params", d());
            JSONObject ox2 = ox();
            if (ox2 != null) {
                jSONObject2.put("user_defined_grouping_params", ox2);
            }
            if (!com.bytedance.msdk.core.d.no().mn()) {
                jSONObject2.put("etag", com.bytedance.msdk.core.dq.d().o());
            }
            if (com.bytedance.msdk.ia.iw.dq(this.ox) != null) {
                jSONObject2.put("latitude", r1.dq);
                jSONObject2.put("longitude", r1.f1101d);
            }
            jSONObject2.put("adn_version_list", mn());
            com.bytedance.msdk.core.o.s.p().dq(jSONObject2, jSONObject);
            com.bytedance.msdk.core.o.s.p().dq(jSONObject2);
            List<String> u = com.bytedance.msdk.core.d.no().u();
            if (u != null && u.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = u.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject2.put("primerit_list", jSONArray);
            }
            if (!f.dq()) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("err_type", 1);
                jSONObject5.put("err_msg", "applog so加载失败");
                jSONObject2.put("monitor_alarm", jSONObject5);
            }
            return jSONObject2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject2;
        }
    }

    public static d dq(com.bytedance.msdk.core.f.dq dqVar) {
        if (p == null) {
            synchronized (d.class) {
                try {
                    if (p == null) {
                        p = new d(dqVar);
                    }
                } finally {
                }
            }
        }
        return p;
    }

    public static String dq(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            try {
                th.printStackTrace(printWriter);
                String stringWriter2 = stringWriter.toString();
                try {
                    stringWriter.close();
                } catch (IOException unused) {
                }
                printWriter.close();
                return stringWriter2;
            } catch (IOException unused2) {
                printWriter.close();
                return null;
            }
        } catch (Exception unused3) {
            stringWriter.close();
            printWriter.close();
            return null;
        } catch (Throwable th2) {
            try {
                stringWriter.close();
            } catch (IOException unused4) {
            }
            printWriter.close();
            throw th2;
        }
    }

    private Map<String, String> dq(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str.toLowerCase(), map.get(str));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(s sVar, int i, int i2, String str, boolean z) {
        if (z) {
            try {
                com.bytedance.msdk.core.dq.d().d(false);
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        bl.dq(z ? "v4Enc_config" : "v2Enc_config", false, 0L, "code = " + i2 + "，msg = " + str);
        com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "----拉取配置失败: " + i2 + " msg = " + str);
        dq(sVar, new com.bytedance.msdk.api.dq(i2, str), i);
        if (com.bytedance.msdk.core.dq.d().ji()) {
            return;
        }
        com.bytedance.msdk.core.mp.dq.dq().dq(i2, "聚合config请求失败 code = " + i2 + " msg = " + str);
    }

    private void dq(final s sVar, final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.f.d.1
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    private void dq(s sVar, com.bytedance.msdk.api.dq dqVar, int i) throws Throwable {
        long j;
        com.bytedance.msdk.mn.s.dq().iw("server_dist_host");
        dq(sVar, dqVar);
        com.bytedance.msdk.iw.ox.s();
        com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "setting 配置拉取失败，尝试再次拉取... mLoadingSuccess:" + this.mn.get() + " mRetryCount:" + (this.s.get() + 1));
        this.iw.set(false);
        if (this.mn.get()) {
            this.kk.set(false);
            this.ia.removeCallbacksAndMessages(null);
            return;
        }
        if (this.s.get() > 3) {
            com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "setting 最多尝试四次拉取... ");
            return;
        }
        this.kk.set(true);
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.arg1 = this.s.get();
        obtain.arg2 = i;
        int i2 = this.s.get();
        if (i2 < 3) {
            long j2 = 1;
            for (int i3 = 0; i3 <= i2; i3++) {
                j2 *= 3;
            }
            j = j2 * 1000;
        } else {
            j = 120000;
        }
        this.s.incrementAndGet();
        this.ia.removeCallbacksAndMessages(null);
        this.ia.sendMessageDelayed(obtain, j);
        com.bytedance.msdk.dq.s.ox.d("SdkSettingsHelper", "setting 重试次数:" + (i2 + 1) + "  重试间隔：" + j);
    }

    private void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.optBoolean("remote_log_enabled")) {
                com.bytedance.msdk.dq.s.ox.dq();
            }
        } catch (Throwable unused) {
        }
    }

    private void dq(boolean z, long j) {
        bl.dq(z ? "v4Enc_config" : "v2Enc_config", true, j, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final boolean z, final s sVar, final int i) {
        final int[] iArr = {0};
        final int[] iArr2 = new int[1];
        final long currentTimeMillis = System.currentTimeMillis();
        Map<String, JSONObject> d2 = com.bytedance.msdk.core.o.s.p().d(i);
        final JSONObject jSONObject = d2.get("event_label_value_root");
        JSONObject jSONObject2 = d2.get("config_req_label_value_root");
        com.bytedance.sdk.component.kk.d.s d3 = com.bytedance.msdk.p.d.dq().d().d();
        d3.dq(com.bytedance.msdk.core.ox.dq());
        String ia = com.bytedance.msdk.core.d.no().ia();
        if (!TextUtils.isEmpty(ia)) {
            d3.d("X-Tt-Env", ia);
            d3.d("x-use-ppe", "1");
        }
        d3.d("User-Agent", p.dq);
        JSONObject d4 = d(jSONObject2);
        final boolean p2 = com.bytedance.msdk.core.dq.d().p();
        if (p2) {
            d3.d("x-pglcypher", "4");
            d3.dq("application/octet-stream", c.d(d4.toString()));
        } else {
            d3.ox(ox(d4));
        }
        d3.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.msdk.core.f.d.3
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, final com.bytedance.sdk.component.kk.d dVar) {
                com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.f.d.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String str;
                        JSONObject jSONObject3;
                        String str2;
                        JSONObject jSONObject4;
                        JSONObject jSONObject5 = new JSONObject();
                        int[] iArr3 = {-1};
                        com.bytedance.sdk.component.kk.d dVar2 = dVar;
                        if (dVar2 != null) {
                            iArr2[0] = dVar2.dq();
                            if (c.dq(dVar)) {
                                long elapsedRealtime = SystemClock.elapsedRealtime();
                                String dq2 = c.dq(dVar.o());
                                try {
                                    jSONObject5.put("decrypt_time", SystemClock.elapsedRealtime() - elapsedRealtime);
                                } catch (JSONException unused) {
                                }
                                if (TextUtils.isEmpty(dq2)) {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    iArr2[0] = 81015;
                                    d.this.dq(sVar, i, 81015, "response body is null", p2);
                                } else {
                                    try {
                                        JSONObject jSONObject6 = new JSONObject(dq2);
                                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                        d.this.dq(iArr2, iArr, dVar, jSONObject6, dq2, iArr3, sVar, jSONObject5, i, p2, currentTimeMillis);
                                    } catch (Throwable th) {
                                        AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                                        iArr2[0] = 81014;
                                        d.this.dq(sVar, i, 81014, th.getMessage(), p2);
                                    }
                                }
                            } else if (dVar.p() != null) {
                                try {
                                    JSONObject jSONObject7 = new JSONObject(dVar.p());
                                    int optInt = jSONObject7.optInt("cypher", -1);
                                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                                    if (optInt == 2) {
                                        str = c.dq(jSONObject7.optString("message"));
                                        if (!TextUtils.isEmpty(str)) {
                                            try {
                                                jSONObject3 = new JSONObject(str);
                                                str2 = str;
                                                jSONObject4 = jSONObject3;
                                            } catch (Throwable th2) {
                                                com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", ">>>>> setting data error: " + th2.toString());
                                            }
                                        }
                                        str2 = str;
                                        jSONObject4 = jSONObject7;
                                    } else {
                                        if (optInt == 1) {
                                            str = com.bytedance.msdk.ia.dq.d(jSONObject7.optString("message"), com.bytedance.msdk.ia.d.dq());
                                            if (!TextUtils.isEmpty(str)) {
                                                try {
                                                    com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "setting data : " + str.toString());
                                                    jSONObject3 = new JSONObject(str);
                                                    str2 = str;
                                                    jSONObject4 = jSONObject3;
                                                } catch (Throwable th3) {
                                                    com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "setting data error: ", th3);
                                                }
                                            }
                                        } else if (optInt == 0) {
                                            str = jSONObject7.optString("message");
                                            jSONObject7 = new JSONObject(str);
                                        } else {
                                            str = null;
                                        }
                                        str2 = str;
                                        jSONObject4 = jSONObject7;
                                    }
                                    jSONObject5.put("decrypt_time", SystemClock.elapsedRealtime() - elapsedRealtime2);
                                    AnonymousClass3 anonymousClass34 = AnonymousClass3.this;
                                    d.this.dq(iArr2, iArr, dVar, jSONObject4, str2, iArr3, sVar, jSONObject5, i, p2, currentTimeMillis);
                                } catch (Throwable th4) {
                                    AnonymousClass3 anonymousClass35 = AnonymousClass3.this;
                                    iArr2[0] = 81006;
                                    d.this.dq(sVar, i, 81006, th4.getMessage(), p2);
                                }
                            } else {
                                AnonymousClass3 anonymousClass36 = AnonymousClass3.this;
                                iArr2[0] = 81013;
                                d.this.dq(sVar, i, 81013, "response body is null", p2);
                            }
                        } else {
                            AnonymousClass3 anonymousClass37 = AnonymousClass3.this;
                            iArr2[0] = 81007;
                            d.this.dq(sVar, i, 81007, "response is null", p2);
                        }
                        AnonymousClass3 anonymousClass38 = AnonymousClass3.this;
                        int i2 = iArr[0];
                        int i3 = iArr2[0];
                        long currentTimeMillis2 = System.currentTimeMillis();
                        AnonymousClass3 anonymousClass39 = AnonymousClass3.this;
                        iw.dq(i2, i3, currentTimeMillis2 - currentTimeMillis, z, i == 0, jSONObject, iArr3[0], jSONObject5);
                    }
                });
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, final IOException iOException) {
                com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.f.d.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "----网络错误，服务器无响应，稍后会尝试重新拉取配置----，setting request failed..." + iOException.getMessage());
                        d.this.iw.set(false);
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        iArr[0] = 0;
                        iArr2[0] = -2;
                        d.this.dq(sVar, i, -2, "request fail：" + iOException.getMessage(), p2);
                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                        int i2 = iArr[0];
                        int i3 = iArr2[0];
                        long currentTimeMillis2 = System.currentTimeMillis();
                        AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                        iw.dq(i2, i3, currentTimeMillis2 - currentTimeMillis, z, i == 0, jSONObject, -1L, (JSONObject) null);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int[] iArr, int[] iArr2, com.bytedance.sdk.component.kk.d dVar, JSONObject jSONObject, String str, int[] iArr3, s sVar, JSONObject jSONObject2, int i, boolean z, long j) throws Throwable {
        String str2;
        String str3;
        String str4;
        long currentTimeMillis = System.currentTimeMillis() - j;
        Map<String, String> dq2 = dq(dVar.ox());
        if (dq2 != null) {
            str3 = dq2.get("active-control");
            str4 = dq2.get("ts");
            str2 = dq2.get("pst");
        } else {
            str2 = null;
            str3 = null;
            str4 = null;
        }
        String dq3 = k.dq(str + str3 + str4);
        if (!TextUtils.isEmpty(dq3) && dq3.equalsIgnoreCase(str2)) {
            com.bytedance.msdk.core.dq.d().p(str3);
        }
        dq(jSONObject);
        int optInt = jSONObject.optInt("state_code", -80000);
        String optString = jSONObject.optString("message");
        if (optInt == 20000) {
            iArr[0] = 20000;
        }
        if (optInt == 30004) {
            iArr[0] = 30004;
            this.iw.set(false);
            this.kk.set(false);
            this.ia.removeCallbacksAndMessages(null);
            this.f916d.dq(jSONObject);
            dq(sVar);
            com.bytedance.msdk.iw.ox.p();
            dq(z, currentTimeMillis);
            return;
        }
        if (optInt != 20000 || TextUtils.isEmpty(jSONObject.toString())) {
            if (optInt != -80000) {
                iArr[0] = optInt;
            }
            if (TextUtils.isEmpty(optString) && !TextUtils.isEmpty(jSONObject.optString("msg"))) {
                optString = jSONObject.optString("msg");
            }
            dq(sVar, i, iArr[0], optString, z);
            return;
        }
        iArr2[0] = 1;
        iArr[0] = 20000;
        String p2 = dVar.p();
        if (p2 != null) {
            iArr3[0] = p2.length();
        }
        this.kk.set(false);
        this.ia.removeCallbacksAndMessages(null);
        this.mn.set(true);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f916d.dq(jSONObject, false);
        jSONObject2.put("parse_save_time", SystemClock.elapsedRealtime() - elapsedRealtime);
        this.iw.set(false);
        dq(sVar);
        com.bytedance.msdk.iw.ox.p();
        if (com.bytedance.msdk.core.d.no().mp()) {
            s();
        }
        dq(z, currentTimeMillis);
    }

    private static List<String> ia() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(MediationConstant.ADN_PANGLE);
        arrayList.add(MediationConstant.ADN_GDT);
        arrayList.add(MediationConstant.ADN_ADMOB);
        arrayList.add(MediationConstant.ADN_UNITY);
        arrayList.add(MediationConstant.ADN_BAIDU);
        arrayList.add(MediationConstant.ADN_SIGMOB);
        arrayList.add(MediationConstant.ADN_MINTEGRAL);
        arrayList.add(MediationConstant.ADN_KS);
        arrayList.add(MediationConstant.ADN_KLEVIN);
        return arrayList;
    }

    private boolean iw() {
        long d2 = com.bytedance.msdk.mn.s.dq().d("max_expire_time", 0L);
        if (this.mn.get() && System.currentTimeMillis() > d2) {
            com.bytedance.msdk.dq.s.ox.d("SdkSettingsHelper", "setting 缓存过期，再次发起请求...");
            this.mn.set(false);
            dq();
        }
        return System.currentTimeMillis() > d2;
    }

    private JSONObject mn() {
        JSONObject jSONObject = new JSONObject();
        com.bytedance.msdk.iw.d.d.dq();
        List<String> ia = ia();
        if (ia != null) {
            for (String str : ia) {
                com.bytedance.msdk.dq.dq.p dq2 = com.bytedance.msdk.iw.d.d.dq().dq(str);
                if (dq2 != null) {
                    try {
                        jSONObject.put(str, dq2.d());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONObject;
    }

    private String ox(JSONObject jSONObject) {
        JSONObject dq2 = c.dq(jSONObject);
        if (dq2 != null) {
            return dq2.toString();
        }
        return null;
    }

    public static JSONObject ox() {
        Map<String, String> dq2;
        JSONObject jSONObject = new JSONObject();
        com.bytedance.msdk.api.p.iw ji = com.bytedance.msdk.core.d.no().ji();
        if (ji != null && (dq2 = ji.dq()) != null) {
            try {
                for (String str : dq2.keySet()) {
                    jSONObject.put(str, dq2.get(str));
                }
                return jSONObject;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private static void s() {
        if (no.ia().le() || com.bytedance.msdk.core.dq.getContext() == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setPackage(c.dq());
            intent.setAction("com.bytedance.msdk.core.setting.SettingsReceiver");
            intent.putExtra("b_msg_id", 1);
            intent.putExtra("b_msg_process_name", h.d(com.bytedance.msdk.core.dq.getContext()));
            com.bytedance.msdk.core.dq.getContext().sendBroadcast(intent, dq.dq);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(int i) {
        if (this.kk.get()) {
            com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "setting 正在尝试拉取配置中...");
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "setting 尝试拉取配置...");
        dq();
        ox(i);
    }

    public d dq() {
        com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "setting resetRetryCount...");
        this.s.set(0);
        this.kk.set(false);
        ia iaVar = this.ia;
        if (iaVar != null) {
            iaVar.removeCallbacksAndMessages(null);
        }
        return this;
    }

    public void dq(int i) {
        try {
            if (!this.iw.get()) {
                com.bytedance.msdk.dq.s.iw.p(new RunnableC0054d(null, i));
            } else {
                this.o = i;
                com.bytedance.msdk.dq.s.ox.d("SdkSettingsHelper", "setting 正在加载，无需再次发起请求...");
            }
        } catch (Throwable th) {
            com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    @Override // com.bytedance.msdk.dq.s.ia.dq
    public void dq(Message message) {
        if (message.what != 1) {
            return;
        }
        int i = message.arg1;
        int i2 = message.arg2;
        if (i == 3) {
            this.kk.set(false);
        }
        com.bytedance.msdk.dq.s.ox.p("SdkSettingsHelper", "setting 发起尝试拉取配置请求... mLoadingSuccess:" + this.mn.get() + "tryCount:" + (i + 1));
        try {
            if (this.mn.get()) {
                return;
            }
            ox(i2);
        } catch (Throwable unused) {
        }
    }

    public void dq(final s sVar) {
        int i = this.o;
        if (i == 2 || i == 3) {
            this.o = -1;
            dq(i);
        }
        if (sVar != null) {
            final List<String> u = com.bytedance.msdk.core.d.no().u();
            com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.f.d.2
                @Override // java.lang.Runnable
                public void run() {
                    sVar.dq(com.bytedance.msdk.core.dq.d().dq(u));
                }
            });
        }
    }

    public void ox(int i) {
        e.dq();
        try {
            if (!iw()) {
                com.bytedance.msdk.dq.s.ox.d("SdkSettingsHelper", "setting 缓存未过期，无需再次发起请求...");
            } else if (this.iw.get()) {
                com.bytedance.msdk.dq.s.ox.d("SdkSettingsHelper", "setting 正在加载，无需再次发起请求...");
            } else {
                com.bytedance.msdk.dq.s.iw.p(new RunnableC0054d(null, i));
            }
        } catch (Throwable th) {
            com.bytedance.msdk.dq.s.ox.dq("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }
}
