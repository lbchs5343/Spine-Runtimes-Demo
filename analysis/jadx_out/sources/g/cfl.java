package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;

/* loaded from: classes.dex */
public final class cfl {

    /* renamed from: a, reason: collision with root package name */
    public static final PorterDuff.Mode f12788a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public static cfl f12789b;

    /* renamed from: c, reason: collision with root package name */
    public ezw f12790c;

    public static synchronized void d() {
        synchronized (cfl.class) {
            if (f12789b == null) {
                cfl cflVar = new cfl();
                f12789b = cflVar;
                cflVar.f12790c = ezw.l();
                f12789b.f12790c.t(new daw(0));
            }
        }
    }

    public static void e(Drawable drawable, cxc cxcVar, int[] iArr) {
        PorterDuff.Mode mode = ezw.f16432a;
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = cxcVar.f13675e;
            if (z || cxcVar.f13674d) {
                PorterDuffColorFilter porterDuffColorFilter = null;
                ColorStateList colorStateList = z ? (ColorStateList) cxcVar.f13671a : null;
                PorterDuff.Mode mode2 = cxcVar.f13674d ? (PorterDuff.Mode) cxcVar.f13672b : ezw.f16432a;
                if (colorStateList != null && mode2 != null) {
                    porterDuffColorFilter = ezw.k(colorStateList.getColorForState(iArr, 0), mode2);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public static synchronized cfl f() {
        cfl cflVar;
        synchronized (cfl.class) {
            try {
                if (f12789b == null) {
                    d();
                }
                cflVar = f12789b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cflVar;
    }

    public static synchronized PorterDuffColorFilter g(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter k;
        synchronized (cfl.class) {
            k = ezw.k(i, mode);
        }
        return k;
    }

    public final synchronized Drawable h(Context context, int i) {
        return this.f12790c.s(context, i);
    }
}
