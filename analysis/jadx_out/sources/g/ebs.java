package g;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class ebs {
    public static boolean r(List list) {
        return list == null || list.isEmpty();
    }

    public static void s(View view, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == view) {
                return;
            }
        }
        WeakHashMap weakHashMap = goi.f18490c;
        if (cd.g(view) != null) {
            list.add(view);
        }
        for (int i2 = size; i2 < list.size(); i2++) {
            View view2 = (View) list.get(i2);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    int i4 = 0;
                    while (true) {
                        if (i4 < size) {
                            if (list.get(i4) == childAt) {
                                break;
                            } else {
                                i4++;
                            }
                        } else if (cd.g(childAt) != null) {
                            list.add(childAt);
                        }
                    }
                }
            }
        }
    }

    public static void t(Rect rect, View view) {
        WeakHashMap weakHashMap = goi.f18490c;
        if (view.isAttachedToWindow()) {
            RectF rectF = new RectF();
            rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public abstract void b(Object obj, View view, ArrayList arrayList);

    public abstract void c(Object obj, ac acVar, gfh gfhVar);

    public abstract void d(Object obj, Rect rect);

    public abstract void e(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2);

    public abstract boolean f(Object obj);

    public abstract void g(View view, Object obj);

    public abstract Object h(Object obj);

    public abstract void i(Object obj, View view, ArrayList arrayList);

    public abstract void j(View view, Object obj);

    public abstract Object k(Object obj, Object obj2, Object obj3);

    public abstract void l(Object obj, ArrayList arrayList);

    public abstract Object m(Object obj, Object obj2);

    public abstract void n(Object obj, ArrayList arrayList, ArrayList arrayList2);

    public abstract void p(ViewGroup viewGroup, Object obj);

    public abstract Object q(Object obj);
}
