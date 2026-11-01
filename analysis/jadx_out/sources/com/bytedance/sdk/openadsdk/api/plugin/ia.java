package com.bytedance.sdk.openadsdk.api.plugin;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.android.openliveplugin.process.LiveProcessUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.api.dq;
import com.bytedance.sdk.openadsdk.api.plugin.mn;
import com.bytedance.sdk.openadsdk.live.ILiveAdCustomConfig;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import dalvik.system.BaseDexClassLoader;
import g.cpq;
import g.hat;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia extends com.bytedance.sdk.openadsdk.api.dq {
    private static final dq dq = new dq();
    private iw p;
    private SharedPreferences s;

    /* renamed from: d, reason: collision with root package name */
    private volatile Initializer f2414d = s();
    private volatile Initializer ox = null;
    private boolean iw = false;
    private com.bytedance.sdk.openadsdk.ox.d mn = new com.bytedance.sdk.openadsdk.ox.d() { // from class: com.bytedance.sdk.openadsdk.api.plugin.ia.1
        @Override // com.bytedance.sdk.openadsdk.ox.d
        public Bridge dq(int i) {
            return ia.this.dq(i);
        }
    };

    public static final class d {
        private static final d dq = new d();

        /* renamed from: d, reason: collision with root package name */
        private volatile Initializer f2416d;

        private d() {
        }

        private static Initializer d(iw iwVar) throws ox {
            try {
                iwVar.d("call_create_initializer");
                BaseDexClassLoader dq2 = mn.dq(TTAppContextHolder.getContext()).dq(iwVar, 600000);
                if (dq2 == null) {
                    throw new ox(4205, "Get initializer failed");
                }
                Class<?> loadClass = dq2.loadClass(TTAdSdk.INITIALIZER_CLASS_NAME);
                iwVar.d("get_init_class_cost");
                Bundle bundle = new Bundle();
                bundle.putSerializable(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER, new mn.ox());
                iwVar.d("create_bundle_cost");
                Method declaredMethod = loadClass.getDeclaredMethod("getNewInstance", Bundle.class);
                iwVar.d("get_init_method_cost");
                try {
                    Initializer initializer = (Initializer) declaredMethod.invoke(null, bundle);
                    iwVar.d("get_init_instance_cost");
                    com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "Create initializer success");
                    return initializer;
                } catch (Throwable th) {
                    Zeus.unInstallPlugin("com.byted.pangle");
                    throw th;
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "Create initializer failed");
                if (!(th2 instanceof ox)) {
                    th2.printStackTrace();
                    throw new ox(4206, th2.getMessage());
                }
                throw new ox(4205, "(" + th2.dq() + ", " + th2.getMessage() + ")");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Initializer dq(iw iwVar) throws ox {
            if (this.f2416d == null) {
                synchronized (this) {
                    try {
                        if (this.f2416d == null) {
                            this.f2416d = d(iwVar);
                        }
                    } finally {
                    }
                }
            }
            return this.f2416d;
        }
    }

    public static final class dq extends dq.ox {
        private dq() {
        }

        @Override // com.bytedance.sdk.openadsdk.api.dq.ox
        public Object dq(Object obj) {
            boolean z = obj instanceof TTPluginListener;
            if (z) {
                mn.dq(TTAppContextHolder.getContext()).dq((TTPluginListener) obj);
            }
            if (!z) {
                return obj instanceof ILiveAdCustomConfig ? com.bytedance.sdk.openadsdk.live.ox.dq((ILiveAdCustomConfig) obj) : obj;
            }
            TTPluginListener tTPluginListener = (TTPluginListener) obj;
            return mn.dq(TTAppContextHolder.getContext()).dq(tTPluginListener.packageName(), tTPluginListener.config());
        }

        @Override // com.bytedance.sdk.openadsdk.api.dq.ox
        public void dq(Throwable th) {
            mn.dq(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Manager manager) {
        if (manager != null) {
            hat g2 = hat.g(1);
            g2.i(17, true);
            manager.getBridge(1).call(16, g2.k(), Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bridge dq(int i) {
        if (i == 2) {
            return com.bytedance.sdk.openadsdk.live.ox.dq();
        }
        if (i == 3) {
            return com.bytedance.sdk.openadsdk.downloadnew.p.dq(TTAppContextHolder.getContext());
        }
        if (i != 4) {
            return null;
        }
        return com.bytedance.sdk.openadsdk.api.plugin.dq.dq.dq();
    }

    private <T> T dq(Class<T> cls, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("action", i);
        return (T) d().getExtra(cls, bundle);
    }

    private static void dq(Initializer initializer, iw iwVar, hat hatVar) throws ox {
        if (initializer == null) {
            throw new ox(TTAdConstant.INIT_FAILED_CREATE_INITIALIZER_FAILED, "Init error");
        }
        try {
            iwVar.dq();
            JSONObject jSONObject = new JSONObject();
            iwVar.dq(jSONObject, 20L);
            jSONObject.put("zeus", mn.dq(TTAppContextHolder.getContext()).dq());
            Context context = TTAppContextHolder.getContext();
            hatVar.f19148c.put(9, jSONObject);
            initializer.init(context, hatVar.k());
            if (TTAppContextHolder.getContext() != null) {
                Zeus.hookHuaWeiVerifier((Application) TTAppContextHolder.getContext().getApplicationContext());
            }
        } catch (Exception e2) {
            Zeus.unInstallPlugin("com.byted.pangle");
            throw new ox(4207, "Init error: " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(iw iwVar, hat hatVar) {
        if (this.ox == null || !this.ox.isInitSuccess()) {
            hat e2 = hat.e(hatVar.k());
            e2.m(15, new EventListener() { // from class: com.bytedance.sdk.openadsdk.api.plugin.ia.3
                @Override // com.bykv.vk.openvk.api.proto.EventListener
                public ValueSet onEvent(int i, Result result) {
                    com.bytedance.sdk.openadsdk.api.ox.ox("_tt_ad_sdk_", "Load p_init: " + result.code() + ", message: " + result.message());
                    if (result.isSuccess() && ia.this.ox != null) {
                        if (ia.this.iw && ia.this.f2414d != null && ia.this.f2414d.isInitSuccess()) {
                            ia iaVar = ia.this;
                            iaVar.d(iaVar.f2414d.getManager());
                        }
                        ia iaVar2 = ia.this;
                        iaVar2.f2414d = iaVar2.ox;
                        ia iaVar3 = ia.this;
                        iaVar3.dq(iaVar3.f2414d.getManager());
                        ia.this.iw();
                    }
                    if (ia.this.iw) {
                        return null;
                    }
                    ia.this.d(result);
                    return null;
                }
            });
            try {
                if (this.ox == null) {
                    synchronized (d.class) {
                        try {
                            if (this.ox == null) {
                                Initializer dq2 = d.dq.dq(iwVar);
                                this.ox = dq2;
                                dq(dq2, iwVar, e2);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (ox e3) {
                com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "Load p_init failed: " + e3.dq() + ", message: " + e3.getMessage());
                s.dq(e3.dq(), e3.getMessage(), 0L);
            } catch (Exception e4) {
                s.dq(4206, "Load p_init failed: " + e4.getMessage(), 0L);
                com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "Load p_init failed: " + e4.getMessage());
            }
        }
    }

    private boolean dq(Context context) {
        return com.bytedance.sdk.openadsdk.api.plugin.d.p(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        ExecutorService executorService = (ExecutorService) dq(ExecutorService.class, 1);
        if (executorService != null) {
            no.f2029d.dq((ThreadPoolExecutor) executorService);
            com.bytedance.sdk.openadsdk.cd.dq.dq().dq(executorService);
        }
        ExecutorService executorService2 = (ExecutorService) dq(ExecutorService.class, 2);
        if (executorService2 != null) {
            no.f2029d.d((ThreadPoolExecutor) executorService2);
        }
        ExecutorService executorService3 = (ExecutorService) dq(ExecutorService.class, 3);
        if (executorService3 != null) {
            no.f2029d.dq((ScheduledExecutorService) executorService3);
        }
    }

    private static Initializer s() {
        try {
            Class<?> loadClass = TTAdSdk.class.getClassLoader().loadClass(TTAdSdk.INITIALIZER_CLASS_NAME);
            Bundle bundle = new Bundle();
            bundle.putSerializable(PluginConstants.KEY_PL_UPDATE_EVENT_LISTENER, new mn.ox());
            return (Initializer) loadClass.getDeclaredMethod("getNewInstance", Bundle.class).invoke(null, bundle);
        } catch (Throwable th) {
            th.printStackTrace();
            com.bytedance.sdk.openadsdk.api.ox.s("_tt_ad_sdk_", "Get direct initializer failed");
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public dq.ox d() {
        return dq;
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public void d(Context context, final hat hatVar) {
        com.bytedance.sdk.openadsdk.api.ox.ox("_tt_ad_sdk_", "async init");
        if (this.iw && Build.VERSION.SDK_INT < 26) {
            com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "lower 26");
            return;
        }
        this.p.d("wait_asyn_cost");
        mn.dq(TTAppContextHolder.getContext()).dq(new EventListener() { // from class: com.bytedance.sdk.openadsdk.api.plugin.ia.2
            @Override // com.bykv.vk.openvk.api.proto.EventListener
            public ValueSet onEvent(int i, Result result) {
                if (i == 0) {
                    if (!result.isSuccess() || ia.this.ox != null) {
                        com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "failed event");
                        return null;
                    }
                    com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "from event");
                    ia.this.p.d("wait_pl_install");
                    ia iaVar = ia.this;
                    iaVar.dq(iaVar.p, hatVar);
                    return null;
                }
                if (i != 1 || !result.isSuccess() || ia.this.ox != null || hatVar == null) {
                    return null;
                }
                ia.this.p = iw.dq(MediationConstant.EXTRA_DURATION);
                hatVar.h(1, SystemClock.elapsedRealtime());
                return null;
            }
        });
        if (!dq(context)) {
            com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "no pl");
        } else {
            com.bytedance.sdk.openadsdk.api.ox.p("_tt_ad_sdk_", "start pl load");
            dq(this.p, hatVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public boolean d(Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        super.d(context, adConfig, initCallback);
        this.p = iw.dq(MediationConstant.EXTRA_DURATION);
        return !LiveProcessUtils.inLiveProcess(TTAppContextHolder.getContext()).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public void dq(Result result) {
        s.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public boolean dq() {
        if (this.f2414d != null) {
            return this.f2414d.isInitSuccess();
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public boolean dq(Context context, hat hatVar) {
        if (dq(context) && p()) {
            com.bytedance.sdk.openadsdk.api.ox.ox("_tt_ad_sdk_", "use pl Init");
            return false;
        }
        if (this.f2414d != null) {
            this.iw = true;
            dq(this.f2414d.getManager());
            this.f2414d.init(context, hatVar.k());
            return false;
        }
        cpq f2 = cpq.f();
        f2.f13287e = false;
        f2.f13286d = 4206;
        d(f2.h());
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.dq
    public com.bytedance.sdk.openadsdk.ox.d ox() {
        return this.mn;
    }

    public boolean p() {
        if (this.s == null) {
            this.s = com.bytedance.sdk.openadsdk.api.plugin.d.d(TTAppContextHolder.getContext(), "sp_bidding_opt_libra", 0);
        }
        return this.s.getInt("_use_pl_", 0) == 1;
    }
}
