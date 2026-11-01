package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes.dex */
public abstract class fgt {

    /* renamed from: c, reason: collision with root package name */
    public static final ThreadLocal f16760c = new ThreadLocal();

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f16762e = {-16842910};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f16763f = {R.attr.state_focused};

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f16758a = {R.attr.state_pressed};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f16759b = {R.attr.state_checked};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f16761d = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f16764g = new int[1];

    public static ColorStateList h(Context context, int i) {
        ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f16764g;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = eyt.bh(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static void i(Context context, View view) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(acs.t);
        try {
            if (!obtainStyledAttributes.hasValue(117)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int j(Context context, int i) {
        ColorStateList h = h(context, i);
        if (h != null && h.isStateful()) {
            return h.getColorForState(f16762e, h.getDefaultColor());
        }
        ThreadLocal threadLocal = f16760c;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f2 = typedValue.getFloat();
        return afr.c(k(context, i), Math.round(Color.alpha(r4) * f2));
    }

    public static int k(Context context, int i) {
        int[] iArr = f16764g;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
