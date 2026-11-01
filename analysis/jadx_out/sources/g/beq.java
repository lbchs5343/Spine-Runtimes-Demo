package g;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class beq implements aas, hcp {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f11396a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map f11397b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f11398c;

    /* renamed from: d, reason: collision with root package name */
    public final Class f11399d;

    static {
        int i = 0;
        List e2 = grj.e(cvw.class, and.class, bto.class, bnk.class, dxv.class, so.class, dzv.class, cyn.class, aha.class, eat.class, eul.class, dar.class, cfk.class, bhq.class, eki.class, bvy.class, gat.class, ezr.class, fcl.class, bqa.class, djp.class, bjw.class, dkl.class);
        ArrayList arrayList = new ArrayList(bkk.a(e2));
        for (Object obj : e2) {
            int i2 = i + 1;
            if (i < 0) {
                grj.m();
                throw null;
            }
            arrayList.add(new ger((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        f11397b = fhj.at(arrayList);
        HashMap hashMap = new HashMap();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        bff.e(values, "<get-values>(...)");
        for (String str : values) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            bff.d(str);
            sb.append(dcv.bn(str));
            sb.append("CompanionObject");
            ger gerVar = new ger(sb.toString(), str.concat(".Companion"));
            hashMap3.put(gerVar.d(), gerVar.a());
        }
        for (Map.Entry entry : f11397b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int intValue = ((Number) entry.getValue()).intValue();
            hashMap3.put(cls.getName(), "kotlin.Function" + intValue);
        }
        f11398c = hashMap3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(fhj.av(hashMap3.size()));
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            Object key = entry2.getKey();
            String str2 = (String) entry2.getValue();
            bff.d(str2);
            linkedHashMap.put(key, dcv.bn(str2));
        }
        f11396a = linkedHashMap;
    }

    public beq(Class cls) {
        bff.p(cls, "jClass");
        this.f11399d = cls;
    }

    @Override // g.hcp
    public final Class e() {
        return this.f11399d;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof beq) && dzm.x(this).equals(dzm.x((aas) obj));
    }

    public final String f() {
        String str;
        Class cls = this.f11399d;
        bff.p(cls, "jClass");
        String str2 = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            boolean isArray = cls.isArray();
            LinkedHashMap linkedHashMap = f11396a;
            if (!isArray) {
                String str3 = (String) linkedHashMap.get(cls.getName());
                return str3 == null ? cls.getSimpleName() : str3;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (str = (String) linkedHashMap.get(componentType.getName())) != null) {
                str2 = str.concat("Array");
            }
            return str2 == null ? "Array" : str2;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return dcv.bv(simpleName, enclosingMethod.getName() + '$');
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor != null) {
            return dcv.bv(simpleName, enclosingConstructor.getName() + '$');
        }
        int bh = dcv.bh(simpleName, '$', 0, 6);
        if (bh == -1) {
            return simpleName;
        }
        String substring = simpleName.substring(bh + 1, simpleName.length());
        bff.e(substring, "substring(...)");
        return substring;
    }

    public final int hashCode() {
        return dzm.x(this).hashCode();
    }

    public final String toString() {
        return this.f11399d + " (Kotlin reflection is not available)";
    }
}
