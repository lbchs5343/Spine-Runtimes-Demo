package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.core.content.FileProvider;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.cpq;
import g.hat;
import java.io.Serializable;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class p implements Initializer {

    /* renamed from: d, reason: collision with root package name */
    private static Boolean f3348d;
    private static int dq;
    private final ir ox = new ir();
    private volatile boolean p = false;
    private AtomicBoolean s = new AtomicBoolean(false);

    public p(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER)) {
            return;
        }
        Serializable serializable = bundle.getSerializable(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER);
        if (serializable instanceof EventListener) {
            com.bytedance.sdk.openadsdk.core.e.dq.d.dq().dq((EventListener) serializable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(@ForbidWrapParam final Context context, final long j, final long j2, final long j3, final kx kxVar, final boolean z, final com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, final String str, final int i, @ForbidWrapParam final ValueSet valueSet) {
        le.ox();
        if (wp.d().vw()) {
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.p.8
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    boolean ig = no.ia().ig();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(MediationConstant.EXTRA_DURATION, j);
                    jSONObject.put("is_async", z);
                    jSONObject.put("is_multi_process", dqVar.o());
                    jSONObject.put("is_debug", p.dq(dqVar));
                    jSONObject.put("is_activate_init", ig);
                    jSONObject.put("is_plugin", op.dq());
                    jSONObject.put("has_kotlin", p.p());
                    jSONObject.put("use_mediation", dqVar.jy());
                    jSONObject.put("is_androidx", p.ox());
                    jSONObject.put("host_abi", com.bytedance.sdk.openadsdk.core.e.d.d.dq());
                    jSONObject.put("minSdkVersion", com.bytedance.sdk.openadsdk.core.ir.c.ia(context));
                    jSONObject.put("targetSdkVersion", com.bytedance.sdk.openadsdk.core.ir.c.mn(context));
                    jSONObject.put("ttvideo_plugin_config", true);
                    jSONObject.put("ttvideo_can_use", op.p());
                    jSONObject.put("is_keva_init_success", com.bytedance.sdk.openadsdk.core.ir.n.d());
                    jSONObject.put("thread_name", str);
                    jSONObject.put("thread_priority", i);
                    jSONObject.put("is_boost", com.bytedance.sdk.openadsdk.core.ox.s.ox());
                    no.ia().d(false);
                    Object objectValue = valueSet.objectValue(9, Object.class);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("main_cost", j);
                    jSONObject2.put("callback_cost", j2);
                    jSONObject2.put("total_cost", j3);
                    if (objectValue != null) {
                        jSONObject2.put("plugin", objectValue);
                    }
                    JSONObject jSONObject3 = new JSONObject();
                    kxVar.dq(jSONObject3, 20L);
                    jSONObject2.put("init", jSONObject3);
                    jSONObject.put("cost", jSONObject2);
                    if (!dqVar.jy()) {
                        try {
                            Object invoke = Class.forName("com.baidu.mobads.sdk.api.AdSettings").getMethod("getSDKVersion", null).invoke(null, null);
                            if (invoke instanceof String) {
                                jSONObject.put("baidu_version", invoke);
                            }
                        } catch (Throwable unused) {
                        }
                        try {
                            Object invoke2 = Class.forName("com.qq.e.comm.managers.status.SDKStatus").getMethod("getIntegrationSDKVersion", null).invoke(null, null);
                            if (invoke2 instanceof String) {
                                jSONObject.put("gdt_version", invoke2);
                            }
                        } catch (Throwable unused2) {
                        }
                        try {
                            Object invoke3 = Class.forName("com.kwad.sdk.api.KsAdSDK").getMethod("getSDKVersion", null).invoke(null, null);
                            if (invoke3 instanceof String) {
                                jSONObject.put("ks_version", invoke3);
                            }
                        } catch (Throwable unused3) {
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.gh.dq.ox d2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pangle_sdk_init").d(jSONObject.toString());
                    StringBuilder sb = new StringBuilder();
                    sb.append(j2);
                    return d2.s(sb.toString());
                }
            }, "pangle_sdk_init");
        }
    }

    private void d(@ForbidWrapParam com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, @ForbidWrapParam ValueSet valueSet) {
        if (dqVar == null) {
            return;
        }
        String d2 = dqVar.d();
        if (d2 == null || d2.isEmpty()) {
            d2 = com.bytedance.sdk.openadsdk.core.mn.dq.d(wp.getContext());
        }
        Bridge bridge = (Bridge) valueSet.objectValue(16, Bridge.class);
        if (bridge != null) {
            no.ia().dq(bridge);
        }
        no.ia().p(d2);
        no.ia().ox(dqVar.dq());
        no.ia().ox(dqVar.ox());
        no.ia().s(dqVar.p());
        no.ia().iw(dqVar.s());
        no.ia().d(dqVar.iw());
        no.ia().p(dqVar.mn());
        no.ia().dq(dqVar.kk());
        no.ia().mn(dqVar.jy());
        no.ia().dq(dqVar.no());
        if (op.f3334d >= 5500) {
            no.ia().p(dqVar.mp());
            no.ia().dq(dqVar.ig());
        } else {
            no.ia().p(valueSet.intValue(7));
            no.ia().dq(valueSet.intValue(8));
        }
        if (dq(dqVar)) {
            com.bytedance.sdk.component.utils.ig.d();
            com.bytedance.sdk.openadsdk.tools.d.d();
        }
        try {
            Boolean bool = (Boolean) valueSet.objectValue(14, Boolean.class);
            if (bool != null) {
                op.dq = bool.booleanValue();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(@ForbidWrapParam final Context context, final long j, final long j2, final long j3, final kx kxVar, final boolean z, final com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, final String str, final int i, @ForbidWrapParam final ValueSet valueSet) {
        com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    p.this.d(context, j, j2, j3, kxVar, z, dqVar, str, i, valueSet);
                } catch (Throwable unused) {
                }
            }
        }, PushUIConfig.dismissTime);
    }

    private void dq(final Context context, @ForbidWrapParam final ValueSet valueSet, @ForbidWrapParam final EventListener eventListener) {
        long elapsedRealtime;
        String name;
        int priority;
        try {
            final com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = new com.bytedance.sdk.openadsdk.f.d.ox.dq(valueSet);
            wp.dq(context);
            try {
                elapsedRealtime = valueSet.longValue(1, SystemClock.elapsedRealtime());
            } catch (Exception unused) {
                elapsedRealtime = SystemClock.elapsedRealtime();
            }
            Thread currentThread = Thread.currentThread();
            try {
                name = valueSet.stringValue(2, currentThread.getName());
            } catch (Exception unused2) {
                name = currentThread.getName();
            }
            final String str = name;
            try {
                priority = valueSet.intValue(3, currentThread.getPriority());
            } catch (Exception unused3) {
                priority = currentThread.getPriority();
            }
            final int i = priority;
            if (elapsedRealtime == 0) {
                elapsedRealtime = SystemClock.elapsedRealtime();
            }
            final long j = elapsedRealtime;
            final kx dq2 = kx.dq(MediationConstant.EXTRA_DURATION);
            if (this.p) {
                dq(eventListener);
                return;
            }
            dq(dqVar, valueSet);
            final long elapsedRealtime2 = SystemClock.elapsedRealtime() - j;
            dq2.d("sync_cost");
            com.bytedance.sdk.component.o.no.f2029d.no().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.1
                @Override // java.lang.Runnable
                public void run() {
                    dq2.d("async_wait_cost");
                    if (p.this.dq(context, dqVar, eventListener, dq2)) {
                        dq2.d("async_done_cost");
                        long elapsedRealtime3 = SystemClock.elapsedRealtime() - j;
                        dq2.dq();
                        p.this.dq(context, elapsedRealtime2, elapsedRealtime3, SystemClock.elapsedRealtime() - j, dq2, true, dqVar, str, i, valueSet);
                    }
                }
            });
            com.bytedance.sdk.component.o.mn.dq(-1);
            com.bytedance.sdk.openadsdk.dq.d.d.dq();
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("init sync") { // from class: com.bytedance.sdk.openadsdk.core.p.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (p.this.s.get()) {
                            return;
                        }
                        p.this.s.set(true);
                        mn.dq();
                        com.bytedance.sdk.openadsdk.core.ir.o.ox();
                        com.bytedance.sdk.openadsdk.dq.dq.dq.dq(dqVar.dq(), no.ia().kk());
                        com.bytedance.sdk.component.panglearmor.kk.dq();
                        com.bytedance.sdk.openadsdk.jy.d.d(context);
                        com.bytedance.sdk.openadsdk.jy.d.dq(context);
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.ig.dq("Init sync exception: ".concat(String.valueOf(th)));
                    }
                }
            });
            le.dq = true;
        } catch (Throwable th) {
            if (eventListener != null) {
                cpq f2 = cpq.f();
                f2.f13287e = false;
                f2.f13286d = TTAdConstant.INIT_LOCAL_FAIL_CODE;
                f2.f13283a = th.getMessage() == null ? "init error" : th.getMessage();
                eventListener.onEvent(1, f2.h());
                com.bytedance.sdk.component.utils.ig.ox("TTAdSdk", " Pangle exec init fail, msg = ", th.getMessage());
                this.p = false;
                dq(new com.bytedance.sdk.openadsdk.f.d.ox.dq(valueSet), this.p);
            }
        }
    }

    private void dq(@ForbidWrapParam final Context context, @ForbidWrapParam final com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar) {
        com.bytedance.sdk.component.o.mn.dq(new com.bytedance.sdk.component.o.kk("init sync") { // from class: com.bytedance.sdk.openadsdk.core.p.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (no.ia().h() != null) {
                        no.ia().h().call(20, hat.f19147b, Void.class);
                    } else {
                        com.bytedance.sdk.component.utils.ig.p("TTAdSdk", "下载SDK 初始化失败 ， bridge = null ！！！");
                    }
                    com.bytedance.sdk.openadsdk.core.bl.mn d2 = wp.d();
                    if (!d2.oh()) {
                        synchronized (d2) {
                            try {
                                if (!d2.oh()) {
                                    d2.dq();
                                }
                            } finally {
                            }
                        }
                    }
                    com.bykv.vk.openvk.component.video.api.ox.dq(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
                    com.bytedance.sdk.openadsdk.core.gh.d.dq(context, dqVar.o());
                    com.bytedance.sdk.openadsdk.core.o.p.ox();
                    ce.ox();
                    com.bykv.vk.openvk.component.video.dq.dq.dq(com.bytedance.sdk.openadsdk.h.kk.dq(0));
                    if (d2.mn()) {
                        final com.bykv.vk.openvk.component.video.api.dq.d dq2 = com.bytedance.sdk.openadsdk.h.kk.dq(1);
                        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("preloadTTVideo") { // from class: com.bytedance.sdk.openadsdk.core.p.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.bytedance.sdk.component.ig.d.d.dq(context, dq2.p(), 52428800, com.bytedance.sdk.openadsdk.h.kk.d(), com.bytedance.sdk.openadsdk.h.kk.ox(), p.dq(dqVar), new VideoEventEngineUploader() { // from class: com.bytedance.sdk.openadsdk.core.p.4.1.1
                                    @Override // com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader
                                    public void onEvent(String str, JSONObject jSONObject) {
                                        mn.dq().dq(str, jSONObject);
                                    }
                                });
                            }
                        });
                    }
                    com.bytedance.sdk.openadsdk.core.ir.o.q();
                    le.dq(context);
                    com.bytedance.sdk.component.o.mn.dq(true);
                    com.bytedance.sdk.component.o.mn.dq(new com.bytedance.sdk.openadsdk.core.gh.d.dq());
                    com.bytedance.sdk.openadsdk.core.dislike.dq.dq();
                    com.bytedance.sdk.openadsdk.core.ir.o.dq(context);
                    com.bytedance.sdk.openadsdk.dq.d.d.ox(context);
                    com.bytedance.sdk.openadsdk.core.ir.o.s(context);
                    if (com.bytedance.sdk.openadsdk.ig.ox.dq()) {
                        com.bytedance.sdk.openadsdk.ig.dq.dq(context);
                    }
                    if (Build.VERSION.SDK_INT >= 29) {
                        try {
                            com.bytedance.sdk.component.utils.gh.dq();
                            com.bytedance.sdk.component.utils.q.dq(new com.bytedance.sdk.openadsdk.h.s());
                        } catch (Exception unused) {
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.ir.mp.dq();
                    com.bytedance.sdk.openadsdk.core.ir.ia.dq(dqVar);
                    com.bytedance.sdk.openadsdk.core.ir.k.dq();
                    com.bytedance.sdk.openadsdk.core.u.dq.dq().dq(context);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ig.d("TTAdSdk", "Unexpected asyn init error: ".concat(String.valueOf(th)));
                }
            }
        }, 10);
        final boolean o = dqVar.o();
        com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.5
            @Override // java.lang.Runnable
            public void run() {
                if (no.ia().le()) {
                    com.bytedance.sdk.component.utils.ig.p("lqmt", "setting req is fb, qw, Sdk.iB: true");
                    return;
                }
                if (!o) {
                    com.bytedance.sdk.openadsdk.core.bl.s.dq(wp.d()).p();
                } else if (com.bytedance.sdk.component.utils.fw.dq(context)) {
                    com.bytedance.sdk.openadsdk.core.bl.s.dq(wp.d()).p();
                    com.bytedance.sdk.component.utils.ig.dq("TTAdSdk", "Load setting in main process");
                }
                com.bytedance.sdk.openadsdk.core.gh.d.p();
            }
        }, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.6
            @Override // java.lang.Runnable
            public void run() {
                if (no.ia().le()) {
                    com.bytedance.sdk.component.utils.ig.p("lqmt", "upApL is fb, qw, Sdk.iB: true");
                } else {
                    com.bytedance.sdk.openadsdk.jy.d.d();
                }
            }
        }, 60000L);
    }

    private void dq(@ForbidWrapParam Context context, @ForbidWrapParam com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, kx kxVar) {
        if (com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            try {
                if (dq(dqVar)) {
                    com.bytedance.sdk.openadsdk.core.ir.cd.dq();
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq();
                    com.bytedance.sdk.component.kk.dq.dq();
                    com.bytedance.sdk.openadsdk.tools.d.d();
                }
            } catch (Throwable unused) {
            }
            kxVar.d("debug_set_cost");
            com.bytedance.sdk.openadsdk.core.multipro.p.dq(context);
            kxVar.d("web_dir_cost");
            com.bytedance.sdk.component.kk.ox.dq.dq((ThreadPoolExecutor) com.bytedance.sdk.component.o.mn.dq());
            kxVar.d("thread_pool_cost");
            com.bykv.vk.openvk.component.video.api.ox.dq(dqVar.o());
            if (dqVar.o()) {
                com.bytedance.sdk.openadsdk.core.multipro.d.dq();
                no.ia().k();
            } else {
                com.bytedance.sdk.openadsdk.core.multipro.d.d();
            }
            kxVar.d("multi_cost");
            com.bykv.vk.openvk.component.video.api.ox.dq(context, null);
            com.bykv.vk.openvk.component.video.dq.dq.dq(context);
            kxVar.d("video_config_cost");
            le.s();
            kxVar.d("dyna_init_cost");
            com.bytedance.sdk.openadsdk.core.ir.k.dq(context);
            kxVar.d("armor_init_cost");
        }
    }

    private void dq(final EventListener eventListener) {
        com.bytedance.sdk.openadsdk.core.ox.dq.dq();
        com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.3
            @Override // java.lang.Runnable
            public void run() {
                EventListener eventListener2 = eventListener;
                if (eventListener2 != null) {
                    cpq f2 = cpq.f();
                    f2.f13287e = true;
                    eventListener2.onEvent(AVMDLDataLoader.KeyIsLiveSetP2pAllow, f2.h());
                }
            }
        });
    }

    private void dq(@ForbidWrapParam com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, @ForbidWrapParam ValueSet valueSet) {
        d(dqVar, valueSet);
        le.p();
        com.bytedance.sdk.openadsdk.core.gh.d.d();
        try {
            com.bytedance.sdk.openadsdk.core.ugeno.s.dq();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (dqVar.o()) {
            com.bytedance.sdk.openadsdk.core.ir.n.dq();
        }
        com.bytedance.sdk.openadsdk.core.ox.ox.dq().dq(dqVar.o());
    }

    private static void dq(com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, boolean z) {
        if (dq(dqVar)) {
            com.bytedance.sdk.openadsdk.tools.d.ox(1, z ? "1" : "0");
            dq(dqVar.no());
            com.bytedance.sdk.openadsdk.tools.d.d(2, dqVar.dq());
            try {
                Thread.currentThread().getContextClassLoader().loadClass("com.bytedance.sdk.openadsdk.core.GlobalInfo");
                com.bytedance.sdk.openadsdk.tools.d.ox(2, "0");
            } catch (Exception unused) {
                com.bytedance.sdk.openadsdk.tools.d.ox(2, "1");
            }
            com.bytedance.sdk.openadsdk.tools.d.d(0, op.ox);
        }
    }

    private static void dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar) {
        String str;
        if (pVar == null) {
            pVar = no.dq;
        }
        if (pVar != null) {
            com.bytedance.sdk.openadsdk.tools.d.ox(19, pVar == no.dq ? "1" : "0");
            com.bytedance.sdk.openadsdk.tools.d.ox(7, String.valueOf(pVar.dq() ? 1 : 0));
            com.bytedance.sdk.openadsdk.f.d.ox.ox ia = pVar.ia();
            String str2 = "";
            if (ia != null) {
                str = ia.dq() + "," + ia.d();
            } else {
                str = "";
            }
            com.bytedance.sdk.openadsdk.tools.d.ox(8, str);
            com.bytedance.sdk.openadsdk.tools.d.ox(9, String.valueOf(pVar.ox() ? 1 : 0));
            String kk = pVar.kk();
            com.bytedance.sdk.openadsdk.tools.d.ox(10, kk != null ? kk.trim() : "");
            com.bytedance.sdk.openadsdk.tools.d.ox(11, String.valueOf(pVar.p() ? 1 : 0));
            com.bytedance.sdk.openadsdk.tools.d.ox(12, String.valueOf(pVar.s() ? 1 : 0));
            com.bytedance.sdk.openadsdk.tools.d.ox(17, String.valueOf(pVar.d() ? 1 : 0));
            if (op.f3334d >= 4600) {
                com.bytedance.sdk.openadsdk.tools.d.ox(22, String.valueOf(pVar.iw() ? 1 : 0));
            }
            String o = pVar.o();
            com.bytedance.sdk.openadsdk.tools.d.ox(18, o != null ? o.trim() : "");
            try {
                if (pVar.no() != null) {
                    str2 = pVar.no().trim();
                }
                com.bytedance.sdk.openadsdk.tools.d.ox(13, str2);
            } catch (Exception unused) {
                com.bytedance.sdk.component.utils.ig.d("Get oaid from controller failed");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(@ForbidWrapParam Context context, @ForbidWrapParam com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar, @ForbidWrapParam EventListener eventListener, kx kxVar) {
        if (this.p) {
            dq(eventListener);
            return false;
        }
        try {
            dq(context, dqVar, kxVar);
            this.p = true;
            dq(context, dqVar);
            kxVar.d("async_init_cost");
            com.bytedance.sdk.component.utils.ig.p("TTAdSdk", "Init done finish: 6607");
            dq(eventListener);
        } catch (Throwable th) {
            if (eventListener != null) {
                String message = th.getMessage();
                if (message == null) {
                    message = "init error";
                }
                cpq f2 = cpq.f();
                f2.f13287e = false;
                f2.f13286d = TTAdConstant.INIT_LOCAL_FAIL_CODE;
                f2.f13283a = message;
                eventListener.onEvent(1, f2.h());
            }
            com.bytedance.sdk.component.utils.ig.p("TTAdSdk", "Init done failed");
            this.p = false;
        }
        dq(dqVar, this.p);
        return true;
    }

    public static boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar) {
        return dqVar.ia() && com.bytedance.sdk.openadsdk.core.ir.ia.dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int ox() {
        if (dq == 0) {
            try {
                try {
                    int i = FileProvider.f149a;
                    dq = 1;
                } catch (Throwable unused) {
                    dq = -1;
                }
            } catch (Throwable unused2) {
                int i2 = FileProvider.f149a;
                dq = 2;
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p() {
        if (f3348d == null) {
            try {
                f3348d = Boolean.TRUE;
            } catch (Throwable unused) {
                f3348d = Boolean.FALSE;
            }
        }
        return f3348d.booleanValue();
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public Manager getManager() {
        return this.ox;
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public void init(Context context, ValueSet valueSet) {
        dq(context, valueSet, (EventListener) valueSet.objectValue(15, EventListener.class));
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public boolean isInitSuccess() {
        return this.p;
    }
}
