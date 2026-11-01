package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
public abstract class dtu {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f14793a = true;

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f14794b;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f14794b = concurrentHashMap;
        concurrentHashMap.put("byte", Byte.TYPE);
        concurrentHashMap.put("short", Short.TYPE);
        concurrentHashMap.put("int", Integer.TYPE);
        concurrentHashMap.put("long", Long.TYPE);
        concurrentHashMap.put("float", Float.TYPE);
        concurrentHashMap.put("double", Double.TYPE);
        concurrentHashMap.put("boolean", Boolean.TYPE);
        concurrentHashMap.put("char", Character.TYPE);
        concurrentHashMap.put("[byte", byte[].class);
        concurrentHashMap.put("[short", short[].class);
        concurrentHashMap.put("[int", int[].class);
        concurrentHashMap.put("[long", long[].class);
        concurrentHashMap.put("[float", float[].class);
        concurrentHashMap.put("[double", double[].class);
        concurrentHashMap.put("[boolean", boolean[].class);
        concurrentHashMap.put("[char", char[].class);
        concurrentHashMap.put(HashMap.class.getName(), HashMap.class);
    }

    public static final Double c(Object obj) {
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (!(obj instanceof String)) {
            throw new bfj("can not cast to double, value : " + obj);
        }
        String obj2 = obj.toString();
        if (obj2.length() == 0 || "null".equals(obj2)) {
            return null;
        }
        return Double.valueOf(Double.parseDouble(obj2));
    }

    public static final Object d(Map map, Class cls, mh mhVar) {
        int i = 0;
        try {
            if (cls == StackTraceElement.class) {
                String str = (String) map.get("className");
                String str2 = (String) map.get("methodName");
                String str3 = (String) map.get(TTDownloadField.TT_FILE_NAME);
                Number number = (Number) map.get("lineNumber");
                if (number != null) {
                    i = number.intValue();
                }
                return new StackTraceElement(str, str2, str3, i);
            }
            Object obj = map.get("@type");
            if (obj instanceof String) {
                String str4 = (String) obj;
                Class m = m(str4);
                if (m == null) {
                    throw new ClassNotFoundException(str4 + " not found");
                }
                if (!m.equals(cls)) {
                    return d(map, m, mhVar);
                }
            }
            if (cls.isInterface()) {
                return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, map instanceof cof ? (cof) map : new cof(map));
            }
            if (mhVar == null) {
                mhVar = mh.f19642a;
            }
            cma d2 = mhVar.d(cls);
            dhm dhmVar = d2 instanceof dhm ? (dhm) d2 : null;
            if (dhmVar != null) {
                return dhmVar.i(map, mhVar);
            }
            throw new bfj("can not get javaBeanDeserializer");
        } catch (Exception e2) {
            throw new bfj(e2.getMessage(), (Throwable) e2);
        }
    }

    public static String e(String str) {
        if (str == null || str.length() == 0 || (str.length() > 1 && Character.isUpperCase(str.charAt(1)) && Character.isUpperCase(str.charAt(0)))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0305  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList f(Class cls, int i, ecz eczVar, boolean z) {
        boolean z2;
        String[] strArr;
        String str;
        int i2;
        int i3;
        int i4;
        Object obj;
        String str2;
        char c2;
        Method method;
        String substring;
        String e2;
        btq btqVar;
        Class cls2 = cls;
        ecz eczVar2 = eczVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Field[] declaredFields = cls2.getDeclaredFields();
        Method[] methods = cls2.getMethods();
        int length = methods.length;
        int i5 = 0;
        while (true) {
            btq btqVar2 = null;
            if (i5 >= length) {
                break;
            }
            Method method2 = methods[i5];
            String name = method2.getName();
            if ((method2.getModifiers() & 8) == 0 && !method2.getReturnType().equals(Void.TYPE) && method2.getParameterTypes().length == 0 && method2.getReturnType() != ClassLoader.class && method2.getDeclaringClass() != Object.class && (!name.equals("getMetaClass") || !method2.getReturnType().getName().equals("groovy.lang.MetaClass"))) {
                btq btqVar3 = (btq) method2.getAnnotation(btq.class);
                if (btqVar3 == null) {
                    btqVar3 = v(cls2, method2);
                }
                btq btqVar4 = btqVar3;
                if (btqVar4 == null) {
                    i4 = 0;
                } else if (btqVar4.serialize()) {
                    i4 = btqVar4.ordinal();
                    gar.b(btqVar4.serialzeFeatures());
                    if (btqVar4.name().length() != 0) {
                        String name2 = btqVar4.name();
                        x(cls2, method2, i);
                        i3 = i5;
                        linkedHashMap.put(name2, new bnu(name2, method2, null, cls2, null, i4, btqVar4, null));
                        i5 = i3 + 1;
                        eczVar2 = eczVar;
                    }
                }
                i3 = i5;
                if (name.startsWith("get")) {
                    if (name.length() >= 4 && !name.equals("getClass")) {
                        char charAt = name.charAt(3);
                        if (Character.isUpperCase(charAt)) {
                            e2 = Character.toLowerCase(name.charAt(3)) + name.substring(4);
                        } else if (charAt == '_') {
                            e2 = name.substring(4);
                        } else if (charAt == 'f') {
                            e2 = name.substring(3);
                        } else if (name.length() >= 5 && Character.isUpperCase(name.charAt(4))) {
                            e2 = e(name.substring(3));
                        }
                        if (!l(cls2, eczVar2, e2)) {
                            Field u = u(cls2, e2, declaredFields);
                            if (u != null) {
                                btqVar = (btq) u.getAnnotation(btq.class);
                                if (btqVar != null) {
                                    if (btqVar.serialize()) {
                                        i4 = btqVar.ordinal();
                                        gar.b(btqVar.serialzeFeatures());
                                        if (btqVar.name().length() != 0) {
                                            e2 = btqVar.name();
                                        }
                                    }
                                }
                            } else {
                                btqVar = null;
                            }
                            x(cls2, method2, i);
                            method = method2;
                            obj = btq.class;
                            str2 = name;
                            c2 = '_';
                            linkedHashMap.put(e2, new bnu(e2, method, u, cls2, null, i4, btqVar4, btqVar));
                        }
                    }
                    i5 = i3 + 1;
                    eczVar2 = eczVar;
                } else {
                    obj = btq.class;
                    str2 = name;
                    c2 = '_';
                    method = method2;
                }
                if (str2.startsWith("is") && str2.length() >= 3) {
                    char charAt2 = str2.charAt(2);
                    if (Character.isUpperCase(charAt2)) {
                        substring = Character.toLowerCase(str2.charAt(2)) + str2.substring(3);
                    } else if (charAt2 == c2) {
                        substring = str2.substring(3);
                    } else if (charAt2 == 'f') {
                        substring = str2.substring(2);
                    }
                    Field u2 = u(cls2, substring, declaredFields);
                    if (u2 == null) {
                        u2 = u(cls2, str2, declaredFields);
                    }
                    Field field = u2;
                    if (field != null && (btqVar2 = (btq) field.getAnnotation(obj)) != null) {
                        if (btqVar2.serialize()) {
                            i4 = btqVar2.ordinal();
                            gar.b(btqVar2.serialzeFeatures());
                            if (btqVar2.name().length() != 0) {
                                substring = btqVar2.name();
                            }
                        }
                    }
                    String str3 = substring;
                    x(cls2, field, i);
                    x(cls2, method, i);
                    linkedHashMap.put(str3, new bnu(str3, method, field, cls2, null, i4, btqVar4, btqVar2));
                }
                i5 = i3 + 1;
                eczVar2 = eczVar;
            }
            i3 = i5;
            i5 = i3 + 1;
            eczVar2 = eczVar;
        }
        ArrayList arrayList = new ArrayList(declaredFields.length);
        int length2 = declaredFields.length;
        int i6 = 0;
        while (true) {
            z2 = true;
            if (i6 >= length2) {
                break;
            }
            Field field2 = declaredFields[i6];
            if ((field2.getModifiers() & 8) == 0 && !field2.getName().equals("this$0") && (field2.getModifiers() & 1) != 0) {
                arrayList.add(field2);
            }
            i6++;
        }
        for (Class superclass = cls2.getSuperclass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
            for (Field field3 : superclass.getDeclaredFields()) {
                if ((field3.getModifiers() & 8) == 0 && (field3.getModifiers() & 1) != 0) {
                    arrayList.add(field3);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Field field4 = (Field) it.next();
            btq btqVar5 = (btq) field4.getAnnotation(btq.class);
            String name3 = field4.getName();
            if (btqVar5 == null) {
                str = name3;
                i2 = 0;
            } else if (btqVar5.serialize()) {
                int ordinal = btqVar5.ordinal();
                gar.b(btqVar5.serialzeFeatures());
                if (btqVar5.name().length() != 0) {
                    name3 = btqVar5.name();
                }
                i2 = ordinal;
                str = name3;
            }
            if (!linkedHashMap.containsKey(str)) {
                x(cls2, field4, i);
                linkedHashMap.put(str, new bnu(str, null, field4, cls2, null, i2, null, btqVar5));
            }
            cls2 = cls;
        }
        ArrayList arrayList2 = new ArrayList();
        if (eczVar != null) {
            strArr = eczVar.orders();
            if (strArr != null && strArr.length == linkedHashMap.size()) {
                for (String str4 : strArr) {
                    if (linkedHashMap.containsKey(str4)) {
                    }
                }
                if (z2) {
                    Iterator it2 = linkedHashMap.values().iterator();
                    while (it2.hasNext()) {
                        arrayList2.add((bnu) it2.next());
                    }
                    if (z) {
                        Collections.sort(arrayList2);
                    }
                } else {
                    for (String str5 : strArr) {
                        arrayList2.add((bnu) linkedHashMap.get(str5));
                    }
                }
                return arrayList2;
            }
        } else {
            strArr = null;
        }
        z2 = false;
        if (z2) {
        }
        return arrayList2;
    }

    public static final BigInteger g(Object obj) {
        if (obj instanceof BigInteger) {
            return (BigInteger) obj;
        }
        if ((obj instanceof Float) || (obj instanceof Double)) {
            return BigInteger.valueOf(((Number) obj).longValue());
        }
        String obj2 = obj.toString();
        if (obj2.length() == 0 || "null".equals(obj2)) {
            return null;
        }
        return new BigInteger(obj2);
    }

    public static final Long h(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            try {
                return Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                fzg fzgVar = new fzg(str);
                Calendar calendar = fzgVar.am(false) ? fzgVar.m : null;
                fzgVar.aw();
                if (calendar != null) {
                    return Long.valueOf(calendar.getTimeInMillis());
                }
            }
        }
        throw new bfj("can not cast to long, value : " + obj);
    }

    public static final Boolean i(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof Number) {
            return Boolean.valueOf(((Number) obj).intValue() == 1);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            if ("true".equalsIgnoreCase(str) || "1".equals(str)) {
                return Boolean.TRUE;
            }
            if ("false".equalsIgnoreCase(str) || "0".equals(str)) {
                return Boolean.FALSE;
            }
        }
        throw new bfj("can not cast to int, value : " + obj);
    }

    public static final Object j(Object obj, Class cls, mh mhVar) {
        Calendar calendar;
        int i;
        if (obj == null) {
            return null;
        }
        if (cls == null) {
            throw new IllegalArgumentException("clazz is null");
        }
        if (cls != obj.getClass()) {
            if (!(obj instanceof Map)) {
                if (cls.isArray()) {
                    int i2 = 0;
                    if (obj instanceof Collection) {
                        Collection collection = (Collection) obj;
                        Object newInstance = Array.newInstance(cls.getComponentType(), collection.size());
                        Iterator it = collection.iterator();
                        while (it.hasNext()) {
                            Array.set(newInstance, i2, j(it.next(), cls.getComponentType(), mhVar));
                            i2++;
                        }
                        return newInstance;
                    }
                    if (cls == byte[].class) {
                        if (obj instanceof byte[]) {
                            return (byte[]) obj;
                        }
                        if (!(obj instanceof String)) {
                            throw new bfj("can not cast to int, value : " + obj);
                        }
                        String str = (String) obj;
                        int[] iArr = fzg.f17698b;
                        int length = str.length();
                        if (length == 0) {
                            return new byte[0];
                        }
                        int i3 = length - 1;
                        int i4 = 0;
                        while (i4 < i3 && iArr[str.charAt(i4) & 255] < 0) {
                            i4++;
                        }
                        while (i3 > 0 && iArr[str.charAt(i3) & 255] < 0) {
                            i3--;
                        }
                        int i5 = str.charAt(i3) == '=' ? str.charAt(i3 + (-1)) == '=' ? 2 : 1 : 0;
                        int i6 = (i3 - i4) + 1;
                        if (length > 76) {
                            i = (str.charAt(76) == '\r' ? i6 / 78 : 0) << 1;
                        } else {
                            i = 0;
                        }
                        int i7 = (((i6 - i) * 6) >> 3) - i5;
                        byte[] bArr = new byte[i7];
                        int i8 = (i7 / 3) * 3;
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < i8) {
                            int i11 = i4 + 4;
                            int i12 = (iArr[str.charAt(i4 + 1)] << 12) | (iArr[str.charAt(i4)] << 18) | (iArr[str.charAt(i4 + 2)] << 6) | iArr[str.charAt(i4 + 3)];
                            bArr[i9] = (byte) (i12 >> 16);
                            int i13 = i9 + 2;
                            bArr[i9 + 1] = (byte) (i12 >> 8);
                            i9 += 3;
                            bArr[i13] = (byte) i12;
                            if (i <= 0 || (i10 = i10 + 1) != 19) {
                                i4 = i11;
                            } else {
                                i4 += 6;
                                i10 = 0;
                            }
                        }
                        if (i9 < i7) {
                            int i14 = 0;
                            int i15 = 0;
                            while (i4 <= i3 - i5) {
                                i14 |= iArr[str.charAt(i4)] << (18 - (i15 * 6));
                                i15++;
                                i4++;
                            }
                            int i16 = 16;
                            while (i9 < i7) {
                                bArr[i9] = (byte) (i14 >> i16);
                                i16 -= 8;
                                i9++;
                            }
                        }
                        return bArr;
                    }
                }
                if (!cls.isAssignableFrom(obj.getClass())) {
                    if (cls == Boolean.TYPE || cls == Boolean.class) {
                        return i(obj);
                    }
                    if (cls == Byte.TYPE || cls == Byte.class) {
                        return n(obj);
                    }
                    if (cls == Short.TYPE || cls == Short.class) {
                        return q(obj);
                    }
                    if (cls == Integer.TYPE || cls == Integer.class) {
                        return t(obj);
                    }
                    if (cls == Long.TYPE || cls == Long.class) {
                        return h(obj);
                    }
                    if (cls == Float.TYPE || cls == Float.class) {
                        return r(obj);
                    }
                    if (cls == Double.TYPE || cls == Double.class) {
                        return c(obj);
                    }
                    if (cls == String.class) {
                        return obj.toString();
                    }
                    if (cls == BigDecimal.class) {
                        return w(obj);
                    }
                    if (cls == BigInteger.class) {
                        return g(obj);
                    }
                    if (cls == Date.class) {
                        return y(obj);
                    }
                    if (cls.isEnum()) {
                        try {
                            if (obj instanceof String) {
                                String str2 = (String) obj;
                                if (str2.length() == 0) {
                                    return null;
                                }
                                return Enum.valueOf(cls, str2);
                            }
                            if (obj instanceof Number) {
                                int intValue = ((Number) obj).intValue();
                                Object[] enumConstants = cls.getEnumConstants();
                                if (intValue < enumConstants.length) {
                                    return enumConstants[intValue];
                                }
                            }
                            throw new bfj("can not cast to : ".concat(cls.getName()));
                        } catch (Exception e2) {
                            throw new bfj("can not cast to : ".concat(cls.getName()), (Throwable) e2);
                        }
                    }
                    if (Calendar.class.isAssignableFrom(cls)) {
                        Date y = y(obj);
                        if (cls == Calendar.class) {
                            calendar = Calendar.getInstance(ex.f16310d, ex.f16311e);
                        } else {
                            try {
                                calendar = (Calendar) cls.newInstance();
                            } catch (Exception e3) {
                                throw new bfj("can not cast to : ".concat(cls.getName()), (Throwable) e3);
                            }
                        }
                        calendar.setTime(y);
                        return calendar;
                    }
                    if (obj instanceof String) {
                        String str3 = (String) obj;
                        if (str3.length() == 0 || "null".equals(str3)) {
                            return null;
                        }
                        if (cls == Currency.class) {
                            return Currency.getInstance(str3);
                        }
                    }
                    throw new bfj("can not cast to : ".concat(cls.getName()));
                }
            } else if (cls != Map.class) {
                Map map = (Map) obj;
                if (cls != Object.class || map.containsKey("@type")) {
                    return d(map, cls, mhVar);
                }
            }
        }
        return obj;
    }

    public static boolean k(Type type) {
        Type genericSuperclass;
        if (type instanceof ParameterizedType) {
            return true;
        }
        return (type instanceof Class) && (genericSuperclass = ((Class) type).getGenericSuperclass()) != Object.class && k(genericSuperclass);
    }

    public static boolean l(Class cls, ecz eczVar, String str) {
        if (eczVar != null && eczVar.ignores() != null) {
            for (String str2 : eczVar.ignores()) {
                if (str.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
        }
        Class superclass = cls.getSuperclass();
        return (superclass == Object.class || superclass == null || !l(superclass, (ecz) superclass.getAnnotation(ecz.class), str)) ? false : true;
    }

    public static Class m(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = f14794b;
        Class<?> cls = (Class) concurrentHashMap.get(str);
        if (cls != null) {
            return cls;
        }
        if (str.charAt(0) == '[') {
            return Array.newInstance((Class<?>) m(str.substring(1)), 0).getClass();
        }
        if (str.startsWith("L") && str.endsWith(";")) {
            return m(str.substring(1, str.length() - 1));
        }
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                cls = contextClassLoader.loadClass(str);
                concurrentHashMap.put(str, cls);
                return cls;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            cls = Class.forName(str);
            concurrentHashMap.put(str, cls);
            return cls;
        } catch (Exception e3) {
            e3.printStackTrace();
            return cls;
        }
    }

    public static final Byte n(Object obj) {
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (!(obj instanceof String)) {
            throw new bfj("can not cast to byte, value : " + obj);
        }
        String str = (String) obj;
        if (str.length() == 0 || "null".equals(str)) {
            return null;
        }
        return Byte.valueOf(Byte.parseByte(str));
    }

    public static Type o(Type type) {
        return type instanceof Class ? o(((Class) type).getGenericSuperclass()) : type;
    }

    public static Class p(Type type) {
        return type.getClass() == Class.class ? (Class) type : type instanceof ParameterizedType ? p(((ParameterizedType) type).getRawType()) : type instanceof TypeVariable ? (Class) ((TypeVariable) type).getBounds()[0] : Object.class;
    }

    public static final Short q(Object obj) {
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (!(obj instanceof String)) {
            throw new bfj("can not cast to short, value : " + obj);
        }
        String str = (String) obj;
        if (str.length() == 0 || "null".equals(str)) {
            return null;
        }
        return Short.valueOf(Short.parseShort(str));
    }

    public static final Float r(Object obj) {
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (!(obj instanceof String)) {
            throw new bfj("can not cast to float, value : " + obj);
        }
        String obj2 = obj.toString();
        if (obj2.length() == 0 || "null".equals(obj2)) {
            return null;
        }
        return Float.valueOf(Float.parseFloat(obj2));
    }

    public static final Object s(Object obj, Type type, mh mhVar) {
        if (obj == null) {
            return null;
        }
        if (type instanceof Class) {
            return j(obj, (Class) type, mhVar);
        }
        if (!(type instanceof ParameterizedType)) {
            if (obj instanceof String) {
                String str = (String) obj;
                if (str.length() == 0 || "null".equals(str)) {
                    return null;
                }
            }
            if (type instanceof TypeVariable) {
                return obj;
            }
            throw new bfj("can not cast to : " + type);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type rawType = parameterizedType.getRawType();
        if (rawType == Set.class || rawType == HashSet.class || rawType == TreeSet.class || rawType == List.class || rawType == ArrayList.class) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                Collection hashSet = (rawType == Set.class || rawType == HashSet.class) ? new HashSet() : rawType == TreeSet.class ? new TreeSet() : new ArrayList();
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    hashSet.add(s(it.next(), type2, mhVar));
                }
                return hashSet;
            }
        }
        if (rawType == Map.class || rawType == HashMap.class) {
            Type type3 = parameterizedType.getActualTypeArguments()[0];
            Type type4 = parameterizedType.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                HashMap hashMap = new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    hashMap.put(s(entry.getKey(), type3, mhVar), s(entry.getValue(), type4, mhVar));
                }
                return hashMap;
            }
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.length() == 0 || "null".equals(str2)) {
                return null;
            }
        }
        if (parameterizedType.getActualTypeArguments().length == 1 && (parameterizedType.getActualTypeArguments()[0] instanceof WildcardType)) {
            return s(obj, rawType, mhVar);
        }
        throw new bfj("can not cast to : " + parameterizedType);
    }

    public static final Integer t(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (!(obj instanceof String)) {
            throw new bfj("can not cast to int, value : " + obj);
        }
        String str = (String) obj;
        if (str.length() == 0 || "null".equals(str)) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(str));
    }

    public static Field u(Class cls, String str, Field[] fieldArr) {
        Field z = z(cls, str, fieldArr);
        if (z == null) {
            z = z(cls, tn.x("_", str), fieldArr);
        }
        if (z == null) {
            z = z(cls, tn.x("m_", str), fieldArr);
        }
        if (z != null) {
            return z;
        }
        return z(cls, "m" + str.substring(0, 1).toUpperCase() + str.substring(1), fieldArr);
    }

    public static btq v(Class cls, Method method) {
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Method method2 : cls2.getMethods()) {
                if (method2.getName().equals(method.getName())) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    Class<?>[] parameterTypes2 = method.getParameterTypes();
                    if (parameterTypes.length != parameterTypes2.length) {
                        continue;
                    } else {
                        int i = 0;
                        while (true) {
                            if (i >= parameterTypes.length) {
                                btq btqVar = (btq) method2.getAnnotation(btq.class);
                                if (btqVar != null) {
                                    return btqVar;
                                }
                            } else {
                                if (!parameterTypes[i].equals(parameterTypes2[i])) {
                                    break;
                                }
                                i++;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static final BigDecimal w(Object obj) {
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        if (obj instanceof BigInteger) {
            return new BigDecimal((BigInteger) obj);
        }
        String obj2 = obj.toString();
        if (obj2.length() == 0 || "null".equals(obj2)) {
            return null;
        }
        return new BigDecimal(obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void x(Class cls, Member member, int i) {
        if (member == 0 || !f14793a) {
            return;
        }
        Class superclass = cls.getSuperclass();
        if ((superclass != null && superclass != Object.class) || (member.getModifiers() & 1) == 0 || (i & 1) == 0) {
            try {
                ((AccessibleObject) member).setAccessible(true);
            } catch (AccessControlException unused) {
                f14793a = false;
            }
        }
    }

    public static final Date y(Object obj) {
        if (obj instanceof Calendar) {
            return ((Calendar) obj).getTime();
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        long longValue = obj instanceof Number ? ((Number) obj).longValue() : -1L;
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.indexOf(45) != -1) {
                int length = str.length();
                String str2 = ex.f16308b;
                if (length != str2.length()) {
                    str2 = str.length() == 10 ? "yyyy-MM-dd" : str.length() == 19 ? "yyyy-MM-dd HH:mm:ss" : "yyyy-MM-dd HH:mm:ss.SSS";
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2, ex.f16311e);
                simpleDateFormat.setTimeZone(ex.f16310d);
                try {
                    return simpleDateFormat.parse(str);
                } catch (ParseException unused) {
                    throw new bfj("can not cast to Date, value : ".concat(str));
                }
            }
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            longValue = Long.parseLong(str);
        }
        if (longValue >= 0) {
            return new Date(longValue);
        }
        throw new bfj("can not cast to Date, value : " + obj);
    }

    public static Field z(Class cls, String str, Field[] fieldArr) {
        for (Field field : fieldArr) {
            if (str.equals(field.getName())) {
                return field;
            }
        }
        Class superclass = cls.getSuperclass();
        if (superclass == null || superclass == Object.class) {
            return null;
        }
        return u(superclass, str, superclass.getDeclaredFields());
    }
}
