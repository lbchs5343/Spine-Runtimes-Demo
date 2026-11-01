package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import cn.trinea.android.developertools.R;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class goi {

    /* renamed from: a, reason: collision with root package name */
    public static ThreadLocal f18488a;

    /* renamed from: c, reason: collision with root package name */
    public static WeakHashMap f18490c;

    /* renamed from: e, reason: collision with root package name */
    public static Field f18492e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f18493f;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f18489b = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    /* renamed from: d, reason: collision with root package name */
    public static final ati f18491d = new ati();

    /* renamed from: g, reason: collision with root package name */
    public static final bu f18494g = new bu();

    public static Rect aa() {
        if (f18488a == null) {
            f18488a = new ThreadLocal();
        }
        Rect rect = (Rect) f18488a.get();
        if (rect == null) {
            rect = new Rect();
            f18488a.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static void ab(View view, amk amkVar) {
        if (amkVar == null && (l(view) instanceof dln)) {
            amkVar = new amk();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(amkVar == null ? null : amkVar.n);
    }

    public static String[] h(duo duoVar) {
        return Build.VERSION.SDK_INT >= 31 ? hao.a(duoVar) : (String[]) duoVar.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void i(int i, View view) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        Rect aa = aa();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            aa.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !aa.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            p(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                p((View) parent2);
            }
        }
        if (z && aa.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(aa);
        }
    }

    public static void j(int i, View view) {
        ArrayList q = q(view);
        for (int i2 = 0; i2 < q.size(); i2++) {
            if (((csk) q.get(i2)).o() == i) {
                q.remove(i2);
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static dui k(View view, dui duiVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Objects.toString(duiVar);
            view.getClass();
            view.getId();
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return hao.b(view, duiVar);
        }
        ys ysVar = (ys) view.getTag(R.id.tag_on_receive_content_listener);
        col colVar = f18491d;
        if (ysVar == null) {
            if (view instanceof col) {
                colVar = (col) view;
            }
            return colVar._j(duiVar);
        }
        dui a2 = ys.a(view, duiVar);
        if (a2 == null) {
            return null;
        }
        if (view instanceof col) {
            colVar = (col) view;
        }
        return colVar._j(a2);
    }

    public static View.AccessibilityDelegate l(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return fmo.a(view);
        }
        if (f18493f) {
            return null;
        }
        if (f18492e == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f18492e = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f18493f = true;
                return null;
            }
        }
        try {
            Object obj = f18492e.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f18493f = true;
            return null;
        }
    }

    public static void m(int i, View view) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        Rect aa = aa();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            aa.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !aa.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            p(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                p((View) parent2);
            }
        }
        if (z && aa.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(aa);
        }
    }

    public static CharSequence n(View view) {
        Object tag;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = byl.c(view);
        } else {
            tag = view.getTag(R.id.tag_accessibility_pane_title);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static elx o(View view) {
        if (f18490c == null) {
            f18490c = new WeakHashMap();
        }
        elx elxVar = (elx) f18490c.get(view);
        if (elxVar != null) {
            return elxVar;
        }
        elx elxVar2 = new elx(view);
        f18490c.put(view, elxVar2);
        return elxVar2;
    }

    public static void p(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static ArrayList q(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static void r(View view, CharSequence charSequence) {
        new hej(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).f(view, charSequence);
        bu buVar = f18494g;
        if (charSequence == null) {
            buVar.f12208a.remove(view);
            view.removeOnAttachStateChangeListener(buVar);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(buVar);
        } else {
            buVar.f12208a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(buVar);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(buVar);
            }
        }
    }

    public static void s(View view, csk cskVar, yt ytVar) {
        csk cskVar2 = new csk(null, cskVar.m, null, ytVar, cskVar.n);
        View.AccessibilityDelegate l = l(view);
        amk amkVar = l == null ? null : l instanceof dln ? ((dln) l).f14374a : new amk(l);
        if (amkVar == null) {
            amkVar = new amk();
        }
        ab(view, amkVar);
        j(cskVar2.o(), view);
        q(view).add(cskVar2);
        w(0, view);
    }

    public static anp t(View view, anp anpVar) {
        WindowInsets j = anpVar.j();
        if (j != null) {
            WindowInsets b2 = dzc.b(view, j);
            if (!b2.equals(j)) {
                return anp.c(view, b2);
            }
        }
        return anpVar;
    }

    public static anp u(View view) {
        return Build.VERSION.SDK_INT >= 23 ? cnw.a(view) : cd.e(view);
    }

    public static anp v(View view, anp anpVar) {
        int i = Build.VERSION.SDK_INT;
        WindowInsets j = anpVar.j();
        if (j != null) {
            WindowInsets a2 = i >= 30 ? gfn.a(view, j) : dzc.a(view, j);
            if (!a2.equals(j)) {
                return anp.c(view, a2);
            }
        }
        return anpVar;
    }

    public static void w(int i, View view) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = n(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                if (z) {
                    obtain.getText().add(n(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            obtain2.setContentChangeTypes(i);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(n(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    public static void x(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            fmo.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void y(View view, ColorStateList colorStateList) {
        int i = Build.VERSION.SDK_INT;
        cd.a(view, colorStateList);
        if (i == 21) {
            Drawable background = view.getBackground();
            boolean z = (cd.l(view) == null && cd.c(view) == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    public static boolean z(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = lk.f19594a;
        lk lkVar = (lk) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (lkVar == null) {
            lkVar = new lk();
            lkVar.f19595b = null;
            lkVar.f19596c = null;
            lkVar.f19597d = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, lkVar);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = lkVar.f19595b;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = lk.f19594a;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (lkVar.f19595b == null) {
                            lkVar.f19595b = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = lk.f19594a;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                lkVar.f19595b.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    lkVar.f19595b.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View e2 = lkVar.e(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (e2 != null && !KeyEvent.isModifierKey(keyCode)) {
                if (lkVar.f19596c == null) {
                    lkVar.f19596c = new SparseArray();
                }
                lkVar.f19596c.put(keyCode, new WeakReference(e2));
            }
        }
        return e2 != null;
    }
}
