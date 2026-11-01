package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {
    com.bytedance.sdk.openadsdk.core.o.d.ox dq;
    private ViewGroup ia;
    private j iw;
    private FullRewardExpressView kk;
    private String mn;
    private final TTBaseVideoActivity s;

    /* renamed from: d, reason: collision with root package name */
    boolean f2620d = false;
    boolean ox = false;
    boolean p = false;

    public s(TTBaseVideoActivity tTBaseVideoActivity) {
        this.s = tTBaseVideoActivity;
    }

    private EmptyView dq(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    private com.bytedance.sdk.openadsdk.core.o.d.ox dq(j jVar) {
        if (jVar.y() == 4) {
            return com.bytedance.sdk.openadsdk.core.o.s.dq((Context) this.s, jVar, this.mn, false);
        }
        return null;
    }

    private void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar, NativeExpressView nativeExpressView) {
        if (oxVar == null || nativeExpressView == null) {
            return;
        }
        j jVar = this.iw;
        final String fx = jVar != null ? jVar.fx() : "";
        oxVar.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.s.2
            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void d(long j, long j2, String str, String str2) {
                s.this.s.dq("下载暂停");
                if (j > 0) {
                    dq.C0166dq.dq(fx, 2, (int) ((j2 * 100) / j));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq() {
                ig.p("wyx", "RewardFullExpressLayout onIdle");
                s.this.s.dq("点击开始下载");
                dq.C0166dq.dq(fx, 1, 0);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, long j2, String str, String str2) {
                ig.p("wyx", "RewardFullExpressLayout onDownloadActive");
                if (j > 0) {
                    int i = (int) ((j2 * 100) / j);
                    s.this.s.dq("已下载" + i + "%");
                    dq.C0166dq.dq(fx, 3, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, String str, String str2) {
                s.this.s.dq("点击安装");
                dq.C0166dq.dq(fx, 5, 100);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(String str, String str2) {
                s.this.s.dq("点击打开");
                dq.C0166dq.dq(fx, 6, 100);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void ox(long j, long j2, String str, String str2) {
                s.this.s.dq("下载失败");
                if (j > 0) {
                    dq.C0166dq.dq(fx, 4, (int) ((j2 * 100) / j));
                }
            }
        });
    }

    public void d(boolean z) {
        this.ox = z;
    }

    public boolean d() {
        return this.f2620d;
    }

    public FrameLayout dq() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getVideoFrameLayout();
        }
        return null;
    }

    public void dq(com.bykv.vk.openvk.component.video.api.p.ox oxVar) {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.setVideoController(oxVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.reward.s.ox oxVar) {
        if (this.kk != null) {
            this.kk.dq(oxVar.p() + ((int) (oxVar.dq() / 1000)), oxVar.p() + oxVar.ox());
        }
    }

    public void dq(dq.InterfaceC0174dq interfaceC0174dq) {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.dq(interfaceC0174dq);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar) {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressInteractionListener(dqVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.nativeexpress.iw iwVar, com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar) {
        j jVar;
        if (this.kk == null || (jVar = this.iw) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox dq = dq(jVar);
        this.dq = dq;
        if (dq != null) {
            dq.ia();
            if (this.kk.getContext() != null && (this.kk.getContext() instanceof Activity)) {
                this.dq.dq((Activity) this.kk.getContext());
            }
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.iw);
        EmptyView dq2 = dq((ViewGroup) this.kk);
        if (dq2 == null) {
            j jVar2 = this.iw;
            EmptyView emptyView = new EmptyView(this.s, this.kk, jVar2 != null ? jVar2.vb() : 1000);
            emptyView.setMaterialMeta(this.iw);
            this.kk.addView(emptyView);
            dq2 = emptyView;
        }
        dq2.setNeedCheckingShow(false);
        dq2.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.s.1
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = s.this.dq;
                if (oxVar != null) {
                    oxVar.kk();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = s.this.dq;
                if (oxVar != null) {
                    oxVar.s(false);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z) {
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = s.this.dq;
                if (oxVar == null || !z) {
                    return;
                }
                oxVar.ia();
            }
        });
        iwVar.dq(this.kk);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.dq);
        this.kk.setClickListener(iwVar);
        sVar.dq(this.kk);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.dq);
        this.kk.setClickCreativeListener(sVar);
        dq2.setNeedCheckingShow(false);
        dq(this.dq, this.kk);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.nativeexpress.o oVar) {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressVideoListenerProxy(oVar);
    }

    public void dq(j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, boolean z) {
        if (this.p) {
            return;
        }
        this.p = true;
        this.iw = jVar;
        this.mn = str;
        this.kk = new FullRewardExpressView(this.s, jVar, dVar, str, z);
        FrameLayout expressFrameContainer = this.s.u().getExpressFrameContainer();
        this.ia = expressFrameContainer;
        expressFrameContainer.addView(this.kk, new FrameLayout.LayoutParams(-2, -2));
        this.kk.setEasyPlayableContainer(this.s.u().getEasyPlayableContainer());
    }

    public void dq(CharSequence charSequence, int i, int i2, boolean z) {
        if (this.kk == null || !iw()) {
            return;
        }
        this.kk.dq(charSequence, i, i2, z);
    }

    public void dq(String str, JSONObject jSONObject) {
        c jsObject;
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView == null || (jsObject = fullRewardExpressView.getJsObject()) == null || this.s.isFinishing()) {
            return;
        }
        jsObject.dq(str, jSONObject);
    }

    public void dq(boolean z) {
        this.f2620d = z;
    }

    public void ia() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.fw();
            this.kk.cd();
        }
    }

    public q ig() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView == null) {
            return null;
        }
        return fullRewardExpressView.getRenderResult();
    }

    public boolean iw() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        return (fullRewardExpressView == null || fullRewardExpressView.i()) ? false : true;
    }

    public int kk() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getDynamicShowType();
        }
        return 0;
    }

    public void mn() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.f();
    }

    public FullRewardExpressView mp() {
        return this.kk;
    }

    public boolean no() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView == null) {
            return true;
        }
        return fullRewardExpressView.q();
    }

    public Boolean o() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.le();
        }
        return null;
    }

    public void ox(boolean z) {
        ViewGroup viewGroup = this.ia;
        if (viewGroup != null) {
            viewGroup.setVisibility(z ? 0 : 8);
        }
    }

    public boolean ox() {
        return this.ox;
    }

    public void p() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.mp();
        }
    }

    public void q() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null && fullRewardExpressView.getJsObject() != null) {
            this.kk.getJsObject().mn(true);
        }
        dq("isVerifyReward", (JSONObject) null);
    }

    public void s() {
        FullRewardExpressView fullRewardExpressView = this.kk;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.cd();
        }
    }
}
