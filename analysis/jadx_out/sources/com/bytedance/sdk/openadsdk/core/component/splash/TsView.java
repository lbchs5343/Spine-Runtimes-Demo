package com.bytedance.sdk.openadsdk.core.component.splash;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.f;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.splash.countdown.TTCountdownViewForBtn;
import com.bytedance.sdk.openadsdk.core.component.splash.countdown.TTCountdownViewForCircle;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.r.fd;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.vw;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class TsView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.splash.countdown.d f2691d;
    private final Context dq;
    private String ia;
    private boolean ig;
    private SplashClickBar iw;
    private FrameLayout jy;
    private TextView kk;
    private NativeExpressView mn;
    private dq mp;
    private j no;
    private FrameLayout o;
    private ImageView ox;
    private FrameLayout p;
    private boolean q;
    private TextView s;

    public interface dq {
        void no();

        void o();
    }

    public TsView(Context context, String str, j jVar) {
        super(context);
        this.ig = false;
        this.q = false;
        this.dq = context;
        this.ia = str;
        this.no = jVar;
        d();
    }

    private void d() {
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        try {
            View dq2 = dq(this.dq);
            if (dq2 == null) {
                return;
            }
            addView(dq2);
            SplashClickBar splashClickBar = new SplashClickBar(getContext(), this.no);
            this.iw = splashClickBar;
            addView(splashClickBar);
            FrameLayout d2 = d(this.no);
            this.o = d2;
            if (d2 != null) {
                addView(d2);
            }
        } catch (Throwable unused) {
        }
    }

    private View dq(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(2114387585);
        this.p = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.p.setId(2114387584);
        this.p.setLayoutParams(layoutParams);
        frameLayout.addView(this.p);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.jy = frameLayout2;
        frameLayout.addView(frameLayout2);
        this.ox = new ImageView(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 30.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 30.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = 8388659;
        layoutParams2.topMargin = ce.ox(this.dq, 16.0f);
        layoutParams2.leftMargin = ce.ox(this.dq, 16.0f);
        this.ox.setId(2114387583);
        this.ox.setLayoutParams(layoutParams2);
        this.ox.setImageDrawable(r.ox(this.dq, "tt_splash_mute"));
        ce.dq((View) this.ox, 8);
        frameLayout.addView(this.ox);
        this.f2691d = dq(frameLayout, context);
        this.s = new TextView(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        this.s.setId(2114387581);
        this.s.setGravity(17);
        layoutParams3.gravity = 8388691;
        layoutParams3.bottomMargin = ce.ox(this.dq, 40.0f);
        layoutParams3.leftMargin = ce.ox(this.dq, 20.0f);
        this.s.setBackground(r.ox(this.dq, "tt_ad_logo_new"));
        this.s.setLayoutParams(layoutParams3);
        frameLayout.addView(this.s);
        return frameLayout;
    }

    private View getCountDownLayout() {
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d dVar = this.f2691d;
        if (dVar == null) {
            return null;
        }
        return dVar.getView();
    }

    private boolean ox() {
        return getHeight() < ce.d(wp.getContext())[1];
    }

    private boolean ox(j jVar) {
        vw dp;
        return (jVar == null || jVar.y() != 4 || jVar.hy() == null || (dp = jVar.dp()) == null || dp.dq() == 0) ? false : true;
    }

    private boolean p() {
        j jVar = this.no;
        return jVar != null && jVar.ho() == 2;
    }

    private void setComplianceBarLayout(j jVar) {
        vw dp;
        if (this.kk == null || !ox(jVar) || (dp = jVar.dp()) == null) {
            return;
        }
        int dq2 = dp.dq();
        int d2 = dp.d();
        int ox = dp.ox();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = ce.ox(wp.getContext(), 25.0f);
        layoutParams.rightMargin = ce.ox(wp.getContext(), 25.0f);
        this.kk.setPadding(20, 20, 20, 20);
        this.kk.setHighlightColor(0);
        if (dq2 == 2) {
            layoutParams.gravity = 80;
            if (ox()) {
                layoutParams.bottomMargin = ce.ox(wp.getContext(), ox);
            } else {
                layoutParams.bottomMargin = ce.ox(wp.getContext(), d2);
            }
        } else {
            layoutParams.gravity = 48;
            if (ox()) {
                layoutParams.topMargin = ce.ox(wp.getContext(), ox);
            } else {
                layoutParams.topMargin = ce.ox(wp.getContext(), d2);
            }
        }
        this.o.setLayoutParams(layoutParams);
    }

    public FrameLayout d(final j jVar) {
        com.bytedance.sdk.openadsdk.core.r.s hy;
        vw dp;
        if (jVar == null || jVar.y() != 4 || (hy = jVar.hy()) == null || (dp = jVar.dp()) == null || dp.dq() == 0) {
            return null;
        }
        String mp = hy.mp();
        if (TextUtils.isEmpty(mp)) {
            mp = "暂无";
        }
        String s = hy.s();
        if (TextUtils.isEmpty(s)) {
            s = "补充中，可于应用官网查看";
        }
        String mn = hy.mn();
        String str = TextUtils.isEmpty(mn) ? "补充中，可于应用官网查看" : mn;
        String o = hy.o();
        StringBuilder sb = new StringBuilder();
        sb.append("应用名：");
        sb.append(mp);
        sb.append("；版本号：");
        sb.append(s);
        sb.append("；开发者：");
        sb.append(str);
        if (!TextUtils.isEmpty(o)) {
            sb.append("；备案号：");
            sb.append(o);
        }
        sb.append("；功能 | 权限 | 隐私  ");
        SpannableString spannableString = new SpannableString(sb.toString());
        int indexOf = sb.indexOf("功能");
        int indexOf2 = sb.indexOf("隐私");
        int indexOf3 = sb.indexOf("权限");
        spannableString.setSpan(new ClickableSpan() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.TsView.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                TsView tsView = TsView.this;
                tsView.dq(jVar, tsView.dq, TsView.this.ia);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                if (textPaint != null) {
                    textPaint.setColor(-1);
                }
            }
        }, indexOf, indexOf + 2, 34);
        spannableString.setSpan(new ClickableSpan() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.TsView.2
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                TsView tsView = TsView.this;
                tsView.ox(jVar, tsView.dq, TsView.this.ia);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                if (textPaint != null) {
                    textPaint.setColor(-1);
                }
            }
        }, indexOf2, indexOf2 + 2, 34);
        spannableString.setSpan(new ClickableSpan() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.TsView.3
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                TsView tsView = TsView.this;
                tsView.d(jVar, tsView.dq, TsView.this.ia);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                if (textPaint != null) {
                    textPaint.setColor(-1);
                }
            }
        }, indexOf3, indexOf3 + 2, 34);
        this.kk = new TextView(this.dq);
        this.o = new FrameLayout(this.dq);
        this.kk.setMovementMethod(LinkMovementMethod.getInstance());
        this.kk.setTextColor(-1);
        this.kk.setTextSize(11.0f);
        this.kk.setText(spannableString);
        this.o.addView(this.kk);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#66000000"));
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 6.0f));
        this.o.setBackground(gradientDrawable);
        return this.o;
    }

    public void d(j jVar, Context context, String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.d(jVar, context, str);
    }

    public com.bytedance.sdk.openadsdk.core.component.splash.countdown.d dq(FrameLayout frameLayout, Context context) {
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d tTCountdownViewForBtn;
        FrameLayout.LayoutParams layoutParams;
        Resources resources = context.getResources();
        j jVar = this.no;
        fd hl = jVar == null ? null : jVar.hl();
        if ((hl == null ? 1 : hl.p()) == 1) {
            tTCountdownViewForBtn = new TTCountdownViewForCircle(context);
            layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 40.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 40.0f, resources.getDisplayMetrics()));
        } else {
            tTCountdownViewForBtn = new TTCountdownViewForBtn(context);
            layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 76.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 26.0f, resources.getDisplayMetrics()));
        }
        if (tTCountdownViewForBtn.getView() != null) {
            tTCountdownViewForBtn.getView().setId(2114387582);
            layoutParams.gravity = 8388661;
            layoutParams.topMargin = ce.ox(this.dq, 16.0f);
            layoutParams.rightMargin = ce.ox(this.dq, 16.0f);
            tTCountdownViewForBtn.getView().setLayoutParams(layoutParams);
            frameLayout.addView(tTCountdownViewForBtn.getView());
        }
        return tTCountdownViewForBtn;
    }

    public void dq() {
        TextView textView = this.s;
        if (textView != null) {
            textView.setBackground(r.ox(this.dq, "tt_ad_logo_backup"));
        }
    }

    public void dq(int i, com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        SplashClickBar splashClickBar = this.iw;
        if (splashClickBar != null) {
            splashClickBar.dq(dqVar);
        }
        if (i == 1) {
            dqVar.dq(this);
            setOnClickListenerInternal(dqVar);
            setOnTouchListenerInternal(dqVar);
        }
    }

    public void dq(j jVar) {
        SplashClickBar splashClickBar = this.iw;
        if (splashClickBar == null) {
            return;
        }
        try {
            splashClickBar.dq(jVar);
            ce.dq(this.s, jVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(j jVar, Context context, String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(context, jVar, str);
    }

    public com.bytedance.sdk.openadsdk.core.component.splash.countdown.d getCountDownView() {
        return this.f2691d;
    }

    public View getDislikeView() {
        return getCountDownLayout();
    }

    public FrameLayout getEasyPlayableLayout() {
        return this.jy;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!p() && !this.q) {
            ce.dq(this, getCountDownLayout());
            ce.dq(this, this.ox);
        }
        dq dqVar = this.mp;
        if (dqVar != null) {
            dqVar.o();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dq dqVar = this.mp;
        if (dqVar != null) {
            dqVar.no();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.ig) {
            return;
        }
        SplashClickBar splashClickBar = this.iw;
        if (splashClickBar != null) {
            splashClickBar.setBtnLayout(!ox());
        }
        setComplianceBarLayout(this.no);
        this.ig = true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    public void ox(j jVar, Context context, String str) {
        if (jVar == null || context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(jVar, context, str);
    }

    public void setAdlogoViewVisibility(int i) {
        ce.dq((View) this.s, i);
    }

    public void setAttachedToWindowListener(dq dqVar) {
        this.mp = dqVar;
    }

    public void setComplianceBarVisibility(int i) {
        if (i == 8) {
            ce.dq((View) this.iw, i);
        }
        ce.dq((View) this.o, i);
    }

    public void setCountDownTime(int i) {
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d dVar = this.f2691d;
        if (dVar != null) {
            dVar.setCountDownTime(i);
        }
    }

    public void setCountDownViewPosition(j jVar) {
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d dVar = this.f2691d;
        if (dVar == null || dVar.getView() == null || jVar == null) {
            return;
        }
        View view = this.f2691d.getView();
        fd hl = jVar.hl();
        if (hl == null) {
            return;
        }
        int dq2 = hl.dq();
        int ox = ce.ox(this.dq, hl.d());
        int ox2 = ce.ox(this.dq, hl.ox());
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (dq2 == 1) {
            layoutParams.gravity = 8388659;
            layoutParams.leftMargin = ox;
            layoutParams.topMargin = ox2;
        } else if (dq2 == 3) {
            layoutParams.gravity = 8388691;
            layoutParams.leftMargin = ox;
            layoutParams.bottomMargin = ox2;
        } else if (dq2 != 4) {
            layoutParams.gravity = 8388661;
            layoutParams.rightMargin = ox;
            layoutParams.topMargin = ox2;
        } else {
            layoutParams.gravity = 8388693;
            layoutParams.rightMargin = ox;
            layoutParams.bottomMargin = ox2;
        }
        view.setLayoutParams(layoutParams);
    }

    public void setExpressView(NativeExpressView nativeExpressView) {
        if (nativeExpressView == null) {
            return;
        }
        this.mn = nativeExpressView;
        if (nativeExpressView.getParent() != null) {
            ((ViewGroup) this.mn.getParent()).removeView(this.mn);
        }
        this.p.addView(this.mn);
        setExpressViewVisibility(0);
    }

    public void setExpressViewVisibility(int i) {
        ce.dq((View) this.p, i);
    }

    public void setIsShowSuccess(boolean z) {
        this.q = z;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        f.dq("不允许在Splash广告中注册OnClickListener");
    }

    public final void setOnClickListenerInternal(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        f.dq("不允许在Splash广告中注册OnTouchListener");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void setOnTouchListenerInternal(View.OnTouchListener onTouchListener) {
        super.setOnTouchListener(onTouchListener);
    }

    public void setSkipIconVisibility(int i) {
        ce.dq(getCountDownLayout(), i);
    }

    public final void setSkipListener(View.OnClickListener onClickListener) {
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d dVar = this.f2691d;
        if (dVar == null || dVar.getView() == null) {
            return;
        }
        this.f2691d.getView().setOnClickListener(onClickListener);
    }

    public void setSlideUpTouchListener(View.OnTouchListener onTouchListener) {
        setOnTouchListenerInternal(onTouchListener);
    }

    public void setVideoViewVisibility(int i) {
        ce.dq((View) this.ox, i);
    }

    public void setVideoVoiceVisibility(int i) {
        ce.dq((View) this.ox, i);
    }

    public final void setVoiceViewImageDrawable(Drawable drawable) {
        ImageView imageView = this.ox;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
    }

    public final void setVoiceViewListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.ox;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }
}
