package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class eia extends fcm {

    /* renamed from: a, reason: collision with root package name */
    public static final PorterDuff.Mode f15573a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f15574b;

    /* renamed from: c, reason: collision with root package name */
    public final float[] f15575c;

    /* renamed from: d, reason: collision with root package name */
    public PorterDuffColorFilter f15576d;

    /* renamed from: e, reason: collision with root package name */
    public ColorFilter f15577e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15578f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f15579g;
    public cgi h;
    public boolean i;

    public eia() {
        this.i = true;
        this.f15575c = new float[9];
        this.f15574b = new Matrix();
        this.f15579g = new Rect();
        cgi cgiVar = new cgi();
        cgiVar.k = null;
        cgiVar.f12834c = f15573a;
        cgiVar.i = new qs();
        this.h = cgiVar;
    }

    public eia(cgi cgiVar) {
        this.i = true;
        this.f15575c = new float[9];
        this.f15574b = new Matrix();
        this.f15579g = new Rect();
        this.h = cgiVar;
        this.f15576d = k(cgiVar.k, cgiVar.f12834c);
    }

    public static eia j(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            eia eiaVar = new eia();
            ThreadLocal threadLocal = fbs.f16530a;
            eiaVar.l = resources.getDrawable(i, theme);
            new geb(eiaVar.l.getConstantState());
            return eiaVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            eia eiaVar2 = new eia();
            eiaVar2.inflate(resources, xml, asAttributeSet, theme);
            return eiaVar2;
        } catch (IOException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.l;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f15579g;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f15577e;
        if (colorFilter == null) {
            colorFilter = this.f15576d;
        }
        Matrix matrix = this.f15574b;
        canvas.getMatrix(matrix);
        float[] fArr = this.f15575c;
        matrix.getValues(fArr);
        float abs = Math.abs(fArr[0]);
        float abs2 = Math.abs(fArr[4]);
        float abs3 = Math.abs(fArr[1]);
        float abs4 = Math.abs(fArr[3]);
        if (abs3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || abs4 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int width = (int) (rect.width() * abs);
        int min = Math.min(2048, width);
        int min2 = Math.min(2048, (int) (rect.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && dzm.ap(this) == 1) {
            canvas.translate(rect.width(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        cgi cgiVar = this.h;
        Bitmap bitmap = cgiVar.f12838g;
        if (bitmap == null || min != bitmap.getWidth() || min2 != cgiVar.f12838g.getHeight()) {
            cgiVar.f12838g = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
            cgiVar.f12833b = true;
        }
        if (this.i) {
            cgi cgiVar2 = this.h;
            if (cgiVar2.f12833b || cgiVar2.l != cgiVar2.k || cgiVar2.f12832a != cgiVar2.f12834c || cgiVar2.j != cgiVar2.f12836e || cgiVar2.h != cgiVar2.i.getRootAlpha()) {
                cgi cgiVar3 = this.h;
                cgiVar3.f12838g.eraseColor(0);
                Canvas canvas2 = new Canvas(cgiVar3.f12838g);
                qs qsVar = cgiVar3.i;
                qsVar.q(qsVar.p, qs.f19874a, canvas2, min, min2);
                cgi cgiVar4 = this.h;
                cgiVar4.l = cgiVar4.k;
                cgiVar4.f12832a = cgiVar4.f12834c;
                cgiVar4.h = cgiVar4.i.getRootAlpha();
                cgiVar4.j = cgiVar4.f12836e;
                cgiVar4.f12833b = false;
            }
        } else {
            cgi cgiVar5 = this.h;
            cgiVar5.f12838g.eraseColor(0);
            Canvas canvas3 = new Canvas(cgiVar5.f12838g);
            qs qsVar2 = cgiVar5.i;
            qsVar2.q(qsVar2.p, qs.f19874a, canvas3, min, min2);
        }
        cgi cgiVar6 = this.h;
        if (cgiVar6.i.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (cgiVar6.f12835d == null) {
                Paint paint2 = new Paint();
                cgiVar6.f12835d = paint2;
                paint2.setFilterBitmap(true);
            }
            cgiVar6.f12835d.setAlpha(cgiVar6.i.getRootAlpha());
            cgiVar6.f12835d.setColorFilter(colorFilter);
            paint = cgiVar6.f12835d;
        }
        canvas.drawBitmap(cgiVar6.f12838g, (Rect) null, rect, paint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getAlpha() : this.h.i.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.h.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getColorFilter() : this.f15577e;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.l != null && Build.VERSION.SDK_INT >= 24) {
            return new geb(this.l.getConstantState());
        }
        this.h.f12837f = getChangingConfigurations();
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.h.i.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.h.i.f19875b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int i;
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        cgi cgiVar = this.h;
        cgiVar.i = new qs();
        TypedArray aj = bfc.aj(resources, theme, attributeSet, dyd.t);
        cgi cgiVar2 = this.h;
        qs qsVar = cgiVar2.i;
        int i2 = !bfc.n(xmlPullParser, "tintMode") ? -1 : aj.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i2 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i2 != 5) {
            if (i2 != 9) {
                switch (i2) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        cgiVar2.f12834c = mode;
        ColorStateList colorStateList = null;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
            TypedValue typedValue = new TypedValue();
            aj.getValue(1, typedValue);
            int i3 = typedValue.type;
            if (i3 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i3 < 28 || i3 > 31) {
                Resources resources2 = aj.getResources();
                int resourceId = aj.getResourceId(1, 0);
                ThreadLocal threadLocal = po.f19821a;
                try {
                    colorStateList = po.b(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e2) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e2);
                }
            } else {
                colorStateList = ColorStateList.valueOf(typedValue.data);
            }
        }
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList2 != null) {
            cgiVar2.k = colorStateList2;
        }
        boolean z = cgiVar2.f12836e;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = aj.getBoolean(5, z);
        }
        cgiVar2.f12836e = z;
        float f2 = qsVar.n;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f2 = aj.getFloat(7, f2);
        }
        qsVar.n = f2;
        float f3 = qsVar.f19876c;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f3 = aj.getFloat(8, f3);
        }
        qsVar.f19876c = f3;
        if (qsVar.n <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new XmlPullParserException(aj.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new XmlPullParserException(aj.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        qsVar.f19875b = aj.getDimension(3, qsVar.f19875b);
        float dimension = aj.getDimension(2, qsVar.l);
        qsVar.l = dimension;
        if (qsVar.f19875b <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new XmlPullParserException(aj.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new XmlPullParserException(aj.getPositionDescription() + "<vector> tag requires height > 0");
        }
        float alpha = qsVar.getAlpha();
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
            alpha = aj.getFloat(4, alpha);
        }
        qsVar.setAlpha(alpha);
        String string = aj.getString(0);
        if (string != null) {
            qsVar.k = string;
            qsVar.f19877d.put(string, qsVar);
        }
        aj.recycle();
        cgiVar.f12837f = getChangingConfigurations();
        cgiVar.f12833b = true;
        cgi cgiVar3 = this.h;
        qs qsVar2 = cgiVar3.i;
        ArrayDeque arrayDeque = new ArrayDeque();
        dmv dmvVar = qsVar2.p;
        tl tlVar = qsVar2.f19877d;
        arrayDeque.push(dmvVar);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        for (int i4 = 1; eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != 3); i4 = 1) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                dmv dmvVar2 = (dmv) arrayDeque.peek();
                i = depth;
                if ("path".equals(name)) {
                    atx atxVar = new atx();
                    atxVar.i = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    atxVar.n = 1.0f;
                    atxVar.f10839d = 1.0f;
                    atxVar.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    atxVar.m = 1.0f;
                    atxVar.f10840e = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    Paint.Cap cap = Paint.Cap.BUTT;
                    atxVar.h = cap;
                    Paint.Join join = Paint.Join.MITER;
                    atxVar.k = join;
                    atxVar.f10841f = 4.0f;
                    TypedArray aj2 = bfc.aj(resources, theme, attributeSet, dyd.j);
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                        String string2 = aj2.getString(0);
                        if (string2 != null) {
                            atxVar.f19918b = string2;
                        }
                        String string3 = aj2.getString(2);
                        if (string3 != null) {
                            atxVar.f19917a = dzm.ar(string3);
                        }
                        atxVar.j = bfc.z(aj2, xmlPullParser, theme, "fillColor", 1);
                        float f4 = atxVar.f10839d;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                            f4 = aj2.getFloat(12, f4);
                        }
                        atxVar.f10839d = f4;
                        int i5 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? aj2.getInt(8, -1) : -1;
                        atxVar.h = i5 != 0 ? i5 != 1 ? i5 != 2 ? atxVar.h : Paint.Cap.SQUARE : Paint.Cap.ROUND : cap;
                        int i6 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? aj2.getInt(9, -1) : -1;
                        atxVar.k = i6 != 0 ? i6 != 1 ? i6 != 2 ? atxVar.k : Paint.Join.BEVEL : Paint.Join.ROUND : join;
                        float f5 = atxVar.f10841f;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                            f5 = aj2.getFloat(10, f5);
                        }
                        atxVar.f10841f = f5;
                        atxVar.f10842g = bfc.z(aj2, xmlPullParser, theme, "strokeColor", 3);
                        float f6 = atxVar.n;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                            f6 = aj2.getFloat(11, f6);
                        }
                        atxVar.n = f6;
                        float f7 = atxVar.i;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                            f7 = aj2.getFloat(4, f7);
                        }
                        atxVar.i = f7;
                        float f8 = atxVar.m;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                            f8 = aj2.getFloat(6, f8);
                        }
                        atxVar.m = f8;
                        float f9 = atxVar.f10840e;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                            f9 = aj2.getFloat(7, f9);
                        }
                        atxVar.f10840e = f9;
                        float f10 = atxVar.l;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                            f10 = aj2.getFloat(5, f10);
                        }
                        atxVar.l = f10;
                        int i7 = atxVar.f19919c;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                            i7 = aj2.getInt(13, i7);
                        }
                        atxVar.f19919c = i7;
                    }
                    aj2.recycle();
                    dmvVar2.h.add(atxVar);
                    if (atxVar.getPathName() != null) {
                        tlVar.put(atxVar.getPathName(), atxVar);
                    }
                    cgiVar3.f12837f = cgiVar3.f12837f;
                    z2 = false;
                } else if ("clip-path".equals(name)) {
                    aff affVar = new aff();
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                        TypedArray aj3 = bfc.aj(resources, theme, attributeSet, dyd.l);
                        String string4 = aj3.getString(0);
                        if (string4 != null) {
                            affVar.f19918b = string4;
                        }
                        String string5 = aj3.getString(1);
                        if (string5 != null) {
                            affVar.f19917a = dzm.ar(string5);
                        }
                        affVar.f19919c = !bfc.n(xmlPullParser, "fillType") ? 0 : aj3.getInt(2, 0);
                        aj3.recycle();
                    }
                    dmvVar2.h.add(affVar);
                    if (affVar.getPathName() != null) {
                        tlVar.put(affVar.getPathName(), affVar);
                    }
                    cgiVar3.f12837f = cgiVar3.f12837f;
                } else if ("group".equals(name)) {
                    dmv dmvVar3 = new dmv();
                    TypedArray aj4 = bfc.aj(resources, theme, attributeSet, dyd.x);
                    float f11 = dmvVar3.j;
                    if (bfc.n(xmlPullParser, "rotation")) {
                        f11 = aj4.getFloat(5, f11);
                    }
                    dmvVar3.j = f11;
                    dmvVar3.f14445c = aj4.getFloat(1, dmvVar3.f14445c);
                    dmvVar3.f14446d = aj4.getFloat(2, dmvVar3.f14446d);
                    float f12 = dmvVar3.f14448f;
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                        f12 = aj4.getFloat(3, f12);
                    }
                    dmvVar3.f14448f = f12;
                    float f13 = dmvVar3.k;
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                        f13 = aj4.getFloat(4, f13);
                    }
                    dmvVar3.k = f13;
                    float f14 = dmvVar3.f14443a;
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                        f14 = aj4.getFloat(6, f14);
                    }
                    dmvVar3.f14443a = f14;
                    float f15 = dmvVar3.f14449g;
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                        f15 = aj4.getFloat(7, f15);
                    }
                    dmvVar3.f14449g = f15;
                    String string6 = aj4.getString(0);
                    if (string6 != null) {
                        dmvVar3.f14444b = string6;
                    }
                    dmvVar3.l();
                    aj4.recycle();
                    dmvVar2.h.add(dmvVar3);
                    arrayDeque.push(dmvVar3);
                    if (dmvVar3.getGroupName() != null) {
                        tlVar.put(dmvVar3.getGroupName(), dmvVar3);
                    }
                    cgiVar3.f12837f = cgiVar3.f12837f;
                }
            } else {
                i = depth;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            depth = i;
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
        this.f15576d = k(cgiVar.k, cgiVar.f12834c);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.l;
        return drawable != null ? drawable.isAutoMirrored() : this.h.f12836e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        cgi cgiVar = this.h;
        if (cgiVar == null) {
            return false;
        }
        qs qsVar = cgiVar.i;
        if (qsVar.f19878e == null) {
            qsVar.f19878e = Boolean.valueOf(qsVar.p.o());
        }
        if (qsVar.f19878e.booleanValue()) {
            return true;
        }
        ColorStateList colorStateList = this.h.k;
        return colorStateList != null && colorStateList.isStateful();
    }

    public final PorterDuffColorFilter k(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f15578f && super.mutate() == this) {
            cgi cgiVar = this.h;
            cgi cgiVar2 = new cgi();
            cgiVar2.k = null;
            cgiVar2.f12834c = f15573a;
            if (cgiVar != null) {
                cgiVar2.f12837f = cgiVar.f12837f;
                qs qsVar = new qs(cgiVar.i);
                cgiVar2.i = qsVar;
                if (cgiVar.i.h != null) {
                    qsVar.h = new Paint(cgiVar.i.h);
                }
                if (cgiVar.i.f19879f != null) {
                    cgiVar2.i.f19879f = new Paint(cgiVar.i.f19879f);
                }
                cgiVar2.k = cgiVar.k;
                cgiVar2.f12834c = cgiVar.f12834c;
                cgiVar2.f12836e = cgiVar.f12836e;
            }
            this.h = cgiVar2;
            this.f15578f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.l;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        cgi cgiVar = this.h;
        ColorStateList colorStateList = cgiVar.k;
        if (colorStateList == null || (mode = cgiVar.f12834c) == null) {
            z = false;
        } else {
            this.f15576d = k(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        qs qsVar = cgiVar.i;
        if (qsVar.f19878e == null) {
            qsVar.f19878e = Boolean.valueOf(qsVar.p.o());
        }
        if (qsVar.f19878e.booleanValue()) {
            boolean p = cgiVar.i.p.p(iArr);
            cgiVar.f12833b |= p;
            if (p) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.h.i.getRootAlpha() != i) {
            this.h.i.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.h.f12836e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f15577e = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.l;
        if (drawable != null) {
            dzm.y(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        cgi cgiVar = this.h;
        if (cgiVar.k != colorStateList) {
            cgiVar.k = colorStateList;
            this.f15576d = k(colorStateList, cgiVar.f12834c);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        cgi cgiVar = this.h;
        if (cgiVar.f12834c != mode) {
            cgiVar.f12834c = mode;
            this.f15576d = k(cgiVar.k, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.l;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
