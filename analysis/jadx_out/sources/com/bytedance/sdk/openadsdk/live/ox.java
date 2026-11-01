package com.bytedance.sdk.openadsdk.live;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.IOuterLiveService;
import com.bytedance.android.live.base.api.MethodChannelService;
import com.bytedance.android.openliveplugin.LivePluginHelper;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.f.dq.dq.kk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.cpo;
import g.hat;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ox implements Bridge {
    private static final ox dq = new ox();

    /* renamed from: d, reason: collision with root package name */
    private volatile Bridge f3798d;
    private Map<String, String> ox;
    private volatile d p;

    public final class d implements TTPluginListener {

        /* renamed from: d, reason: collision with root package name */
        String f3799d;
        int dq;

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(int i, ClassLoader classLoader, Resources resources, Bundle bundle, boolean z) {
            this.dq = i;
            if (ox.this.f3798d != null) {
                Bridge bridge = ox.this.f3798d;
                hat f2 = hat.f();
                SparseArray sparseArray = f2.f19148c;
                f2.o(0, i);
                sparseArray.put(1, classLoader);
                sparseArray.put(2, resources);
                sparseArray.put(3, bundle);
                sparseArray.put(4, ox.this.dq(z));
                bridge.call(3, f2.k(), null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(int i, String str, boolean z) {
            this.dq = i;
            this.f3799d = str;
            if (ox.this.f3798d != null) {
                hat f2 = hat.f();
                f2.o(0, i);
                if (str != null) {
                    f2.n(1, str);
                }
                f2.m(2, ox.this.dq(z));
                ox.this.f3798d.call(2, f2.k(), null);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTPluginListener
        public Bundle config() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTPluginListener
        public void onPluginListener(int i, ClassLoader classLoader, Resources resources, Bundle bundle) {
            dq(i, classLoader, resources, bundle, false);
        }

        @Override // com.bytedance.sdk.openadsdk.TTPluginListener
        public String packageName() {
            return "com.byted.live.lite";
        }
    }

    public static final class dq implements Bridge {
        private ILiveAdCustomConfig dq;

        public dq(ILiveAdCustomConfig iLiveAdCustomConfig) {
            this.dq = iLiveAdCustomConfig;
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i == 0) {
                return (T) Integer.valueOf(this.dq.openLR(valueSet.stringValue(0)));
            }
            if (i == 1) {
                return (T) this.dq.convertToEnterFromMerge(valueSet.intValue(0));
            }
            if (i == 2) {
                return (T) this.dq.convertToEnterMethod(valueSet.intValue(0), valueSet.booleanValue(1));
            }
            if (i == 3) {
                return (T) this.dq.invoke(valueSet.intValue(0), (Bundle) valueSet.objectValue(1, Bundle.class));
            }
            if (i != 4) {
                return null;
            }
            this.dq.onEventV3(valueSet.stringValue(0), (JSONObject) valueSet.objectValue(1, JSONObject.class));
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            hat f2 = hat.f();
            f2.o(10000, 1);
            return f2.k();
        }
    }

    private ox() {
    }

    private Map<String, String> d(Map map) {
        Object obj = map.get("live_tob_init_extra");
        return obj instanceof Map ? (Map) obj : new HashMap();
    }

    private Bundle dq(Object obj) {
        if (obj instanceof Bundle) {
            return (Bundle) obj;
        }
        return null;
    }

    public static Bridge dq(ILiveAdCustomConfig iLiveAdCustomConfig) {
        return new dq(iLiveAdCustomConfig);
    }

    public static ox dq() {
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map dq(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("onlyUpdateState", Boolean.valueOf(z));
        return hashMap;
    }

    private Context getContext(Object obj) {
        if (obj instanceof Context) {
            return (Context) obj;
        }
        return null;
    }

    private Boolean iw(Map<String, Object> map) {
        try {
            String str = (String) map.get("scheme_uri");
            if (TextUtils.isEmpty(str)) {
                return Boolean.FALSE;
            }
            Context context = getContext(map.get("context"));
            Uri parse = Uri.parse(str);
            if (parse != null && context != null) {
                return Boolean.valueOf(com.bytedance.sdk.openadsdk.live.d.dq(context, parse));
            }
            return Boolean.FALSE;
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.ox.d("TTLiveSDkBridge", th);
            return Boolean.FALSE;
        }
    }

    private void ox(Map map) {
        ILiveHostContextParam.Builder addHostInitExtra = new ILiveHostContextParam.Builder().setAppName(String.valueOf(map.get("app_name"))).setChannel(String.valueOf(map.get("channel"))).setIsDebug(Boolean.valueOf(String.valueOf(map.get("debug"))).booleanValue()).setECHostAppId(String.valueOf(map.get("ec_host_appid"))).setPartner(String.valueOf(map.get("partner"))).provideMethodChannel(new MethodChannelService() { // from class: com.bytedance.sdk.openadsdk.live.ox.1
            @Override // com.bytedance.android.live.base.api.MethodChannelService
            public String identity() {
                return MediationConstant.ADN_PANGLE;
            }

            @Override // com.bytedance.android.live.base.api.MethodChannelService
            public Object invokeMethod(String str, Map<String, String> map2) {
                if (ox.this.f3798d == null) {
                    return null;
                }
                Bridge bridge = ox.this.f3798d;
                hat f2 = hat.f();
                SparseArray sparseArray = f2.f19148c;
                sparseArray.put(0, str);
                sparseArray.put(1, map2);
                return bridge.call(0, f2.k(), Object.class);
            }
        }).setPartnerSecret("p_secret").setHostPermission(new com.bytedance.sdk.openadsdk.live.dq.dq(p(map))).setHostActionParam(new com.bytedance.sdk.openadsdk.live.dq.d(this.f3798d)).addHostInitExtra(d(map));
        Map<String, String> map2 = this.ox;
        if (map2 != null) {
            addHostInitExtra.addHostInitExtra(map2);
        }
        ILiveInitCallback iLiveInitCallback = new ILiveInitCallback() { // from class: com.bytedance.sdk.openadsdk.live.ox.2
            @Override // com.bytedance.android.live.base.api.ILiveInitCallback
            public void onLiveInitFailed(String str) {
                com.bytedance.sdk.openadsdk.api.ox.dq("TTLiveSDkBridge", "onLiveInitFailed! ", str);
                if (ox.this.p != null) {
                    ox.this.p.dq(-3, str, false);
                }
            }

            @Override // com.bytedance.android.live.base.api.ILiveInitCallback
            public void onLiveInitFinish() {
                com.bytedance.sdk.openadsdk.api.ox.d("TTLiveSDkBridge", "onLiveInitFinish!");
                com.bytedance.sdk.openadsdk.live.d.dq();
                if (ox.this.p != null) {
                    ox.this.p.dq(2, null, false);
                }
                ox.this.ox = null;
            }
        };
        if (TTAppContextHolder.getContext() instanceof Application) {
            addHostInitExtra.setContext((Application) TTAppContextHolder.getContext());
        }
        Boolean valueOf = Boolean.valueOf(String.valueOf(map.get("sub_process")));
        com.bytedance.sdk.openadsdk.api.ox.dq("TTLiveSDkBridge", "execute live sdk initLive method end, (方法顺利执行结果)result: ", Boolean.valueOf(com.bytedance.sdk.openadsdk.live.d.dq(TTAppContextHolder.getContext(), String.valueOf(map.get("g_appid")), addHostInitExtra, iLiveInitCallback, valueOf.booleanValue())), " subProcess=", valueOf);
    }

    private TTCustomController p(Map map) {
        Object obj = map.get("c_control");
        if (obj instanceof Bridge) {
            return new kk((Bridge) obj);
        }
        return null;
    }

    private Object s(Map<String, Object> map) {
        try {
            String str = (String) map.get("expand_method_name");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            IOuterLiveService liveRoomService = LivePluginHelper.getLiveRoomService();
            Object[] objArr = (Object[]) map.get("expand_method_param");
            if (objArr == null) {
                return liveRoomService.callExpandMethod(str, new Object[0]);
            }
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                if (obj instanceof Bridge) {
                    objArr[i] = new com.bytedance.sdk.openadsdk.live.dq((Bridge) obj);
                }
            }
            return liveRoomService.callExpandMethod(str, objArr);
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.ox.d("TTLiveSDkBridge", th);
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 5) {
            ox((Map) valueSet.objectValue(0, Map.class));
            return null;
        }
        if (i != 9) {
            return (T) dq(cls, i, (Map) valueSet.objectValue(0, Map.class));
        }
        this.f3798d = (Bridge) valueSet.objectValue(0, Bridge.class);
        if (this.p == null) {
            this.p = new d();
            hat g2 = hat.g(1);
            g2.o(0, 4);
            Bridge bridge = (Bridge) com.bytedance.sdk.openadsdk.ox.ox.dq().call(10, g2.k(), Bridge.class);
            hat g3 = hat.g(1);
            g3.f19148c.put(0, this.p);
            cpo k = g3.k();
            if (bridge != null) {
                bridge.call(106, k, Void.class);
            }
        } else {
            if (this.p.dq == 2 || this.p.dq == -3) {
                this.p.dq(this.p.dq, this.p.f3799d, true);
                return null;
            }
            if (this.p.dq != 0) {
                this.p.dq(this.p.dq, null, null, null, true);
                return null;
            }
        }
        return null;
    }

    public <T> T dq(Class<T> cls, int i, Map<String, Object> map) {
        if (i == 0) {
            return !com.bytedance.sdk.openadsdk.live.d.dq(getContext(map.get("context")), dq(map.get("bundle"))) ? (T) 2 : (T) 0;
        }
        if (i == 7) {
            return (T) s(map);
        }
        if (i != 8) {
            return null;
        }
        return (T) iw(map);
    }

    public void dq(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        this.ox = map;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.o(10000, 2);
        return f2.k();
    }
}
