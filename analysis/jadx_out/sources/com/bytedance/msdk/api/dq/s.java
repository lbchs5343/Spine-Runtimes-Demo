package com.bytedance.msdk.api.dq;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class s implements p {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.d f759d;
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq dq;
    private int iw = -1;
    private String mn = "";
    private Map<String, Object> ox;
    private int p;
    private ValueSet s;

    public s(int i, ValueSet valueSet) {
        if (valueSet == null) {
            com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "valueset is null");
            return;
        }
        this.s = valueSet;
        this.p = i;
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = new com.bytedance.sdk.openadsdk.mediation.dq.d.dq(valueSet);
        this.dq = dqVar;
        this.f759d = dqVar.dq();
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String bl() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar;
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        String h = dqVar != null ? dqVar.h() : "";
        return (!TextUtils.isEmpty(h) || (dVar = this.f759d) == null) ? h : dVar.q();
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean c() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar != null) {
            return dVar.ox();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean cd() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar != null) {
            return dVar.kk();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String ce() {
        Map<String, Object> iw;
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar == null || (iw = dVar.iw()) == null) {
            return "";
        }
        Object obj = iw.get("testToolSlotId");
        return obj instanceof String ? (String) obj : "";
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int e() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean er() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar != null) {
            return dVar.mn();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean f() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.q();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int fw() {
        return this.iw;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean gh() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar != null) {
            return dVar.dq();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int h() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.jy();
        }
        return 1;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public com.bytedance.sdk.openadsdk.mediation.dq.d.dq i() {
        return this.dq;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void ia(int i) {
        this.iw = i;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String ir() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        return dqVar != null ? dqVar.fw() : "";
    }

    @Override // com.bytedance.msdk.api.dq.p
    public ValueSet j() {
        return this.s;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean ji() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.mp();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public float jy() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        return dqVar != null ? dqVar.ig() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String k() {
        if (!TextUtils.isEmpty(this.mn)) {
            return this.mn;
        }
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        return dqVar != null ? dqVar.mn() : "";
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void kk() {
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getAdType = " + le());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getAdUnitId = " + k());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getImgAcceptedWidth = " + e());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getImgAcceptedHeight = " + kx());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getExpressViewAcceptedWidth = " + q());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getExpressViewAcceptedHeight = " + jy());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "isSupportRenderConrol = " + f());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getAdCount = " + h());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "isSupportDeepLink = " + ji());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getMediaExtra = " + op());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getUserID = " + ir());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getOrientation = " + u());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getRewardName = " + bl());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getRewardAmount = " + n());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getScenarioId = " + wp());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "isMuted = " + c());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getTestSlotId = " + ce());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "isBidNotify = " + er());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getCustomData = " + wn());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getTimeOut = " + fw());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "isAllowShowCloseBtn = " + cd());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getValueSet = " + j());
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void kk(int i) {
        this.p = i;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int kx() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.o();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int le() {
        return this.p;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int n() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar;
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        int ji = dqVar != null ? dqVar.ji() : 0;
        return (ji != 0 || (dVar = this.f759d) == null) ? ji : dVar.jy();
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String op() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        return dqVar != null ? dqVar.f() : "";
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void ox(String str) {
        this.mn = str;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public float q() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        return dqVar != null ? dqVar.no() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean r() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar != null) {
            return dVar.d();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int u() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.cd();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String vf() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.d();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public Map<String, Object> wn() {
        Map<String, Object> map = this.ox;
        if (map != null) {
            return map;
        }
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        if (dVar != null) {
            this.ox = dVar.iw();
        }
        if (this.ox == null) {
            this.ox = new HashMap();
        }
        return this.ox;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String wp() {
        com.bytedance.sdk.openadsdk.mediation.dq.d.d dVar = this.f759d;
        return dVar != null ? dVar.ia() : "";
    }
}
