package g;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class bwh implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12313a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12314b;

    public /* synthetic */ bwh(int i, Object obj) {
        this.f12313a = i;
        this.f12314b = obj;
    }

    private final void c(View view) {
    }

    private final void d(View view) {
    }

    private final void e(View view) {
    }

    private final void f(View view) {
    }

    private final void g(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i = this.f12313a;
        Object obj = this.f12314b;
        switch (i) {
            case 0:
                view.getViewTreeObserver().addOnGlobalLayoutListener((gta) obj);
                break;
            case 2:
                zq zqVar = (zq) obj;
                AccessibilityManager accessibilityManager = zqVar.f20408c;
                if (zqVar.k != null && accessibilityManager != null && zqVar.isAttachedToWindow()) {
                    accessibilityManager.addTouchExplorationStateChangeListener(zqVar.k);
                    break;
                }
                break;
            case 3:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = goi.f18490c;
                dzc.c(view2);
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        AccessibilityManager accessibilityManager2;
        AccessibilityManager accessibilityManager3;
        switch (this.f12313a) {
            case 0:
                view.getViewTreeObserver().removeOnGlobalLayoutListener((gta) this.f12314b);
                break;
            case 1:
                ezq ezqVar = (ezq) this.f12314b;
                ViewTreeObserver viewTreeObserver = ezqVar.z;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        ezqVar.z = view.getViewTreeObserver();
                    }
                    ezqVar.z.removeGlobalOnLayoutListener(ezqVar.aa);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            case 2:
                zq zqVar = (zq) this.f12314b;
                AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = zqVar.k;
                if (touchExplorationStateChangeListener != null && (accessibilityManager = zqVar.f20408c) != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
                    break;
                }
                break;
            case 3:
                break;
            case 4:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.f12314b;
                dvd dvdVar = hideBottomViewOnScrollBehavior.f8997a;
                if (dvdVar != null && (accessibilityManager2 = hideBottomViewOnScrollBehavior.x) != null) {
                    accessibilityManager2.removeTouchExplorationStateChangeListener(dvdVar);
                    hideBottomViewOnScrollBehavior.f8997a = null;
                    break;
                }
                break;
            case 5:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.f12314b;
                dvd dvdVar2 = hideViewOnScrollBehavior.w;
                if (dvdVar2 != null && (accessibilityManager3 = hideViewOnScrollBehavior.u) != null) {
                    accessibilityManager3.removeTouchExplorationStateChangeListener(dvdVar2);
                    hideViewOnScrollBehavior.w = null;
                    break;
                }
                break;
            default:
                ctb ctbVar = (ctb) this.f12314b;
                ViewTreeObserver viewTreeObserver2 = ctbVar.m;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        ctbVar.m = view.getViewTreeObserver();
                    }
                    ctbVar.m.removeGlobalOnLayoutListener(ctbVar.v);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }
}
