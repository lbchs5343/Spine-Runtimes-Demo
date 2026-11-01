package com.bytedance.sdk.component.no.s.dq;

import com.bytedance.sdk.component.no.s.dq.dq.ia;
import com.bytedance.sdk.component.no.s.dq.dq.iw;
import com.bytedance.sdk.component.no.s.dq.dq.mn;
import com.bytedance.sdk.component.no.s.dq.dq.ox;
import com.bytedance.sdk.component.no.s.dq.dq.p;
import com.bytedance.sdk.component.no.s.dq.dq.s;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class d {
    private static final Map<Class, dq> dq;

    static {
        HashMap hashMap = new HashMap();
        dq = hashMap;
        iw iwVar = new iw();
        ia iaVar = new ia();
        mn mnVar = new mn();
        com.bytedance.sdk.component.no.s.dq.dq.d dVar = new com.bytedance.sdk.component.no.s.dq.dq.d();
        p pVar = new p();
        s sVar = new s();
        com.bytedance.sdk.component.no.s.dq.dq.dq dqVar = new com.bytedance.sdk.component.no.s.dq.dq.dq();
        ox oxVar = new ox();
        hashMap.put(Integer.class, iwVar);
        hashMap.put(Integer.TYPE, iwVar);
        hashMap.put(Short.class, iaVar);
        hashMap.put(Short.TYPE, iaVar);
        hashMap.put(Long.class, mnVar);
        hashMap.put(Long.TYPE, mnVar);
        hashMap.put(Byte.class, dVar);
        hashMap.put(Byte.TYPE, dVar);
        hashMap.put(Double.class, pVar);
        hashMap.put(Double.TYPE, pVar);
        hashMap.put(Float.class, sVar);
        hashMap.put(Float.TYPE, sVar);
        hashMap.put(Boolean.class, dqVar);
        hashMap.put(Boolean.TYPE, dqVar);
        hashMap.put(Character.class, oxVar);
        hashMap.put(Character.TYPE, oxVar);
    }

    public static Object dq(Class cls, Object obj) {
        dq dqVar = dq.get(cls);
        return dqVar == null ? obj : dqVar.dq(cls, String.valueOf(obj));
    }

    public static void dq(Object obj, Field field, Object obj2) {
        Object dq2;
        if (field == null || obj2 == null) {
            return;
        }
        Class<?> type = field.getType();
        try {
            dq2 = type.getConstructor(null).newInstance(obj2);
        } catch (Throwable unused) {
            dq2 = dq(type, obj2);
        }
        try {
            field.setAccessible(true);
            field.set(obj, dq2);
        } catch (Throwable unused2) {
        }
    }

    public static void dq(Object obj, Map<String, Object> map, Field field, String str) {
        Object obj2;
        if (field == null || (obj2 = map.get(str)) == null) {
            return;
        }
        field.setAccessible(true);
        try {
            field.set(obj, obj2);
        } catch (Throwable unused) {
            dq(obj, field, obj2);
        }
    }
}
