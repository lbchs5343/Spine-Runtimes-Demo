package com.bytedance.msdk.iw;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.msdk.core.dq;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.h;
import com.bytedance.msdk.ia.ia;
import com.bytedance.msdk.ia.no;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static long f1112d;
    private static long ia;
    private static long iw;
    private static no mn;
    private static boolean ox;
    private static AtomicBoolean p = new AtomicBoolean(false);
    static Runnable dq = new Runnable() { // from class: com.bytedance.msdk.iw.ox.2
        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.msdk.dq.s.ox.dq("TMe", "--==-- queueSize: " + ((ThreadPoolExecutor) iw.iw()).getQueue().size());
            iw.dq(ox.dq, PushUIConfig.dismissTime);
        }
    };
    private static final ComponentCallbacks s = new ComponentCallbacks() { // from class: com.bytedance.msdk.iw.ox.3
        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            com.bytedance.msdk.core.s.dq.dq.dq().d();
        }
    };

    public interface d {
        public static final String dq = c.dq() + ".openadsdk.permission.TT_PANGOLIN";
    }

    public static class dq extends BroadcastReceiver {
        private dq() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || com.bytedance.sdk.openadsdk.core.no.ia().le()) {
                return;
            }
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- event multi receiver");
            if (intent.getIntExtra("b_msg_id", -1) == 1) {
                try {
                    if (h.dq(context)) {
                        com.bytedance.msdk.s.ox.ox();
                    } else {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- event multi receiver not in main proc");
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    private static void cd() {
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).dq(0);
    }

    private static void d(final Context context) {
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "msdk_init v1.............");
        dq(true);
        f1112d = SystemClock.elapsedRealtime();
        jy();
        p.dq(context.getApplicationContext());
        ia.dq().ox();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pre_time", elapsedRealtime - f1112d);
        } catch (Throwable unused) {
        }
        fw();
        try {
            jSONObject.put("cfg_time", SystemClock.elapsedRealtime() - elapsedRealtime);
        } catch (Throwable unused2) {
        }
        ox(context);
        com.bytedance.msdk.core.dq.d().dq(true, jSONObject, new com.bytedance.msdk.core.iw.d() { // from class: com.bytedance.msdk.iw.ox.1
            @Override // com.bytedance.msdk.core.iw.d
            public void dq() {
                com.bytedance.msdk.core.dq.d().dq((com.bytedance.msdk.core.iw.d) null);
                iw.p(new Runnable() { // from class: com.bytedance.msdk.iw.ox.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.msdk.s.ox.d(com.bytedance.msdk.core.dq.getContext());
                        ox.d(context, ox.f1112d);
                        ox.q();
                    }
                });
                ox.gh();
            }
        });
        cd();
        if (com.bytedance.msdk.dq.s.ox.d()) {
            iw.dq(dq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, long j) {
        if (p.dq()) {
            com.bytedance.msdk.dq.s.ox.dq("TMe", "-----==---- 正常上报sdk_init");
            com.bytedance.msdk.s.iw.dq(j);
        } else {
            com.bytedance.msdk.dq.s.ox.dq("TMe", "-----==---- 延时上报sdk_init");
            p.dq(j);
        }
    }

    public static boolean d() {
        return ox;
    }

    public static long dq() {
        return f1112d;
    }

    public static void dq(Context context) {
        if (context != null) {
            com.bytedance.msdk.core.dq.dq(context);
        }
    }

    public static void dq(ValueSet valueSet) {
        for (com.bytedance.msdk.dq.dq.p pVar : com.bytedance.msdk.iw.d.d.dq().ox()) {
            if (pVar != null) {
                try {
                    pVar.dq(com.bytedance.msdk.core.d.no().bl(), valueSet);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    private static void dq(com.bytedance.msdk.api.p.dq dqVar) {
        com.bytedance.msdk.core.d.no().dq(dqVar.jy());
        com.bytedance.msdk.core.d.no().dq(System.currentTimeMillis());
        com.bytedance.msdk.core.d.no().ox(dqVar.dq());
        com.bytedance.msdk.core.d.no().iw(dqVar.d());
        com.bytedance.msdk.core.d.no().ox(dqVar.f());
        com.bytedance.msdk.core.d.no().s(dqVar.iw().ox());
        com.bytedance.msdk.core.d.no().iw(dqVar.iw().p());
        com.bytedance.msdk.core.d.no().dq(dqVar.iw().d());
        com.bytedance.msdk.core.d.no().dq(dqVar.iw().s());
        com.bytedance.msdk.core.d.no().dq(dqVar.iw().iw());
        com.bytedance.msdk.core.d.no().p(dqVar.iw().dq());
        com.bytedance.msdk.core.d.no().p(dqVar.p());
        com.bytedance.msdk.core.d.no().d(dqVar.s());
        com.bytedance.msdk.core.d.no().s(dqVar.iw().mn());
        com.bytedance.msdk.core.d.no().dq(dqVar.iw().ia());
        com.bytedance.msdk.core.d.no().dq(dqVar.kk(), true);
        com.bytedance.msdk.core.d.no().mn(dqVar.iw().kk());
        com.bytedance.msdk.core.d.no().d(dqVar.o());
        com.bytedance.msdk.core.d.no().ox(dqVar.q());
        com.bytedance.msdk.core.d.no().mn(dqVar.no());
        com.bytedance.msdk.core.d.no().ia(dqVar.ig());
        com.bytedance.msdk.core.d.no().dq(dqVar.mp());
        com.bytedance.msdk.core.d.no().kk(dqVar.mn().d());
        com.bytedance.msdk.core.d.no().ia(dqVar.mn().dq());
        com.bytedance.msdk.core.d.no().o(dqVar.mn().ox());
        com.bytedance.msdk.core.d.no().no(dqVar.mn().p());
        if (dqVar.q() != null) {
            try {
                com.bytedance.msdk.core.d.no().dq((List<String>) dqVar.q().get(MediationConstant.GM_EXTRA_KEY_PRIME_RIT_LIST));
            } catch (Throwable unused) {
            }
        }
        if (dqVar.ia() != null) {
            com.bytedance.msdk.core.d.no().d(dqVar.ia().dq());
        }
    }

    public static void dq(com.bytedance.msdk.api.p.dq dqVar, Context context) {
        dq(context);
        dq(dqVar);
        d(context);
    }

    private static void dq(boolean z) {
        ox = z;
        mp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        if (com.bytedance.msdk.core.dq.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(c.dq());
                intent.setAction("com.bytedance.msdk.sdkinit.EventMultiFlushReceiver");
                intent.putExtra("b_msg_id", 1);
                com.bytedance.msdk.core.dq.getContext().sendBroadcast(intent, d.dq);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static void fw() {
        try {
            com.bytedance.msdk.core.dq.d().dq(true);
        } catch (Throwable th) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "InitHelper-->initSetting->loadData Exception=" + th.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void gh() {
        if (com.bytedance.msdk.core.dq.d().ji()) {
            r();
        } else {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.bytedance.msdk.iw.ox.5
                @Override // java.lang.Runnable
                public void run() {
                    ox.r();
                }
            }, 2000L);
        }
    }

    private static void jy() {
        Application dq2 = dq.C0046dq.dq();
        if (dq2 == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "AppStateListener注册失败, app = null");
            return;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "AppStateListener注册成功");
        no noVar = mn;
        if (noVar != null) {
            noVar.dq(dq2);
        }
        no noVar2 = new no();
        mn = noVar2;
        noVar2.dq(dq2, new no.dq() { // from class: com.bytedance.msdk.iw.ox.4
            @Override // com.bytedance.msdk.ia.no.dq
            public void d() {
                if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
                    return;
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- AppStateListener on background");
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - ox.iw;
                com.bytedance.msdk.s.iw.d(j);
                com.bytedance.msdk.core.d.no().d(j);
                com.bytedance.msdk.s.d.d.dq = true;
                if (elapsedRealtime - ox.ia < 3000) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "badkground too frequently ms: " + (elapsedRealtime - ox.ia));
                } else if (com.bytedance.msdk.s.ox.d()) {
                    long unused = ox.ia = elapsedRealtime;
                    if (h.dq(com.bytedance.msdk.core.dq.getContext())) {
                        com.bytedance.msdk.s.ox.ox();
                    } else {
                        ox.f();
                    }
                }
            }

            @Override // com.bytedance.msdk.ia.no.dq
            public void dq() {
                if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
                    return;
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- AppStateListener on foreground");
                long unused = ox.iw = SystemClock.elapsedRealtime();
                com.bytedance.msdk.core.d.dq.ox();
            }
        });
        if (com.bytedance.msdk.core.d.no().mp()) {
            try {
                com.bytedance.msdk.core.dq.getContext().registerReceiver(new dq(), new IntentFilter("com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"), d.dq, null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static void mp() {
        com.bytedance.msdk.api.p.dq.kk.dq t;
        if (!ox || (t = com.bytedance.msdk.core.d.no().t()) == null) {
            return;
        }
        t.dq();
        com.bytedance.msdk.core.d.no().dq((com.bytedance.msdk.api.p.dq.kk.dq) null);
    }

    public static String ox() {
        try {
            com.bytedance.msdk.dq.dq.p dq2 = com.bytedance.msdk.iw.d.d.dq().dq(MediationConstant.ADN_PANGLE);
            return dq2 != null ? dq2.ox() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void ox(Context context) {
        com.bytedance.msdk.s.ox.dq(context);
        com.bytedance.msdk.s.ox.dq();
    }

    public static void p() {
        Context context;
        if (p.get()) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TNCManager_GroMore", "初始化TNC initTTAdNetTNC：supportTNC：" + com.bytedance.msdk.core.dq.d().n());
        if (com.bytedance.msdk.core.dq.d().n() && (context = com.bytedance.msdk.core.dq.getContext()) != null) {
            try {
                com.bytedance.msdk.p.d.dq().d().dq(context, true, new com.bytedance.msdk.p.dq(context));
            } catch (Exception unused) {
            }
            p.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q() {
        Application dq2 = dq.C0046dq.dq();
        if (dq2 == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "lowMemoryListener注册失败, app = null");
            return;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "lowMemoryListener注册成功");
        ComponentCallbacks componentCallbacks = s;
        dq2.unregisterComponentCallbacks(componentCallbacks);
        dq2.registerComponentCallbacks(componentCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r() {
        if (com.bytedance.msdk.core.dq.d().op()) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            Map<String, String> ir = com.bytedance.msdk.core.dq.d().ir();
            com.bytedance.msdk.s.iw.dq((s) null, (com.bytedance.msdk.api.dq.d) null, r.dq(stackTrace), 1);
            com.bytedance.msdk.s.iw.dq(r.dq(ir));
        }
    }

    public static void s() {
        com.bytedance.msdk.core.dq.d().d(1);
        if (!p.get()) {
            p();
        }
        Context context = com.bytedance.msdk.core.dq.getContext();
        if (context == null) {
            return;
        }
        try {
            com.bytedance.msdk.dq.s.ox.d("TNCManager_GroMore", "尝试刷新TNC tryRefreshTNCConfig");
            com.bytedance.msdk.p.d.dq().d().dq(context, false);
        } catch (Exception unused) {
        }
    }
}
