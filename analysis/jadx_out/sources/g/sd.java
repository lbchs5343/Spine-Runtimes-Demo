package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import cn.trinea.android.developertools.R;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* loaded from: classes3.dex */
public final class sd extends cle {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f19961a = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};

    /* renamed from: b, reason: collision with root package name */
    public final AccessibilityManager f19962b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19963c;

    public sd(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        super(context, viewGroup, snackbarContentLayout, snackbarContentLayout2);
        this.f19962b = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static sd d(View view, CharSequence charSequence, int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (view instanceof CoordinatorLayout) {
                viewGroup = (ViewGroup) view;
                break;
            }
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                    break;
                }
                viewGroup2 = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        Context context = viewGroup.getContext();
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f19961a);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate((resourceId == -1 || resourceId2 == -1) ? R.layout.design_layout_snackbar_include : R.layout.mtrl_layout_snackbar_include, viewGroup, false);
        sd sdVar = new sd(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
        ((SnackbarContentLayout) sdVar.aa.getChildAt(0)).getMessageView().setText(charSequence);
        sdVar.n = i;
        return sdVar;
    }

    public final void e(CharSequence charSequence, View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.aa.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence)) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.f19963c = false;
        } else {
            this.f19963c = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new aww(this, 3, onClickListener));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x002b, code lost:
    
        if (r1.isTouchExplorationEnabled() != false) goto L4;
     */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f() {
        duw j = duw.j();
        AccessibilityManager accessibilityManager = this.f19962b;
        int i = this.n;
        boolean z = false;
        if (i != -2) {
            if (Build.VERSION.SDK_INT >= 29) {
                i = accessibilityManager.getRecommendedTimeoutMillis(i, (this.f19963c ? 4 : 0) | 3);
            } else if (this.f19963c) {
            }
            rl rlVar = this.v;
            synchronized (j.h) {
                try {
                    if (j.k(rlVar)) {
                        ep epVar = (ep) j.f14865e;
                        epVar.f15927b = i;
                        ((Handler) j.f14864d).removeCallbacksAndMessages(epVar);
                        j.m((ep) j.f14865e);
                        return;
                    }
                    ep epVar2 = (ep) j.f14866f;
                    if (epVar2 != null && epVar2.f15926a.get() == rlVar) {
                        z = true;
                    }
                    if (z) {
                        ((ep) j.f14866f).f15927b = i;
                    } else {
                        j.f14866f = new ep(i, rlVar);
                    }
                    ep epVar3 = (ep) j.f14865e;
                    if (epVar3 == null || !j.n(epVar3, 4)) {
                        j.f14865e = null;
                        j.p();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        i = -2;
        rl rlVar2 = this.v;
        synchronized (j.h) {
        }
    }

    public final boolean g() {
        boolean k;
        duw j = duw.j();
        rl rlVar = this.v;
        synchronized (j.h) {
            k = j.k(rlVar);
        }
        return k;
    }
}
