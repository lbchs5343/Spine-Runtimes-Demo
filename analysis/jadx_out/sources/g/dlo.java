package g;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class dlo implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public static dlo f14375a;

    /* renamed from: b, reason: collision with root package name */
    public static dlo f14376b;

    /* renamed from: c, reason: collision with root package name */
    public fzm f14377c;

    /* renamed from: d, reason: collision with root package name */
    public int f14378d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14379e;

    /* renamed from: f, reason: collision with root package name */
    public final int f14380f;

    /* renamed from: g, reason: collision with root package name */
    public final blq f14381g;
    public final blq h;
    public final View i;
    public boolean j;
    public final CharSequence k;
    public int l;

    /* JADX WARN: Type inference failed for: r0v0, types: [g.blq] */
    /* JADX WARN: Type inference failed for: r0v1, types: [g.blq] */
    public dlo(View view, CharSequence charSequence) {
        final int i = 0;
        this.f14381g = new Runnable(this) { // from class: g.blq

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ dlo f11797b;

            {
                this.f11797b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        this.f11797b.o(false);
                        break;
                    default:
                        this.f11797b.n();
                        break;
                }
            }
        };
        final int i2 = 1;
        this.h = new Runnable(this) { // from class: g.blq

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ dlo f11797b;

            {
                this.f11797b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.f11797b.o(false);
                        break;
                    default:
                        this.f11797b.n();
                        break;
                }
            }
        };
        this.i = view;
        this.k = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = btu.f12200a;
        this.f14380f = Build.VERSION.SDK_INT >= 28 ? eyo.f(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f14379e = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void m(dlo dloVar) {
        dlo dloVar2 = f14376b;
        if (dloVar2 != null) {
            dloVar2.i.removeCallbacks(dloVar2.f14381g);
        }
        f14376b = dloVar;
        if (dloVar != null) {
            dloVar.i.postDelayed(dloVar.f14381g, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void n() {
        dlo dloVar = f14375a;
        View view = this.i;
        if (dloVar == this) {
            f14375a = null;
            fzm fzmVar = this.f14377c;
            if (fzmVar != null) {
                View view2 = (View) fzmVar.f17724f;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) fzmVar.f17723e).getSystemService("window")).removeView(view2);
                }
                this.f14377c = null;
                this.f14379e = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f14376b == this) {
            m(null);
        }
        view.removeCallbacks(this.h);
    }

    public final void o(boolean z) {
        int height;
        int i;
        int i2;
        boolean z2;
        int i3;
        char c2;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.i;
        if (view.isAttachedToWindow()) {
            m(null);
            dlo dloVar = f14375a;
            if (dloVar != null) {
                dloVar.n();
            }
            f14375a = this;
            this.j = z;
            Context context = view.getContext();
            fzm fzmVar = new fzm();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            fzmVar.f17721c = layoutParams;
            fzmVar.f17722d = new Rect();
            fzmVar.f17725g = new int[2];
            fzmVar.f17719a = new int[2];
            fzmVar.f17723e = context;
            View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
            fzmVar.f17724f = inflate;
            fzmVar.f17720b = (TextView) inflate.findViewById(R.id.message);
            layoutParams.setTitle(fzm.class.getSimpleName());
            layoutParams.packageName = context.getPackageName();
            layoutParams.type = 1002;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 2131951628;
            layoutParams.flags = 24;
            View view2 = (View) fzmVar.f17724f;
            Context context2 = (Context) fzmVar.f17723e;
            this.f14377c = fzmVar;
            int i4 = this.l;
            int i5 = this.f14378d;
            boolean z3 = this.j;
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) fzmVar.f17721c;
            if (view2.getParent() != null && view2.getParent() != null) {
                ((WindowManager) context2.getSystemService("window")).removeView(view2);
            }
            ((TextView) fzmVar.f17720b).setText(this.k);
            int[] iArr = (int[]) fzmVar.f17719a;
            int[] iArr2 = (int[]) fzmVar.f17725g;
            Rect rect = (Rect) fzmVar.f17722d;
            layoutParams2.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                i4 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i5 + dimensionPixelOffset2;
                i = i5 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams2.gravity = 49;
            int dimensionPixelOffset3 = context2.getResources().getDimensionPixelOffset(z3 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams3 = rootView.getLayoutParams();
            int i6 = i4;
            if (!(layoutParams3 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams3).type != 2) {
                Context context3 = view.getContext();
                while (true) {
                    if (!(context3 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context3 instanceof Activity) {
                        rootView = ((Activity) context3).getWindow().getDecorView();
                        break;
                    }
                    context3 = ((ContextWrapper) context3).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
            } else {
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i2 = i;
                    z2 = z3;
                    i3 = 0;
                    c2 = 1;
                } else {
                    Resources resources = context2.getResources();
                    c2 = 1;
                    i2 = i;
                    z2 = z3;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i3 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(iArr);
                view.getLocationOnScreen(iArr2);
                int i7 = iArr2[i3] - iArr[i3];
                iArr2[i3] = i7;
                iArr2[c2] = iArr2[c2] - iArr[c2];
                layoutParams2.x = (i7 + i6) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, i3);
                view2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i8 = iArr2[c2];
                int i9 = ((i8 + i2) - dimensionPixelOffset3) - measuredHeight;
                int i10 = i8 + height + dimensionPixelOffset3;
                if (z2) {
                    if (i9 >= 0) {
                        layoutParams2.y = i9;
                    } else {
                        layoutParams2.y = i10;
                    }
                } else if (measuredHeight + i10 <= rect.height()) {
                    layoutParams2.y = i10;
                } else {
                    layoutParams2.y = i9;
                }
            }
            ((WindowManager) context2.getSystemService("window")).addView(view2, layoutParams2);
            view.addOnAttachStateChangeListener(this);
            if (this.j) {
                j2 = 2500;
            } else {
                WeakHashMap weakHashMap = goi.f18490c;
                if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            blq blqVar = this.h;
            view.removeCallbacks(blqVar);
            view.postDelayed(blqVar, j2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (java.lang.Math.abs(r5 - r3.f14378d) <= r2) goto L30;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f14377c == null || !this.j) {
            View view2 = this.i;
            AccessibilityManager accessibilityManager = (AccessibilityManager) view2.getContext().getSystemService("accessibility");
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
                int action = motionEvent.getAction();
                if (action != 7) {
                    if (action == 10) {
                        this.f14379e = true;
                        n();
                        return false;
                    }
                } else if (view2.isEnabled() && this.f14377c == null) {
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    if (!this.f14379e) {
                        int abs = Math.abs(x - this.l);
                        int i = this.f14380f;
                        if (abs <= i) {
                        }
                    }
                    this.l = x;
                    this.f14378d = y;
                    this.f14379e = false;
                    m(this);
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.l = view.getWidth() / 2;
        this.f14378d = view.getHeight() / 2;
        o(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        n();
    }
}
