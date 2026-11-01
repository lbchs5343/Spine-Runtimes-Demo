package com.bytedance.pangle.dex;

import com.bytedance.pangle.e.g;
import com.bytedance.pangle.util.FieldUtils;
import dalvik.system.DexFile;
import g.awf;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile int f1351a;

    /* renamed from: b, reason: collision with root package name */
    private static volatile Constructor<?> f1352b;

    /* JADX WARN: Removed duplicated region for block: B:11:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x001f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object a(File file, Object obj) {
        Class<?> cls;
        int i = f1351a;
        Constructor<?> constructor = f1352b;
        if (constructor == null) {
            try {
                cls = Class.forName("dalvik.system.DexPathList$Element");
            } catch (Exception unused) {
            }
            Class<?> cls2 = Boolean.TYPE;
            if (constructor == null) {
                try {
                    constructor = cls.getConstructor(File.class, cls2, File.class, DexFile.class);
                    constructor.setAccessible(true);
                    i = 8;
                } catch (Exception unused2) {
                    constructor = null;
                }
            }
            if (constructor == null) {
                try {
                    constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                    constructor.setAccessible(true);
                    i = 4;
                } catch (Exception unused3) {
                    constructor = null;
                }
            }
            if (constructor == null) {
                try {
                    constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                    constructor.setAccessible(true);
                    i = 2;
                } catch (Exception unused4) {
                    constructor = null;
                }
            }
            if (constructor == null) {
                try {
                    constructor = cls.getConstructor(File.class, cls2, File.class, DexFile.class);
                    constructor.setAccessible(true);
                    i = 1;
                } catch (Exception unused5) {
                    constructor = null;
                }
            }
            f1352b = constructor;
            f1351a = i;
            if (i != 1) {
                if (i == 2 || i == 4) {
                    return a(constructor, file, null, obj);
                }
                if (i != 8) {
                    return null;
                }
            }
            return a(constructor, file, Boolean.FALSE, null, obj);
        }
        cls = null;
        Class<?> cls22 = Boolean.TYPE;
        if (constructor == null) {
        }
        if (constructor == null) {
        }
        if (constructor == null) {
        }
        if (constructor == null) {
        }
        f1352b = constructor;
        f1351a = i;
        if (i != 1) {
        }
        return a(constructor, file, Boolean.FALSE, null, obj);
    }

    private static Object a(Constructor<?> constructor, Object... objArr) {
        try {
            return constructor.newInstance(objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(ClassLoader classLoader, String str, int i) {
        Object obj = FieldUtils.getField(classLoader.getClass(), "pathList").get(classLoader);
        ArrayList arrayList = new ArrayList();
        String[] split = g.a(str, i).split(":");
        String c2 = com.bytedance.pangle.d.c.c(str, i);
        for (String str2 : split) {
            Object native_load_direct_dex = DirectDex.native_load_direct_dex(str2);
            if (native_load_direct_dex == null) {
                StringBuilder o = awf.o(c2);
                o.append(File.separator);
                o.append(com.bytedance.pangle.e.b.a(str2));
                native_load_direct_dex = DexFile.loadDex(str2, o.toString(), 0);
            }
            arrayList.add(a(new File(str2), native_load_direct_dex));
        }
        Object[] array = arrayList.toArray();
        Field field = FieldUtils.getField(obj.getClass(), "dexElements");
        Object[] objArr = (Object[]) field.get(obj);
        Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), objArr.length + array.length);
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        System.arraycopy(array, 0, objArr2, objArr.length, array.length);
        field.set(obj, objArr2);
    }
}
