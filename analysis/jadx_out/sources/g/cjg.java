package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class cjg {

    /* renamed from: b, reason: collision with root package name */
    public bmr f12972b;

    /* renamed from: d, reason: collision with root package name */
    public bmr f12974d;
    public bmr h;
    public bmr j;

    /* renamed from: f, reason: collision with root package name */
    public afo f12976f = new eeu();
    public afo i = new eeu();
    public afo k = new eeu();

    /* renamed from: c, reason: collision with root package name */
    public afo f12973c = new eeu();

    /* renamed from: e, reason: collision with root package name */
    public gjn f12975e = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    /* renamed from: g, reason: collision with root package name */
    public gjn f12977g = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    public gjn l = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    /* renamed from: a, reason: collision with root package name */
    public gjn f12971a = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);

    public cjg() {
        int i = 0;
        this.h = new bmr(i);
        this.j = new bmr(i);
        this.f12972b = new bmr(i);
        this.f12974d = new bmr(i);
    }

    public static bem m(Context context, int i, int i2, ett ettVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i2, true);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(git.o);
        try {
            int i3 = obtainStyledAttributes.getInt(0, 0);
            int i4 = obtainStyledAttributes.getInt(3, i3);
            int i5 = obtainStyledAttributes.getInt(4, i3);
            int i6 = obtainStyledAttributes.getInt(2, i3);
            int i7 = obtainStyledAttributes.getInt(1, i3);
            gjn o = o(obtainStyledAttributes, 5, ettVar);
            gjn o2 = o(obtainStyledAttributes, 8, o);
            gjn o3 = o(obtainStyledAttributes, 9, o);
            gjn o4 = o(obtainStyledAttributes, 7, o);
            gjn o5 = o(obtainStyledAttributes, 6, o);
            bem bemVar = new bem();
            afo n = kj.n(i4);
            bemVar.f11391f = n;
            bem.m(n);
            bemVar.f11390e = o2;
            afo n2 = kj.n(i5);
            bemVar.i = n2;
            bem.m(n2);
            bemVar.f11392g = o3;
            afo n3 = kj.n(i6);
            bemVar.k = n3;
            bem.m(n3);
            bemVar.l = o4;
            afo n4 = kj.n(i7);
            bemVar.f11388c = n4;
            bem.m(n4);
            bemVar.f11386a = o5;
            return bemVar;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static bem n(Context context, AttributeSet attributeSet, int i, int i2) {
        ett ettVar = new ett(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.r, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return m(context, resourceId, resourceId2, ettVar);
    }

    public static gjn o(TypedArray typedArray, int i, gjn gjnVar) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new ett(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new nu(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return gjnVar;
    }

    public final boolean p() {
        return (this.i instanceof eeu) && (this.f12976f instanceof eeu) && (this.k instanceof eeu) && (this.f12973c instanceof eeu);
    }

    public final boolean q(RectF rectF) {
        boolean z = this.f12974d.getClass().equals(bmr.class) && this.j.getClass().equals(bmr.class) && this.h.getClass().equals(bmr.class) && this.f12972b.getClass().equals(bmr.class);
        float b2 = this.f12975e.b(rectF);
        return z && ((this.f12977g.b(rectF) > b2 ? 1 : (this.f12977g.b(rectF) == b2 ? 0 : -1)) == 0 && (this.f12971a.b(rectF) > b2 ? 1 : (this.f12971a.b(rectF) == b2 ? 0 : -1)) == 0 && (this.l.b(rectF) > b2 ? 1 : (this.l.b(rectF) == b2 ? 0 : -1)) == 0) && p();
    }

    public final bem r() {
        bem bemVar = new bem();
        bemVar.f11391f = this.f12976f;
        bemVar.i = this.i;
        bemVar.k = this.k;
        bemVar.f11388c = this.f12973c;
        bemVar.f11390e = this.f12975e;
        bemVar.f11392g = this.f12977g;
        bemVar.l = this.l;
        bemVar.f11386a = this.f12971a;
        bemVar.h = this.h;
        bemVar.j = this.j;
        bemVar.f11387b = this.f12972b;
        bemVar.f11389d = this.f12974d;
        return bemVar;
    }

    public final String toString() {
        return "[" + this.f12975e + ", " + this.f12977g + ", " + this.l + ", " + this.f12971a + "]";
    }
}
