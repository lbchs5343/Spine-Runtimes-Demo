package g;

import android.view.View;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class hek {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f19336a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f19337b;

    /* renamed from: c, reason: collision with root package name */
    public static final Field f19338c;

    /* renamed from: d, reason: collision with root package name */
    public static final Field f19339d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f19337b = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f19338c = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f19339d = declaredField3;
            declaredField3.setAccessible(true);
            f19336a = true;
        } catch (ReflectiveOperationException e2) {
            e2.getMessage();
        }
    }
}
