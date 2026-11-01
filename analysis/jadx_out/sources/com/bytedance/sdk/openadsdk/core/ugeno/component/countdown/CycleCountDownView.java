package com.bytedance.sdk.openadsdk.core.ugeno.component.countdown;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.tn;

/* loaded from: classes3.dex */
public class CycleCountDownView extends View {
    private final Rect bl;

    /* renamed from: c, reason: collision with root package name */
    private float f3543c;
    private ValueAnimator cd;
    private String ce;

    /* renamed from: d, reason: collision with root package name */
    protected int f3544d;
    protected int dq;

    /* renamed from: e, reason: collision with root package name */
    private Bitmap f3545e;
    private String er;

    /* renamed from: f, reason: collision with root package name */
    private float f3546f;
    private AnimatorSet fw;
    private ValueAnimator gh;
    private boolean h;
    private boolean i;
    protected float ia;
    private Paint ig;
    private final Rect ir;
    protected int iw;
    private String j;
    private final RectF ji;
    private Paint jy;
    private Bitmap k;
    protected float kk;
    private boolean kx;
    private boolean le;
    protected boolean mn;
    private Paint mp;
    private final Rect n;
    private boolean no;
    protected int o;
    private final Rect op;
    protected int ox;
    protected float p;
    private Paint q;
    private ValueAnimator r;
    protected float s;
    private final Rect u;
    private String wn;
    private Bitmap wp;

    public CycleCountDownView(Context context) {
        super(context);
        this.dq = Color.parseColor("#FFDA7B");
        this.f3544d = Color.parseColor("#4D000000");
        this.ox = Color.parseColor("#ffffff");
        this.iw = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME;
        this.mn = false;
        this.ia = 5.0f;
        this.kk = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.o = 0;
        this.no = false;
        this.f3546f = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.i = false;
        this.le = false;
        this.kx = false;
        this.h = false;
        this.ji = new RectF();
        this.bl = new Rect();
        this.n = new Rect();
        this.op = new Rect();
        this.ir = new Rect();
        this.u = new Rect();
        this.f3543c = 1.0f;
        this.p = dq(4.0f);
        this.s = dq(34.0f);
        this.iw %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        d();
        ox();
        setBackgroundColor(-16711681);
    }

    private float d(float f2) {
        return TypedValue.applyDimension(2, f2, getResources().getDisplayMetrics());
    }

    private void d() {
        Paint paint = new Paint(1);
        this.ig = paint;
        paint.setColor(this.dq);
        this.ig.setStrokeWidth(this.p);
        this.ig.setAntiAlias(true);
        this.ig.setStrokeCap(Paint.Cap.ROUND);
        this.ig.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.mp = paint2;
        paint2.setColor(this.f3544d);
        this.mp.setAntiAlias(true);
        this.mp.setStrokeWidth(this.p);
        this.mp.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.q = paint3;
        paint3.setColor(this.ox);
        this.q.setTextAlign(Paint.Align.CENTER);
        Paint paint4 = new Paint(1);
        this.jy = paint4;
        paint4.setFilterBitmap(true);
        this.jy.setDither(true);
    }

    private void d(Canvas canvas) {
        String str;
        canvas.save();
        canvas.drawBitmap(this.f3545e, this.ir, this.u, this.jy);
        Paint.FontMetrics fontMetrics = this.q.getFontMetrics();
        float f2 = (fontMetrics.bottom - fontMetrics.top) / 2.0f;
        if (TextUtils.isEmpty(this.j)) {
            str = this.ce + this.o + this.er;
        } else if (this.o <= 0) {
            str = this.j;
        } else {
            str = this.ce + this.o + this.er;
        }
        if (this.no) {
            StringBuilder l = tn.l(str, "｜");
            l.append(this.wn);
            str = l.toString();
        }
        canvas.drawText(str, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (f2 / 2.0f) + ((getMinLine() / 3.0f) - (getMinLine() / 9.0f)), this.q);
        canvas.restore();
    }

