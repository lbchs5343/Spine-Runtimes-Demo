package g;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.gms.internal.ads.zzcaw;

/* loaded from: classes.dex */
public final class cr {

    /* renamed from: a, reason: collision with root package name */
    public boolean f13354a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13355b;

    /* renamed from: c, reason: collision with root package name */
    public Object f13356c;

    /* renamed from: d, reason: collision with root package name */
    public final View f13357d;

    /* renamed from: e, reason: collision with root package name */
    public Object f13358e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13359f;

    public cr(Activity activity, com.google.android.gms.internal.ads.v vVar, com.google.android.gms.internal.ads.v vVar2) {
        this.f13356c = activity;
        this.f13357d = vVar;
        this.f13358e = vVar2;
    }

    public /* synthetic */ cr(TextView textView) {
        this.f13356c = null;
        this.f13358e = null;
        this.f13359f = false;
        this.f13354a = false;
        this.f13357d = textView;
    }

    public void g() {
        View decorView;
        com.google.android.gms.internal.ads.v vVar = (com.google.android.gms.internal.ads.v) this.f13358e;
        if (this.f13359f) {
            return;
        }
        Activity activity = (Activity) this.f13356c;
        if (activity != null) {
            Window window = activity.getWindow();
            ViewTreeObserver viewTreeObserver = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(vVar);
            }
        }
        com.google.android.gms.internal.ads.v vVar2 = (com.google.android.gms.internal.ads.v) this.f13357d;
        zzcaw zzcawVar = ti.f20033a.i;
        zzcaw.zza(vVar2, vVar);
        this.f13359f = true;
    }

    public void h() {
        CompoundButton compoundButton = (CompoundButton) this.f13357d;
        Drawable cb = ffb.cb(compoundButton);
        if (cb != null) {
            if (this.f13359f || this.f13354a) {
                Drawable mutate = dzm.aw(cb).mutate();
                if (this.f13359f) {
                    mutate.setTintList((ColorStateList) this.f13356c);
                }
                if (this.f13354a) {
                    mutate.setTintMode((PorterDuff.Mode) this.f13358e);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    public void i() {
        hbf hbfVar = (hbf) this.f13357d;
        Drawable checkMarkDrawable = hbfVar.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f13359f || this.f13354a) {
                Drawable mutate = dzm.aw(checkMarkDrawable).mutate();
                if (this.f13359f) {
                    mutate.setTintList((ColorStateList) this.f13356c);
                }
                if (this.f13354a) {
                    mutate.setTintMode((PorterDuff.Mode) this.f13358e);
                }
                if (mutate.isStateful()) {
                    mutate.setState(hbfVar.getDrawableState());
                }
                hbfVar.setCheckMarkDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005c A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:3:0x0022, B:5:0x0029, B:8:0x002f, B:9:0x0055, B:11:0x005c, B:12:0x0063, B:14:0x006a, B:21:0x003e, B:23:0x0044, B:25:0x004a), top: B:2:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:3:0x0022, B:5:0x0029, B:8:0x002f, B:9:0x0055, B:11:0x005c, B:12:0x0063, B:14:0x006a, B:21:0x003e, B:23:0x0044, B:25:0x004a), top: B:2:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void j(AttributeSet attributeSet, int i) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f13357d;
        Context context = compoundButton.getContext();
        int[] iArr = acs.q;
        dzh j = dzh.j(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) j.f15121f;
        goi.x(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) j.f15121f, i);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(fso.ai(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
                if (typedArray.hasValue(2)) {
                    compoundButton.setButtonTintList(j.aa(2));
                }
                if (typedArray.hasValue(3)) {
                    compoundButton.setButtonTintMode(edd.f(typedArray.getInt(3, -1), null));
                }
                j.af();
            }
            if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(fso.ai(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
            }
            if (typedArray.hasValue(3)) {
            }
            j.af();
        } catch (Throwable th) {
            j.af();
            throw th;
        }
    }
}
