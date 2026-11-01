package com.bytedance.msdk.ox.dq;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class p extends com.bytedance.msdk.d.s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    protected com.bytedance.msdk.ox.s.d.dq f1131d;
    protected Bridge dq;

    public p(com.bytedance.msdk.ox.s.d.dq dqVar) {
        this.f1131d = dqVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public final <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8128) {
            this.dq = (Bridge) valueSet.objectValue(8035, Bridge.class);
        } else if (i == 8208) {
            String stringValue = valueSet.stringValue(8058);
            if (!TextUtils.isEmpty(stringValue)) {
                mp(stringValue);
            }
        } else if (i == 8209) {
            ig(valueSet.intValue(8060));
        } else if (i == 8140) {
            mp(valueSet.intValue(8059));
        }
        return (T) dq(i, valueSet, cls);
    }

    @Override // com.bytedance.msdk.d.s
    public void ce() {
        super.ce();
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(8149, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        if (xx() && this.dq != null) {
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map);
            this.dq.call(8142, f2.k(), Void.class);
        }
    }

    public abstract <T> T dq(int i, ValueSet valueSet, Class<T> cls);

    @Override // com.bytedance.msdk.d.s
    public Map<String, Object> dq() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            ox((Map<String, Object>) bridge.call(8239, null, Map.class));
        }
        return super.dq();
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Map<String, Object> map) {
        if (xx()) {
            Object obj = map.get(MediationConstant.BIDDING_LOSE_REASON);
            int lossReason = MediationConstant.BiddingLossReason.OTHER.getLossReason();
            if (obj instanceof MediationConstant.BiddingLossReason) {
                lossReason = ((MediationConstant.BiddingLossReason) obj).getLossReason();
            }
            map.put("bidding_lose_reason_NUM", Integer.valueOf(lossReason));
            if (this.dq != null) {
                hat f2 = hat.f();
                f2.m(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map);
                this.dq.call(8144, f2.k(), Void.class);
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void er() {
        super.er();
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(8148, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public long ia() {
        Bridge bridge = this.dq;
        return bridge != null ? ((Long) bridge.call(8246, null, Long.class)).longValue() : super.ia();
    }

    @Override // com.bytedance.msdk.d.s
    public long mn() {
        Bridge bridge = this.dq;
        return bridge != null ? ((Long) bridge.call(8245, null, Long.class)).longValue() : super.mn();
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(8109, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean s() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Boolean) bridge.call(8120, null, Boolean.class)).booleanValue();
        }
        return false;
    }

    public boolean u() {
        com.bytedance.msdk.ox.s.d.dq dqVar = this.f1131d;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
