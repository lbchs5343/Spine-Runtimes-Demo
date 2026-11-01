package com.bytedance.msdk.ox.ox.d.dq.dq;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.d.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class d extends com.bytedance.msdk.ox.ox.d.dq.d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    protected com.bytedance.msdk.api.p.dq.d.ox.ox f1171d;
    protected int ia;
    protected boolean iw;
    private String kk;
    protected int mn;
    private com.bytedance.msdk.api.dq.d no;
    private String o;
    protected Bridge ox;
    protected com.bytedance.msdk.ox.s.d.d p;
    protected Map<String, Object> s;

    public d(String str, com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
        this.s = new ConcurrentHashMap();
        this.iw = false;
        this.mn = 0;
        this.ia = 0;
        this.o = str;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public final <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8221) {
            this.ox = (Bridge) valueSet.objectValue(8405, Bridge.class);
        } else {
            if (i == 8137) {
                T t = (T) mn();
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom loader : getAdm = ".concat(String.valueOf(t)));
                return t;
            }
            if (i == 8224) {
                T t2 = (T) ia();
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom loader : getExtraDataNoParse = ".concat(String.valueOf(t2)));
                return t2;
            }
            if (i == 8226) {
                T t3 = (T) Integer.valueOf(kk());
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom loader : getBiddingType = ".concat(String.valueOf(t3)));
                return t3;
            }
            if (i == 8227 && valueSet != null) {
                Map<String, Object> map = (Map) valueSet.objectValue(8075, Map.class);
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom loader : setExtraInfo map =".concat(String.valueOf(map)));
                dq(map);
            }
        }
        return (T) dq(i, valueSet, cls);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public final void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        this.p = dVar;
        this.no = dVar2;
        this.f1171d = new com.bytedance.msdk.api.p.dq.d.ox.ox(dVar.le(), dVar.ig(), dVar.q(), dVar.jy(), dVar.c());
        com.bytedance.msdk.api.p.dq.d.iw.dq dq = com.bytedance.msdk.iw.d.dq.dq(dVar.mp());
        this.kk = dq != null ? dq.dq() : "";
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this);
        if (com.bytedance.sdk.gromore.init.dq.dq() >= 5900) {
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
        } else {
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        }
        f2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, this.o);
        f2.m(8546, this.f1171d.dq());
        if (dVar2.j() != null) {
            f2.m(8548, dVar2.j());
        }
        Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
        if (mn != null) {
            mn.call(8106, f2.k(), Void.class);
        } else {
            dq(new com.bytedance.msdk.api.dq("Adn custom class loader is null"));
        }
    }

    public final void d(d.dq dqVar) {
        if (!this.iw) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i = this.mn;
        if (i >= 2) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.mn = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public abstract <T> T dq(int i, ValueSet valueSet, Class<T> cls);

    @Override // com.bytedance.msdk.ox.dq.dq
    public String dq(String str) {
        return this.kk;
    }

    public void dq(int i, String str) {
        dq(new com.bytedance.msdk.api.dq(i, str));
    }

    public final void dq(d.dq dqVar) {
        if (!d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 调用错误需要在load成功之后才可以调用");
        } else if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public void dq(com.bytedance.msdk.d.s sVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(sVar);
        dq(arrayList);
    }

    public void dq(com.bytedance.msdk.d.s sVar, double d2, Map<String, Object> map) {
        if (d2 > 0.0d && kk() == 1) {
            sVar.dq(d2);
        }
        if (map != null) {
            this.s.putAll(map);
        }
        sVar.p(this.s);
        dq(sVar);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d, com.bytedance.msdk.ox.dq.d
    public void dq(List<com.bytedance.msdk.d.s> list) {
        for (com.bytedance.msdk.d.s sVar : list) {
            sVar.ox(this.s);
            sVar.jy(this.p.kx());
        }
        super.dq(list);
    }

    public void dq(Map<String, Object> map) {
        if (map != null) {
            this.s.clear();
            this.s.putAll(map);
        }
    }

    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.i(8406, z);
            f2.j(8407, d2);
            f2.o(8408, i);
            f2.m(8075, map);
            this.ox.call(8225, f2.k(), Void.class);
        }
    }

    public Object ia() {
        com.bytedance.msdk.ox.s.d.d dVar = this.p;
        return dVar != null ? dVar.ce() : "";
    }

    public void ig() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(8148, null, Void.class);
        }
    }

    public void iw() {
        this.iw = true;
    }

    public int kk() {
        com.bytedance.msdk.ox.s.d.d dVar = this.p;
        if (dVar != null) {
            return dVar.gh();
        }
        return 0;
    }

    public String mn() {
        com.bytedance.msdk.ox.s.d.d dVar = this.p;
        return dVar != null ? dVar.e() : "";
    }

    public void mp() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(8109, null, Void.class);
        }
    }

    public void no() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(8149, null, Void.class);
        }
    }

    public MediationConstant.AdIsReadyStatus o() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = this.ox;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? MediationConstant.AdIsReadyStatus.ADN_NO_READY_API : adIsReadyStatus;
    }

    public final void ox(d.dq dqVar) {
        int i = this.ia;
        if (i >= 60) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.ia = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
