package ms.bz.bd.c.Pgl;

import android.app.Activity;
import android.content.Context;
import android.util.ArrayMap;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class h1 {

    /* renamed from: a, reason: collision with root package name */
    public static volatile int f21156a = -1;

    /* renamed from: b, reason: collision with root package name */
    public static volatile String f21157b = "";

    public static String c(Context context) {
        try {
            if (f21157b == "") {
                f21157b = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            }
        } catch (Throwable unused) {
        }
        return f21157b;
    }

    public static Activity d() {
        ArrayMap arrayMap;
        try {
            Class<?> cls = Class.forName((String) pblk.a(16777217, 0, 0L, "c72f9f", new byte[]{115, 59, 69, 0, 9, 120, 100, 88, 98, 38, 98, 123, 96, 17, 18, 120, 118, 31, 119, 47, 70, 61, 83, 23, 7, 117}));
            Object invoke = cls.getMethod((String) pblk.a(16777217, 0, 0L, "3d6a05", new byte[]{33, 115, 87, 7, 10, 44, 36, 100, 100, 37, 43, 112, 76, 1, 22, 22, 56, 87, 98, 48, 38}), null).invoke(null, null);
            Field declaredField = cls.getDeclaredField((String) pblk.a(16777217, 0, 0L, "38f688", new byte[]{47, 27, 22, 86, 14, 57, 57, 13, 62, 99, 49}));
            declaredField.setAccessible(true);
            arrayMap = (ArrayMap) declaredField.get(invoke);
        } catch (Exception unused) {
            pblk.a(16777217, 0, 0L, "bda4f4", new byte[]{114, 111, 45, 71});
        }
        if (arrayMap.size() <= 0) {
            return null;
        }
        for (Object obj : arrayMap.values()) {
            Class<?> cls2 = obj.getClass();
            Field declaredField2 = cls2.getDeclaredField((String) pblk.a(16777217, 0, 0L, "db487b", new byte[]{101, 97, 82, 95, 13, 113}));
            declaredField2.setAccessible(true);
            if (!declaredField2.getBoolean(obj)) {
                Field declaredField3 = cls2.getDeclaredField((String) pblk.a(16777217, 0, 0L, "2f1fc6", new byte[]{34, 103, 86, 27, 74, 40, 37, 94}));
                declaredField3.setAccessible(true);
                return (Activity) declaredField3.get(obj);
            }
        }
        return null;
    }
}
