package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class kk implements i {

    /* renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.dq.s f591d;
    private final com.bykv.vk.openvk.preload.dq.d.ox dq;
    private final com.bykv.vk.openvk.preload.dq.d.p ox;
    private final p p;
    private final com.bykv.vk.openvk.preload.dq.d.d.d s = com.bykv.vk.openvk.preload.dq.d.d.d.dq();

    public static abstract class d {
        final String ia;
        final boolean kk;
        final boolean o;

        public d(String str, boolean z, boolean z2) {
            this.ia = str;
            this.kk = z;
            this.o = z2;
        }

        public abstract void dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar, Object obj) throws IOException, IllegalAccessException;

        public abstract void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException, IllegalAccessException;

        public abstract boolean dq(Object obj) throws IOException, IllegalAccessException;
    }

    public static final class dq<T> extends r<T> {

        /* renamed from: d, reason: collision with root package name */
        private final Map<String, d> f593d;
        private final com.bykv.vk.openvk.preload.dq.d.kk<T> dq;

        public dq(com.bykv.vk.openvk.preload.dq.d.kk<T> kkVar, Map<String, d> map) {
            this.dq = kkVar;
            this.f593d = map;
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
            if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                dqVar.no();
                return null;
            }
            T dq = this.dq.dq();
            try {
                dqVar.ox();
                while (dqVar.s()) {
                    d dVar = this.f593d.get(dqVar.ia());
                    if (dVar != null && dVar.o) {
                        dVar.dq(dqVar, dq);
                    }
                    dqVar.jy();
                }
                dqVar.p();
                return dq;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (IllegalStateException e3) {
                throw new cd(e3);
            }
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException {
            if (t == null) {
                oxVar.s();
                return;
            }
            oxVar.ox();
            try {
                for (d dVar : this.f593d.values()) {
                    if (dVar.dq(t)) {
                        oxVar.dq(dVar.ia);
                        dVar.dq(oxVar, t);
                    }
                }
                oxVar.p();
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public kk(com.bykv.vk.openvk.preload.dq.d.ox oxVar, com.bykv.vk.openvk.preload.dq.s sVar, com.bykv.vk.openvk.preload.dq.d.p pVar, p pVar2) {
        this.dq = oxVar;
        this.f591d = sVar;
        this.ox = pVar;
        this.p = pVar2;
    }

    private List<String> dq(Field field) {
        com.bykv.vk.openvk.preload.dq.dq.ox oxVar = (com.bykv.vk.openvk.preload.dq.dq.ox) field.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.ox.class);
        if (oxVar == null) {
            return Collections.singletonList(this.f591d.dq(field));
        }
        String dq2 = oxVar.dq();
        String[] d2 = oxVar.d();
        if (d2.length == 0) {
            return Collections.singletonList(dq2);
        }
        ArrayList arrayList = new ArrayList(d2.length + 1);
        arrayList.add(dq2);
        for (String str : d2) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private Map<String, d> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<?> dqVar, Class<?> cls) {
        Class<?> cls2;
        Field[] fieldArr;
        int i;
        int i2;
        int i3;
        final boolean z;
        kk kkVar = this;
        final com.bykv.vk.openvk.preload.dq.iw iwVar2 = iwVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            Type type = dqVar.f632d;
            Class<?> cls3 = cls;
            com.bykv.vk.openvk.preload.dq.ox.dq<?> dqVar2 = dqVar;
            while (cls3 != Object.class) {
                Field[] declaredFields = cls3.getDeclaredFields();
                int length = declaredFields.length;
                boolean z2 = false;
                int i4 = 0;
                while (i4 < length) {
                    final Field field = declaredFields[i4];
                    boolean dq2 = kkVar.dq(field, true);
                    boolean dq3 = kkVar.dq(field, z2);
                    if (dq2 || dq3) {
                        kkVar.s.dq(field);
                        Type dq4 = com.bykv.vk.openvk.preload.dq.d.d.dq(dqVar2.f632d, cls3, field.getGenericType());
                        List<String> dq5 = kkVar.dq(field);
                        int size = dq5.size();
                        cls2 = cls3;
                        fieldArr = declaredFields;
                        d dVar = null;
                        int i5 = 0;
                        while (i5 < size) {
                            String str = dq5.get(i5);
                            if (i5 != 0) {
                                dq2 = false;
                            }
                            List<String> list = dq5;
                            final com.bykv.vk.openvk.preload.dq.ox.dq<?> dq6 = com.bykv.vk.openvk.preload.dq.ox.dq.dq(dq4);
                            Class<? super Object> cls4 = dq6.dq;
                            if (cls4 == null || !cls4.isPrimitive()) {
                                i3 = size;
                                z = false;
                            } else {
                                i3 = size;
                                z = true;
                            }
                            com.bykv.vk.openvk.preload.dq.dq.d dVar2 = (com.bykv.vk.openvk.preload.dq.dq.d) field.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.d.class);
                            int i6 = length;
                            r<?> dq7 = dVar2 != null ? p.dq(kkVar.dq, iwVar2, dq6, dVar2) : null;
                            int i7 = i4;
                            boolean z3 = dq2;
                            final boolean z4 = dq7 != null;
                            if (dq7 == null) {
                                dq7 = iwVar2.dq((com.bykv.vk.openvk.preload.dq.ox.dq) dq6);
                            }
                            int i8 = i3;
                            final r<?> rVar = dq7;
                            d dVar3 = (d) linkedHashMap.put(str, new d(str, z3, dq3) { // from class: com.bykv.vk.openvk.preload.dq.d.dq.kk.1
                                @Override // com.bykv.vk.openvk.preload.dq.d.dq.kk.d
                                public final void dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar3, Object obj) throws IOException, IllegalAccessException {
                                    Object dq8 = rVar.dq(dqVar3);
                                    if (dq8 == null && z) {
                                        return;
                                    }
                                    field.set(obj, dq8);
                                }

                                @Override // com.bykv.vk.openvk.preload.dq.d.dq.kk.d
                                public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException, IllegalAccessException {
                                    (z4 ? rVar : new mp(iwVar2, rVar, dq6.f632d)).dq(oxVar, field.get(obj));
                                }

                                @Override // com.bykv.vk.openvk.preload.dq.d.dq.kk.d
                                public final boolean dq(Object obj) throws IOException, IllegalAccessException {
                                    return this.kk && field.get(obj) != obj;
                                }
                            });
                            if (dVar == null) {
                                dVar = dVar3;
                            }
                            i5++;
                            kkVar = this;
                            iwVar2 = iwVar;
                            dq2 = z3;
                            i4 = i7;
                            dq5 = list;
                            size = i8;
                            length = i6;
                        }
                        i = length;
                        i2 = i4;
                        if (dVar != null) {
                            throw new IllegalArgumentException(type + " declares multiple JSON fields named " + dVar.ia);
                        }
                    } else {
                        i = length;
                        i2 = i4;
                        cls2 = cls3;
                        fieldArr = declaredFields;
                    }
                    i4 = i2 + 1;
                    kkVar = this;
                    iwVar2 = iwVar;
                    declaredFields = fieldArr;
                    cls3 = cls2;
                    length = i;
                    z2 = false;
                }
                Class<?> cls5 = cls3;
                dqVar2 = com.bykv.vk.openvk.preload.dq.ox.dq.dq(com.bykv.vk.openvk.preload.dq.d.d.dq(dqVar2.f632d, cls5, cls5.getGenericSuperclass()));
                cls3 = dqVar2.dq;
                kkVar = this;
                iwVar2 = iwVar;
            }
        }
        return linkedHashMap;
    }

    private boolean dq(Field field, boolean z) {
        com.bykv.vk.openvk.preload.dq.d.p pVar = this.ox;
        if (pVar.dq(field.getType()) || pVar.dq(z) || (pVar.ox & field.getModifiers()) != 0) {
            return false;
        }
        if ((pVar.f624d != -1.0d && !pVar.dq((com.bykv.vk.openvk.preload.dq.dq.p) field.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.p.class), (com.bykv.vk.openvk.preload.dq.dq.s) field.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.s.class))) || field.isSynthetic()) {
            return false;
        }
        if (pVar.s) {
            com.bykv.vk.openvk.preload.dq.dq.dq dqVar = (com.bykv.vk.openvk.preload.dq.dq.dq) field.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.dq.class);
            if (dqVar == null) {
                return false;
            }
            if (z) {
                if (!dqVar.dq()) {
                    return false;
                }
            } else if (!dqVar.d()) {
                return false;
            }
        }
        if ((!pVar.p && com.bykv.vk.openvk.preload.dq.d.p.ox(field.getType())) || com.bykv.vk.openvk.preload.dq.d.p.d(field.getType())) {
            return false;
        }
        List<com.bykv.vk.openvk.preload.dq.d> list = z ? pVar.iw : pVar.mn;
        if (list.isEmpty()) {
            return true;
        }
        new com.bykv.vk.openvk.preload.dq.ox(field);
        Iterator<com.bykv.vk.openvk.preload.dq.d> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().dq()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bykv.vk.openvk.preload.dq.i
    public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        Class<? super T> cls = dqVar.dq;
        if (Object.class.isAssignableFrom(cls)) {
            return new dq(this.dq.dq(dqVar), dq(iwVar, dqVar, cls));
        }
        return null;
    }
}
