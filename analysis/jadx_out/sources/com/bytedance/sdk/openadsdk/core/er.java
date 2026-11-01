package com.bytedance.sdk.openadsdk.core;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;

/* loaded from: classes3.dex */
public class er {
    private static int d(View view, int i, int i2) throws Throwable {
        if (!com.bytedance.sdk.openadsdk.core.ir.o.dq()) {
            return 4;
        }
        if (!d(view)) {
            return 1;
        }
        if (d(view, i2)) {
            return !dq(view, i) ? 3 : 0;
        }
        return 6;
    }

    private static boolean d(View view) {
        return view != null && view.isShown();
    }

    private static boolean d(View view, int i) {
        return view.getWidth() >= ox(view, i) && view.getHeight() >= p(view, i);
    }

    public static boolean dq(View view) {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null && view.isShown() && view.getGlobalVisibleRect(new Rect())) {
            return dq(view, 20);
        }
        return false;
    }

    private static boolean dq(View view, int i) {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null) {
            if (!view.getGlobalVisibleRect(new Rect()) && (!wp.d().bl() || !dq(view, new Rect(), (Point) null))) {
                return false;
            }
            long height = r1.height() * r1.width();
            long height2 = view.getHeight() * view.getWidth();
            if (height2 > 0 && height * 100 >= i * height2) {
                return true;
            }
        }
        return false;
    }

    public static boolean dq(View view, int i, int i2) {
        return d(view, i, i2) == 0;
    }

    public static boolean dq(View view, Rect rect, Point point) {
        if (view == null) {
            return false;
        }
        int right = view.getRight() - view.getLeft();
        int bottom = view.getBottom() - view.getTop();
        if (right <= 0 || bottom <= 0) {
            return false;
        }
        rect.set(0, 0, right, bottom);
        if (point != null) {
            point.set(-view.getScrollX(), -view.getScrollY());
        }
        return view.getParent() == null || view.getParent().getChildVisibleRect(view, rect, point);
    }

    private static int ox(View view, int i) {
        if (i == 3) {
            return (int) (com.bytedance.sdk.openadsdk.core.ir.ce.p(view.getContext().getApplicationContext()) * 0.7d);
        }
        return 20;
    }

    private static int p(View view, int i) {
        if (i == 3) {
            return com.bytedance.sdk.openadsdk.core.ir.ce.s(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }
}
