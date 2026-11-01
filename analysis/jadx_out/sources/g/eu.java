package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class eu extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public int f16159a;

    /* renamed from: b, reason: collision with root package name */
    public View f16160b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f16161c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16162d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16163e;

    /* renamed from: f, reason: collision with root package name */
    public View f16164f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16165g;
    public dip h;
    public final int i;
    public boolean j;
    public int k;
    public boolean l;
    public int m;
    public final int n;
    public int o;

    public eu() {
        super(-2, -2);
        this.l = false;
        this.n = 0;
        this.f16163e = 0;
        this.f16165g = -1;
        this.i = -1;
        this.o = 0;
        this.f16159a = 0;
        this.f16161c = new Rect();
    }

    public eu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        dip dipVar;
        this.l = false;
        this.n = 0;
        this.f16163e = 0;
        this.f16165g = -1;
        this.i = -1;
        this.o = 0;
        this.f16159a = 0;
        this.f16161c = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, duc.f14812b);
        this.n = obtainStyledAttributes.getInteger(0, 0);
        this.i = obtainStyledAttributes.getResourceId(1, -1);
        this.f16163e = obtainStyledAttributes.getInteger(2, 0);
        this.f16165g = obtainStyledAttributes.getInteger(6, -1);
        this.o = obtainStyledAttributes.getInt(5, 0);
        this.f16159a = obtainStyledAttributes.getInt(4, 0);
        boolean hasValue = obtainStyledAttributes.hasValue(3);
        this.l = hasValue;
        if (hasValue) {
            String string = obtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f136a;
            if (TextUtils.isEmpty(string)) {
                dipVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f136a;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f137b;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f138c);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    dipVar = (dip) constructor.newInstance(context, attributeSet);
                } catch (Exception e2) {
                    throw new RuntimeException(tn.x("Could not inflate Behavior subclass ", string), e2);
                }
            }
            this.h = dipVar;
        }
        obtainStyledAttributes.recycle();
        dip dipVar2 = this.h;
        if (dipVar2 != null) {
            dipVar2.cj(this);
        }
    }

    public eu(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.l = false;
        this.n = 0;
        this.f16163e = 0;
        this.f16165g = -1;
        this.i = -1;
        this.o = 0;
        this.f16159a = 0;
        this.f16161c = new Rect();
    }

    public eu(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.l = false;
        this.n = 0;
        this.f16163e = 0;
        this.f16165g = -1;
        this.i = -1;
        this.o = 0;
        this.f16159a = 0;
        this.f16161c = new Rect();
    }

    public eu(eu euVar) {
        super((ViewGroup.MarginLayoutParams) euVar);
        this.l = false;
        this.n = 0;
        this.f16163e = 0;
        this.f16165g = -1;
        this.i = -1;
        this.o = 0;
        this.f16159a = 0;
        this.f16161c = new Rect();
    }

    public final boolean p(int i) {
        if (i == 0) {
            return this.j;
        }
        if (i != 1) {
            return false;
        }
        return this.f16162d;
    }
}
