package g;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class dzo extends Drawable implements Animatable {

    /* renamed from: a, reason: collision with root package name */
    public static final dfe f15137a = new dfe(9, Float.class, "growFraction");

    /* renamed from: b, reason: collision with root package name */
    public boolean f15138b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f15139c;

    /* renamed from: g, reason: collision with root package name */
    public int f15143g;
    public ObjectAnimator h;
    public ObjectAnimator i;
    public final Context j;
    public float k;
    public final dzw l;
    public final float m = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f15140d = new Paint();

    /* renamed from: f, reason: collision with root package name */
    public final Rect f15142f = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public fec f15141e = new fec();

    public dzo(Context context, dzw dzwVar) {
        this.j = context;
        this.l = dzwVar;
        setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f15143g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        ObjectAnimator objectAnimator = this.h;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            return true;
        }
        ObjectAnimator objectAnimator2 = this.i;
        return objectAnimator2 != null && objectAnimator2.isRunning();
    }

    public final boolean o(boolean z, boolean z2, boolean z3) {
        fec fecVar = this.f15141e;
        ContentResolver contentResolver = this.j.getContentResolver();
        fecVar.getClass();
        return p(z, z2, z3 && Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    public boolean p(boolean z, boolean z2, boolean z3) {
        ObjectAnimator objectAnimator = this.h;
        int i = 0;
        dfe dfeVar = f15137a;
        if (objectAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, dfeVar, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            this.h = ofFloat;
            ofFloat.setDuration(500L);
            this.h.setInterpolator(gtk.f18728c);
            ObjectAnimator objectAnimator2 = this.h;
            if (objectAnimator2 != null && objectAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.h = objectAnimator2;
            objectAnimator2.addListener(new dkv(this, i));
        }
        int i2 = 1;
        if (this.i == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, dfeVar, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            this.i = ofFloat2;
            ofFloat2.setDuration(500L);
            this.i.setInterpolator(gtk.f18728c);
            ObjectAnimator objectAnimator3 = this.i;
            if (objectAnimator3 != null && objectAnimator3.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.i = objectAnimator3;
            objectAnimator3.addListener(new dkv(this, i2));
        }
        if (isVisible() || z) {
            ObjectAnimator objectAnimator4 = z ? this.h : this.i;
            ObjectAnimator objectAnimator5 = z ? this.i : this.h;
            if (!z3) {
                if (objectAnimator5.isRunning()) {
                    boolean z4 = this.f15138b;
                    this.f15138b = true;
                    new ValueAnimator[]{objectAnimator5}[0].cancel();
                    this.f15138b = z4;
                }
                if (objectAnimator4.isRunning()) {
                    objectAnimator4.end();
                } else {
                    boolean z5 = this.f15138b;
                    this.f15138b = true;
                    new ValueAnimator[]{objectAnimator4}[0].end();
                    this.f15138b = z5;
                }
                return super.setVisible(z, false);
            }
            if (!objectAnimator4.isRunning()) {
                boolean z6 = !z || super.setVisible(z, false);
                dzw dzwVar = this.l;
                if (!z ? dzwVar.m != 0 : dzwVar.z != 0) {
                    boolean z7 = this.f15138b;
                    this.f15138b = true;
                    new ValueAnimator[]{objectAnimator4}[0].end();
                    this.f15138b = z7;
                    return z6;
                }
                if (z2 || !objectAnimator4.isPaused()) {
                    objectAnimator4.start();
                    return z6;
                }
                objectAnimator4.resume();
                return z6;
            }
        }
        return false;
    }

    public final void q(bbg bbgVar) {
        ArrayList arrayList = this.f15139c;
        if (arrayList == null || !arrayList.contains(bbgVar)) {
            return;
        }
        this.f15139c.remove(bbgVar);
        if (this.f15139c.isEmpty()) {
            this.f15139c = null;
        }
    }

    public final float r() {
        dzw dzwVar = this.l;
        if (dzwVar.z == 0 && dzwVar.m == 0) {
            return 1.0f;
        }
        return this.k;
    }

    public final float s() {
        float f2 = this.m;
        if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return f2;
        }
        boolean z = this instanceof glg;
        dzw dzwVar = this.l;
        if (dzwVar.ab(z) && dzwVar.u != 0) {
            fec fecVar = this.f15141e;
            ContentResolver contentResolver = this.j.getContentResolver();
            fecVar.getClass();
            float f3 = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
            if (f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                float uptimeMillis = (SystemClock.uptimeMillis() % r0) / ((int) ((((z ? dzwVar.x : dzwVar.n) * 1000.0f) / dzwVar.u) * f3));
                return uptimeMillis < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? (uptimeMillis % 1.0f) + 1.0f : uptimeMillis;
            }
        }
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f15143g = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f15140d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return o(z, z2, true);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        p(true, true, false);
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        p(false, true, false);
    }
}
