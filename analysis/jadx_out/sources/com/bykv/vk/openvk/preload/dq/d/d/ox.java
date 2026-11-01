package com.bykv.vk.openvk.preload.dq.d.d;

import com.bykv.vk.openvk.preload.dq.ig;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class ox extends d {
    private static Class dq;

    /* renamed from: d, reason: collision with root package name */
    private final Object f584d = d();
    private final Field ox = ox();

    private static Object d() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            dq = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean d(AccessibleObject accessibleObject) {
        if (this.f584d != null && this.ox != null) {
            try {
                Long l = (Long) dq.getMethod("objectFieldOffset", Field.class).invoke(this.f584d, this.ox);
                l.longValue();
                dq.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f584d, accessibleObject, l, Boolean.TRUE);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Field ox() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.d.d.d
    public final void dq(AccessibleObject accessibleObject) {
        if (d(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e2) {
            throw new ig("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e2);
        }
    }
}
