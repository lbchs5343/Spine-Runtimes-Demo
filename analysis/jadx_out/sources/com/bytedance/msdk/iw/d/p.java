package com.bytedance.msdk.iw.d;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.dq.ox.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class p implements Bridge, com.bytedance.msdk.dq.dq.p {

    /* renamed from: d, reason: collision with root package name */
    private Bridge f1107d;
    private ox dq;
    private com.bytedance.msdk.api.p.ox iw;
    private String ox;
    private Bridge s;
    private List<com.bytedance.msdk.dq.dq.ox> p = new CopyOnWriteArrayList();
    private long mn = 0;
    private int ia = 0;

    public p() {
        ox dq = ox.dq(com.bytedance.msdk.core.d.no().l());
        this.dq = dq;
        this.f1107d = dq.dq();
    }

    public static String dq(String str) {
        str.getClass();
        switch (str) {
            case "klevin":
                return MediationConstant.KLEVIN_ADN_CLASS_NAME;
            case "sigmob":
                return MediationConstant.SIGMOB_ADN_CLASS_NAME;
            case "ks":
                return MediationConstant.KS_ADN_CLASS_NAME;
            case "gdt":
                return MediationConstant.GDT_ADN_CLASS_NAME;
            case "admob":
                return MediationConstant.ADMOB_ADN_CLASS_NAME;
            case "baidu":
                return MediationConstant.BAIDU_ADN_CLASS_NAME;
            case "unity":
                return MediationConstant.UNITY_ADN_CLASS_NAME;
            case "mintegral":
                return MediationConstant.MINTEGRAL_ADN_CLASS_NAME;
            default:
                return null;
        }
    }

    private void dq(com.bytedance.msdk.api.dq dqVar) {
        Iterator<com.bytedance.msdk.dq.dq.ox> it = this.p.iterator();
        while (it.hasNext()) {
            it.next().dq(dqVar);
        }
        this.p.clear();
    }

    private void ig() {
        Iterator<com.bytedance.msdk.dq.dq.ox> it = this.p.iterator();
        while (it.hasNext()) {
            it.next().dq();
        }
        this.p.clear();
    }

    private int kk() {
        q d2 = com.bytedance.msdk.core.d.no().d();
        if (d2 != null) {
            return d2.e();
        }
        return 0;
    }

    private void no() {
        String ox = com.bytedance.sdk.gromore.init.dq.ox();
        if (TextUtils.isEmpty(dq())) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", ia() + "版本号：" + d() + " , ***" + ia() + "Adapter未接入，请检查***, 聚合版本号：" + ox);
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", ia() + "版本号：" + d() + " , " + ia() + "Adapter版本号：" + dq() + " , 聚合版本号：" + ox);
    }

    private void o() {
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", ia() + "版本号：" + d() + " , 聚合版本号：" + com.bytedance.sdk.gromore.init.dq.ox());
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8122) {
            this.s = (Bridge) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveContainerString, Bridge.class);
            ig();
            return null;
        }
        if (i == 8123) {
            Result result = (Result) valueSet.objectValue(8022, Result.class);
            if (result == null) {
                return null;
            }
            dq(new com.bytedance.msdk.api.dq(result.code(), result.message()));
            return null;
        }
        if (i == 8212) {
            if (this.iw == null) {
                return null;
            }
            this.iw.dq(valueSet.intValue(8095));
            return null;
        }
        if (i == 8266) {
            this.s = (Bridge) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveContainerString, Bridge.class);
            return null;
        }
        if (i != 8270) {
            return null;
        }
        this.ia = valueSet.intValue(8557);
        this.mn = valueSet.longValue(8556) - valueSet.longValue(8555);
        return null;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String d() {
        try {
            Bridge bridge = this.s;
            return bridge != null ? (String) bridge.call(8104, null, String.class) : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public Map<String, Object> d(Context context, Map<String, Object> map) {
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        f2.m(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map);
        return (Map) this.s.call(AVMDLDataLoader.KeyIsLiveGetLoaderType, f2.k(), Map.class);
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public int dq(com.bytedance.msdk.api.p.ox oxVar) {
        Bridge bridge = this.s;
        if (bridge == null) {
            return 0;
        }
        this.iw = oxVar;
        return ((Integer) bridge.call(8126, null, Integer.class)).intValue();
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String dq() {
        Bridge bridge = this.s;
        return bridge != null ? (String) bridge.call(AVMDLDataLoader.KeyIsLiveLoaderP2pEnable, null, String.class) : "";
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String dq(Context context, Map<String, Object> map) {
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        f2.m(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map);
        return (String) this.s.call(8102, f2.k(), String.class);
    }

    @Override // com.bytedance.msdk.dq.dq.d
    public void dq(Context context, Map<String, Object> map, com.bytedance.msdk.dq.dq.ox oxVar) {
        if (!this.p.contains(oxVar)) {
            this.p.add(oxVar);
        }
        hat f2 = hat.f();
        s.dq(f2);
        f2.n(3, (String) map.get(PluginConstants.KEY_APP_ID));
        f2.i(8550, com.bytedance.msdk.core.d.no().e());
        f2.n(8, com.bytedance.msdk.core.d.no().i());
        f2.n(AVMDLDataLoader.KeyIsLiveWatchDurationThreshold, (String) map.get("app_key"));
        String str = (String) map.get(MediationConstant.EXTRA_ADN_NAME);
        this.ox = str;
        f2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, dq(str));
        f2.n(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec, (String) map.get(MediationConstant.EXTRA_ADN_NAME));
        f2.n(8410, "3.3.69.3");
        f2.n(8411, com.bytedance.msdk.d.p.ox());
        f2.n(8412, "17.2.0.65");
        f2.n(8413, "9.37.3");
        f2.n(8414, "4.610.1480.0");
        f2.n(8415, "2.11.0.3.26");
        f2.n(8417, "4.19.5.0");
        f2.n(8418, "4.3.0.32");
        f2.n(8416, "16.6.57.8");
        f2.o(7, kk());
        f2.m(8425, map);
        f2.m(8300, this);
        if (!TextUtils.equals(this.ox, MediationConstant.ADN_GDT)) {
            this.f1107d.call(AVMDLDataLoader.KeyIsLiveLoaderEnable, f2.k(), Void.class);
            return;
        }
        try {
            Bridge d2 = com.bytedance.msdk.core.dq.dq.dq.d(MediationConstant.ADN_GDT);
            if (d2 == null) {
                this.f1107d.call(AVMDLDataLoader.KeyIsLiveLoaderEnable, f2.k(), Void.class);
                return;
            }
            this.s = d2;
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
            f2.m(8424, f2.k());
            d2.call(8240, f2.k(), null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void dq(com.bytedance.msdk.api.p.q qVar, ValueSet valueSet) {
        if (this.s == null || qVar == null) {
            return;
        }
        hat f2 = hat.f();
        f2.m(8517, valueSet);
        this.s.call(8124, f2.k(), Void.class);
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void dq(Map<String, Object> map) {
        if (this.s != null) {
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map);
            this.s.call(8242, f2.k(), Void.class);
        }
    }

    public String ia() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public int iw() {
        return this.ia;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void mn() {
        this.ia = 0;
        this.mn = 0L;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String ox() {
        return null;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void p() {
        try {
            if (!TextUtils.equals(ia(), MediationConstant.ADN_GDT)) {
                no();
            } else if (com.bytedance.msdk.core.dq.dq.dq.d(MediationConstant.ADN_GDT) != null) {
                o();
            } else {
                no();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public long s() {
        return this.mn;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
