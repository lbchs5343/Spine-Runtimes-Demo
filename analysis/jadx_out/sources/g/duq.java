package g;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class duq extends fbw {

    /* renamed from: c, reason: collision with root package name */
    public final Method f14856c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f14857d;
    public final Class k;
    public final Method l;
    public final Constructor m;
    public final Method n;
    public final Method o;

    public duq() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            method2 = p(cls2);
            Class<?> cls3 = Integer.TYPE;
            method3 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method4 = cls2.getMethod("freeze", null);
            method5 = cls2.getMethod("abortCreation", null);
            method = b(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e2.getClass().getName()), e2);
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.k = cls;
        this.m = constructor;
        this.f14857d = method2;
        this.f14856c = method3;
        this.l = method4;
        this.n = method5;
        this.o = method;
    }

    public static Method p(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.k, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.o.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method b(Class cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // g.fbw, g.eyt
    public final Typeface g(Context context, cgc cgcVar, Resources resources, int i) {
        Object obj;
        if (this.f14857d == null) {
            return super.g(context, cgcVar, resources, i);
        }
        try {
            obj = this.m.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            dy[] dyVarArr = cgcVar.f12816a;
            int length = dyVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    dy dyVar = dyVarArr[i2];
                    Context context2 = context;
                    if (r(context2, obj, dyVar.f15060c, dyVar.f15059b, dyVar.f15062e, dyVar.f15063f ? 1 : 0, FontVariationAxis.fromFontVariationSettings(dyVar.f15058a))) {
                        i2++;
                        context = context2;
                    } else {
                        try {
                            this.n.invoke(obj, null);
                            break;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                } else if (s(obj)) {
                    return a(obj);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0099 A[SYNTHETIC] */
    @Override // g.fbw, g.eyt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Typeface h(Context context, gnf[] gnfVarArr, int i) {
        Object obj;
        Typeface a2;
        boolean z;
        if (gnfVarArr.length >= 1) {
            try {
                if (this.f14857d != null) {
                    HashMap hashMap = new HashMap();
                    for (gnf gnfVar : gnfVarArr) {
                        if (gnfVar.f18446d == 0) {
                            Uri uri = gnfVar.f18445c;
                            if (!hashMap.containsKey(uri)) {
                                hashMap.put(uri, gs.ab(context, uri));
                            }
                        }
                    }
                    Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
                    try {
                        obj = this.m.newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        obj = null;
                    }
                    if (obj != null) {
                        int length = gnfVarArr.length;
                        int i2 = 0;
                        boolean z2 = false;
                        while (true) {
                            Method method = this.n;
                            if (i2 < length) {
                                gnf gnfVar2 = gnfVarArr[i2];
                                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(gnfVar2.f18445c);
                                if (byteBuffer != null) {
                                    try {
                                        try {
                                            z = ((Boolean) this.f14856c.invoke(obj, byteBuffer, Integer.valueOf(gnfVar2.f18447e), null, Integer.valueOf(gnfVar2.f18448f), Integer.valueOf(gnfVar2.f18443a ? 1 : 0))).booleanValue();
                                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                                            z = false;
                                            if (z) {
                                            }
                                        }
                                    } catch (IllegalAccessException | InvocationTargetException unused3) {
                                    }
                                    if (z) {
                                        method.invoke(obj, null);
                                        break;
                                    }
                                    z2 = true;
                                }
                                i2++;
                            } else if (!z2) {
                                method.invoke(obj, null);
                            } else if (s(obj) && (a2 = a(obj)) != null) {
                                return Typeface.create(a2, i);
                            }
                        }
                    }
                } else {
                    gnf by = by(gnfVarArr, i);
                    ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(by.f18445c, "r", null);
                    if (openFileDescriptor != null) {
                        try {
                            Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(by.f18448f).setItalic(by.f18443a).build();
                            openFileDescriptor.close();
                            return build;
                        } finally {
                        }
                    } else if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                        return null;
                    }
                }
            } catch (IOException | IllegalAccessException | InvocationTargetException unused4) {
            }
        }
        return null;
    }

    @Override // g.eyt
    public final Typeface q(Context context, Resources resources, int i, String str, int i2) {
        Object obj;
        if (this.f14857d == null) {
            return super.q(context, resources, i, str, i2);
        }
        try {
            obj = this.m.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            if (!r(context, obj, str, 0, -1, -1, null)) {
                try {
                    this.n.invoke(obj, null);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            } else if (s(obj)) {
                return a(obj);
            }
        }
        return null;
    }

    public final boolean r(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f14857d.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean s(Object obj) {
        try {
            return ((Boolean) this.l.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }
}
