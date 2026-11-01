package com.bytedance.msdk.mn.p;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.mn.s;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.bytedance.msdk.mn.dq {
    private static volatile dq dq;
    private Map<String, com.bytedance.msdk.core.no.dq> ox = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private bl f1121d = s.p();

    private dq() {
    }

    private void d(JSONObject jSONObject) {
        this.ox.clear();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject optJSONObject = jSONObject.optJSONObject(next);
            com.bytedance.msdk.core.no.dq dq2 = com.bytedance.msdk.core.no.dq.dq(next, optJSONObject);
            if (optJSONObject != null && dq2 != null) {
                if (TextUtils.equals(next, MediationConstant.ADN_PANGLE) && com.bytedance.msdk.core.d.no().ce()) {
                    this.ox.put("pangle_custom", dq2);
                } else {
                    this.ox.put(next, dq2);
                }
            }
        }
    }

    private List<String> dq(Context context) {
        List<ProviderInfo> queryContentProviders = context.getPackageManager().queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072);
        if (queryContentProviders == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        context.getPackageName();
        Iterator<ProviderInfo> it = queryContentProviders.iterator();
        while (it.hasNext()) {
            String str = it.next().name;
            str.getClass();
            switch (str) {
                case "com.baidu.mobads.sdk.api.BdFileProvider":
                    arrayList.add(MediationConstant.ADN_BAIDU);
                    break;
                case "com.mbridge.msdk.foundation.tools.MBFileProvider":
                    arrayList.add(MediationConstant.ADN_MINTEGRAL);
                    break;
                case "com.sigmob.sdk.SigmobFileProvider":
                case "com.sigmob.sdk.SigmobFileV4Provider":
                    arrayList.add(MediationConstant.ADN_SIGMOB);
                    break;
                case "com.tencent.klevin.utils.FileProvider":
                    arrayList.add(MediationConstant.ADN_KLEVIN);
                    break;
                case "com.google.android.gms.ads.MobileAdsInitProvider":
                    arrayList.add(MediationConstant.ADN_ADMOB);
                    break;
                case "com.bykv.vk.openvk.TTFileProvider":
                    arrayList.add("pangle_custom");
                    break;
                case "com.kwad.sdk.api.proxy.app.AdSdkFileProvider":
                    arrayList.add(MediationConstant.ADN_KS);
                    break;
                case "com.bytedance.sdk.openadsdk.TTFileProvider":
                    arrayList.add(MediationConstant.ADN_PANGLE);
                    break;
                case "com.unity":
                    arrayList.add(MediationConstant.ADN_UNITY);
                    break;
                case "com.qq.e.comm.GDTFileProvider":
                    arrayList.add(MediationConstant.ADN_GDT);
                    break;
            }
        }
        return arrayList;
    }

    private Set<String> iw() {
        HashSet hashSet = new HashSet();
        if (this.ox.size() != 0) {
            for (Map.Entry<String, com.bytedance.msdk.core.no.dq> entry : this.ox.entrySet()) {
                com.bytedance.msdk.core.no.dq value = entry.getValue();
                if (value != null && !value.p()) {
                    hashSet.add(entry.getKey());
                }
            }
        }
        return hashSet;
    }

    public static dq p() {
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

    private void s() {
        String d2 = this.f1121d.d("adn_init_config");
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        if (!d2.startsWith("[") && !d2.startsWith("{")) {
            d2 = com.bytedance.msdk.ia.dq.d(d2, com.bytedance.msdk.ia.d.dq());
        }
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        try {
            d(new JSONObject(d2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.mn.dq
    public List<com.bytedance.msdk.core.no.dq> d() {
        if (this.ox.size() == 0) {
            s();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, com.bytedance.msdk.core.no.dq>> it = this.ox.entrySet().iterator();
        while (it.hasNext()) {
            com.bytedance.msdk.core.no.dq value = it.next().getValue();
            if (value != null && value.p()) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.msdk.mn.dq
    public com.bytedance.msdk.core.no.dq dq(String str) {
        if (this.ox.size() == 0) {
            s();
        }
        return this.ox.get(str);
    }

    @Override // com.bytedance.msdk.mn.dq
    public synchronized void dq() {
        List<String> dq2;
        try {
            Context context = com.bytedance.msdk.core.dq.getContext();
            if (context == null) {
                return;
            }
            Set<String> iw = iw();
            if (iw.size() == 0) {
                return;
            }
            int i = context.getApplicationInfo().targetSdkVersion;
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "------------------ 聚合 接入信息 start ---------------------");
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_SDK_Init", "当前接入的聚合 SDK版本是：" + com.bytedance.msdk.d.p.d());
            if ((Build.VERSION.SDK_INT >= 24 || i >= 24) && (dq2 = dq(context)) != null) {
                Iterator<String> it = iw.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (!MediationConstant.ADN_UNITY.equals(next) && !"pangle_custom".equals(next)) {
                        if (MediationConstant.ADN_PANGLE.equals(next) && com.bytedance.msdk.core.d.no().ce()) {
                            next = "pangle_custom";
                        }
                        if (dq2.contains(next)) {
                            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "已按要求接入三方广告sdk【" + next + "】");
                        } else {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "未按要求接入三方广告sdk【" + next + "】，请检查接入配置");
                        }
                    }
                }
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "------------------ GroMore 接入信息 end ---------------------");
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "------------------ GroMore 版本信息 start ---------------------");
            for (String str : iw) {
                if (!TextUtils.equals(str, MediationConstant.ADN_PANGLE)) {
                    com.bytedance.msdk.dq.dq.p dq3 = com.bytedance.msdk.iw.d.d.dq().dq(str);
                    if (dq3 != null) {
                        dq3.p();
                    } else {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "没有引入" + str + "Adapter,请检查相关引入情况");
                    }
                }
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "------------------ GroMore 版本信息 end ---------------------");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bytedance.msdk.mn.dq
    public void dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            d(jSONObject);
            String jSONObject2 = jSONObject.toString();
            if (TextUtils.isEmpty(jSONObject2)) {
                return;
            }
            this.f1121d.dq("adn_init_config", jSONObject2);
        }
    }

    @Override // com.bytedance.msdk.mn.dq
    public boolean ox() {
        if (this.ox.size() == 0) {
            s();
        }
        return this.ox.isEmpty();
    }
}
