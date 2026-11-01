package g;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class ahf extends fcm implements Animatable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10214a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Context f10215b;

    /* renamed from: c, reason: collision with root package name */
    public cod f10216c = null;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f10217d = null;

    /* renamed from: f, reason: collision with root package name */
    public final bma f10219f = new bma(this);

    /* renamed from: e, reason: collision with root package name */
    public final fbi f10218e = new fbi();

    public ahf(Context context, int i) {
        this.f10215b = context;
    }

    @Override // g.fcm, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        fbi fbiVar = this.f10218e;
        fbiVar.f16510b.draw(canvas);
        if (fbiVar.f16511c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getAlpha() : this.f10218e.f16510b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f10218e.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getColorFilter() : this.f10218e.f16510b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.l == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new dnm(this.l.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f10218e.f16510b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f10218e.f16510b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getOpacity() : this.f10218e.f16510b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0133, code lost:
    
        if (r8.f16511c != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0135, code lost:
    
        r8.f16511c = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x013c, code lost:
    
        r8.f16511c.playTogether(r8.f16512d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0143, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        XmlResourceParser animation;
        Animator ag;
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int i = 1;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            fbi fbiVar = this.f10218e;
            if (eventType == i || (xmlPullParser.getDepth() < depth && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                XmlResourceParser xmlResourceParser = null;
                if ("animated-vector".equals(name)) {
                    TypedArray aj = bfc.aj(resources, theme, attributeSet, dyd.o);
                    int resourceId = aj.getResourceId(0, 0);
                    if (resourceId != 0) {
                        eia j = eia.j(resources, resourceId, theme);
                        j.i = false;
                        j.setCallback(this.f10219f);
                        eia eiaVar = fbiVar.f16510b;
                        if (eiaVar != null) {
                            eiaVar.setCallback(null);
                        }
                        fbiVar.f16510b = j;
                    }
                    aj.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, dyd.y);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(i, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f10215b;
                        if (context == null) {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        if (Build.VERSION.SDK_INT >= 24) {
                            ag = AnimatorInflater.loadAnimator(context, resourceId2);
                        } else {
                            Resources resources2 = context.getResources();
                            Resources.Theme theme2 = context.getTheme();
                            try {
                                try {
                                    animation = resources2.getAnimation(resourceId2);
                                } catch (Throwable th) {
                                    th = th;
                                }
                            } catch (IOException e2) {
                                e = e2;
                            } catch (XmlPullParserException e3) {
                                e = e3;
                            }
                            try {
                                ag = eg.ag(context, resources2, theme2, animation, Xml.asAttributeSet(animation), null, 0);
                                animation.close();
                            } catch (IOException e4) {
                                e = e4;
                                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                notFoundException.initCause(e);
                                throw notFoundException;
                            } catch (XmlPullParserException e5) {
                                e = e5;
                                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                notFoundException2.initCause(e);
                                throw notFoundException2;
                            } catch (Throwable th2) {
                                th = th2;
                                xmlResourceParser = animation;
                                if (xmlResourceParser != null) {
                                    xmlResourceParser.close();
                                }
                                throw th;
                            }
                        }
                        ag.setTarget(fbiVar.f16510b.h.i.f19877d.get(string));
                        if (fbiVar.f16512d == null) {
                            fbiVar.f16512d = new ArrayList();
                            fbiVar.f16509a = new tl(0);
                        }
                        fbiVar.f16512d.add(ag);
                        fbiVar.f16509a.put(ag, string);
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
            i = 1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.isAutoMirrored() : this.f10218e.f16510b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.l;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f10218e.f16511c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.isStateful() : this.f10218e.f16510b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f10218e.f16510b.setBounds(rect);
        }
    }

    @Override // g.fcm, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.l;
        return drawable != null ? drawable.setLevel(i) : this.f10218e.f16510b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.l;
        return drawable != null ? drawable.setState(iArr) : this.f10218e.f16510b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f10218e.f16510b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f10218e.f16510b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f10218e.f16510b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.l;
        if (drawable != null) {
            dzm.y(drawable, i);
        } else {
            this.f10218e.f16510b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.l;
        if (drawable != null) {
            dzm.s(drawable, colorStateList);
        } else {
            this.f10218e.f16510b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.l;
        if (drawable != null) {
            dzm.au(drawable, mode);
        } else {
            this.f10218e.f16510b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.l;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f10218e.f16510b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.l;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        fbi fbiVar = this.f10218e;
        if (fbiVar.f16511c.isStarted()) {
            return;
        }
        fbiVar.f16511c.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.l;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f10218e.f16511c.end();
        }
    }
}
