package com.bytedance.sdk.openadsdk.core.component.reward.d;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.top.RewardBrowserMixTopLayoutImpl;
import com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl;
import com.bytedance.sdk.openadsdk.core.component.reward.top.mn;
import com.bytedance.sdk.openadsdk.core.component.reward.view.ugen.UgenBanner;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.widget.TopProxyLayout;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private j f2571d;
    private final TTBaseVideoActivity dq;
    private com.bytedance.sdk.openadsdk.core.component.reward.top.p ia;
    private com.bytedance.sdk.openadsdk.core.d.d iw;
    private com.bytedance.sdk.openadsdk.core.component.reward.top.s kk;
    private mn mn;
    private com.bytedance.sdk.openadsdk.core.component.reward.top.iw o;
    private com.bytedance.sdk.openadsdk.core.component.reward.top.dq ox;
    private TextView p;
    private UgenBanner s;

    public s(TTBaseVideoActivity tTBaseVideoActivity) {
        this.dq = tTBaseVideoActivity;
    }

    private void dq(TopProxyLayout topProxyLayout, View view, ViewGroup viewGroup) {
        int indexOfChild = viewGroup.indexOfChild(topProxyLayout);
        viewGroup.removeViewInLayout(topProxyLayout);
        ViewGroup.LayoutParams layoutParams = topProxyLayout.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
    }

    private void ia() {
        TopProxyLayout topProxyLayout = (TopProxyLayout) this.dq.findViewById(2114387724);
        if (topProxyLayout != null) {
            dq(topProxyLayout);
        }
        this.p = (TextView) this.dq.findViewById(2114387806);
        this.s = (UgenBanner) this.dq.findViewById(2114387906);
    }

    public void d() {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    public void d(String str) {
        TextView textView = this.p;
        if (textView != null) {
            textView.setText(str);
            this.p.setVisibility(0);
            this.p.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.s.1
                @Override // java.lang.Runnable
                public void run() {
                    s.this.p.setVisibility(8);
                }
            }, 3000L);
        }
    }

    public void d(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setShowDislike(z);
        }
    }

    public void dq() {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void dq(int i) {
        if (i == 2) {
            dq(this.ia);
            return;
        }
        if (i == 3) {
            dq(this.o);
        } else if (i != 4) {
            dq(this.mn);
        } else {
            dq(this.kk);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.reward.top.d dVar) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setListener(dVar);
        }
    }

    public void dq(j jVar, d dVar, boolean z, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
        this.f2571d = jVar;
        this.iw = dVar2;
        ia();
        this.mn = new mn(this.dq, this.f2571d, dVar, this, z);
        this.kk = new com.bytedance.sdk.openadsdk.core.component.reward.top.s(this.dq, this.f2571d, dVar, this, z);
        this.ia = new com.bytedance.sdk.openadsdk.core.component.reward.top.p(this.dq, this.f2571d, dVar, this, z);
        this.o = new com.bytedance.sdk.openadsdk.core.component.reward.top.iw(this.dq, this.f2571d, dVar, this, z);
        dq(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.bytedance.sdk.openadsdk.core.component.reward.top.RewardBrowserMixTopLayoutImpl] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.bytedance.sdk.openadsdk.core.component.reward.d.s] */
    public void dq(TopProxyLayout topProxyLayout) {
        TopLayoutImpl dq = gh.no(this.f2571d) ? new RewardBrowserMixTopLayoutImpl(topProxyLayout.getContext()).dq(this.f2571d) : new TopLayoutImpl(topProxyLayout.getContext()).dq(this.f2571d);
        if (dq != null) {
            this.ox = dq;
        } else {
            ig.p("RewardFullTopProxyManager", "view not implements ITopLayout interface");
        }
        ViewParent parent = topProxyLayout.getParent();
        if (parent instanceof ViewGroup) {
            dq(topProxyLayout, dq, (ViewGroup) parent);
        }
    }

    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setPlayAgainEntranceText(str);
        }
    }

    public void dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setVisible(z);
        }
    }

    public void dq(boolean z, String str, String str2, boolean z2, boolean z3) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(z, str, str2, z2, z3);
        }
    }

    public void iw() {
        UgenBanner ugenBanner = this.s;
        if (ugenBanner == null) {
            return;
        }
        ugenBanner.dq(this.f2571d, this.iw);
    }

    public void iw(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setShowBack(z);
        }
    }

    public void mn() {
        UgenBanner ugenBanner = this.s;
        if (ugenBanner == null) {
            return;
        }
        ugenBanner.dq();
    }

    public void mn(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setShowAgain(z);
        }
    }

    public void ox() {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.ox();
        }
    }

    public void ox(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setDislikeLeft(z);
        }
    }

    public View p() {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.getCloseButton();
        }
        return null;
    }

    public void p(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setSoundMute(z);
        }
    }

    public void s(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.setShowSound(z);
        }
    }

    public boolean s() {
        com.bytedance.sdk.openadsdk.core.component.reward.top.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.getSkipOrCloseVisible();
        }
        return false;
    }
}
