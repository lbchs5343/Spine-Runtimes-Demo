package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.TypedValue;
import android.util.Xml;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class asw {

    /* renamed from: a, reason: collision with root package name */
    public final float f10777a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f10778b;

    /* renamed from: e, reason: collision with root package name */
    public final int f10781e;

    /* renamed from: f, reason: collision with root package name */
    public float f10782f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10783g;
    public final ColorStateList h;
    public final float i;
    public Typeface j;
    public final int k;
    public final boolean l;
    public final String m;
    public final float n;
    public final String o;
    public final float p;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10780d = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10779c = false;

    public asw(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, acs.m);
        this.f10782f = obtainStyledAttributes.getDimension(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f10778b = gs.ai(context, obtainStyledAttributes, 3);
        gs.ai(context, obtainStyledAttributes, 4);
        gs.ai(context, obtainStyledAttributes, 5);
        this.f10781e = obtainStyledAttributes.getInt(2, 0);
        this.f10783g = obtainStyledAttributes.getInt(1, 1);
        int i2 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.k = obtainStyledAttributes.getResourceId(i2, 0);
        this.m = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.h = gs.ai(context, obtainStyledAttributes, 6);
        this.i = obtainStyledAttributes.getFloat(7, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.p = obtainStyledAttributes.getFloat(8, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f10777a = obtainStyledAttributes.getFloat(9, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, git.f18221f);
        this.l = obtainStyledAttributes2.hasValue(0);
        this.n = obtainStyledAttributes2.getFloat(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (Build.VERSION.SDK_INT >= 26) {
            this.o = obtainStyledAttributes2.getString(obtainStyledAttributes2.hasValue(3) ? 3 : 1);
        }
        obtainStyledAttributes2.recycle();
    }

    public final void q(Context context, TextPaint textPaint, fso fsoVar) {
        r(context, textPaint, fsoVar);
        ColorStateList colorStateList = this.f10778b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.h;
        textPaint.setShadowLayer(this.f10777a, this.i, this.p, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void r(Context context, TextPaint textPaint, fso fsoVar) {
        Typeface typeface;
        if (v(context) && this.f10780d && (typeface = this.j) != null) {
            t(context, textPaint, typeface);
            return;
        }
        s();
        t(context, textPaint, this.j);
        u(context, new evd(this, context, textPaint, fsoVar));
    }

    public final void s() {
        String str;
        Typeface typeface = this.j;
        int i = this.f10781e;
        if (typeface == null && (str = this.m) != null) {
            this.j = Typeface.create(str, i);
        }
        if (this.j == null) {
            int i2 = this.f10783g;
            if (i2 == 1) {
                this.j = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.j = Typeface.SERIF;
            } else if (i2 != 3) {
                this.j = Typeface.DEFAULT;
            } else {
                this.j = Typeface.MONOSPACE;
            }
            this.j = Typeface.create(this.j, i);
        }
    }

    public final void t(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface k = kj.k(context.getResources().getConfiguration(), typeface);
        if (k != null) {
            typeface = k;
        }
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.f10781e;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        textPaint.setTextSize(this.f10782f);
        if (Build.VERSION.SDK_INT >= 26) {
            textPaint.setFontVariationSettings(this.o);
        }
        if (this.l) {
            textPaint.setLetterSpacing(this.n);
        }
    }

    public final void u(Context context, fso fsoVar) {
        if (!v(context)) {
            s();
        }
        int i = this.k;
        if (i == 0) {
            this.f10780d = true;
        }
        if (this.f10780d) {
            fsoVar.e(this.j, true);
            return;
        }
        try {
            bek bekVar = new bek(this, fsoVar);
            ThreadLocal threadLocal = fbs.f16530a;
            if (context.isRestricted()) {
                bekVar.be(-4);
            } else {
                fbs.e(context, i, new TypedValue(), 0, bekVar, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f10780d = true;
            fsoVar.d(1);
        } catch (Exception unused2) {
            this.f10780d = true;
            fsoVar.d(-3);
        }
    }

    public final boolean v(Context context) {
        Context context2;
        Typeface e2;
        String str;
        Typeface create;
        if (this.f10780d) {
            return true;
        }
        int i = this.k;
        if (i != 0) {
            ThreadLocal threadLocal = fbs.f16530a;
            Typeface typeface = null;
            if (context.isRestricted()) {
                context2 = context;
                e2 = null;
            } else {
                context2 = context;
                e2 = fbs.e(context2, i, new TypedValue(), 0, null, false, true);
            }
            if (e2 != null) {
                this.j = e2;
                this.f10780d = true;
                return true;
            }
            if (!this.f10779c) {
                this.f10779c = true;
                Resources resources = context2.getResources();
                int i2 = this.k;
                if (i2 != 0 && resources.getResourceTypeName(i2).equals("font")) {
                    try {
                        XmlResourceParser xml = resources.getXml(i2);
                        while (xml.getEventType() != 1) {
                            if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), glo.f18360e);
                                str = obtainAttributes.getString(7);
                                obtainAttributes.recycle();
                                break;
                            }
                            xml.next();
                        }
                    } catch (Throwable unused) {
                    }
                }
                str = null;
                if (str != null && (create = Typeface.create(str, 0)) != Typeface.DEFAULT) {
                    typeface = Typeface.create(create, this.f10781e);
                }
            }
            if (typeface != null) {
                this.j = typeface;
                this.f10780d = true;
                return true;
            }
        }
        return false;
    }
}
