package com.bytedance.msdk.dq.p.dq;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.ox.ox;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    protected com.bytedance.msdk.api.p.dq.d.d.d f1071d;
    protected Bridge dq;
    private String ox;
    private ox p;

    public dq(String str, com.bytedance.msdk.api.p.dq.d.d.d dVar) {
        this.ox = str;
        this.f1071d = dVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public final <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8221) {
            this.dq = (Bridge) valueSet.objectValue(8405, Bridge.class);
        } else {
            if (i == 8137) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "GMCustomAdLoader4csjm getAdm");
                return (T) dq();
            }
            if (i == 8224) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "GMCustomAdLoader4csjm getExtraDataNoParse");
                return (T) d();
            }
            if (i == 8226) {
                T t = (T) Integer.valueOf(ox());
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "GMCustomAdLoader4csjm getBiddingType :".concat(String.valueOf(t)));
                return t;
            }
            if (i == 8227) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "GMCustomAdLoader4csjm setExtraInfo");
                if (valueSet != null) {
                    dq((Map) valueSet.objectValue(8075, Map.class));
                }
            }
        }
        return (T) dq(i, valueSet, cls);
    }

    public Object d() {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.f1071d;
        return dVar != null ? dVar.f() : "";
    }

    public abstract <T> T dq(int i, ValueSet valueSet, Class<T> cls);

    public String dq() {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.f1071d;
        return dVar != null ? dVar.jy() : "";
    }

    public void dq(Context context, com.bytedance.msdk.api.dq.d dVar, ox oxVar) {
        if (context == null || dVar == null || oxVar == null) {
            return;
        }
        this.p = oxVar;
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this);
        if (com.bytedance.sdk.gromore.init.dq.dq() >= 5900) {
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.bytedance.msdk.dq.s.dq.dq(context));
        } else {
            f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        }
        f2.n(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, this.ox);
        f2.m(8546, oxVar.dq());
        if (dVar.j() != null) {
            f2.m(8548, dVar.j());
        }
        Bridge mn = com.bytedance.msdk.core.mp.dq.dq().mn();
        if (mn != null) {
            mn.call(8106, f2.k(), Void.class);
        } else {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "load custom class loader is null ");
        }
    }

    public void dq(Map<String, Object> map) {
    }

    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.i(8406, z);
            f2.j(8407, d2);
            f2.o(8408, i);
            f2.m(8075, map);
            this.dq.call(8225, f2.k(), Void.class);
        }
    }

    public void iw() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(8148, null, Void.class);
        }
    }

    public void mn() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(8109, null, Void.class);
        }
    }

    public int ox() {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.f1071d;
        if (dVar != null) {
            return dVar.q();
        }
        return 0;
    }

    public MediationConstant.AdIsReadyStatus p() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = this.dq;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? MediationConstant.AdIsReadyStatus.ADN_NO_READY_API : adIsReadyStatus;
    }

    public void s() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(8149, null, Void.class);
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
