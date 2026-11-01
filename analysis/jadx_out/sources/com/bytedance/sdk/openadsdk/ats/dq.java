package com.bytedance.sdk.openadsdk.ats;

import android.util.Pair;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.core.ir.kk;
import com.bytedance.sdk.openadsdk.core.wp.s;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
final class dq {
    private static volatile dq ox;
    private ox ia;
    private final Map<Object, Object> iw;
    private final Map<Class, SparseArray<Method>> mn;
    private final Map<String, Object> p;
    private final Map<Object, Object> s;
    static final Map<String, Pair<Class, Boolean>> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    static final Map<Class, Pair<Class, Method>> f2422d = new HashMap();

    private dq() {
        d(com.bytedance.sdk.component.iw.ox.d.class);
        d(s.class);
        d(kk.class);
        d(com.bytedance.sdk.openadsdk.core.gh.ox.class);
        ox(com.bytedance.sdk.openadsdk.ia.dq.class);
        this.p = new HashMap();
        this.s = new WeakHashMap();
        this.iw = new WeakHashMap();
        this.mn = new HashMap();
    }

    private InvocationHandler d(final Object obj, final Class cls) {
        return new InvocationHandler() { // from class: com.bytedance.sdk.openadsdk.ats.dq.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj2, Method method, Object[] objArr) {
                Method method2;
                try {
                    method2 = method;
                } catch (Throwable unused) {
                    method2 = method;
                }
                try {
                    return dq.this.dq(obj, obj2, method2, objArr, cls);
                } catch (Throwable unused2) {
                    if (dq.this.ia == null) {
                        return null;
                    }
                    ox unused3 = dq.this.ia;
                    obj.getClass();
                    method2.getName();
                    return null;
                }
            }
        };
    }

    private static void d(Class cls) {
        String[] value;
        ATS ats = (ATS) cls.getAnnotation(ATS.class);
        if (ats == null || (value = ats.value()) == null) {
            return;
        }
        ats.single();
        for (String str : value) {
            dq.put(str, new Pair<>(cls, Boolean.valueOf(ats.single())));
        }
    }

    public static dq dq() {
        if (ox == null) {
            synchronized (dq.class) {
                try {
                    if (ox == null) {
                        ox = new dq();
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    private <T> T dq(Class<T> cls, Class<T> cls2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        T t = (T) p(cls2);
        if (t != null) {
            return t;
        }
        T t2 = (T) p(cls);
        if (t2 != null) {
            return t2;
        }
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            if (constructor.getAnnotation(ATSMethod.class) != null) {
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                Object[] objArr = new Object[parameterTypes.length];
                for (int i = 0; i < parameterTypes.length; i++) {
                    objArr[i] = p(parameterTypes[i]);
                }
                return (T) constructor.newInstance(objArr);
            }
        }
        return cls.newInstance();
    }

    private Object dq(Object obj, Class cls) {
        Object obj2 = this.iw.get(obj);
        if (obj2 != null) {
            return obj2;
        }
        Object newProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, d(obj, cls));
        this.iw.put(obj, newProxyInstance);
        return newProxyInstance;
    }

    private Object dq(Object obj, Object obj2, Method method, Object[] objArr) {
        String name = method.getName();
        if (objArr != null && objArr.length != 0) {
            return null;
        }
        if (name.equals("toString")) {
            return obj.toString();
        }
        if (name.equals(TTDownloadField.TT_HASHCODE)) {
            return Integer.valueOf(obj.hashCode());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object dq(Object obj, Object obj2, Method method, Object[] objArr, Class cls) throws Throwable {
        Annotation dq2 = d.dq(cls, method);
        if (dq2 == null) {
            Object dq3 = dq(obj, obj2, method, objArr);
            if (dq3 == null && this.ia != null) {
                obj.getClass();
                method.getName();
                method.getName();
            }
            return dq3;
        }
        Method dq4 = dq(obj, ((Integer) d.dq(dq2)).intValue());
        if (dq4 == null) {
            if (this.ia == null) {
                return null;
            }
            obj.getClass();
            method.getName();
            method.getName();
            return null;
        }
        Class<?>[] parameterTypes = dq4.getParameterTypes();
        if (parameterTypes != null) {
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = ox(objArr[i], parameterTypes[i]);
            }
        }
        Object invoke = dq4.invoke(obj, objArr);
        if (invoke != obj) {
            return p(invoke, method.getReturnType());
        }
        Object obj3 = this.s.get(invoke);
        if (obj3 != null) {
            return obj3;
        }
        Object p = p(invoke, method.getReturnType());
        this.s.put(invoke, p);
        return p;
    }

    private Object dq(String str, Pair<Class, Boolean> pair, Class cls) {
        try {
            if (!((Boolean) pair.second).booleanValue()) {
                return dq((Class) pair.first, cls);
            }
            Object obj = this.p.get(str);
            if (obj != null) {
                return obj;
            }
            try {
                synchronized (this.p) {
                    try {
                        obj = this.p.get(str);
                        if (obj == null) {
                            obj = dq((Class<Object>) pair.first, (Class<Object>) cls);
                            this.p.put(str, obj);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return obj;
            } catch (Throwable unused) {
                return obj;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private Method dq(Class<?> cls, SparseArray<Method> sparseArray, int i) {
        Method method;
        Integer num;
        Method[] methods = cls.getMethods();
        Method method2 = null;
        if (methods == null) {
            return null;
        }
        System.currentTimeMillis();
        if (cls.getClassLoader() == ATSMethod.class.getClassLoader()) {
            method = dq(methods, sparseArray, i);
        } else {
            Class ox2 = d.ox(cls);
            if (ox2 == null) {
                return null;
            }
            for (Method method3 : methods) {
                Annotation annotation = method3.getAnnotation(ox2);
                if (annotation != null && (num = (Integer) d.dq(annotation)) != null) {
                    if (num.intValue() == i) {
                        method2 = method3;
                    }
                    sparseArray.put(num.intValue(), method3);
                }
            }
            method = method2;
        }
        System.currentTimeMillis();
        return method;
    }

    private Method dq(Object obj, int i) {
        Method method;
        Class<?> cls = obj.getClass();
        SparseArray<Method> sparseArray = this.mn.get(cls);
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.mn.put(cls, sparseArray);
            method = null;
        } else {
            method = sparseArray.get(i);
        }
        return method == null ? dq(cls, sparseArray, i) : method;
    }

    private Method dq(Method[] methodArr, SparseArray<Method> sparseArray, int i) {
        Method method = null;
        for (Method method2 : methodArr) {
            ATSMethod aTSMethod = (ATSMethod) method2.getAnnotation(ATSMethod.class);
            if (aTSMethod != null) {
                if (aTSMethod.value() == i) {
                    method = method2;
                }
                sparseArray.put(aTSMethod.value(), method2);
            }
        }
        return method;
    }

    private Object ox(Object obj, Class<?> cls) {
        if (obj == null || cls == Void.class) {
            return null;
        }
        return d.d(cls) == null ? obj : dq(obj, cls);
    }

    private static void ox(Class cls) {
        for (Method method : cls.getMethods()) {
            if (((ATSMethod) method.getAnnotation(ATSMethod.class)) != null) {
                f2422d.put(method.getReturnType(), new Pair<>(cls, method));
            }
        }
    }

    private <T> T p(Class<T> cls) throws InvocationTargetException, IllegalAccessException {
        Object[] objArr;
        Pair<Class, Method> pair = f2422d.get(cls);
        Object obj = null;
        if (pair == null) {
            return null;
        }
        Method method = (Method) pair.second;
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null || parameterTypes.length <= 0) {
            objArr = null;
        } else {
            objArr = new Object[parameterTypes.length];
            for (int i = 0; i < parameterTypes.length; i++) {
                objArr[i] = p(parameterTypes[i]);
            }
        }
        if (!Modifier.isStatic(method.getModifiers())) {
            try {
                obj = ((Class) pair.first).newInstance();
            } catch (Throwable unused) {
                if (this.ia != null) {
                    cls.getClass();
                }
                return null;
            }
        }
        return (T) method.invoke(obj, objArr);
    }

    private Object p(Object obj, Class<?> cls) {
        if (obj == null || cls == Void.class) {
            return null;
        }
        return d.d(cls) == null ? obj : dq(obj, cls);
    }

    public <T> T dq(Class<T> cls) {
        if (cls == null) {
            if (this.ia != null) {
                new RuntimeException("null api");
            }
            return null;
        }
        String dq2 = d.dq(cls);
        if (dq2 == null || dq2 == "null") {
            if (this.ia != null) {
                new RuntimeException("not decorate by ATSApi");
            }
            return null;
        }
        Pair<Class, Boolean> pair = dq.get(dq2);
        if (pair == null) {
            if (this.ia != null) {
                new RuntimeException("clazz not register");
            }
            return null;
        }
        T t = (T) dq(dq2, pair, cls);
        if (t == null) {
            return null;
        }
        return t.getClass().getClassLoader() == cls.getClassLoader() ? t : (T) dq(t, cls);
    }
}
