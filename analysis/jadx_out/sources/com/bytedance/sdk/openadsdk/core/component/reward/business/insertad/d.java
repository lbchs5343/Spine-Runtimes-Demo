package com.bytedance.sdk.openadsdk.core.component.reward.business.insertad;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq;
import com.bytedance.sdk.openadsdk.core.component.reward.layout.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.bl;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes3.dex */
public class d implements dq {

    /* renamed from: d, reason: collision with root package name */
    private final dq.InterfaceC0142dq f2544d;
    private SmallSlideView ia;
    private int iw;
    private int mn;
    private ox ox;
    private TextView s;
    protected final AtomicBoolean dq = new AtomicBoolean(false);
    private boolean p = true;

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.d$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ LinearLayout dq;

        public AnonymousClass1(LinearLayout linearLayout) {
            this.dq = linearLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f2544d.dq().dq(new RewardFullBaseLayout.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.d.1.1
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.RewardFullBaseLayout.dq
                public void dq() {
                    p pVar = new p();
                    pVar.dq = false;
                    pVar.f2549d = true;
                    d.this.f2544d.dq().dq();
                    d.this.f2544d.getActivity().dq(3, pVar);
                }
            });
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.dq.getLayoutParams();
            layoutParams.bottomMargin = -this.dq.getMeasuredHeight();
            this.dq.setLayoutParams(layoutParams);
            this.dq.setVisibility(0);
            final TranslateAnimation translateAnimation = new TranslateAnimation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -this.dq.getMeasuredHeight());
            translateAnimation.setDuration(300L);
            translateAnimation.setRepeatCount(3);
            translateAnimation.setRepeatMode(2);
            translateAnimation.setFillAfter(true);
            translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.d.1.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    AnonymousClass1.this.dq.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.d.1.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.this.f2544d.dq().getSceneFrameContainer().startAnimation(translateAnimation);
                        }
                    }, 2000L);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    d.this.ia.dq();
                }
            });
            d.this.f2544d.dq().getSceneFrameContainer().startAnimation(translateAnimation);
        }
    }

    public d(dq.InterfaceC0142dq interfaceC0142dq) {
        this.f2544d = interfaceC0142dq;
    }

    private boolean dq(j jVar, int i) {
        return i != 1 ? i != 2 ? (i == 3 || i == 4) && bl.ox(jVar, true) : bl.d(jVar, true) : bl.dq(jVar, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public int d() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.ia();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public int dq() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return Math.max(0, oxVar.d() - this.ox.ox());
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public int dq(int i) {
        if (!this.p) {
            return 0;
        }
        if (i != 1 ? i != 2 ? !(i == 3 && bl.ox(this.f2544d.d()) == 1 && !this.f2544d.mn() && bl.d(this.f2544d.ox(), this.f2544d.d())) : !(bl.d(this.f2544d.d()) == 1 && bl.dq(this.f2544d.ox(), this.f2544d.d()) && !this.f2544d.iw()) : !(!uh.kx(this.f2544d.d()) && bl.dq(this.f2544d.d()) == 1 && bl.dq(j.d(this.f2544d.d()), this.f2544d.ox()))) {
            return 0;
        }
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public void dq(FrameLayout frameLayout) {
        if (frameLayout == null) {
            return;
        }
        if (this.s == null) {
            this.s = ce.fw(this.f2544d.getActivity());
        }
        if (this.s.getParent() != null) {
            ((ViewGroup) this.s.getParent()).removeView(this.s);
        }
        this.iw = bl.iw() * 2;
        frameLayout.addView(this.s);
        mn();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public void dq(ox oxVar) {
        this.ox = oxVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        r2.remove(r0);
        r3.ce(r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        r1 = r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(ox oxVar, int i, p pVar) {
        j jVar = null;
        try {
            JSONArray jSONArray = new JSONArray(this.f2544d.d().tt());
            int i2 = 0;
            while (true) {
                if (i2 >= jSONArray.length()) {
                    break;
                }
                j dq = com.bytedance.sdk.openadsdk.core.d.dq(jSONArray.getJSONObject(i2));
                if (dq(dq, i)) {
                    try {
                        break;
                    } catch (JSONException e2) {
                        e = e2;
                        jVar = dq;
                        e.printStackTrace();
                        if (jVar == null) {
                        }
                    }
                } else {
                    i2++;
                }
            }
        } catch (JSONException e3) {
            e = e3;
        }
        if (jVar == null) {
            if (i == 3 && pVar != null && pVar.dq) {
                this.f2544d.ia();
                return;
            }
            com.bytedance.sdk.openadsdk.core.component.reward.ox oxVar2 = new com.bytedance.sdk.openadsdk.core.component.reward.ox(wp.getContext(), jVar, com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().dq(c.dq(jVar, "")));
            oxVar2.dq(oxVar);
            oxVar2.dq(this.f2544d.getActivity());
            this.dq.set(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public void dq(boolean z) {
        this.p = z;
    }

    public void ia() {
        TextView textView = this.s;
        if (textView == null || textView.getParent() == null) {
            return;
        }
        ((ViewGroup) this.s.getParent()).removeView(this.s);
        this.s = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public void iw() {
        if (this.mn <= 0 || this.f2544d.p() < this.mn) {
            return;
        }
        this.mn = 0;
        p pVar = new p();
        pVar.dq = false;
        pVar.f2549d = false;
        this.f2544d.getActivity().dq(3, pVar);
    }

    public void mn() {
        int s = this.f2544d.s();
        String b2 = awf.b(s, "继续看", "秒可领取奖励");
        if (this.ox.ox() > 0) {
            if (s <= 0) {
                b2 = "成功加速" + this.ox.ox() + "秒，奖励已下发";
            } else {
                b2 = "加速成功！".concat(String.valueOf(b2));
            }
        } else if (s <= 0) {
            ia();
            return;
        }
        this.s.setText(b2);
        int i = this.iw;
        if (i <= 0) {
            ia();
            return;
        }
        this.iw = i - 1;
        TextView textView = this.s;
        if (textView != null) {
            textView.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.d.2
                @Override // java.lang.Runnable
                public void run() {
                    d.this.mn();
                }
            }, 500L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public void ox() {
        String str;
        this.mn = (bl.mn() / 1000) + this.f2544d.p();
        LinearLayout linearLayout = new LinearLayout(this.f2544d.getActivity());
        int ox = ce.ox(this.f2544d.getActivity(), 10.0f);
        linearLayout.setPadding(ox, ox, ox, ox);
        linearLayout.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#242424"));
        gradientDrawable.setCornerRadius(com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(this.f2544d.getActivity(), 12.0f));
        linearLayout.setBackground(gradientDrawable);
        this.ia = new SmallSlideView(this.f2544d.getActivity());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ce.ox(this.f2544d.getActivity(), 80.0f), ce.ox(this.f2544d.getActivity(), 80.0f));
        layoutParams.gravity = 17;
        linearLayout.addView(this.ia, layoutParams);
        TextView textView = new TextView(this.f2544d.getActivity());
        if (bl.ia() > 0) {
            str = "上滑继续观看\n提前" + bl.ia() + "秒领奖";
        } else {
            str = "上滑继续观看\n才能领奖哦";
        }
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setTextSize(2, 18.0f);
        linearLayout.addView(textView);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(ce.ox(this.f2544d.getActivity(), 160.0f), ce.ox(this.f2544d.getActivity(), 160.0f));
        layoutParams2.gravity = 17;
        this.f2544d.dq().addView(linearLayout, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this.f2544d.getActivity());
        ImageView imageView = new ImageView(this.f2544d.getActivity());
        imageView.setImageDrawable(r.ox(this.f2544d.getActivity(), "ic_back_light"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = ce.ox(this.f2544d.getActivity(), 10.0f);
        layoutParams3.bottomMargin = ce.ox(this.f2544d.getActivity(), 10.0f);
        linearLayout2.addView(imageView, layoutParams3);
        this.f2544d.dq().getSceneFrameContainer().setClipChildren(false);
        linearLayout2.setVisibility(4);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 80;
        this.f2544d.dq().getSceneFrameContainer().addView(linearLayout2, layoutParams4);
        linearLayout2.post(new AnonymousClass1(linearLayout2));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public boolean p() {
        return this.ox != null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq
    public boolean s() {
        return this.dq.get();
    }
}
