package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TopLayoutImpl extends FrameLayout implements dq<TopLayoutImpl> {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f2658d;
    private View dq;

    /* renamed from: f, reason: collision with root package name */
    private j f2659f;
    private View ia;
    private View ig;
    private View iw;
    private d jy;
    private TextView kk;
    private View mn;
    private View mp;
    private TextView no;
    private View o;
    private View ox;
    private View p;
    private boolean q;
    private TextView s;

    public TopLayoutImpl(Context context) {
        this(context, null);
    }

    public TopLayoutImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void p() {
        ce.dq(this.dq, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.jy != null) {
                    TopLayoutImpl.this.jy.ox(view);
                }
            }
        }, "top_dislike_button");
        ce.dq(this.f2658d, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TopLayoutImpl.this.q = !r0.q;
                TopLayoutImpl.this.f2658d.setImageDrawable(TopLayoutImpl.this.q ? r.ox(TopLayoutImpl.this.getContext(), "tt_mute") : r.ox(TopLayoutImpl.this.getContext(), "tt_unmute"));
                if (TopLayoutImpl.this.jy != null) {
                    TopLayoutImpl.this.jy.d(view);
                }
            }
        }, "top_mute_button");
        ce.dq(this.mn, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "top_before_button");
        ce.dq(this.o, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("topListener", TopLayoutImpl.this.jy);
                    jSONObject.put("topImpl", 1);
                } catch (Throwable unused) {
                }
                if (!h.dq(TopLayoutImpl.this.f2659f) || com.bytedance.sdk.openadsdk.core.mp.s.dq(String.valueOf(c.kk(TopLayoutImpl.this.f2659f)))) {
                    ig.dq().dq(TopLayoutImpl.this.f2659f, "stats_reward_full_click_native_close", jSONObject);
                }
                if (TopLayoutImpl.this.jy != null) {
                    TopLayoutImpl.this.jy.dq(view);
                }
            }
        }, "top_skip_button");
        ce.dq(this.ox, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.jy != null) {
                    TopLayoutImpl.this.jy.p(view);
                }
            }
        }, "top_back_button");
        ce.dq(this.p, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.jy != null) {
                    TopLayoutImpl.this.jy.s(view);
                }
            }
        }, "top_again_button");
        ce.dq(this.iw, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.TopLayoutImpl.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.jy != null) {
                    TopLayoutImpl.this.jy.iw(view);
                }
            }
        }, "top_skip_border");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void d() {
        ImageView imageView = this.f2658d;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    public TopLayoutImpl dq(j jVar) {
        this.f2659f = jVar;
        if (gh.no(jVar)) {
            addView(com.bytedance.sdk.openadsdk.res.s.mn(getContext()));
        } else {
            addView(com.bytedance.sdk.openadsdk.res.s.iw(getContext()));
        }
        this.dq = findViewById(2114387850);
        this.f2658d = (ImageView) findViewById(2114387763);
        this.ox = findViewById(2114387824);
        this.p = findViewById(2114387676);
        this.s = (TextView) findViewById(2114387635);
        this.iw = findViewById(2114387716);
        this.mn = findViewById(2114387951);
        this.ia = findViewById(2114387729);
        this.kk = (TextView) findViewById(2114387609);
        this.o = findViewById(2114387638);
        this.no = (TextView) findViewById(2114387790);
        this.ig = findViewById(2114387743);
        this.mp = findViewById(2114387930);
        View view = this.o;
        if (view != null) {
            view.setEnabled(false);
            this.o.setClickable(false);
        }
        p();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void dq() {
        View view = this.o;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void dq(boolean z, String str, String str2, boolean z2, boolean z3) {
        ce.dq(this.iw, 0);
        boolean z4 = z || !TextUtils.isEmpty(str);
        boolean z5 = z2 || !TextUtils.isEmpty(str2);
        boolean z6 = z4 && z5;
        ce.dq(this.iw, (z4 || z5) ? 0 : 4);
        ce.dq(this.mn, z4 ? 0 : 8);
        ce.dq(this.o, z5 ? 0 : 8);
        ce.dq(this.mp, z6 ? 0 : 8);
        ce.dq(this.ia, z ? 0 : 8);
        ce.dq((View) this.kk, !TextUtils.isEmpty(str) ? 0 : 8);
        ce.dq(this.ig, z2 ? 0 : 8);
        ce.dq((View) this.no, TextUtils.isEmpty(str2) ? 8 : 0);
        if (!TextUtils.isEmpty(str)) {
            ce.dq(this.kk, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            ce.dq(this.no, str2);
        }
        View view = this.o;
        if (view != null) {
            view.setEnabled(z3);
            this.o.setClickable(z3);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public View getCloseButton() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public boolean getSkipOrCloseVisible() {
        return ce.p(this.o) || (this.iw != null && ce.p(this.no) && !TextUtils.isEmpty(this.no.getText()));
    }

    public d getTopListener() {
        return this.jy;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void ox() {
        View view = this.dq;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setDislikeLeft(boolean z) {
        if (this.dq.getLayoutParams() instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.dq.getLayoutParams();
            layoutParams.gravity = z ? 8388611 : 8388613;
            this.dq.setLayoutParams(layoutParams);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setListener(d dVar) {
        this.jy = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setPlayAgainEntranceText(String str) {
        ce.dq(this.s, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowAgain(boolean z) {
        ce.dq(this.p, z ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowBack(boolean z) {
        View view = this.ox;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowDislike(boolean z) {
        View view = this.dq;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setShowSound(boolean z) {
        ImageView imageView = this.f2658d;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setSoundMute(boolean z) {
        this.q = z;
        this.f2658d.setImageDrawable(z ? r.ox(getContext(), "tt_mute") : r.ox(getContext(), "tt_unmute"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.dq
    public void setVisible(boolean z) {
        setVisibility(z ? 0 : 8);
    }
}
