package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class RewardBrowserMixTopLayoutImpl extends FrameLayout implements dq<RewardBrowserMixTopLayoutImpl> {

    /* renamed from: d, reason: collision with root package name */
    private View f2657d;
    private View dq;
    private d ox;
    private j p;
    private Context s;

    public RewardBrowserMixTopLayoutImpl(Context context) {
        this(context, null);
    }

    public RewardBrowserMixTopLayoutImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RewardBrowserMixTopLayoutImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = context;
    }

    private void p() {
        ce.dq(this.dq, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.RewardBrowserMixTopLayoutImpl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("topListener", RewardBrowserMixTopLayoutImpl.this.ox);
                    jSONObject.put("topImpl", 2);
                } catch (Throwable unused) {
                }
                ig.dq().dq(RewardBrowserMixTopLayoutImpl.this.p, "stats_reward_full_click_native_close", jSONObject);
                if (RewardBrowserMixTopLayoutImpl.this.ox != null) {
                    RewardBrowserMixTopLayoutImpl.this.ox.dq(view);
                }
            }
        }, "top_skip_border");
        ce.dq(this.f2657d, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.RewardBrowserMixTopLayoutImpl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RewardBrowserMixTopLayoutImpl.this.ox != null) {
                    RewardBrowserMixTopLayoutImpl.this.ox.ox(view);
                }
            }
        }, "top_dislike_button");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void d() {
    }

    public RewardBrowserMixTopLayoutImpl dq(j jVar) {
        this.p = jVar;
        addView(com.bytedance.sdk.openadsdk.res.s.mn(getContext()));
        this.dq = findViewById(2114387874);
        View findViewById = findViewById(2114387456);
        this.f2657d = findViewById(2114387457);
        if (gh.mp(jVar)) {
            this.dq = findViewById(2114387874);
            this.f2657d.setVisibility(8);
            findViewById.setVisibility(8);
            this.dq.setBackground(r.ox(this.s, "tt_ad_skip_btn_bg"));
        } else if (gh.q(jVar)) {
            findViewById(2114387743).setVisibility(8);
            this.dq = findViewById(2114387874);
        } else {
            this.dq = findViewById(2114387716);
            this.f2657d.setVisibility(8);
            findViewById.setVisibility(8);
        }
        if (this.dq != null) {
            if (jVar.iw()) {
                this.dq.setVisibility(8);
            } else {
                this.dq.setVisibility(0);
                this.dq.setEnabled(true);
                this.dq.setClickable(true);
            }
        }
        p();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void dq() {
        View view = this.dq;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void dq(boolean z, String str, String str2, boolean z2, boolean z3) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public View getCloseButton() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public boolean getSkipOrCloseVisible() {
        return ce.p(this.dq);
    }

    public d getTopListener() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void ox() {
        View view = this.f2657d;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setDislikeLeft(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setListener(d dVar) {
        this.ox = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setPlayAgainEntranceText(String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowAgain(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowBack(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowDislike(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowSound(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setSoundMute(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setVisible(boolean z) {
        setVisibility(z ? 0 : 8);
    }
}
