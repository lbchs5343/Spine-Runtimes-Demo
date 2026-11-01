package com.bytedance.sdk.gromore.dq.dq.iw;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.core.admanager.no;

/* loaded from: classes.dex */
public class p implements iw {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2314d;
    private no dq;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.dq ox;

    public p(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar2) {
        this.f2314d = dqVar;
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "CSJMSplashLoader 构造函数创建 mAdSlotValueSet = " + this.f2314d + " mAdSlotValueSet.getCodeId() = " + this.f2314d.mn());
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar3 = this.f2314d;
        if (dqVar3 != null) {
            this.dq = new no(context, dqVar3.mn());
            this.ox = dqVar2;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        dq(-1);
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.iw.iw
    public void dq(int i) {
        final com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.ox mp;
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "CSJMSplashLoader load timeout = ".concat(String.valueOf(i)));
        com.bytedance.msdk.core.mp.dq.dq().d();
        com.bytedance.msdk.api.dq.d dVar = new com.bytedance.msdk.api.dq.d(3, this.f2314d.ox());
        if (i != -1) {
            dVar.ia(i);
        }
        this.dq.dq(dVar, (this.f2314d.dq() == null || (mp = this.f2314d.dq().mp()) == null || TextUtils.isEmpty(mp.dq()) || TextUtils.isEmpty(mp.ox()) || TextUtils.isEmpty(mp.d())) ? null : new com.bytedance.msdk.api.p.no() { // from class: com.bytedance.sdk.gromore.dq.dq.iw.p.1
            @Override // com.bytedance.msdk.api.p.no
            public String d() {
                return mp.d();
            }

            @Override // com.bytedance.msdk.api.p.no
            public int dq() {
                String dq = mp.dq();
                dq.getClass();
                switch (dq) {
                    case "klevin":
                        return 9;
                    case "pangle":
                        return 1;
                    case "sigmob":
                        return 8;
                    case "ks":
                        return 7;
                    case "gdt":
                        return 3;
                    case "baidu":
                        return 6;
                    case "mintegral":
                        return 4;
                    default:
                        return super.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.no
            public String ox() {
                return mp.ox();
            }

            @Override // com.bytedance.msdk.api.p.no
            public String p() {
                return mp.p();
            }
        }, new com.bytedance.msdk.api.p.dq.kk.ox() { // from class: com.bytedance.sdk.gromore.dq.dq.iw.p.2
            @Override // com.bytedance.msdk.api.p.dq.kk.ox
            public void dq() {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "CSJMSplashLoader onSplashAdLoadSuccess");
                if (p.this.ox != null) {
                    d dVar2 = new d(p.this.dq, p.this.ox);
                    p.this.ox.dq(dVar2);
                    p.this.ox.d(dVar2);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.kk.ox
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "CSJMSplashLoader onSplashAdLoadFail");
                if (dqVar == null || p.this.ox == null) {
                    return;
                }
                com.bytedance.sdk.gromore.dq.dq.dq dqVar2 = new com.bytedance.sdk.gromore.dq.dq.dq(dqVar.dq, dqVar.f756d);
                p.this.ox.dq(dqVar2);
                p.this.ox.dq(null, dqVar2);
            }
        });
    }
}
