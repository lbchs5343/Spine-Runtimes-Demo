package g;

import android.graphics.drawable.Drawable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class cfj {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f12782a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f12783b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f12784c;

    /* renamed from: d, reason: collision with root package name */
    public static final Field f12785d;

    /* renamed from: e, reason: collision with root package name */
    public static final Method f12786e;

    /* renamed from: f, reason: collision with root package name */
    public static final Field f12787f;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    static {
        Method method;
        Field field;
        Field field2;
        Field field3;
        Field field4;
        boolean z;
        Class<?> cls;
        try {
            cls = Class.forName("android.graphics.Insets");
            method = Drawable.class.getMethod("getOpticalInsets", null);
            try {
                field = cls.getField("left");
            } catch (ClassNotFoundException unused) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z = false;
                if (z) {
                }
            } catch (NoSuchFieldException unused2) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z = false;
                if (z) {
                }
            } catch (NoSuchMethodException unused3) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z = false;
                if (z) {
                }
            }
        } catch (ClassNotFoundException unused4) {
            method = null;
            field = null;
        } catch (NoSuchFieldException unused5) {
            method = null;
            field = null;
        } catch (NoSuchMethodException unused6) {
            method = null;
            field = null;
        }
        try {
            field2 = cls.getField("top");
            try {
                field3 = cls.getField("right");
            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused7) {
                field3 = null;
            }
            try {
                field4 = cls.getField("bottom");
                z = true;
            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused8) {
                field4 = null;
                z = false;
                if (z) {
                }
            }
        } catch (ClassNotFoundException unused9) {
            field2 = null;
            field3 = field2;
            field4 = null;
            z = false;
            if (z) {
            }
        } catch (NoSuchFieldException unused10) {
            field2 = null;
            field3 = field2;
            field4 = null;
            z = false;
            if (z) {
            }
        } catch (NoSuchMethodException unused11) {
            field2 = null;
            field3 = field2;
            field4 = null;
            z = false;
            if (z) {
            }
        }
        if (z) {
            f12786e = null;
            f12787f = null;
            f12782a = null;
            f12783b = null;
            f12785d = null;
            f12784c = false;
            return;
        }
        f12786e = method;
        f12787f = field;
        f12782a = field2;
        f12783b = field3;
        f12785d = field4;
        f12784c = true;
    }
}
