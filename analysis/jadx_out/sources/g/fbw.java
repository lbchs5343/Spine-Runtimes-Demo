package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class fbw extends eyt {
    public static Constructor bz;
    public static boolean ca;
    public static Method cb;
    public static Method cc;
    public static Class cd;

    public static void ce() {
        Method method;
        Class<?> cls;
        Method method2;
        if (ca) {
            return;
        }
        ca = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        bz = constructor;
        cd = cls;
        cb = method2;
        cc = method;
    }

    public static boolean cf(Object obj, String str, int i, boolean z) {
        ce();
        try {
            try {
                return ((Boolean) cb.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
            } catch (InvocationTargetException e2) {
                e = e2;
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InvocationTargetException e3) {
            e = e3;
        }
    }

    @Override // g.eyt
    public Typeface g(Context context, cgc cgcVar, Resources resources, int i) {
        ce();
        try {
            Object newInstance = bz.newInstance(null);
            for (dy dyVar : cgcVar.f12816a) {
                File j = gs.j(context);
                if (j == null) {
                    return null;
                }
                try {
                    if (!gs.p(j, resources, dyVar.f15061d)) {
                        return null;
                    }
                    if (!cf(newInstance, j.getPath(), dyVar.f15062e, dyVar.f15063f)) {
                        return null;
                    }
                    j.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    j.delete();
                }
            }
            ce();
            try {
                Object newInstance2 = Array.newInstance((Class<?>) cd, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) cc.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // g.eyt
    public Typeface h(Context context, gnf[] gnfVarArr, int i) {
        File file;
        String readlink;
        if (gnfVarArr.length >= 1) {
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(by(gnfVarArr, i).f18445c, "r", null);
                if (openFileDescriptor != null) {
                    try {
                        try {
                            readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
                        } finally {
                        }
                    } catch (ErrnoException unused) {
                    }
                    try {
                        if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                            file = new File(readlink);
                            if (file != null && file.canRead()) {
                                Typeface createFromFile = Typeface.createFromFile(file);
                                openFileDescriptor.close();
                                return createFromFile;
                            }
                            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                            Typeface bx = bx(context, fileInputStream);
                            fileInputStream.close();
                            openFileDescriptor.close();
                            return bx;
                        }
                        Typeface bx2 = bx(context, fileInputStream);
                        fileInputStream.close();
                        openFileDescriptor.close();
                        return bx2;
                    } finally {
                    }
                    file = null;
                    if (file != null) {
                        Typeface createFromFile2 = Typeface.createFromFile(file);
                        openFileDescriptor.close();
                        return createFromFile2;
                    }
                    FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
                } else if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                    return null;
                }
            } catch (IOException unused2) {
            }
        }
        return null;
    }
}
