package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.TypedValue;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public final class bnw {

    /* renamed from: a, reason: collision with root package name */
    public static final RectF f11891a = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f11892b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public TextPaint f11893c;

    /* renamed from: d, reason: collision with root package name */
    public final buq f11894d;
    public final TextView i;
    public final Context k;

    /* renamed from: g, reason: collision with root package name */
    public int f11897g = 0;
    public boolean j = false;
    public float l = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f11895e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f11896f = -1.0f;
    public int[] h = new int[0];
    public boolean m = false;

    public bnw(TextView textView) {
        this.i = textView;
        this.k = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f11894d = new coj();
        } else if (i >= 23) {
            this.f11894d = new aue();
        } else {
            this.f11894d = new buq();
        }
    }

    public static Method n(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = f11892b;
            Method method = (Method) concurrentHashMap.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, null)) != null) {
                method.setAccessible(true);
                concurrentHashMap.put(str, method);
            }
            return method;
        } catch (Exception unused) {
            return null;
        }
    }

    public static int[] o(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public final boolean p() {
        boolean z = this.h.length > 0;
        this.m = z;
        if (z) {
            this.f11897g = 1;
            this.f11895e = r0[0];
            this.f11896f = r0[r1 - 1];
            this.l = -1.0f;
        }
        return z;
    }

    public final boolean q() {
        return t() && this.f11897g != 0;
    }

    public final void r() {
        if (q()) {
            if (this.j) {
                if (this.i.getMeasuredHeight() <= 0 || this.i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f11894d.b(this.i) ? 1048576 : (this.i.getMeasuredWidth() - this.i.getTotalPaddingLeft()) - this.i.getTotalPaddingRight();
                int height = (this.i.getHeight() - this.i.getCompoundPaddingBottom()) - this.i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f11891a;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float v = v(rectF);
                        if (v != this.i.getTextSize()) {
                            s(0, v);
                        }
                    } finally {
                    }
                }
            }
            this.j = true;
        }
    }

    public final void s(int i, float f2) {
        Context context = this.k;
        float applyDimension = TypedValue.applyDimension(i, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.i;
        if (applyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(applyDimension);
            boolean isInLayout = textView.isInLayout();
            if (textView.getLayout() != null) {
                this.j = false;
                try {
                    Method n = n("nullLayouts");
                    if (n != null) {
                        n.invoke(textView, null);
                    }
                } catch (Exception unused) {
                }
                if (isInLayout) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean t() {
        return !(this.i instanceof duo);
    }

    public final void u(float f2, float f3, float f4) {
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.f11897g = 1;
        this.f11895e = f2;
        this.f11896f = f3;
        this.l = f4;
        this.m = false;
    }

    public final int v(RectF rectF) {
        int i;
        CharSequence charSequence;
        StaticLayout staticLayout;
        CharSequence transformation;
        int length = this.h.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i2 = length - 1;
        int i3 = 1;
        int i4 = 0;
        while (i3 <= i2) {
            int i5 = (i3 + i2) / 2;
            int i6 = this.h[i5];
            TextView textView = this.i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            CharSequence charSequence2 = (transformationMethod == null || (transformation = transformationMethod.getTransformation(text, textView)) == null) ? text : transformation;
            int maxLines = textView.getMaxLines();
            TextPaint textPaint = this.f11893c;
            if (textPaint == null) {
                this.f11893c = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f11893c.set(textView.getPaint());
            this.f11893c.setTextSize(i6);
            Object obj = Layout.Alignment.ALIGN_NORMAL;
            try {
                obj = n("getLayoutAlignment").invoke(textView, null);
            } catch (Exception unused) {
            }
            Layout.Alignment alignment = (Layout.Alignment) obj;
            int round = Math.round(rectF.right);
            int i7 = Build.VERSION.SDK_INT;
            TextView textView2 = this.i;
            if (i7 >= 23) {
                staticLayout = dvk.a(charSequence2, alignment, round, maxLines, textView2, this.f11893c, this.f11894d);
                i = maxLines;
                charSequence = charSequence2;
            } else {
                i = maxLines;
                charSequence = charSequence2;
                staticLayout = new StaticLayout(charSequence, this.f11893c, round, alignment, textView2.getLineSpacingMultiplier(), textView2.getLineSpacingExtra(), textView2.getIncludeFontPadding());
            }
            if ((i == -1 || (staticLayout.getLineCount() <= i && staticLayout.getLineEnd(staticLayout.getLineCount() - 1) == charSequence.length())) && staticLayout.getHeight() <= rectF.bottom) {
                int i8 = i5 + 1;
                i4 = i3;
                i3 = i8;
            } else {
                i4 = i5 - 1;
                i2 = i4;
            }
        }
        return this.h[i4];
    }

    public final boolean w() {
        if (t() && this.f11897g == 1) {
            if (!this.m || this.h.length == 0) {
                int floor = ((int) Math.floor((this.f11896f - this.f11895e) / this.l)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round((i * this.l) + this.f11895e);
                }
                this.h = o(iArr);
            }
            this.j = true;
        } else {
            this.j = false;
        }
        return this.j;
    }
}
