package com.bytedance.msdk.ox.ox.d.dq;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.api.p.kk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends d {

    /* renamed from: d, reason: collision with root package name */
    private dq f1176d;
    private com.bytedance.msdk.ox.s.d.d ox;
    private com.bytedance.msdk.api.dq.d p;

    public ox(com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
    }

    private void d(Context context, hat hatVar) {
        Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
        if (mn == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "load ad class loader is null ");
            return;
        }
        if (com.bytedance.sdk.gromore.init.dq.dq() < 5900) {
            hatVar.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
            mn.call(8106, hatVar.k(), Void.class);
        } else {
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
            f2.m(8424, hatVar.k());
            mn.call(8106, f2.k(), Void.class);
        }
    }

    private hat dq(com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        HashMap hashMap = null;
        if (dVar == null || dVar2 == null || dVar2.i() == null) {
            return null;
        }
        hat f2 = hat.f();
        SparseArray sparseArray = f2.f19148c;
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq i = dVar2.i();
        hat e2 = hat.e(dVar2.j());
        e2.f19148c.put(15, i.fw());
        e2.o(13, dVar2.h());
        e2.o(7, i.kk());
        e2.o(8, i.o());
        e2.o(16, i.cd());
        e2.o(20, i.i());
        e2.i(11, i.mp());
        e2.o(17, dVar2.fw());
        hat f3 = hat.f();
        HashMap hashMap2 = new HashMap();
        if (i.dq() != null) {
            if (i.dq().iw() != null) {
                hashMap2.putAll(i.dq().iw());
            }
            if (dVar.ia() != null) {
                hashMap2.put("waterfall_config", dVar.ia());
            }
            hashMap2.put("dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().iw()));
            hashMap2.put("wf_dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().mn()));
            com.bytedance.msdk.core.p.dq.dq(dVar2, dVar.ia(), hashMap2);
            f3.i(8444, i.dq().ox());
            f3.i(8445, i.dq().dq());
            f3.i(8446, i.dq().d());
            f3.l(8447, i.dq().p());
            f3.i(8448, i.dq().s());
            f3.i(8450, i.dq().mn());
            f3.f19148c.put(8451, i.dq().ia());
            f3.i(8454, i.dq().kk());
            f3.l(8455, i.dq().no());
            f3.l(8456, i.dq().ig());
        } else {
            hashMap2.put("dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().iw()));
            hashMap2.put("wf_dynamic_adapter_type", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().mn()));
        }
        kk d2 = com.bytedance.msdk.core.d.no().bl().d();
        if (d2 != null) {
            hashMap2.put("lng", Double.valueOf(d2.d()));
            hashMap2.put("lat", Double.valueOf(d2.dq()));
            hashMap2.put("loc_time", Long.valueOf(System.currentTimeMillis() / 1000));
        } else {
            hashMap2.put("lng", -1);
            hashMap2.put("lat", -1);
            hashMap2.put("loc_time", -1);
        }
        hashMap2.put("load_type", com.bytedance.msdk.core.dq.dq.dq.dq());
        hashMap2.put("load_can_log", Boolean.valueOf(com.bytedance.msdk.mn.dq.dq.jy().no()));
        f3.m(8449, hashMap2);
        f3.m(8044, hashMap2);
        dq(f3, i);
        e2.m(8443, f3.k());
        hat e3 = hat.e(dVar2.j());
        e3.f19148c.put(8089, e2.k());
        f2.m(8090, e3.k());
        f2.n(AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp, dVar.ig());
        f2.n(4, dVar2.k());
        f2.n(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec, dVar.mp());
        f2.o(17, dVar2.fw());
        if (dVar2.wn() != null) {
            HashMap hashMap3 = new HashMap();
            for (Map.Entry<String, Object> entry : dVar2.wn().entrySet()) {
                Object value = entry.getValue();
                hashMap3.put(entry.getKey(), value == null ? null : value.toString());
            }
            hashMap = hashMap3;
        }
        if (hashMap != null) {
            f2.m(8013, hashMap);
        }
        if (map != null) {
            f2.o(8096, map.get("ad_load_timeout") != null ? ((Integer) map.get("ad_load_timeout")).intValue() : 3000);
        }
        Object obj = map.get("contentUrl");
        if (obj instanceof String) {
            f2.n(8083, (String) obj);
        }
        Object obj2 = map.get("testDevices");
        if (obj2 instanceof String) {
            f2.n(8084, (String) obj2);
        }
        Object obj3 = map.get("tt_ad_origin_type");
        if (obj3 != null) {
            Integer num = (Integer) obj3;
            int intValue = num.intValue();
            if (intValue == 1 || intValue == 3) {
                f2.i(8033, true);
            }
            sparseArray.put(8085, num);
        }
        Object obj4 = map.get("tt_ad_sub_type");
        if (obj4 != null) {
            sparseArray.put(8094, (Integer) obj4);
        }
        Object obj5 = map.get("render_control");
        if (obj5 instanceof Integer) {
            Integer num2 = (Integer) obj5;
            num2.getClass();
            sparseArray.put(8553, num2);
        }
        return f2;
    }

    private void dq(Context context, hat hatVar) {
        com.bytedance.msdk.ox.s.d.d dVar = this.ox;
        Bridge dq = (dVar == null || this.p == null) ? null : com.bytedance.msdk.core.dq.dq.dq.dq(dVar.mp(), this.p.le(), this.ox.jy());
        if (dq == null) {
            d(context, hatVar);
            return;
        }
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
        f2.m(8424, hatVar.k());
        dq.call(8241, f2.k(), Void.class);
    }

    private void dq(hat hatVar, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar) {
        if (hatVar == null || dqVar == null) {
            return;
        }
        if (dqVar.dq() != null && !TextUtils.isEmpty(dqVar.dq().q()) && dqVar.dq().jy() != 0) {
            hatVar.n(8452, dqVar.dq().q());
            hatVar.o(8453, dqVar.dq().jy());
        } else {
            if (TextUtils.isEmpty(dqVar.h()) || dqVar.ji() == 0) {
                return;
            }
            hatVar.n(8452, dqVar.h());
            hatVar.o(8453, dqVar.ji());
        }
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        this.ox = dVar;
        this.p = dVar2;
        hat dq = dq(dVar, dVar2, map);
        if (dq != null) {
            this.f1176d = new dq(dVar2, dVar, this);
            dq.n(8429, dVar.f());
            dq.n(8430, dVar.fw());
            dq.m(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this.f1176d);
            dq.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, dVar.cd());
            com.bytedance.msdk.iw.d.dq.d(dVar.mp());
            if (TextUtils.equals(dVar.mp(), MediationConstant.ADN_GDT)) {
                dq(context, dq);
            } else {
                d(context, dq);
            }
        }
    }

    @Override // com.bytedance.msdk.ox.dq.dq
    public String dq(String str) {
        com.bytedance.msdk.dq.dq.p dq = com.bytedance.msdk.iw.d.d.dq().dq(str);
        if (dq != null) {
            return dq.d();
        }
        return null;
    }
}
