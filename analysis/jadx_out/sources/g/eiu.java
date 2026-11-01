package g;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class eiu extends fji implements ewo {
    public int aa;
    public final StateListDrawable ac;
    public final StateListDrawable ae;

    /* renamed from: d, reason: collision with root package name */
    public final ValueAnimator f15612d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f15613e;

    /* renamed from: f, reason: collision with root package name */
    public int f15614f;
    public int h;
    public int j;
    public final Drawable k;
    public final byd l;
    public int m;
    public final int n;
    public final int o;
    public final int s;
    public final RecyclerView t;
    public float u;
    public float v;
    public final int w;
    public final int x;
    public final int y;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f15610c = {R.attr.state_pressed};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f15609b = new int[0];
    public int z = 0;
    public int af = 0;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f15611ab = false;
    public boolean p = false;
    public int q = 0;
    public int r = 0;
    public final int[] ad = new int[2];
    public final int[] i = new int[2];

    public eiu(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        this.f15612d = ofFloat;
        this.aa = 0;
        byd bydVar = new byd(11, this);
        this.l = bydVar;
        int i4 = 1;
        had hadVar = new had(i4, this);
        this.ac = stateListDrawable;
        this.k = drawable;
        this.ae = stateListDrawable2;
        this.f15613e = drawable2;
        this.n = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.s = Math.max(i, drawable.getIntrinsicWidth());
        this.w = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.y = Math.max(i, drawable2.getIntrinsicWidth());
        this.o = i2;
        this.x = i3;
        stateListDrawable.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        drawable.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        ofFloat.addListener(new dnq(this));
        ofFloat.addUpdateListener(new zl(i4, this));
        RecyclerView recyclerView2 = this.t;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.t.removeOnItemTouchListener(this);
            this.t.removeOnScrollListener(hadVar);
            this.t.removeCallbacks(bydVar);
        }
        this.t = recyclerView;
        recyclerView.addItemDecoration(this);
        this.t.addOnItemTouchListener(this);
        this.t.addOnScrollListener(hadVar);
    }

    public static int ag(float f2, float f3, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 != 0) {
            int i5 = i - i3;
            int i6 = (int) (((f3 - f2) / i4) * i5);
            int i7 = i2 + i6;
            if (i7 < i5 && i7 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    public final void ah() {
        int i = this.aa;
        ValueAnimator valueAnimator = this.f15612d;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.aa = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    public final boolean ai(float f2, float f3) {
        if (f3 < this.af - this.w) {
            return false;
        }
        int i = this.h;
        int i2 = this.j;
        return f2 >= ((float) (i - (i2 / 2))) && f2 <= ((float) ((i2 / 2) + i));
    }

    public final boolean aj(float f2, float f3) {
        int layoutDirection = this.t.getLayoutDirection();
        int i = this.n;
        if (layoutDirection == 1) {
            if (f2 > i) {
                return false;
            }
        } else if (f2 < this.z - i) {
            return false;
        }
        int i2 = this.m;
        int i3 = this.f15614f / 2;
        return f3 >= ((float) (i2 - i3)) && f3 <= ((float) (i3 + i2));
    }

    @Override // g.fji
    public final void ak(Canvas canvas, RecyclerView recyclerView, aqz aqzVar) {
        if (this.z != this.t.getWidth() || this.af != this.t.getHeight()) {
            this.z = this.t.getWidth();
            this.af = this.t.getHeight();
            al(0);
            return;
        }
        if (this.aa != 0) {
            if (this.f15611ab) {
                int i = this.z;
                int i2 = this.n;
                int i3 = i - i2;
                int i4 = this.m;
                int i5 = this.f15614f;
                int i6 = i4 - (i5 / 2);
                StateListDrawable stateListDrawable = this.ac;
                stateListDrawable.setBounds(0, 0, i2, i5);
                int i7 = this.s;
                int i8 = this.af;
                Drawable drawable = this.k;
                drawable.setBounds(0, 0, i7, i8);
                if (this.t.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i2, i6);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i2, -i6);
                } else {
                    canvas.translate(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    drawable.draw(canvas);
                    canvas.translate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i6);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (this.p) {
                int i9 = this.af;
                int i10 = this.w;
                int i11 = i9 - i10;
                int i12 = this.h;
                int i13 = this.j;
                int i14 = i12 - (i13 / 2);
                StateListDrawable stateListDrawable2 = this.ae;
                stateListDrawable2.setBounds(0, 0, i13, i10);
                int i15 = this.z;
                int i16 = this.y;
                Drawable drawable2 = this.f15613e;
                drawable2.setBounds(0, 0, i15, i16);
                canvas.translate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i11);
                drawable2.draw(canvas);
                canvas.translate(i14, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i14, -i11);
            }
        }
    }

    public final void al(int i) {
        byd bydVar = this.l;
        StateListDrawable stateListDrawable = this.ac;
        if (i == 2 && this.q != 2) {
            stateListDrawable.setState(f15610c);
            this.t.removeCallbacks(bydVar);
        }
        if (i == 0) {
            this.t.invalidate();
        } else {
            ah();
        }
        if (this.q == 2 && i != 2) {
            stateListDrawable.setState(f15609b);
            this.t.removeCallbacks(bydVar);
            this.t.postDelayed(bydVar, 1200);
        } else if (i == 1) {
            this.t.removeCallbacks(bydVar);
            this.t.postDelayed(bydVar, 1500);
        }
        this.q = i;
    }
}
