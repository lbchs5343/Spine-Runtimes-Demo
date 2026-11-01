package g;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class dwv {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f14980a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f14981b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f14982c;

    /* renamed from: d, reason: collision with root package name */
    public static final Method f14983d;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
            f14981b = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f14982c = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f14983d = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f14980a = true;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        }
    }
}
