package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.ITTProvider;
import com.bytedance.sdk.openadsdk.TTC;
import com.bytedance.sdk.openadsdk.TTDownloadEventLogger;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.live.EcBackUpWebView;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor;
import com.bytedance.sdk.openadsdk.live.ILiveAdCustomConfig;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ir implements Bridge, Manager {
    private final ValueSet dq;

    public final class dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private ILiveAdCustomConfig f3042d;

        public dq(ILiveAdCustomConfig iLiveAdCustomConfig) {
            this.f3042d = iLiveAdCustomConfig;
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i == 0) {
                return (T) Integer.valueOf(this.f3042d.openLR(valueSet.stringValue(0)));
            }
            if (i == 1) {
                return (T) this.f3042d.convertToEnterFromMerge(valueSet.intValue(0));
            }
            if (i == 2) {
                return (T) this.f3042d.convertToEnterMethod(valueSet.intValue(0), valueSet.booleanValue(1));
            }
            if (i == 3) {
                return (T) this.f3042d.invoke(valueSet.intValue(0), (Bundle) valueSet.objectValue(1, Bundle.class));
            }
            if (i != 4) {
                return null;
            }
            this.f3042d.onEventV3(valueSet.stringValue(0), (JSONObject) valueSet.objectValue(1, JSONObject.class));
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            hat f2 = hat.f();
            f2.o(10000, 1);
            return f2.k();
        }
    }

    public ir() {
        hat f2 = hat.f();
        ValueSet.ValueGetter valueGetter = new ValueSet.ValueGetter() { // from class: com.bytedance.sdk.openadsdk.core.ir.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(no.ia().j());
            }
        };
        SparseArray sparseArray = f2.f19148c;
        sparseArray.put(11, valueGetter);
        sparseArray.put(12, "6.6.0.7");
        this.dq = f2.k();
    }

    private void dq(Bridge bridge) {
        if (bridge == null) {
            return;
        }
        ValueSet values = bridge.values();
        if (values == null) {
            no.ia().dq(bridge);
        } else if (values.intValue(10000) != 1) {
            no.ia().dq(bridge);
        } else if (op.iw()) {
            com.bytedance.sdk.openadsdk.core.live.d.dq().dq(bridge);
        }
    }

    private void dq(ClassLoader classLoader, String str) throws Throwable {
        Method method;
        Class<?> loadClass = classLoader.loadClass("com.bytedance.sdk.openadsdk.ats.AutoService");
        if (loadClass == AutoService.class || (method = loadClass.getMethod("init", Bridge.class)) == null) {
            return;
        }
        Bridge bridge = (Bridge) method.invoke(null, AutoService.init(null));
        if (bridge != null) {
            AutoService.init(bridge);
        }
        if (TextUtils.equals(str, "com.byted.csj.ext")) {
            com.bytedance.sdk.openadsdk.core.iw.ox.dq(wp.d().z());
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 16) {
            no.ia().iw(valueSet != null ? valueSet.booleanValue(17, false) : false);
            return null;
        }
        switch (i) {
            case 1:
                dq((valueSet != null ? Integer.valueOf(valueSet.intValue(11)) : null).intValue());
                return null;
            case 2:
                return cls.cast(dq(valueSet, valueSet.booleanValue(13), valueSet.intValue(14)));
            case 3:
                dq(valueSet != null ? (Context) valueSet.objectValue(7, Context.class) : null);
                return null;
            case 4:
                dq(valueSet != null ? valueSet.objectValue(8, Object.class) : null);
                return null;
            case 5:
                d(valueSet != null ? valueSet.objectValue(8, Object.class) : null);
                return null;
            case 6:
                return (T) dq(valueSet != null ? (Class) valueSet.objectValue(9, Class.class) : null, valueSet != null ? (Bundle) valueSet.objectValue(10, Bundle.class) : null);
            default:
                return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Loader createLoader(Context context) {
        return new u(context);
    }

    public void d(Object obj) {
        if (obj instanceof TTDownloadEventLogger) {
            no.ia().dq((TTDownloadEventLogger) null);
        }
        if ((!op.iw() && !com.bytedance.sdk.openadsdk.core.ir.c.kk().equals("com.pangolin_demo.toutiao")) || obj == null || ((TTC) obj.getClass().getAnnotation(TTC.class)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.mn.d.d(obj);
    }

    /* JADX WARN: Type inference failed for: r8v13, types: [T, java.util.HashMap] */
    public <T> T dq(Class<T> cls, Bundle bundle) {
        boolean z = false;
        int i = bundle != null ? bundle.getInt("type") : 0;
        if (cls == ITTProvider.class) {
            return (T) com.bytedance.sdk.openadsdk.core.multipro.iw.dq(wp.getContext());
        }
        if (cls == ValueSet.class || (cls != null && "com.bytedance.sdk.openadsdk.AdConfig".equals(cls.getName()))) {
            if (bundle != null && !bundle.keySet().isEmpty()) {
                if (bundle.containsKey("is_paid")) {
                    no.ia().s(bundle.getBoolean("is_paid"));
                }
                if (bundle.containsKey("extra_data")) {
                    no.ia().mn(bundle.getString("extra_data"));
                }
                if (bundle.containsKey("keywords")) {
                    no.ia().ia(bundle.getString("keywords"));
                }
                if (bundle.containsKey("quit_work")) {
                    no.ia().iw(bundle.getBoolean("quit_work", false));
                }
            }
        } else {
            if (cls == ITTDownloadVisitor.class && i == 1) {
                return (T) com.bytedance.sdk.openadsdk.core.o.dq.dq.dq();
            }
            if (cls == Bundle.class) {
                if (bundle == null) {
                    return null;
                }
                int i2 = bundle.getInt("action", 0);
                if (i2 == 0) {
                    no.ia().dq(bundle.getString("plugin_pkg_name"), bundle.getString(PluginConstants.KEY_PLUGIN_VERSION));
                } else if (i2 == 1) {
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(bundle.getString("event_name"), bundle.getString("event_extra"));
                } else if (i2 == 2) {
                    dq();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(MediationConstant.RIT_TYPE_SPLASH, 0);
                        jSONObject.put("reward", 0);
                        jSONObject.put("brand", 0);
                        jSONObject.put("other", 0);
                        com.bykv.vk.openvk.component.video.dq.dq.dq(jSONObject);
                        com.bytedance.sdk.openadsdk.h.kk.dq(0).s();
                        com.bykv.vk.openvk.component.video.dq.dq.dq(wp.d().zi());
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.ig.d(th.getMessage());
                    }
                } else if (i2 == 3) {
                    com.bytedance.sdk.component.o.mn.dq(-1);
                }
            } else if (cls == ExecutorService.class) {
                if (bundle != null) {
                    int i3 = bundle.getInt("action", 0);
                    return i3 != 1 ? i3 != 2 ? i3 != 3 ? (T) com.bytedance.sdk.component.o.no.f2029d.ig() : (T) com.bytedance.sdk.component.o.no.f2029d.no() : (T) com.bytedance.sdk.component.o.no.f2029d.kk() : (T) com.bytedance.sdk.component.o.no.f2029d.o();
                }
            } else if (cls == Handler.class) {
                if (bundle != null && bundle.getInt("action", 0) == 1) {
                    return (T) com.bytedance.sdk.component.utils.ia.dq();
                }
            } else {
                if (cls == View.class) {
                    return (T) new EcBackUpWebView(wp.getContext());
                }
                if (cls == Map.class) {
                    ?? r8 = (T) new HashMap();
                    if (bundle != null && bundle.getString("extra_name").equals("use_mediation_map")) {
                        if (AdSdkInitializerHolder.isSdkInitSuccess() && wp.d().dk() && AdSdkInitializerHolder.hasDispatchAdSdkInitializer()) {
                            z = true;
                        }
                        r8.put("use_mediation_map", Boolean.valueOf(z));
                    }
                    return r8;
                }
                if (cls == Bridge.class && bundle != null && bundle.getInt("action", 0) == 4) {
                    return (T) com.bytedance.sdk.openadsdk.tools.ox.dq();
                }
            }
        }
        return null;
    }

    public String dq(ValueSet valueSet, boolean z, int i) {
        if (valueSet == null || wp.dq() == null) {
            return null;
        }
        return wp.dq().dq(new com.bytedance.sdk.openadsdk.f.d.ox.d(valueSet), z, i);
    }

    public void dq() {
        com.bytedance.sdk.openadsdk.core.ir.n.dq("open_ad_sdk_meta_cache_kv").d();
        com.bytedance.sdk.openadsdk.core.ir.n.dq("tt_materialMeta").d();
        com.bytedance.sdk.openadsdk.core.ir.n.dq("tt_splash").d();
    }

    public void dq(int i) {
        if (i != no.ia().j()) {
            no.ia().s(i);
            Intent intent = new Intent();
            intent.setAction("com.bytedance.openadsdk.themeTypeChangeReceiver");
            intent.putExtra("theme_status_change", i);
            wp.getContext().sendBroadcast(intent, com.bytedance.sdk.openadsdk.core.ir.c.e());
        }
    }

    public void dq(Context context) {
        if (context == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p no = no.ia().no();
        if (no != null) {
            boolean dq2 = no.dq();
            boolean ox = no.ox();
            boolean s = no.s();
            if (!dq2 && !ox && !s) {
                return;
            }
        }
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 2);
        com.bytedance.sdk.component.utils.d.dq(context, intent, null);
    }

    public void dq(Object obj) {
        if (obj instanceof TTDownloadEventLogger) {
            no.ia().dq((TTDownloadEventLogger) obj);
            return;
        }
        if (obj instanceof Bundle) {
            Bundle bundle = (Bundle) obj;
            if (bundle.containsKey(PluginConstants.KEY_PL_CONFIG_INFO)) {
                no.ia().dq(bundle.getBundle(PluginConstants.KEY_PL_CONFIG_INFO));
                if (no.ia().wp().length() == 0 || com.bytedance.sdk.openadsdk.core.ir.jy.d()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.e.dq.dq.d().ox();
                return;
            }
            return;
        }
        if (obj instanceof Bridge) {
            dq((Bridge) obj);
            return;
        }
        if (op.iw() && (obj instanceof ILiveAdCustomConfig)) {
            com.bytedance.sdk.openadsdk.core.live.d.dq().dq(new dq((ILiveAdCustomConfig) obj));
            return;
        }
        if (obj instanceof ValueSet) {
            ValueSet valueSet = (ValueSet) obj;
            try {
                if (valueSet.intValue(0) == 1) {
                    dq((ClassLoader) valueSet.objectValue(2, ClassLoader.class), valueSet.stringValue(1));
                }
            } catch (Throwable unused) {
            }
        }
        if ((!op.iw() && !com.bytedance.sdk.openadsdk.core.ir.c.kk().equals("com.pangolin_demo.toutiao")) || obj == null || ((TTC) obj.getClass().getAnnotation(TTC.class)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.mn.d.dq(obj);
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Bridge getBridge(int i) {
        return this;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
