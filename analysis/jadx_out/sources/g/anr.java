package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* loaded from: classes.dex */
public final class anr extends eyt {

    /* renamed from: a, reason: collision with root package name */
    public static final Constructor f10527a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f10528b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f10529c;

    /* renamed from: d, reason: collision with root package name */
    public static final Class f10530d;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        f10527a = constructor;
        f10530d = cls;
        f10528b = method2;
        f10529c = method;
    }

    public static Typeface e(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) f10530d, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f10529c.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean f(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f10528b.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    @Override // g.eyt
    public final Typeface g(Context context, cgc cgcVar, Resources resources, int i) {
        Object obj;
        int i2;
        MappedByteBuffer mappedByteBuffer;
        FileInputStream fileInputStream;
        try {
            obj = f10527a.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            dy[] dyVarArr = cgcVar.f12816a;
            int length = dyVarArr.length;
            while (i2 < length) {
                dy dyVar = dyVarArr[i2];
                int i3 = dyVar.f15061d;
                File j = gs.j(context);
                if (j != null) {
                    try {
                        if (gs.p(j, resources, i3)) {
                            try {
                                fileInputStream = new FileInputStream(j);
                            } catch (IOException unused2) {
                                mappedByteBuffer = null;
                            }
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                i2 = (mappedByteBuffer == null && f(obj, mappedByteBuffer, dyVar.f15059b, dyVar.f15062e, dyVar.f15063f)) ? i2 + 1 : 0;
                            } finally {
                            }
                        }
                    } finally {
                        j.delete();
                    }
                }
                mappedByteBuffer = null;
                if (mappedByteBuffer == null) {
                }
            }
            return e(obj);
        }
        return null;
    }

    @Override // g.eyt
    public final Typeface h(Context context, gnf[] gnfVarArr, int i) {
        Object obj;
        try {
            obj = f10527a.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            int i2 = 0;
            bcp bcpVar = new bcp(0);
            int length = gnfVarArr.length;
            while (true) {
                if (i2 < length) {
                    gnf gnfVar = gnfVarArr[i2];
                    Uri uri = gnfVar.f18445c;
                    ByteBuffer byteBuffer = (ByteBuffer) bcpVar.get(uri);
                    if (byteBuffer == null) {
                        byteBuffer = gs.ab(context, uri);
                        bcpVar.put(uri, byteBuffer);
                    }
                    if (byteBuffer == null || !f(obj, byteBuffer, gnfVar.f18447e, gnfVar.f18448f, gnfVar.f18443a)) {
                        break;
                    }
                    i2++;
                } else {
                    Typeface e2 = e(obj);
                    if (e2 != null) {
                        return Typeface.create(e2, i);
                    }
                }
            }
        }
        return null;
    }
}
