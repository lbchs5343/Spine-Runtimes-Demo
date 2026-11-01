package com.bykv.vk.openvk.preload.dq.d;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public abstract class ig {
    public static void d(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: ".concat(cls.getName()));
        }
        if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: ".concat(cls.getName()));
        }
    }

    public static ig dq() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            return new ig() { // from class: com.bykv.vk.openvk.preload.dq.d.ig.1
                @Override // com.bykv.vk.openvk.preload.dq.d.ig
                public final <T> T dq(Class<T> cls2) throws Exception {
                    ig.d(cls2);
                    return (T) method.invoke(obj, cls2);
                }
            };
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    final int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new ig() { // from class: com.bykv.vk.openvk.preload.dq.d.ig.2
                        @Override // com.bykv.vk.openvk.preload.dq.d.ig
                        public final <T> T dq(Class<T> cls2) throws Exception {
                            ig.d(cls2);
                            return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                        }
                    };
                } catch (Exception unused2) {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new ig() { // from class: com.bykv.vk.openvk.preload.dq.d.ig.3
                        @Override // com.bykv.vk.openvk.preload.dq.d.ig
                        public final <T> T dq(Class<T> cls2) throws Exception {
                            ig.d(cls2);
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                }
            } catch (Exception unused3) {
                return new ig() { // from class: com.bykv.vk.openvk.preload.dq.d.ig.4
                    @Override // com.bykv.vk.openvk.preload.dq.d.ig
                    public final <T> T dq(Class<T> cls2) {
                        throw new UnsupportedOperationException("Cannot allocate ".concat(String.valueOf(cls2)));
                    }
                };
            }
        }
    }

    public abstract <T> T dq(Class<T> cls) throws Exception;
}
