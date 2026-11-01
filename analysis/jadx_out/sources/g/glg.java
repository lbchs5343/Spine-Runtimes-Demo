package g;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.Settings;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class glg extends dzo {
    public static final bkt t = new bkt(0);
    public float aa;

    /* renamed from: ab, reason: collision with root package name */
    public TimeInterpolator f18341ab;
    public final elw ac;
    public TimeInterpolator ad;
    public final agm ae;
    public final eov u;
    public final ValueAnimator v;
    public TimeInterpolator w;
    public final ceq x;
    public ValueAnimator y;
    public boolean z;

    public glg(Context context, dzw dzwVar, elw elwVar) {
        super(context, dzwVar);
        this.z = false;
        this.ac = elwVar;
        agm agmVar = new agm();
        this.ae = agmVar;
        agmVar.f10183a = true;
        ceq ceqVar = new ceq();
        this.x = ceqVar;
        ceqVar.k(1.0f);
        ceqVar.l(50.0f);
        eov eovVar = new eov(this, t);
        this.u = eovVar;
        eovVar.h = ceqVar;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.v = valueAnimator;
        valueAnimator.setDuration(1000L);
        valueAnimator.setFloatValues(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        valueAnimator.setRepeatCount(-1);
        valueAnimator.addUpdateListener(new gml(this, 0, dzwVar));
        if (dzwVar.ab(true) && dzwVar.u != 0) {
            valueAnimator.start();
        }
        if (this.k != 1.0f) {
            this.k = 1.0f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.f15142f)) {
            canvas.save();
            Rect bounds = getBounds();
            float r = r();
            ObjectAnimator objectAnimator = this.h;
            boolean z = objectAnimator != null && objectAnimator.isRunning();
            ObjectAnimator objectAnimator2 = this.i;
            boolean z2 = objectAnimator2 != null && objectAnimator2.isRunning();
            elw elwVar = this.ac;
            elwVar.v.j();
            elwVar.m(canvas, bounds, r, z, z2);
            float s = s();
            agm agmVar = this.ae;
            agmVar.f10187e = s;
            Paint.Style style = Paint.Style.FILL;
            Paint paint = this.f15140d;
            paint.setStyle(style);
            paint.setAntiAlias(true);
            dzw dzwVar = this.l;
            agmVar.f10189g = dzwVar.r[0];
            int i = dzwVar.v;
            if (i > 0) {
                if (!(this.ac instanceof dpx)) {
                    i = (int) ((dzm.ac(agmVar.f10188f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.01f) * i) / 0.01f);
                }
                this.ac.k(canvas, paint, agmVar.f10188f, 1.0f, dzwVar.t, this.f15143g, i);
            } else {
                this.ac.k(canvas, paint, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, dzwVar.t, this.f15143g, 0);
            }
            this.ac.r(canvas, paint, agmVar, this.f15143g);
            this.ac.p(canvas, paint, dzwVar.r[0], this.f15143g);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.ac.l();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.ac.n();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.u.u();
        this.ae.f10188f = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        float f2 = i;
        float f3 = (f2 < 1000.0f || f2 > 9000.0f) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : 1.0f;
        boolean z = this.z;
        agm agmVar = this.ae;
        eov eovVar = this.u;
        if (!z) {
            eovVar.p = agmVar.f10188f * 10000.0f;
            eovVar.r = true;
            eovVar.v(f2);
            return true;
        }
        eovVar.u();
        agmVar.f10188f = f2 / 10000.0f;
        invalidateSelf();
        agmVar.f10185c = f3;
        invalidateSelf();
        return true;
    }

    @Override // g.dzo
    public final boolean p(boolean z, boolean z2, boolean z3) {
        boolean p = super.p(z, z2, z3);
        fec fecVar = this.f15141e;
        ContentResolver contentResolver = this.j.getContentResolver();
        fecVar.getClass();
        float f2 = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.z = true;
            return p;
        }
        this.z = false;
        this.x.l(50.0f / f2);
        return p;
    }
}
