package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.adexpress.dynamic.p.no;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.r;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AnimationText extends TextSwitcher implements ViewSwitcher.ViewFactory, e.dq {

    /* renamed from: d, reason: collision with root package name */
    private List<String> f1788d;
    Animation.AnimationListener dq;
    private int ia;
    private int ig;
    private TextView iw;
    private float kk;
    private int mn;
    private int mp;
    private int no;
    private int o;
    private int ox;
    private final int p;
    private Handler q;
    private Context s;

    public AnimationText(Context context, int i, float f2, int i2, int i3) {
        super(context);
        this.f1788d = new ArrayList();
        this.ox = 0;
        this.p = 1;
        this.q = new e(Looper.getMainLooper(), this);
        this.dq = new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.AnimationText.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (AnimationText.this.iw != null) {
                    AnimationText.this.iw.setText("");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.s = context;
        this.ia = i;
        this.kk = f2;
        this.o = i2;
        this.mp = i3;
        ox();
    }

    private void ox() {
        setFactory(this);
    }

    public void d() {
        List<String> list = this.f1788d;
        if (list == null || list.size() <= 0) {
            return;
        }
        int i = this.ox;
        this.ox = i + 1;
        this.no = i;
        setText(this.f1788d.get(i));
        if (this.ox > this.f1788d.size() - 1) {
            this.ox = 0;
        }
    }

    public void dq() {
        int i = this.ig;
        if (i == 1) {
            setInAnimation(getContext(), r.no(this.s, "tt_text_animation_y_in"));
            setOutAnimation(getContext(), r.no(this.s, "tt_text_animation_y_out"));
        } else if (i == 0) {
            setInAnimation(getContext(), r.no(this.s, "tt_text_animation_x_in"));
            setOutAnimation(getContext(), r.no(this.s, "tt_text_animation_x_in"));
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.dq);
            getOutAnimation().setAnimationListener(this.dq);
        }
        this.q.sendEmptyMessage(1);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what != 1) {
            return;
        }
        d();
        this.q.sendEmptyMessageDelayed(1, this.mn);
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.iw = textView;
        textView.setTextColor(this.ia);
        this.iw.setTextSize(this.kk);
        this.iw.setMaxLines(this.o);
        this.iw.setTextAlignment(this.mp);
        return this.iw;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.q.sendEmptyMessageDelayed(1, this.mn);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q.removeMessages(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(no.d(this.f1788d.get(this.no), this.kk, false)[0], C.ENCODING_PCM_32BIT), i);
        } catch (Exception unused) {
            super.onMeasure(i, i2);
        }
    }

    public void setAnimationDuration(int i) {
        this.mn = i;
    }

    public void setAnimationText(List<String> list) {
        this.f1788d = list;
    }

    public void setAnimationType(int i) {
        this.ig = i;
    }

    public void setMaxLines(int i) {
        this.o = i;
    }

    public void setTextColor(int i) {
        this.ia = i;
    }

    public void setTextSize(float f2) {
        this.kk = f2;
    }
}
