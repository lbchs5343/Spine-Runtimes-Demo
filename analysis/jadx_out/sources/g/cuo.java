package g;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

/* loaded from: classes.dex */
public final class cuo extends bzb {
    public static final PathInterpolator j = new PathInterpolator(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.1f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
    public static final fca k = new fca(0);
    public static final DecelerateInterpolator l = new DecelerateInterpolator(1.5f);
    public static final AccelerateInterpolator i = new AccelerateInterpolator(1.5f);

    public static void m(View view, akj akjVar) {
        gcu q = q(view);
        if (q != null) {
            View view2 = (View) q.f17895b;
            int[] iArr = (int[]) q.f17897d;
            view2.getLocationOnScreen(iArr);
            int i2 = q.f17898e - iArr[1];
            q.f17899f = i2;
            view2.setTranslationY(i2);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                m(viewGroup.getChildAt(i3), akjVar);
            }
        }
    }

    public static void n(View view) {
        gcu q = q(view);
        if (q != null) {
            ((View) q.f17895b).setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                n(viewGroup.getChildAt(i2));
            }
        }
    }

    public static void o(View view, anp anpVar, boolean z) {
        gcu q = q(view);
        if (q != null) {
            q.f17894a = anpVar;
            if (!z) {
                View view2 = (View) q.f17895b;
                int[] iArr = (int[]) q.f17897d;
                view2.getLocationOnScreen(iArr);
                z = true;
                q.f17898e = iArr[1];
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                o(viewGroup.getChildAt(i2), anpVar, z);
            }
        }
    }

    public static WindowInsets p(View view, WindowInsets windowInsets) {
        return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    public static gcu q(View view) {
        Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
        if (tag instanceof egp) {
            return ((egp) tag).f15503a;
        }
        return null;
    }

    public static void r(View view, anp anpVar, List list) {
        gcu q = q(view);
        if (q != null) {
            q.h(anpVar, list);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                r(viewGroup.getChildAt(i2), anpVar, list);
            }
        }
    }
}
