package com.bytedance.sdk.component.widget.recycler.dq.ox;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private static Method f2270d;
    private static Field dq;
    private static boolean ox;
    private static Field p;
    private static boolean s;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f2270d = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", null);
            } catch (Exception unused) {
            }
        }
    }

    public static float d(ViewConfiguration viewConfiguration, Context context) {
        float scaledVerticalScrollFactor;
        if (Build.VERSION.SDK_INT < 26) {
            return ox(viewConfiguration, context);
        }
        scaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
        return scaledVerticalScrollFactor;
    }

    public static int d(View view) {
        return view.getImportantForAccessibility();
    }

    public static void d(View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    public static float dq(ViewConfiguration viewConfiguration, Context context) {
        float scaledHorizontalScrollFactor;
        if (Build.VERSION.SDK_INT < 26) {
            return ox(viewConfiguration, context);
        }
        scaledHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
        return scaledHorizontalScrollFactor;
    }

    public static int dq(View view) {
        return view.getLayoutDirection();
    }

    public static void dq(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    public static void dq(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void dq(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    public static boolean dq(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }

    public static boolean ia(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean iw(View view) {
        return view.hasTransientState();
    }

    public static int kk(View view) {
        int importantForAutofill;
        if (Build.VERSION.SDK_INT < 26) {
            return 0;
        }
        importantForAutofill = view.getImportantForAutofill();
        return importantForAutofill;
    }

    public static Display mn(View view) {
        return view.getDisplay();
    }

    public static void o(View view) {
        view.stopNestedScroll();
    }

    private static float ox(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f2270d) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, null)).intValue();
            } catch (Exception unused) {
            }
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true) ? typedValue.getDimension(context.getResources().getDisplayMetrics()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public static void ox(View view) {
        view.postInvalidateOnAnimation();
    }

    public static int p(View view) {
        return view.getMinimumWidth();
    }

    public static int s(View view) {
        return view.getMinimumHeight();
    }
}
