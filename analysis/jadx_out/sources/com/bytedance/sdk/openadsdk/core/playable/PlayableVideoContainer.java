package com.bytedance.sdk.openadsdk.core.playable;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class PlayableVideoContainer extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private float f3394d;
    private final Paint dq;
    private View.OnClickListener ia;
    private View iw;
    private long mn;
    private float ox;
    private FrameLayout p;
    private View s;

    public PlayableVideoContainer(Context context) {
        super(context);
        this.dq = new Paint();
        this.mn = 0L;
        d();
    }

    private void d() {
        int ox = ce.ox(getContext(), 2.0f);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setPadding(ox, ox, ox, ox);
        addView(frameLayout, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.p = frameLayout2;
        frameLayout.addView(frameLayout2);
        this.s = ox();
        frameLayout.addView(this.s, new ViewGroup.MarginLayoutParams(-1, -1));
        this.iw = p();
        frameLayout.addView(this.iw, new ViewGroup.MarginLayoutParams(-1, -1));
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), ce.ox(wp.getContext(), 12.0f));
            }
        });
        setClipToOutline(true);
    }

    private void iw() {
        int height;
        final int i;
        final int i2;
        int width;
        int p = ce.p(getContext());
        int s = ce.s(getContext());
        final int left = getLeft();
        final int top = getTop();
        int left2 = getLeft();
        int right = p - getRight();
        int top2 = getTop();
        int bottom = s - getBottom();
        int ox = ce.ox(getContext(), 20.0f);
        int min = Math.min(Math.min(left2, right), Math.min(top2, bottom));
        if (left2 != min) {
            if (right == min) {
                width = (p - ox) - getWidth();
                int top3 = getTop();
                int bottom2 = getBottom();
                if (top3 < 0) {
                    bottom2 = getHeight() + ox;
                    top3 = ox;
                }
                if (bottom2 <= s) {
                    i2 = width;
                    i = top3;
                    ValueAnimator duration = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(300L);
                    duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float animatedFraction = valueAnimator.getAnimatedFraction();
                            int i3 = (int) (((i2 - r0) * animatedFraction) + left);
                            int i4 = (int) (((i - r1) * animatedFraction) + top);
                            PlayableVideoContainer.this.dq(i3, i4, PlayableVideoContainer.this.getWidth() + i3, PlayableVideoContainer.this.getHeight() + i4);
                        }
                    });
                    duration.start();
                }
                ox = (s - ox) - getHeight();
                i2 = width;
            } else if (top2 == min) {
                int left3 = getLeft();
                int right2 = getRight();
                getHeight();
                if (left3 < 0) {
                    right2 = getWidth() + ox;
                    left3 = ox;
                }
                if (right2 > p) {
                    width = (p - ox) - getWidth();
                    i2 = width;
                } else {
                    i2 = left3;
                }
            } else {
                int left4 = getLeft();
                int right3 = getRight();
                height = (s - ox) - getHeight();
                if (left4 < 0) {
                    right3 = getWidth() + ox;
                    left4 = ox;
                }
                if (right3 <= p) {
                    i = height;
                    i2 = left4;
                    ValueAnimator duration2 = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(300L);
                    duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float animatedFraction = valueAnimator.getAnimatedFraction();
                            int i3 = (int) (((i2 - r0) * animatedFraction) + left);
                            int i4 = (int) (((i - r1) * animatedFraction) + top);
                            PlayableVideoContainer.this.dq(i3, i4, PlayableVideoContainer.this.getWidth() + i3, PlayableVideoContainer.this.getHeight() + i4);
                        }
                    });
                    duration2.start();
                }
                ox = (p - ox) - getWidth();
            }
            i = ox;
            ValueAnimator duration22 = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(300L);
            duration22.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    int i3 = (int) (((i2 - r0) * animatedFraction) + left);
                    int i4 = (int) (((i - r1) * animatedFraction) + top);
                    PlayableVideoContainer.this.dq(i3, i4, PlayableVideoContainer.this.getWidth() + i3, PlayableVideoContainer.this.getHeight() + i4);
                }
            });
            duration22.start();
        }
        getWidth();
        int top4 = getTop();
        int bottom3 = getBottom();
        if (top4 < 0) {
            bottom3 = getHeight() + ox;
            top4 = ox;
        }
        if (bottom3 <= s) {
            i = top4;
            i2 = ox;
            ValueAnimator duration222 = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(300L);
            duration222.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    int i3 = (int) (((i2 - r0) * animatedFraction) + left);
                    int i4 = (int) (((i - r1) * animatedFraction) + top);
                    PlayableVideoContainer.this.dq(i3, i4, PlayableVideoContainer.this.getWidth() + i3, PlayableVideoContainer.this.getHeight() + i4);
                }
            });
            duration222.start();
        }
        height = (s - ox) - getHeight();
        i = height;
        i2 = ox;
        ValueAnimator duration2222 = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration(300L);
        duration2222.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                int i3 = (int) (((i2 - r0) * animatedFraction) + left);
                int i4 = (int) (((i - r1) * animatedFraction) + top);
                PlayableVideoContainer.this.dq(i3, i4, PlayableVideoContainer.this.getWidth() + i3, PlayableVideoContainer.this.getHeight() + i4);
            }
        });
        duration2222.start();
    }

    private View ox() {
        int ox = ce.ox(getContext(), 8.0f);
        int ox2 = ce.ox(getContext(), 7.0f);
        int ox3 = ce.ox(getContext(), 5.0f);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(Color.parseColor("#77000000"));
        TextView textView = new TextView(getContext());
        textView.setId(2114387596);
        textView.setText("可以\n拖动");
        textView.setTextColor(-1);
        textView.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(r.ox(getContext(), "tt_arrow_up"));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ox2, ox3);
        layoutParams2.setMargins(ox, ox, ox, ox);
        layoutParams2.addRule(14);
        layoutParams2.addRule(2, textView.getId());
        relativeLayout.addView(imageView, layoutParams2);
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setImageDrawable(r.ox(getContext(), "tt_arrow_down"));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ox2, ox3);
        layoutParams3.setMargins(ox, ox, ox, ox);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, textView.getId());
        relativeLayout.addView(imageView2, layoutParams3);
        ImageView imageView3 = new ImageView(getContext());
        imageView3.setImageDrawable(r.ox(getContext(), "tt_arrow_left"));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(ox3, ox2);
        layoutParams4.setMargins(ox, ox, ox, ox);
        layoutParams4.addRule(15);
        layoutParams4.addRule(0, textView.getId());
        relativeLayout.addView(imageView3, layoutParams4);
        ImageView imageView4 = new ImageView(getContext());
        imageView4.setImageDrawable(r.ox(getContext(), "tt_arrow_right"));
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(ox3, ox2);
        layoutParams5.setMargins(ox, ox, ox, ox);
        layoutParams5.addRule(15);
        layoutParams5.addRule(1, textView.getId());
        relativeLayout.addView(imageView4, layoutParams5);
        relativeLayout.setVisibility(8);
        return relativeLayout;
    }

    private View p() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(Color.parseColor("#77000000"));
        TextView textView = new TextView(getContext());
        textView.setId(2114387596);
        textView.setText("视频异常\n无法播放");
        textView.setTextColor(-1);
        textView.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        relativeLayout.setVisibility(8);
        return relativeLayout;
    }

    private void s() {
        View.OnClickListener onClickListener = this.ia;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void d(boolean z) {
        if (!z) {
            ce.dq(this.s, 8);
        } else {
            ce.dq(this.s, 0);
            ce.dq(this.iw, 8);
        }
    }

    public void dq() {
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.playable.PlayableVideoContainer.2
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup.LayoutParams layoutParams = PlayableVideoContainer.this.getLayoutParams();
                layoutParams.width = ce.ox(PlayableVideoContainer.this.getContext(), 94.0f);
                layoutParams.height = ce.ox(PlayableVideoContainer.this.getContext(), 167.0f);
                PlayableVideoContainer.this.setLayoutParams(layoutParams);
            }
        });
    }

    public void dq(int i, int i2, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.leftMargin = i;
        layoutParams.topMargin = i2;
        layoutParams.gravity = 0;
        layout(i, i2, i3, i4);
    }

    public void dq(boolean z) {
        if (!z) {
            ce.dq(this.iw, 8);
        } else {
            ce.dq(this.iw, 0);
            ce.dq(this.s, 8);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild = super.drawChild(canvas, view, j);
        this.dq.setShader(new LinearGradient(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getMeasuredHeight(), new int[]{Color.parseColor("#FFDD42"), Color.parseColor("#FFB744")}, (float[]) null, Shader.TileMode.CLAMP));
        this.dq.setColor(-65536);
        this.dq.setStyle(Paint.Style.STROKE);
        this.dq.setAntiAlias(true);
        this.dq.setStrokeWidth(ce.ox(getContext(), 4.0f));
        canvas.drawRoundRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getMeasuredWidth(), getMeasuredHeight(), ce.ox(getContext(), 12.0f), ce.ox(getContext(), 12.0f), this.dq);
        return drawChild;
    }

    public FrameLayout getVideoContainer() {
        return this.p;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
    
        if (r0 != 3) goto L25;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                float abs = Math.abs(motionEvent.getX() - this.f3394d);
                float abs2 = Math.abs(motionEvent.getY() - this.ox);
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.mn;
                if (abs < 10.0f && abs2 < 10.0f && elapsedRealtime < 200) {
                    s();
                    return true;
                }
            } else if (action == 2) {
                float x = motionEvent.getX() - this.f3394d;
                float y = motionEvent.getY() - this.ox;
                if (x != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    int left = (int) (getLeft() + x);
                    int top = (int) (getTop() + y);
                    dq(left, top, getWidth() + left, getHeight() + top);
                }
            }
            iw();
            setPressed(false);
        } else {
            this.f3394d = motionEvent.getX();
            this.ox = motionEvent.getY();
            this.mn = SystemClock.elapsedRealtime();
        }
        return true;
    }

    public void setCustomClickListener(View.OnClickListener onClickListener) {
        this.ia = onClickListener;
    }
}
