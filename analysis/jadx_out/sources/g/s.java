package g;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes3.dex */
public final class s implements dsb {

    /* renamed from: a, reason: collision with root package name */
    public final ehe f19943a;

    /* renamed from: b, reason: collision with root package name */
    public final qd f19944b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19945c;

    /* renamed from: d, reason: collision with root package name */
    public final ja f19946d;

    /* renamed from: e, reason: collision with root package name */
    public final fvw f19947e;

    public s(ja jaVar, fvw fvwVar, ehe eheVar, qd qdVar, ArrayList arrayList) {
        this.f19946d = jaVar;
        this.f19947e = fvwVar;
        this.f19943a = eheVar;
        this.f19944b = qdVar;
        this.f19945c = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (!gkw.f18328b.a(obj, accessibleObject)) {
            throw new gyr(awf.c(cpe.b(accessibleObject, true), " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    public static void g(Class cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + str + "'; conflict is caused by fields " + cpe.g(field) + " and " + cpe.g(field2) + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("duplicate-fields"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0151  */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final st h(eem eemVar, ri riVar, Class cls, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        Method method;
        ArrayList<String> arrayList;
        String str;
        ri riVar2;
        Class cls2;
        int modifiers;
        esz eszVar;
        eem eemVar2;
        int i;
        Field field;
        bke bkeVar;
        int i2;
        Field field2;
        amt amtVar;
        ArrayList arrayList2;
        if (cls.isInterface()) {
            return st.f20008a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ri riVar3 = riVar;
        boolean z5 = z;
        Class cls3 = cls;
        while (true) {
            Type type = riVar3.f19902b;
            if (cls3 == Object.class) {
                return new st(new ArrayList(linkedHashMap2.values()));
            }
            Field[] declaredFields = cls3.getDeclaredFields();
            boolean z6 = true;
            if (cls3 == cls || declaredFields.length <= 0) {
                z3 = z5;
            } else {
                gjr ak = bfc.ak(this.f19945c);
                if (ak == gjr.BLOCK_ALL) {
                    throw new gyr("ReflectionAccessFilter does not permit using reflection for " + cls3 + " (supertype of " + cls + "). Register a TypeAdapter for this type or adjust the access filter.");
                }
                z3 = ak == gjr.BLOCK_INACCESSIBLE;
            }
            int length = declaredFields.length;
            int i3 = 0;
            while (i3 < length) {
                Field field3 = declaredFields[i3];
                boolean i4 = i(field3, z6);
                boolean i5 = i(field3, false);
                if (i4 || i5) {
                    if (!z2) {
                        z4 = i5;
                        method = null;
                    } else if (Modifier.isStatic(field3.getModifiers())) {
                        method = null;
                        z4 = false;
                    } else {
                        Method _bf = cpe.f13267a._bf(cls3, field3);
                        if (!z3) {
                            cpe.e(_bf);
                        }
                        if (_bf.getAnnotation(dw.class) != null && field3.getAnnotation(dw.class) == null) {
                            throw new gyr(tn.ad("@SerializedName on ", cpe.b(_bf, false), " is not supported"));
                        }
                        z4 = i5;
                        method = _bf;
                    }
                    if (!z3 && method == null) {
                        cpe.e(field3);
                    }
                    Type bp = acr.bp(type, cls3, field3.getGenericType(), new HashMap());
                    dw dwVar = (dw) field3.getAnnotation(dw.class);
                    if (dwVar == null) {
                        arrayList2 = Collections.singletonList(this.f19947e.a(field3));
                    } else {
                        String value = dwVar.value();
                        String[] alternate = dwVar.alternate();
                        if (alternate.length == 0) {
                            arrayList2 = Collections.singletonList(value);
                        } else {
                            ArrayList arrayList3 = new ArrayList(alternate.length + 1);
                            arrayList3.add(value);
                            Collections.addAll(arrayList3, alternate);
                            arrayList = arrayList3;
                            str = (String) arrayList.get(0);
                            riVar2 = new ri(bp);
                            cls2 = riVar2.f19901a;
                            if (cls2 != null) {
                                cls2.isPrimitive();
                            }
                            modifiers = field3.getModifiers();
                            if (Modifier.isStatic(modifiers)) {
                                Modifier.isFinal(modifiers);
                            }
                            eszVar = (esz) field3.getAnnotation(esz.class);
                            if (eszVar == null) {
                                field = field3;
                                i = i3;
                                eemVar2 = eemVar;
                                bkeVar = this.f19944b.d(this.f19946d, eemVar2, riVar2, eszVar, false);
                            } else {
                                eemVar2 = eemVar;
                                i = i3;
                                field = field3;
                                bkeVar = null;
                            }
                            boolean z7 = bkeVar == null;
                            if (bkeVar == null) {
                                bkeVar = eemVar2.n(riVar2);
                            }
                            if (i4 && !z7) {
                                bkeVar = new dpq(riVar2.f19902b, eemVar2, bkeVar);
                            }
                            bke bkeVar2 = bkeVar;
                            i2 = length;
                            amt amtVar2 = new amt(str, field, z3, method, bkeVar2);
                            field2 = field;
                            if (z4) {
                                for (String str2 : arrayList) {
                                    amt amtVar3 = (amt) linkedHashMap.put(str2, amtVar2);
                                    if (amtVar3 != null) {
                                        g(cls, str2, amtVar3.f10496d, field2);
                                        throw null;
                                    }
                                }
                            }
                            if (i4 && (amtVar = (amt) linkedHashMap2.put(str, amtVar2)) != null) {
                                g(cls, str, amtVar.f10496d, field2);
                                throw null;
                            }
                        }
                    }
                    arrayList = arrayList2;
                    str = (String) arrayList.get(0);
                    riVar2 = new ri(bp);
                    cls2 = riVar2.f19901a;
                    if (cls2 != null) {
                    }
                    modifiers = field3.getModifiers();
                    if (Modifier.isStatic(modifiers)) {
                    }
                    eszVar = (esz) field3.getAnnotation(esz.class);
                    if (eszVar == null) {
                    }
                    if (bkeVar == null) {
                    }
                    if (bkeVar == null) {
                    }
                    if (i4) {
                        bkeVar = new dpq(riVar2.f19902b, eemVar2, bkeVar);
                    }
                    bke bkeVar22 = bkeVar;
                    i2 = length;
                    amt amtVar22 = new amt(str, field, z3, method, bkeVar22);
                    field2 = field;
                    if (z4) {
                    }
                    if (i4) {
                        g(cls, str, amtVar.f10496d, field2);
                        throw null;
                    }
                    continue;
                } else {
                    i = i3;
                    i2 = length;
                }
                length = i2;
                i3 = i + 1;
                z6 = true;
            }
            ri riVar4 = new ri(acr.bp(type, cls3, cls3.getGenericSuperclass(), new HashMap()));
            cls3 = riVar4.f19901a;
            riVar3 = riVar4;
            z5 = z3;
        }
    }

    public final boolean i(Field field, boolean z) {
        boolean z2;
        ehe eheVar = this.f19943a;
        eheVar.getClass();
        if ((136 & field.getModifiers()) != 0 || field.isSynthetic() || eheVar.f(field.getType(), z)) {
            z2 = true;
        } else {
            List list = z ? eheVar.f15542d : eheVar.f15540b;
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    throw tn.c(it);
                }
            }
            z2 = false;
        }
        return !z2;
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        Class cls = riVar.f19901a;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        eyt eytVar = cpe.f13267a;
        if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
            return new atb(3);
        }
        gjr ak = bfc.ak(this.f19945c);
        if (ak == gjr.BLOCK_ALL) {
            throw new gyr("ReflectionAccessFilter does not permit using reflection for " + cls + ". Register a TypeAdapter for this type or adjust the access filter.");
        }
        boolean z = ak == gjr.BLOCK_INACCESSIBLE;
        if (cpe.f13267a.j(cls)) {
            return new cwt(cls, h(eemVar, riVar, cls, z, true), z);
        }
        this.f19946d.j(riVar);
        return new ayk(h(eemVar, riVar, cls, z, false));
    }
}
