package com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p.dq;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.component.widget.recycler.dq.ox.iw;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardJointBottomView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.ia.d;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class RewardJointEndCardFrameLayout extends AbstractEndCardFrameLayout implements iw {
    private FrameLayout iw;
    private FrameLayout ox;
    private View p;
    private RewardJointBottomView s;

    public RewardJointEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
    }

    private void d(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setBackgroundColor(-1);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(ce.ox(getContext(), 15.0f), 0, 0, 0);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(getContext());
        tTRoundRectImageView.setBackgroundColor(0);
        linearLayout.addView(tTRoundRectImageView, new RelativeLayout.LayoutParams(ce.ox(getContext(), 40.0f), ce.ox(getContext(), 40.0f)));
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setGravity(16);
        linearLayout2.setOrientation(1);
        TextView textView = new TextView(getContext());
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(16);
        textView.setMaxWidth(ce.ox(getContext(), 153.0f));
        textView.setSingleLine(true);
        textView.setTextColor(-16777216);
        textView.setTextSize(2, 17.0f);
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(-2, ce.ox(getContext(), 27.0f)));
        TextView textView2 = new TextView(getContext());
        textView2.setEllipsize(truncateAt);
        textView2.setSingleLine(true);
        textView2.setTextColor(Color.parseColor("#4A4A4A"));
        textView2.setTextSize(2, 11.0f);
        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(-2, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.setMarginStart(ce.ox(getContext(), 14.0f));
        linearLayout.addView(linearLayout2, layoutParams);
        TextView textView3 = new TextView(getContext());
        textView3.setBackgroundColor(Color.parseColor("#1A73E8"));
        textView3.setGravity(17);
        textView3.setTextColor(-1);
        textView3.setTextSize(2, 13.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ce.ox(getContext(), 70.0f), ce.ox(getContext(), 24.0f));
        layoutParams2.setMarginEnd(ce.ox(getContext(), 15.0f));
        linearLayout.addView(textView3, layoutParams2);
        viewGroup.addView(linearLayout, new LinearLayout.LayoutParams(-1, ce.ox(getContext(), 60.0f)));
        this.p = linearLayout;
        ji wq = this.f2600d.wq();
        if (wq == null || TextUtils.isEmpty(wq.dq())) {
            tTRoundRectImageView.setImageDrawable(r.ox(getContext(), "tt_ad_logo_small"));
        } else {
            d.dq(wq).dq(tTRoundRectImageView);
        }
        if (this.f2600d.gm() == null || TextUtils.isEmpty(this.f2600d.gm().ox())) {
            textView.setText(this.f2600d.w());
        } else {
            textView.setText(this.f2600d.gm().ox());
        }
        textView2.setText(this.f2600d.lk());
        textView3.setText(this.f2600d.tu());
    }

    private int dq(int i) {
        if (i > 0) {
            int height = this.s.getHeight() - ce.ox(getContext(), 200.0f);
            if (height > 0) {
                if (height < Math.abs(i)) {
                    i = height;
                }
            }
            i = 0;
        } else {
            int height2 = this.ox.getHeight() - ce.ox(getContext(), 160.0f);
            if (height2 > 0) {
                if (height2 < Math.abs(i)) {
                    i = -height2;
                }
            }
            i = 0;
        }
        if (Math.abs(i) > 400) {
            return 0;
        }
        return i;
    }

    private void dq(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.ox = frameLayout;
        if (p()) {
            viewGroup.addView(frameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        } else {
            viewGroup.addView(frameLayout, new LinearLayout.LayoutParams(-1, ce.ox(getContext(), 200.0f)));
        }
        ox();
        if (j.d(this.f2600d)) {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
            this.iw = frameLayout2;
        } else {
            final ImageView imageView = new ImageView(getContext());
            frameLayout.addView(imageView, -1, -1);
            d.dq(this.f2600d.oh().get(0)).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.RewardJointEndCardFrameLayout.1
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    imageView.setImageBitmap(noVar.ox());
                }
            });
        }
    }

    private void ox() {
        if (j.d(this.f2600d)) {
            d.dq(pa.d(this.f2600d)).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.RewardJointEndCardFrameLayout.3
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    Bitmap dq = dq.dq(RewardJointEndCardFrameLayout.this.getContext(), noVar.ox(), 25);
                    if (dq == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(RewardJointEndCardFrameLayout.this.getContext().getResources(), dq);
                    mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.RewardJointEndCardFrameLayout.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RewardJointEndCardFrameLayout.this.iw != null) {
                                RewardJointEndCardFrameLayout.this.iw.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        } else {
            d.dq(this.f2600d.oh().get(0)).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.RewardJointEndCardFrameLayout.2
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    Bitmap dq = dq.dq(RewardJointEndCardFrameLayout.this.getContext(), noVar.ox(), 25);
                    if (dq == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(RewardJointEndCardFrameLayout.this.getContext().getResources(), dq);
                    mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.RewardJointEndCardFrameLayout.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RewardJointEndCardFrameLayout.this.ox != null) {
                                RewardJointEndCardFrameLayout.this.ox.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    private void ox(ViewGroup viewGroup) {
        RewardJointBottomView rewardJointBottomView = new RewardJointBottomView(getContext());
        this.s = rewardJointBottomView;
        if (p()) {
            viewGroup.addView(rewardJointBottomView, new LinearLayout.LayoutParams(-1, ce.ox(getContext(), 160.0f)));
        } else {
            viewGroup.addView(rewardJointBottomView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
        rewardJointBottomView.dq(i.dq(this.f2600d));
    }

    private boolean p() {
        if (this.f2600d.gv() == 15) {
            return true;
        }
        if (this.f2600d.gv() == 5) {
            return false;
        }
        if (this.f2600d.oh() == null || this.f2600d.oh().isEmpty()) {
            return true;
        }
        ji jiVar = this.f2600d.oh().get(0);
        return jiVar.ox() > jiVar.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public void d() {
        super.d();
        RewardJointBottomView rewardJointBottomView = this.s;
        if (rewardJointBottomView != null) {
            rewardJointBottomView.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public void dq() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        dq(linearLayout);
        d(linearLayout);
        ox(linearLayout);
        addView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.component.widget.recycler.dq.ox.iw
    public void dq(View view, int i, int i2, int[] iArr, int i3) {
        int dq = dq(i2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.s.getLayoutParams();
        layoutParams.height -= dq;
        this.s.setLayoutParams(layoutParams);
        if (dq != 0) {
            this.dq.uh().l();
        }
        iArr[1] = iArr[1] + dq;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.dq.ox.iw
    public boolean dq(View view, View view2, int i, int i2) {
        return p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public SSWebView getEndCardWebView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public SSWebView getPlayableWebView() {
        return this.s.getWebView();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public FrameLayout getVideoArea() {
        return this.iw;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, com.bytedance.sdk.component.widget.recycler.dq.ox.s
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return super.onNestedPreFling(view, f2, f3);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout
    public void setClickListener(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        ce.dq(this.p, (View.OnClickListener) dVar, "bar_view");
        this.s.setClickListener(dVar);
    }
}
