package g;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ScrollView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gmn extends gqc {
    public final ddm h;
    public final Rect n;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public gmn(gzy gzyVar, int i) {
        super(r3, i);
        TypedValue i2 = bfc.i(gzyVar, R.attr.materialAlertDialogTheme);
        int i3 = i2 == null ? 0 : i2.data;
        Context w = egh.w(gzyVar, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents, new int[0]);
        w = i3 != 0 ? new gzy(w, i3) : w;
        if (i == 0) {
            TypedValue i4 = bfc.i(gzyVar, R.attr.materialAlertDialogTheme);
            i = i4 == null ? 0 : i4.data;
        }
        ContextThemeWrapper contextThemeWrapper = ((die) this.z).i;
        Resources.Theme theme = contextThemeWrapper.getTheme();
        eyt.bn(contextThemeWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int[] iArr = git.k;
        eyt.ap(contextThemeWrapper, null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents, new int[0]);
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(3, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(1, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(0, contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
        obtainStyledAttributes.recycle();
        int layoutDirection = contextThemeWrapper.getResources().getConfiguration().getLayoutDirection();
        this.n = new Rect(layoutDirection == 1 ? dimensionPixelSize3 : dimensionPixelSize, dimensionPixelSize2, layoutDirection != 1 ? dimensionPixelSize3 : dimensionPixelSize, dimensionPixelSize4);
        TypedValue ad = bfc.ad(contextThemeWrapper, R.attr.colorSurface, getClass().getCanonicalName());
        int i5 = ad.resourceId;
        int af = i5 != 0 ? eyt.af(contextThemeWrapper, i5) : ad.data;
        TypedArray obtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(null, iArr, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int color = obtainStyledAttributes2.getColor(4, af);
        obtainStyledAttributes2.recycle();
        ddm ddmVar = new ddm(contextThemeWrapper, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        ddmVar.ef(contextThemeWrapper);
        ddmVar.en(ColorStateList.valueOf(color));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(((die) this.z).i.getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                bem r = ddmVar.ds.h.r();
                r.f11390e = new ett(dimension);
                r.f11392g = new ett(dimension);
                r.l = new ett(dimension);
                r.f11386a = new ett(dimension);
                ddmVar.setShapeAppearanceModel(r.n());
            }
        }
        this.h = ddmVar;
    }

    public final void p(int i) {
        super.am(i);
    }

    public final void q(String str, DialogInterface.OnClickListener onClickListener) {
        die dieVar = (die) this.z;
        dieVar.x = str;
        dieVar.f14216a = onClickListener;
    }

    @Override // g.gqc
    public final fpl r() {
        fpl r = super.r();
        Window window = r.getWindow();
        View decorView = window.getDecorView();
        ddm ddmVar = this.h;
        if (ddmVar != null) {
            ddmVar.ec(decorView.getElevation());
        }
        Rect rect = this.n;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) ddmVar, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new dpr(r, rect));
        ckd.al(r);
        if (r.getWindow() == null) {
            return r;
        }
        final View decorView2 = r.getWindow().getDecorView();
        decorView2.addOnAttachStateChangeListener(new bwh(0, new ViewTreeObserver.OnGlobalLayoutListener() { // from class: g.gta
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                View findViewById = decorView2.findViewById(R.id.buttonPanel);
                if ((findViewById instanceof ScrollView) && findViewById.isShown()) {
                    ScrollView scrollView = (ScrollView) findViewById;
                    if (scrollView.getChildCount() == 0) {
                        return;
                    }
                    View childAt = scrollView.getChildAt(0);
                    if (childAt.getWidth() == 0) {
                        return;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(childAt.getWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(0, 0));
                    int paddingBottom = scrollView.getPaddingBottom() + scrollView.getPaddingTop() + childAt.getMeasuredHeight();
                    if (paddingBottom <= 0 || scrollView.getMinimumHeight() == paddingBottom) {
                        return;
                    }
                    scrollView.setMinimumHeight(paddingBottom);
                }
            }
        }));
        return r;
    }

    public final void s(int i, DialogInterface.OnClickListener onClickListener) {
        super.ay(i, onClickListener);
    }

    public final void t(int i, DialogInterface.OnClickListener onClickListener) {
        die dieVar = (die) this.z;
        dieVar.f14217b = dieVar.i.getText(i);
        dieVar.f14222g = onClickListener;
    }

    public final void v(View view) {
        die dieVar = (die) this.z;
        dieVar.u = view;
        dieVar.n = 0;
    }

    @Override // g.gqc
    public final void x(int i, DialogInterface.OnClickListener onClickListener) {
        super.x(R.string.alert_dialog_update_browser, null);
    }

    public final void y(int i, DialogInterface.OnClickListener onClickListener) {
        super.x(i, onClickListener);
    }
}
