package g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class cd {
    public static void a(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void b(View view, ghx ghxVar) {
        gec gecVar = ghxVar != null ? new gec(view, ghxVar) : null;
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, gecVar);
        }
        if (view.getTag(R.id.tag_compat_insets_dispatch) != null) {
            return;
        }
        if (gecVar != null) {
            view.setOnApplyWindowInsetsListener(gecVar);
        } else {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        }
    }

    public static PorterDuff.Mode c(View view) {
        return view.getBackgroundTintMode();
    }

    public static void d(View view, String str) {
        view.setTransitionName(str);
    }

    public static anp e(View view) {
        if (hek.f19336a && view.isAttachedToWindow()) {
            try {
                Object obj = hek.f19337b.get(view.getRootView());
                if (obj != null) {
                    Rect rect = (Rect) hek.f19338c.get(obj);
                    Rect rect2 = (Rect) hek.f19339d.get(obj);
                    if (rect != null && rect2 != null) {
                        int i = Build.VERSION.SDK_INT;
                        ecs bruVar = i >= 34 ? new bru() : i >= 31 ? new ghh() : i >= 30 ? new yd() : i >= 29 ? new bbb() : new gjd();
                        bruVar.e(oi.g(rect.left, rect.top, rect.right, rect.bottom));
                        bruVar.h(oi.g(rect2.left, rect2.top, rect2.right, rect2.bottom));
                        anp g2 = bruVar.g();
                        g2.f10526b.v(g2);
                        g2.f10526b.p(view.getRootView());
                        return g2;
                    }
                }
            } catch (IllegalAccessException e2) {
                e2.getMessage();
            }
        }
        return null;
    }

    public static void f(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static String g(View view) {
        return view.getTransitionName();
    }

    public static void h(View view) {
        view.stopNestedScroll();
    }

    public static void i(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static anp j(View view, anp anpVar, Rect rect) {
        WindowInsets j = anpVar.j();
        if (j != null) {
            return anp.c(view, view.computeSystemWindowInsets(j, rect));
        }
        rect.setEmpty();
        return anpVar;
    }

    public static void k(View view, float f2) {
        view.setElevation(f2);
    }

    public static ColorStateList l(View view) {
        return view.getBackgroundTintList();
    }

    public static float m(View view) {
        return view.getZ();
    }
}
