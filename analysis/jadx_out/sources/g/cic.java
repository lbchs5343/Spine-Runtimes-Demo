package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class cic {

    /* renamed from: a, reason: collision with root package name */
    public cxc f12914a;

    /* renamed from: c, reason: collision with root package name */
    public cxc f12916c;

    /* renamed from: d, reason: collision with root package name */
    public Typeface f12917d;

    /* renamed from: e, reason: collision with root package name */
    public cxc f12918e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f12919f;

    /* renamed from: g, reason: collision with root package name */
    public cxc f12920g;
    public boolean h;
    public final bnw i;
    public cxc j;
    public cxc l;
    public cxc m;
    public int k = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f12915b = -1;

    public cic(TextView textView) {
        this.f12919f = textView;
        this.i = new bnw(textView);
    }

    public static void n(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            eyf.b(editorInfo, text);
            return;
        }
        text.getClass();
        if (i >= 30) {
            eyf.b(editorInfo, text);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 : i2;
        if (i2 <= i3) {
            i2 = i3;
        }
        int length = text.length();
        if (i4 < 0 || i2 > length) {
            afo.bc(editorInfo, null, 0, 0);
            return;
        }
        int i5 = editorInfo.inputType & 4095;
        if (i5 == 129 || i5 == 225 || i5 == 18) {
            afo.bc(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            afo.bc(editorInfo, text, i4, i2);
            return;
        }
        int i6 = i2 - i4;
        int i7 = i6 > 1024 ? 0 : i6;
        int i8 = 2048 - i7;
        int min = Math.min(text.length() - i2, i8 - Math.min(i4, (int) (i8 * 0.8d)));
        int min2 = Math.min(i4, i8 - min);
        int i9 = i4 - min2;
        if (Character.isLowSurrogate(text.charAt(i9))) {
            i9++;
            min2--;
        }
        if (Character.isHighSurrogate(text.charAt((i2 + min) - 1))) {
            min--;
        }
        int i10 = min2 + i7;
        afo.bc(editorInfo, i7 != i6 ? TextUtils.concat(text.subSequence(i9, i9 + min2), text.subSequence(i2, min + i2)) : text.subSequence(i9, i10 + min + i9), min2, i10);
    }

    public static cxc o(Context context, cfl cflVar, int i) {
        ColorStateList u;
        synchronized (cflVar) {
            u = cflVar.f12790c.u(context, i);
        }
        if (u == null) {
            return null;
        }
        cxc cxcVar = new cxc(2);
        cxcVar.f13675e = true;
        cxcVar.f13671a = u;
        return cxcVar;
    }

    public final void aa(Context context, int i) {
        String string;
        ColorStateList aa;
        ColorStateList aa2;
        ColorStateList aa3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, acs.m);
        dzh dzhVar = new dzh(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.f12919f;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            if (obtainStyledAttributes.hasValue(3) && (aa3 = dzhVar.aa(3)) != null) {
                textView.setTextColor(aa3);
            }
            if (obtainStyledAttributes.hasValue(5) && (aa2 = dzhVar.aa(5)) != null) {
                textView.setLinkTextColor(aa2);
            }
            if (obtainStyledAttributes.hasValue(4) && (aa = dzhVar.aa(4)) != null) {
                textView.setHintTextColor(aa);
            }
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        q(context, dzhVar);
        if (i2 >= 26 && obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            blt.a(textView, string);
        }
        dzhVar.af();
        Typeface typeface = this.f12917d;
        if (typeface != null) {
            textView.setTypeface(typeface, this.k);
        }
    }

    public final void p(int i) {
        bnw bnwVar = this.i;
        if (bnwVar.t()) {
            if (i == 0) {
                bnwVar.f11897g = 0;
                bnwVar.f11895e = -1.0f;
                bnwVar.f11896f = -1.0f;
                bnwVar.l = -1.0f;
                bnwVar.h = new int[0];
                bnwVar.j = false;
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException(awf.ac(i, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = bnwVar.k.getResources().getDisplayMetrics();
            bnwVar.u(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (bnwVar.w()) {
                bnwVar.r();
            }
        }
    }

    public final void q(Context context, dzh dzhVar) {
        String string;
        int i = this.k;
        TypedArray typedArray = (TypedArray) dzhVar.f15121f;
        this.k = typedArray.getInt(2, i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = typedArray.getInt(11, -1);
            this.f12915b = i3;
            if (i3 != -1) {
                this.k &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.h = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 == 1) {
                    this.f12917d = Typeface.SANS_SERIF;
                    return;
                } else if (i4 == 2) {
                    this.f12917d = Typeface.SERIF;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.f12917d = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f12917d = null;
        int i5 = typedArray.hasValue(12) ? 12 : 10;
        int i6 = this.f12915b;
        int i7 = this.k;
        if (!context.isRestricted()) {
            try {
                Typeface r = dzhVar.r(i5, this.k, new ejj(this, i6, i7, new WeakReference(this.f12919f)));
                if (r != null) {
                    if (i2 < 28 || this.f12915b == -1) {
                        this.f12917d = r;
                    } else {
                        this.f12917d = fwi.a(Typeface.create(r, 0), this.f12915b, (this.k & 2) != 0);
                    }
                }
                this.h = this.f12917d == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f12917d != null || (string = typedArray.getString(i5)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f12915b == -1) {
            this.f12917d = Typeface.create(string, this.k);
        } else {
            this.f12917d = fwi.a(Typeface.create(string, 0), this.f12915b, (this.k & 2) != 0);
        }
    }

    public final ColorStateList r() {
        cxc cxcVar = this.f12914a;
        if (cxcVar != null) {
            return (ColorStateList) cxcVar.f13671a;
        }
        return null;
    }

    public final void s(ColorStateList colorStateList) {
        if (this.f12914a == null) {
            this.f12914a = new cxc(2);
        }
        cxc cxcVar = this.f12914a;
        cxcVar.f13671a = colorStateList;
        cxcVar.f13675e = colorStateList != null;
        this.j = cxcVar;
        this.l = cxcVar;
        this.f12916c = cxcVar;
        this.f12918e = cxcVar;
        this.f12920g = cxcVar;
        this.m = cxcVar;
    }

    public final PorterDuff.Mode t() {
        cxc cxcVar = this.f12914a;
        if (cxcVar != null) {
            return (PorterDuff.Mode) cxcVar.f13672b;
        }
        return null;
    }

    public final void u(Drawable drawable, cxc cxcVar) {
        if (drawable == null || cxcVar == null) {
            return;
        }
        cfl.e(drawable, cxcVar, this.f12919f.getDrawableState());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:227:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(AttributeSet attributeSet, int i) {
        String str;
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        String str2;
        cfl cflVar;
        int i2;
        bnw bnwVar;
        TypedArray obtainStyledAttributes;
        TypedArray obtainStyledAttributes2;
        Drawable h;
        Drawable h2;
        Drawable h3;
        Drawable h4;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int i3;
        float f2;
        int i4;
        ColorStateList colorStateList4;
        int resourceId;
        int[] iArr;
        int resourceId2;
        int length;
        int i5;
        TextView textView = this.f12919f;
        Context context = textView.getContext();
        cfl f3 = cfl.f();
        int[] iArr2 = acs.f9996b;
        dzh j = dzh.j(context, attributeSet, iArr2, i);
        goi.x(textView, textView.getContext(), iArr2, attributeSet, (TypedArray) j.f15121f, i);
        TypedArray typedArray = (TypedArray) j.f15121f;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.j = o(context, f3, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.l = o(context, f3, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.f12916c = o(context, f3, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.f12918e = o(context, f3, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f12920g = o(context, f3, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.m = o(context, f3, typedArray.getResourceId(6, 0));
        }
        j.af();
        boolean z3 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr3 = acs.m;
        if (resourceId3 != -1) {
            TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(resourceId3, iArr3);
            dzh dzhVar = new dzh(context, obtainStyledAttributes3);
            if (z3 || !obtainStyledAttributes3.hasValue(14)) {
                z = false;
                z2 = false;
            } else {
                z2 = obtainStyledAttributes3.getBoolean(14, false);
                z = true;
            }
            q(context, dzhVar);
            int i6 = Build.VERSION.SDK_INT;
            if (i6 < 23) {
                colorStateList = obtainStyledAttributes3.hasValue(3) ? dzhVar.aa(3) : null;
                colorStateList2 = obtainStyledAttributes3.hasValue(4) ? dzhVar.aa(4) : null;
                if (obtainStyledAttributes3.hasValue(5)) {
                    colorStateList3 = dzhVar.aa(5);
                    i5 = 15;
                    str2 = !obtainStyledAttributes3.hasValue(i5) ? obtainStyledAttributes3.getString(i5) : null;
                    str = (i6 >= 26 || !obtainStyledAttributes3.hasValue(13)) ? null : obtainStyledAttributes3.getString(13);
                    dzhVar.af();
                } else {
                    i5 = 15;
                }
            } else {
                i5 = 15;
                colorStateList = null;
                colorStateList2 = null;
            }
            colorStateList3 = null;
            if (!obtainStyledAttributes3.hasValue(i5)) {
            }
            if (i6 >= 26) {
            }
            dzhVar.af();
        } else {
            str = null;
            z = false;
            z2 = false;
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            str2 = null;
        }
        TypedArray obtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3, i, 0);
        dzh dzhVar2 = new dzh(context, obtainStyledAttributes4);
        if (!z3 && obtainStyledAttributes4.hasValue(14)) {
            z2 = obtainStyledAttributes4.getBoolean(14, false);
            z = true;
        }
        boolean z4 = z2;
        int i7 = Build.VERSION.SDK_INT;
        if (i7 < 23) {
            if (obtainStyledAttributes4.hasValue(3)) {
                colorStateList = dzhVar2.aa(3);
            }
            if (obtainStyledAttributes4.hasValue(4)) {
                colorStateList2 = dzhVar2.aa(4);
            }
            if (obtainStyledAttributes4.hasValue(5)) {
                colorStateList3 = dzhVar2.aa(5);
            }
        }
        ColorStateList colorStateList5 = colorStateList;
        ColorStateList colorStateList6 = colorStateList2;
        ColorStateList colorStateList7 = colorStateList3;
        if (obtainStyledAttributes4.hasValue(15)) {
            str2 = obtainStyledAttributes4.getString(15);
        }
        String str3 = str2;
        if (i7 >= 26 && obtainStyledAttributes4.hasValue(13)) {
            str = obtainStyledAttributes4.getString(13);
        }
        if (i7 < 28 || !obtainStyledAttributes4.hasValue(0)) {
            cflVar = f3;
        } else {
            cflVar = f3;
            if (obtainStyledAttributes4.getDimensionPixelSize(0, -1) == 0) {
                textView.setTextSize(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
        }
        q(context, dzhVar2);
        dzhVar2.af();
        if (colorStateList5 != null) {
            textView.setTextColor(colorStateList5);
        }
        if (colorStateList6 != null) {
            textView.setHintTextColor(colorStateList6);
        }
        if (colorStateList7 != null) {
            textView.setLinkTextColor(colorStateList7);
        }
        if (!z3 && z) {
            textView.setAllCaps(z4);
        }
        Typeface typeface = this.f12917d;
        if (typeface != null) {
            if (this.f12915b == -1) {
                textView.setTypeface(typeface, this.k);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str != null) {
            blt.a(textView, str);
        }
        if (str3 != null) {
            if (i7 >= 24) {
                aqg.b(textView, aqg.a(str3));
            } else {
                i2 = 0;
                textView.setTextLocale(qx.a(str3.split(",")[0]));
                bnwVar = this.i;
                Context context2 = bnwVar.k;
                int[] iArr4 = acs.r;
                obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr4, i, i2);
                TextView textView2 = bnwVar.i;
                goi.x(textView2, textView2.getContext(), iArr4, attributeSet, obtainStyledAttributes, i);
                if (obtainStyledAttributes.hasValue(5)) {
                    bnwVar.f11897g = obtainStyledAttributes.getInt(5, i2);
                }
                float dimension = !obtainStyledAttributes.hasValue(4) ? obtainStyledAttributes.getDimension(4, -1.0f) : -1.0f;
                float dimension2 = !obtainStyledAttributes.hasValue(2) ? obtainStyledAttributes.getDimension(2, -1.0f) : -1.0f;
                float dimension3 = !obtainStyledAttributes.hasValue(1) ? obtainStyledAttributes.getDimension(1, -1.0f) : -1.0f;
                if (obtainStyledAttributes.hasValue(3) && (resourceId2 = obtainStyledAttributes.getResourceId(3, 0)) > 0) {
                    TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId2);
                    length = obtainTypedArray.length();
                    int[] iArr5 = new int[length];
                    if (length > 0) {
                        for (int i8 = 0; i8 < length; i8++) {
                            iArr5[i8] = obtainTypedArray.getDimensionPixelSize(i8, -1);
                        }
                        bnwVar.h = bnw.o(iArr5);
                        bnwVar.p();
                    }
                    obtainTypedArray.recycle();
                }
                obtainStyledAttributes.recycle();
                if (bnwVar.t()) {
                    bnwVar.f11897g = 0;
                } else if (bnwVar.f11897g == 1) {
                    if (!bnwVar.m) {
                        DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                        if (dimension2 == -1.0f) {
                            dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                        }
                        if (dimension3 == -1.0f) {
                            dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                        }
                        float f4 = dimension3;
                        if (dimension == -1.0f) {
                            dimension = 1.0f;
                        }
                        bnwVar.u(dimension2, f4, dimension);
                    }
                    bnwVar.w();
                }
                if (dnh.f14459c && bnwVar.f11897g != 0) {
                    iArr = bnwVar.h;
                    if (iArr.length > 0) {
                        if (blt.b(textView) != -1.0f) {
                            blt.c(textView, Math.round(bnwVar.f11895e), Math.round(bnwVar.f11896f), Math.round(bnwVar.l), 0);
                        } else {
                            blt.d(textView, iArr, 0);
                        }
                    }
                }
                obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr4);
                int resourceId4 = obtainStyledAttributes2.getResourceId(8, -1);
                cfl cflVar2 = cflVar;
                Drawable h5 = resourceId4 == -1 ? cflVar2.h(context, resourceId4) : null;
                int resourceId5 = obtainStyledAttributes2.getResourceId(13, -1);
                h = resourceId5 == -1 ? cflVar2.h(context, resourceId5) : null;
                int resourceId6 = obtainStyledAttributes2.getResourceId(9, -1);
                Drawable h6 = resourceId6 == -1 ? cflVar2.h(context, resourceId6) : null;
                int resourceId7 = obtainStyledAttributes2.getResourceId(6, -1);
                h2 = resourceId7 == -1 ? cflVar2.h(context, resourceId7) : null;
                int resourceId8 = obtainStyledAttributes2.getResourceId(10, -1);
                h3 = resourceId8 == -1 ? cflVar2.h(context, resourceId8) : null;
                int resourceId9 = obtainStyledAttributes2.getResourceId(7, -1);
                h4 = resourceId9 == -1 ? cflVar2.h(context, resourceId9) : null;
                if (h3 == null || h4 != null) {
                    Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
                    if (h3 == null) {
                        h3 = compoundDrawablesRelative[0];
                    }
                    if (h == null) {
                        h = compoundDrawablesRelative[1];
                    }
                    if (h4 == null) {
                        h4 = compoundDrawablesRelative[2];
                    }
                    if (h2 == null) {
                        h2 = compoundDrawablesRelative[3];
                    }
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(h3, h, h4, h2);
                } else if (h5 != null || h != null || h6 != null || h2 != null) {
                    Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
                    Drawable drawable = compoundDrawablesRelative2[0];
                    if (drawable == null && compoundDrawablesRelative2[2] == null) {
                        Drawable[] compoundDrawables = textView.getCompoundDrawables();
                        if (h5 == null) {
                            h5 = compoundDrawables[0];
                        }
                        if (h == null) {
                            h = compoundDrawables[1];
                        }
                        if (h6 == null) {
                            h6 = compoundDrawables[2];
                        }
                        if (h2 == null) {
                            h2 = compoundDrawables[3];
                        }
                        textView.setCompoundDrawablesWithIntrinsicBounds(h5, h, h6, h2);
                    } else {
                        if (h == null) {
                            h = compoundDrawablesRelative2[1];
                        }
                        if (h2 == null) {
                            h2 = compoundDrawablesRelative2[3];
                        }
                        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, h, compoundDrawablesRelative2[2], h2);
                    }
                }
                if (obtainStyledAttributes2.hasValue(11)) {
                    if (!obtainStyledAttributes2.hasValue(11) || (resourceId = obtainStyledAttributes2.getResourceId(11, 0)) == 0 || (colorStateList4 = eyt.bh(context, resourceId)) == null) {
                        colorStateList4 = obtainStyledAttributes2.getColorStateList(11);
                    }
                    if (Build.VERSION.SDK_INT >= 24) {
                        id.d(textView, colorStateList4);
                    } else if (textView instanceof b) {
                        ((b) textView).setSupportCompoundDrawablesTintList(colorStateList4);
                    }
                }
                if (obtainStyledAttributes2.hasValue(12)) {
                    PorterDuff.Mode f5 = edd.f(obtainStyledAttributes2.getInt(12, -1), null);
                    if (Build.VERSION.SDK_INT >= 24) {
                        id.p(textView, f5);
                    } else if (textView instanceof b) {
                        ((b) textView).setSupportCompoundDrawablesTintMode(f5);
                    }
                }
                dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(15, -1);
                dimensionPixelSize2 = obtainStyledAttributes2.getDimensionPixelSize(18, -1);
                if (obtainStyledAttributes2.hasValue(19)) {
                    i3 = -1;
                    f2 = -1.0f;
                } else {
                    TypedValue peekValue = obtainStyledAttributes2.peekValue(19);
                    if (peekValue != null && peekValue.type == 5) {
                        int i9 = peekValue.data;
                        int i10 = i9 & 15;
                        f2 = TypedValue.complexToFloat(i9);
                        i4 = i10;
                        i3 = -1;
                        obtainStyledAttributes2.recycle();
                        if (dimensionPixelSize != i3) {
                            bff.ar(textView, dimensionPixelSize);
                        }
                        if (dimensionPixelSize2 != i3) {
                            bff.aa(textView, dimensionPixelSize2);
                        }
                        if (f2 != -1.0f) {
                            if (i4 == i3) {
                                bff.w(textView, (int) f2);
                                return;
                            } else if (Build.VERSION.SDK_INT >= 34) {
                                bpm.a(textView, i4, f2);
                                return;
                            } else {
                                bff.w(textView, Math.round(TypedValue.applyDimension(i4, f2, textView.getResources().getDisplayMetrics())));
                                return;
                            }
                        }
                        return;
                    }
                    i3 = -1;
                    f2 = obtainStyledAttributes2.getDimensionPixelSize(19, -1);
                }
                i4 = -1;
                obtainStyledAttributes2.recycle();
                if (dimensionPixelSize != i3) {
                }
                if (dimensionPixelSize2 != i3) {
                }
                if (f2 != -1.0f) {
                }
            }
        }
        i2 = 0;
        bnwVar = this.i;
        Context context22 = bnwVar.k;
        int[] iArr42 = acs.r;
        obtainStyledAttributes = context22.obtainStyledAttributes(attributeSet, iArr42, i, i2);
        TextView textView22 = bnwVar.i;
        goi.x(textView22, textView22.getContext(), iArr42, attributeSet, obtainStyledAttributes, i);
        if (obtainStyledAttributes.hasValue(5)) {
        }
        if (!obtainStyledAttributes.hasValue(4)) {
        }
        if (!obtainStyledAttributes.hasValue(2)) {
        }
        if (!obtainStyledAttributes.hasValue(1)) {
        }
        if (obtainStyledAttributes.hasValue(3)) {
            TypedArray obtainTypedArray2 = obtainStyledAttributes.getResources().obtainTypedArray(resourceId2);
            length = obtainTypedArray2.length();
            int[] iArr52 = new int[length];
            if (length > 0) {
            }
            obtainTypedArray2.recycle();
        }
        obtainStyledAttributes.recycle();
        if (bnwVar.t()) {
        }
        if (dnh.f14459c) {
            iArr = bnwVar.h;
            if (iArr.length > 0) {
            }
        }
        obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr42);
        int resourceId42 = obtainStyledAttributes2.getResourceId(8, -1);
        cfl cflVar22 = cflVar;
        if (resourceId42 == -1) {
        }
        int resourceId52 = obtainStyledAttributes2.getResourceId(13, -1);
        if (resourceId52 == -1) {
        }
        int resourceId62 = obtainStyledAttributes2.getResourceId(9, -1);
        if (resourceId62 == -1) {
        }
        int resourceId72 = obtainStyledAttributes2.getResourceId(6, -1);
        if (resourceId72 == -1) {
        }
        int resourceId82 = obtainStyledAttributes2.getResourceId(10, -1);
        if (resourceId82 == -1) {
        }
        int resourceId92 = obtainStyledAttributes2.getResourceId(7, -1);
        if (resourceId92 == -1) {
        }
        if (h3 == null) {
        }
        Drawable[] compoundDrawablesRelative3 = textView.getCompoundDrawablesRelative();
        if (h3 == null) {
        }
        if (h == null) {
        }
        if (h4 == null) {
        }
        if (h2 == null) {
        }
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(h3, h, h4, h2);
        if (obtainStyledAttributes2.hasValue(11)) {
        }
        if (obtainStyledAttributes2.hasValue(12)) {
        }
        dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(15, -1);
        dimensionPixelSize2 = obtainStyledAttributes2.getDimensionPixelSize(18, -1);
        if (obtainStyledAttributes2.hasValue(19)) {
        }
        i4 = -1;
        obtainStyledAttributes2.recycle();
        if (dimensionPixelSize != i3) {
        }
        if (dimensionPixelSize2 != i3) {
        }
        if (f2 != -1.0f) {
        }
    }

    public final void w(PorterDuff.Mode mode) {
        if (this.f12914a == null) {
            this.f12914a = new cxc(2);
        }
        cxc cxcVar = this.f12914a;
        cxcVar.f13672b = mode;
        cxcVar.f13674d = mode != null;
        this.j = cxcVar;
        this.l = cxcVar;
        this.f12916c = cxcVar;
        this.f12918e = cxcVar;
        this.f12920g = cxcVar;
        this.m = cxcVar;
    }

    public final void x(int i, int i2, int i3, int i4) {
        bnw bnwVar = this.i;
        if (bnwVar.t()) {
            DisplayMetrics displayMetrics = bnwVar.k.getResources().getDisplayMetrics();
            bnwVar.u(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (bnwVar.w()) {
                bnwVar.r();
            }
        }
    }

    public final void y() {
        cxc cxcVar = this.j;
        TextView textView = this.f12919f;
        if (cxcVar != null || this.l != null || this.f12916c != null || this.f12918e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            u(compoundDrawables[0], this.j);
            u(compoundDrawables[1], this.l);
            u(compoundDrawables[2], this.f12916c);
            u(compoundDrawables[3], this.f12918e);
        }
        if (this.f12920g == null && this.m == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        u(compoundDrawablesRelative[0], this.f12920g);
        u(compoundDrawablesRelative[2], this.m);
    }

    public final void z(int[] iArr, int i) {
        bnw bnwVar = this.i;
        if (bnwVar.t()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = bnwVar.k.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                bnwVar.h = bnw.o(iArr2);
                if (!bnwVar.p()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                bnwVar.m = false;
            }
            if (bnwVar.w()) {
                bnwVar.r();
            }
        }
    }
}
