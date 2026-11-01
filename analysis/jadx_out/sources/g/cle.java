package g;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.SnackbarContentLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public abstract class cle {
    public final cnp aa;

    /* renamed from: ab, reason: collision with root package name */
    public final int f13057ab;
    public final biq ac;
    public int ad;
    public ArrayList ae;
    public final int af;
    public final ViewGroup ag;
    public int ah;
    public final Context m;
    public int n;
    public int o;
    public int p;
    public final TimeInterpolator q;
    public boolean r;
    public final TimeInterpolator s;
    public final int t;
    public final AccessibilityManager u;
    public final TimeInterpolator w;
    public boolean x;
    public int y;
    public static final fca j = gtk.f18728c;
    public static final LinearInterpolator l = gtk.f18727b;
    public static final fca i = gtk.f18726a;
    public static final int[] k = {R.attr.snackbarStyle};
    public static final Handler h = new Handler(Looper.getMainLooper(), new dhv());
    public final fsd z = new fsd(this, 0);
    public final rl v = new rl(this);

    public cle(Context context, ViewGroup viewGroup, View view, biq biqVar) {
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (biqVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.ag = viewGroup;
        this.ac = biqVar;
        this.m = context;
        eyt.az(context, eyt.y, "Theme.AppCompat");
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(k);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        cnp cnpVar = (cnp) from.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
        this.aa = cnpVar;
        cnpVar.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            float actionTextColorAlpha = cnpVar.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout.f9073d.setTextColor(eyt.ac(eyt.bs(R.attr.colorSurface, snackbarContentLayout), actionTextColorAlpha, snackbarContentLayout.f9073d.getCurrentTextColor()));
            }
            snackbarContentLayout.setMaxInlineActionWidth(cnpVar.getMaxInlineActionWidth());
        }
        cnpVar.addView(view);
        cnpVar.setAccessibilityLiveRegion(1);
        cnpVar.setImportantForAccessibility(1);
        cnpVar.setFitsSystemWindows(true);
        evf evfVar = new evf(4, this);
        WeakHashMap weakHashMap = goi.f18490c;
        cd.b(cnpVar, evfVar);
        goi.ab(cnpVar, new akz(1, this));
        this.u = (AccessibilityManager) context.getSystemService("accessibility");
        this.af = egh.bf(context, R.attr.motionDurationLong2, MediaPlayer.MEDIA_PLAYER_OPTION_TT_HLS_DRM);
        this.t = egh.bf(context, R.attr.motionDurationLong2, 150);
        this.f13057ab = egh.bf(context, R.attr.motionDurationMedium1, 75);
        this.q = egh.r(context, R.attr.motionEasingEmphasizedInterpolator, l);
        this.w = egh.r(context, R.attr.motionEasingEmphasizedInterpolator, i);
        this.s = egh.r(context, R.attr.motionEasingEmphasizedInterpolator, j);
    }

    public final void ai() {
        duw j2 = duw.j();
        rl rlVar = this.v;
        synchronized (j2.h) {
            try {
                if (j2.k(rlVar)) {
                    j2.m((ep) j2.f14865e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList = this.ae;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((bo) this.ae.get(size)).getClass();
            }
        }
    }

    public final void aj() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        cnp cnpVar = this.aa;
        AccessibilityManager accessibilityManager = this.u;
        if (accessibilityManager == null || ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) != null && enabledAccessibilityServiceList.isEmpty())) {
            cnpVar.post(new fsd(this, 2));
            return;
        }
        if (cnpVar.getParent() != null) {
            cnpVar.setVisibility(0);
        }
        ai();
    }

    public final void ak(int i2) {
        duw j2 = duw.j();
        rl rlVar = this.v;
        synchronized (j2.h) {
            try {
                if (j2.k(rlVar)) {
                    j2.n((ep) j2.f14865e, i2);
                } else {
                    ep epVar = (ep) j2.f14866f;
                    if (epVar != null && epVar.f15926a.get() == rlVar) {
                        j2.n((ep) j2.f14866f, i2);
                    }
                }
            } finally {
            }
        }
    }

    public final void al() {
        cnp cnpVar = this.aa;
        ViewGroup.LayoutParams layoutParams = cnpVar.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || cnpVar.f13192d == null || cnpVar.getParent() == null) {
            return;
        }
        int i2 = this.p;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = cnpVar.f13192d;
        int i3 = rect.bottom + i2;
        int i4 = rect.left + this.o;
        int i5 = rect.right + this.y;
        int i6 = rect.top;
        boolean z = (marginLayoutParams.bottomMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5 && marginLayoutParams.topMargin == i6) ? false : true;
        if (z) {
            marginLayoutParams.bottomMargin = i3;
            marginLayoutParams.leftMargin = i4;
            marginLayoutParams.rightMargin = i5;
            marginLayoutParams.topMargin = i6;
            cnpVar.requestLayout();
        }
        if ((z || this.ah != this.ad) && Build.VERSION.SDK_INT >= 29 && this.ad > 0 && !this.r) {
            ViewGroup.LayoutParams layoutParams2 = cnpVar.getLayoutParams();
            if ((layoutParams2 instanceof eu) && (((eu) layoutParams2).h instanceof SwipeDismissBehavior)) {
                fsd fsdVar = this.z;
                cnpVar.removeCallbacks(fsdVar);
                cnpVar.post(fsdVar);
            }
        }
    }

    public final boolean am() {
        boolean z;
        duw j2 = duw.j();
        rl rlVar = this.v;
        synchronized (j2.h) {
            z = true;
            if (!j2.k(rlVar)) {
                ep epVar = (ep) j2.f14866f;
                if (!(epVar != null && epVar.f15926a.get() == rlVar)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final void an() {
        duw j2 = duw.j();
        rl rlVar = this.v;
        synchronized (j2.h) {
            try {
                if (j2.k(rlVar)) {
                    j2.f14865e = null;
                    if (((ep) j2.f14866f) != null) {
                        j2.p();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList = this.ae;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                bo boVar = (bo) this.ae.get(size);
                boVar.getClass();
                View view = boVar.f11901a;
                if (view != null && boVar.f11902b.g()) {
                    view.setVisibility(8);
                }
            }
        }
        ViewParent parent = this.aa.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.aa);
        }
    }
}