    private float dq(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    private Bitmap dq(Context context, String str) {
        Drawable ox = r.ox(context, str);
        Bitmap createBitmap = Bitmap.createBitmap(ox.getIntrinsicWidth(), ox.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        ox.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        ox.draw(canvas);
        return createBitmap;
    }

    private void dq(int i, int i2) {
        this.s = (Math.min(i, i2) / 2.0f) - this.p;
    }

    private void dq(Canvas canvas) {
        Bitmap bitmap;
        canvas.save();
        boolean z = false;
        if (this.o > 0 || (bitmap = this.wp) == null) {
            bitmap = this.k;
        } else {
            boolean z2 = this.kx;
            if (!(z2 && this.h) && (z2 || this.h)) {
                bitmap = this.k;
            } else {
                z = true;
            }
        }
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, z ? this.n : this.bl, this.op, this.jy);
        }
        canvas.restore();
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.gh;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.gh = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f3546f, this.f3543c);
        this.gh = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.gh.setDuration(1000L);
        this.gh.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.CycleCountDownView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                CycleCountDownView.this.f3546f = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                CycleCountDownView.this.postInvalidate();
            }
        });
        return this.gh;
    }

    private int getMinLine() {
        return Math.min(getMeasuredHeight(), getMeasuredWidth());
    }

    private void ox() {
        this.k = r.p(getContext(), "tt_reward_chest_gift2");
        this.wp = r.p(getContext(), "tt_reward_chest_gift_open2");
        this.f3545e = dq(getContext(), "tt_reward_chest_btn_bg");
    }

    private void ox(Canvas canvas) {
        canvas.save();
        float f2 = this.f3546f * 360.0f;
        float f3 = this.mn ? this.iw - f2 : this.iw;
        canvas.drawCircle(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.s, this.mp);
        canvas.drawArc(this.ji, f3, f2, false, this.ig);
        canvas.restore();
    }

    private int p() {
        return (int) ((((this.p / 2.0f) + this.s) * 2.0f) + dq(4.0f));
    }

    public void dq() {
        AnimatorSet animatorSet = this.fw;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.fw.cancel();
            this.fw = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.fw = animatorSet2;
        animatorSet2.playTogether(getArcAnim());
        this.fw.setInterpolator(new LinearInterpolator());
        this.fw.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.CycleCountDownView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                CycleCountDownView.this.i = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CycleCountDownView.this.i) {
                    CycleCountDownView.this.i = false;
                } else {
                    CycleCountDownView.this.le = true;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.fw.start();
    }

    public void dq(int i, int i2, int i3) {
        float f2 = i;
        this.ia = f2;
        float f3 = i2;
        this.kk = f3;
        this.o = i3;
        this.f3543c = f3 / f2;
        dq();
    }

    public void dq(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.ce = str;
        this.er = TextUtils.isEmpty(str2) ? "" : str2;
        if (TextUtils.isEmpty(str3)) {
            str3 = "跳过";
        }
        this.wn = str3;
        if (TextUtils.isEmpty(str2)) {
            str4 = "";
        }
        this.j = str4;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            AnimatorSet animatorSet = this.fw;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.fw = null;
            }
            ValueAnimator valueAnimator = this.r;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.r = null;
            }
            ValueAnimator valueAnimator2 = this.cd;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.cd = null;
            }
            ValueAnimator valueAnimator3 = this.gh;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.gh = null;
            }
            this.f3546f = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        dq(canvas);
        ox(canvas);
        d(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            size = p();
        }
        if (mode2 != 1073741824) {
            size2 = p();
        }
        dq(size, size2);
        setMeasuredDimension(size, size2);
        RectF rectF = this.ji;
        float f2 = this.s;
        rectF.left = -f2;
        rectF.right = f2;
        rectF.top = -f2;
        rectF.bottom = f2;
        Rect rect = this.bl;
        rect.left = 0;
        rect.top = 0;
        Bitmap bitmap = this.k;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.bl;
        Bitmap bitmap2 = this.k;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
        Rect rect3 = this.n;
        rect3.left = 0;
        rect3.top = 0;
        Bitmap bitmap3 = this.wp;
        rect3.right = bitmap3 != null ? bitmap3.getWidth() : 0;
        Rect rect4 = this.n;
        Bitmap bitmap4 = this.wp;
        rect4.bottom = bitmap4 != null ? bitmap4.getHeight() : 0;
        int minLine = getMinLine();
        Rect rect5 = this.op;
        int i3 = -minLine;
        int i4 = i3 / 2;
        rect5.left = i4;
        rect5.top = i4;
        int i5 = minLine / 2;
        rect5.right = i5;
        rect5.bottom = i5;
        Rect rect6 = this.ir;
        rect6.left = 0;
        rect6.top = 0;
        rect6.right = this.f3545e.getWidth();
        this.ir.bottom = this.f3545e.getHeight();
        Rect rect7 = this.u;
        rect7.left = i3 / 3;
        rect7.top = minLine / 8;
        int i6 = minLine / 3;
        rect7.right = i6;
        rect7.bottom = i6;
        this.q.setTextSize(((i6 - r0) / 2) - d(2.0f));
    }

    public void setBoxFinish(Bitmap bitmap) {
        this.wp = bitmap;
        this.h = true;
        Rect rect = this.n;
        rect.left = 0;
        rect.top = 0;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.n;
        Bitmap bitmap2 = this.wp;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
    }

    public void setBoxImage(Bitmap bitmap) {
        this.k = bitmap;
        this.kx = true;
        Rect rect = this.bl;
        rect.left = 0;
        rect.top = 0;
        rect.right = bitmap != null ? bitmap.getWidth() : 0;
        Rect rect2 = this.bl;
        Bitmap bitmap2 = this.k;
        rect2.bottom = bitmap2 != null ? bitmap2.getHeight() : 0;
    }

    public void setCanSkip(boolean z) {
        this.no = z;
    }
}
