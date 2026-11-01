package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public abstract class cpy extends Drawable implements Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f13305a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13306b;

    /* renamed from: c, reason: collision with root package name */
    public int f13307c;

    /* renamed from: d, reason: collision with root package name */
    public long f13308d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f13309e;

    /* renamed from: f, reason: collision with root package name */
    public bma f13310f;

    /* renamed from: g, reason: collision with root package name */
    public long f13311g;
    public Drawable h;
    public int i;
    public dug j;
    public byd k;
    public Rect l;
    public boolean m;

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        dug dugVar = this.j;
        if (theme == null) {
            dugVar.getClass();
            return;
        }
        dugVar.ap();
        int i = dugVar.f14817b;
        Drawable[] drawableArr = dugVar.ai;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable != null && drawable.canApplyTheme()) {
                drawableArr[i2].applyTheme(theme);
                dugVar.l |= drawableArr[i2].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            dugVar.y = resources;
            int i3 = resources.getDisplayMetrics().densityDpi;
            if (i3 == 0) {
                i3 = 160;
            }
            int i4 = dugVar.ae;
            dugVar.ae = i3;
            if (i4 != i3) {
                dugVar.w = false;
                dugVar.z = false;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.j.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.h;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.j.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z;
        dug dugVar = this.j;
        if (!dugVar.n) {
            dugVar.ap();
            dugVar.n = true;
            int i = dugVar.f14817b;
            Drawable[] drawableArr = dugVar.ai;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    dugVar.q = true;
                    z = true;
                    break;
                }
                if (drawableArr[i2].getConstantState() == null) {
                    dugVar.q = false;
                    z = false;
                    break;
                }
                i2++;
            }
        } else {
            z = dugVar.q;
        }
        if (!z) {
            return null;
        }
        this.j.i = getChangingConfigurations();
        return this.j;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f13309e;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.l;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        dug dugVar = this.j;
        if (dugVar.k) {
            if (!dugVar.w) {
                dugVar.ao();
            }
            return dugVar.f14820e;
        }
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        dug dugVar = this.j;
        if (dugVar.k) {
            if (!dugVar.w) {
                dugVar.ao();
            }
            return dugVar.h;
        }
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        dug dugVar = this.j;
        if (dugVar.k) {
            if (!dugVar.w) {
                dugVar.ao();
            }
            return dugVar.aa;
        }
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        dug dugVar = this.j;
        if (dugVar.k) {
            if (!dugVar.w) {
                dugVar.ao();
            }
            return dugVar.v;
        }
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f13309e;
        if (drawable != null && drawable.isVisible()) {
            dug dugVar = this.j;
            if (dugVar.aj) {
                return dugVar.u;
            }
            dugVar.ap();
            int i = dugVar.f14817b;
            Drawable[] drawableArr = dugVar.ai;
            r1 = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                r1 = Drawable.resolveOpacity(r1, drawableArr[i2].getOpacity());
            }
            dugVar.u = r1;
            dugVar.aj = true;
        }
        return r1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        dug dugVar = this.j;
        Rect rect2 = null;
        boolean z = false;
        if (!dugVar.x) {
            Rect rect3 = dugVar.f14818c;
            if (rect3 != null || dugVar.z) {
                rect2 = rect3;
            } else {
                dugVar.ap();
                Rect rect4 = new Rect();
                int i = dugVar.f14817b;
                Drawable[] drawableArr = dugVar.ai;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect4.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                dugVar.z = true;
                dugVar.f14818c = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                z = true;
            }
        } else {
            Drawable drawable = this.f13309e;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.j.f14816ab && dzm.ap(this) == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        dug dugVar = this.j;
        if (dugVar != null) {
            dugVar.aj = false;
            dugVar.ac = false;
        }
        if (drawable != this.f13309e || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.j.f14816ab;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.h;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.h = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f13309e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.m) {
                this.f13309e.setAlpha(this.i);
            }
        }
        if (this.f13311g != 0) {
            this.f13311g = 0L;
            z = true;
        }
        if (this.f13308d != 0) {
            this.f13308d = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f13306b && super.mutate() == this) {
            fam famVar = (fam) this;
            dug dugVar = new dug(famVar.r, famVar, null);
            dugVar.af = dugVar.af.clone();
            dugVar.t = dugVar.t.clone();
            n(dugVar);
            this.f13306b = true;
        }
        return this;
    }

    public abstract void n(dug dugVar);

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o(boolean z) {
        boolean z2;
        Drawable drawable;
        boolean z3 = true;
        this.m = true;
        long uptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f13309e;
        if (drawable2 != null) {
            long j = this.f13308d;
            if (j != 0) {
                if (j > uptimeMillis) {
                    drawable2.setAlpha(((255 - (((int) ((j - uptimeMillis) * 255)) / this.j.f14821f)) * this.i) / MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    z2 = true;
                    drawable = this.h;
                    if (drawable == null) {
                        long j2 = this.f13311g;
                        if (j2 != 0) {
                            if (j2 > uptimeMillis) {
                                drawable.setAlpha(((((int) ((j2 - uptimeMillis) * 255)) / this.j.f14815a) * this.i) / MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                                if (z && z3) {
                                    scheduleSelf(this.k, uptimeMillis + 16);
                                    return;
                                }
                                return;
                            }
                            drawable.setVisible(false, false);
                            this.h = null;
                            this.f13311g = 0L;
                        }
                    } else {
                        this.f13311g = 0L;
                    }
                    z3 = z2;
                    if (z) {
                        return;
                    } else {
                        return;
                    }
                }
                drawable2.setAlpha(this.i);
                this.f13308d = 0L;
            }
        } else {
            this.f13308d = 0L;
        }
        z2 = false;
        drawable = this.h;
        if (drawable == null) {
        }
        z3 = z2;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.h;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f13309e;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        dug dugVar = this.j;
        int i2 = this.f13307c;
        int i3 = dugVar.f14817b;
        Drawable[] drawableArr = dugVar.ai;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                boolean bb = Build.VERSION.SDK_INT >= 23 ? dzm.bb(drawable, i) : false;
                if (i4 == i2) {
                    z = bb;
                }
            }
        }
        dugVar.ah = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.h;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f13309e;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    public final void p(Drawable drawable) {
        if (this.f13310f == null) {
            this.f13310f = new bma();
        }
        bma bmaVar = this.f13310f;
        bmaVar.f11814b = drawable.getCallback();
        drawable.setCallback(bmaVar);
        try {
            if (this.j.f14821f <= 0 && this.m) {
                drawable.setAlpha(this.i);
            }
            dug dugVar = this.j;
            if (dugVar.p) {
                drawable.setColorFilter(dugVar.j);
            } else {
                if (dugVar.ad) {
                    drawable.setTintList(dugVar.o);
                }
                dug dugVar2 = this.j;
                if (dugVar2.f14822g) {
                    drawable.setTintMode(dugVar2.ag);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.j.r);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                dzm.bb(drawable, dzm.ap(this));
            }
            drawable.setAutoMirrored(this.j.f14816ab);
            Rect rect = this.l;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
            bma bmaVar2 = this.f13310f;
            Drawable.Callback callback = (Drawable.Callback) bmaVar2.f11814b;
            bmaVar2.f11814b = null;
            drawable.setCallback(callback);
        } catch (Throwable th) {
            bma bmaVar3 = this.f13310f;
            Drawable.Callback callback2 = (Drawable.Callback) bmaVar3.f11814b;
            bmaVar3.f11814b = null;
            drawable.setCallback(callback2);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(int i) {
        byd bydVar;
        if (i == this.f13307c) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.j.f14815a > 0) {
            Drawable drawable = this.h;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f13309e;
            if (drawable2 != null) {
                this.h = drawable2;
                this.f13311g = this.j.f14815a + uptimeMillis;
            } else {
                this.h = null;
                this.f13311g = 0L;
            }
        } else {
            Drawable drawable3 = this.f13309e;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i >= 0) {
            dug dugVar = this.j;
            if (i < dugVar.f14817b) {
                Drawable ak = dugVar.ak(i);
                this.f13309e = ak;
                this.f13307c = i;
                if (ak != null) {
                    int i2 = this.j.f14821f;
                    if (i2 > 0) {
                        this.f13308d = uptimeMillis + i2;
                    }
                    p(ak);
                }
                if (this.f13308d == 0 || this.f13311g != 0) {
                    bydVar = this.k;
                    if (bydVar != null) {
                        this.k = new byd(9, (fam) this);
                    } else {
                        unscheduleSelf(bydVar);
                    }
                    o(true);
                }
                invalidateSelf();
                return true;
            }
        }
        this.f13309e = null;
        this.f13307c = -1;
        if (this.f13308d == 0) {
        }
        bydVar = this.k;
        if (bydVar != null) {
        }
        o(true);
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f13309e || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.m && this.i == i) {
            return;
        }
        this.m = true;
        this.i = i;
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            if (this.f13308d == 0) {
                drawable.setAlpha(i);
            } else {
                o(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        dug dugVar = this.j;
        if (dugVar.f14816ab != z) {
            dugVar.f14816ab = z;
            Drawable drawable = this.f13309e;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        dug dugVar = this.j;
        dugVar.p = true;
        if (dugVar.j != colorFilter) {
            dugVar.j = colorFilter;
            Drawable drawable = this.f13309e;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        dug dugVar = this.j;
        if (dugVar.r != z) {
            dugVar.r = z;
            Drawable drawable = this.f13309e;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f2, float f3) {
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.l;
        if (rect == null) {
            this.l = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f13309e;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        dug dugVar = this.j;
        dugVar.ad = true;
        if (dugVar.o != colorStateList) {
            dugVar.o = colorStateList;
            this.f13309e.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        dug dugVar = this.j;
        dugVar.f14822g = true;
        if (dugVar.ag != mode) {
            dugVar.ag = mode;
            this.f13309e.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.h;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f13309e;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f13309e || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
