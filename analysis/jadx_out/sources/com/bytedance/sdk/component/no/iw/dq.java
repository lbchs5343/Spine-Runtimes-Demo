package com.bytedance.sdk.component.no.iw;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends d {
    private dq() {
    }

    public static dq dq() {
        if (d.dq != null) {
            return d.dq;
        }
        synchronized (dq.class) {
            try {
                if (d.dq != null) {
                    return d.dq;
                }
                dq dqVar = new dq();
                d.dq = dqVar;
                return dqVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void dq(Object obj, Map<String, Object> map, Class<?> cls) {
        com.bytedance.sdk.component.no.d.dq dqVar;
        for (Field field : dq(cls)) {
            if (field != null && field.isAnnotationPresent(com.bytedance.sdk.component.no.d.dq.class) && (dqVar = (com.bytedance.sdk.component.no.d.dq) field.getAnnotation(com.bytedance.sdk.component.no.d.dq.class)) != null) {
                field.setAccessible(true);
                String dq = dqVar.dq();
                if (TextUtils.isEmpty(dq)) {
                    dq = com.bytedance.sdk.component.no.ia.dq.dq(field.getName(), true);
                }
                if (!TextUtils.isEmpty(dq)) {
                    com.bytedance.sdk.component.no.s.dq.d.dq(obj, map, field, dq);
                }
            }
        }
    }

    public static Field[] dq(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null && cls != Object.class) {
            arrayList.addAll(new ArrayList(Arrays.asList(cls.getDeclaredFields())));
            cls = cls.getSuperclass();
        }
        return (Field[]) arrayList.toArray(new Field[arrayList.size()]);
    }

    public com.bytedance.sdk.component.no.dq.dq.dq dq(com.bytedance.sdk.component.no.dq.dq.dq dqVar) {
        try {
            Class<?> cls = dqVar.getClass();
            if (cls.isAnnotationPresent(com.bytedance.sdk.component.no.d.d.class) && !"SINGLETON".equals(((com.bytedance.sdk.component.no.d.d) cls.getAnnotation(com.bytedance.sdk.component.no.d.d.class)).dq())) {
                return (com.bytedance.sdk.component.no.dq.dq.dq) cls.newInstance();
            }
            return dqVar;
        } catch (Throwable unused) {
            return dqVar;
        }
    }

    public void dq(Object obj, Map<String, Object> map) {
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isAnnotationPresent(com.bytedance.sdk.component.no.d.d.class)) {
            dq(obj, map, cls);
        }
    }
}
