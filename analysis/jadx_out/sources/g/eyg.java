package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.DesugarTimeZone;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Currency;
import java.util.EnumSet;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.UUID;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class eyg implements duf, cma {
    public final /* synthetic */ int k;
    public static final eyg h = new eyg(0);
    public static final eyg i = new eyg(1);

    /* renamed from: c, reason: collision with root package name */
    public static final eyg f16365c = new eyg(2);

    /* renamed from: d, reason: collision with root package name */
    public static final eyg f16366d = new eyg(3);

    /* renamed from: e, reason: collision with root package name */
    public static final eyg f16367e = new eyg(4);
    public static final eyg j = new eyg(5);

    /* renamed from: a, reason: collision with root package name */
    public static final eyg f16364a = new eyg(6);

    /* renamed from: f, reason: collision with root package name */
    public static final eyg f16368f = new eyg(7);

    public /* synthetic */ eyg(int i2) {
        this.k = i2;
    }

    public static Object l(ccw ccwVar, Class cls, grv grvVar) {
        if (grvVar == null) {
            return null;
        }
        int size = grvVar.size();
        Object newInstance = Array.newInstance((Class<?>) cls, size);
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = grvVar.get(i2);
            if (obj == grvVar) {
                Array.set(newInstance, i2, newInstance);
            } else {
                if (!cls.isArray()) {
                    obj = dtu.j(obj, cls, ccwVar.k);
                } else if (!cls.isInstance(obj)) {
                    obj = l(ccwVar, cls, (grv) obj);
                }
                Array.set(newInstance, i2, obj);
            }
        }
        grvVar.l = newInstance;
        grvVar.k = cls;
        return newInstance;
    }

    /* JADX WARN: Finally extract failed */
    @Override // g.duf
    public final void b(cnu cnuVar, Object obj, Object obj2, Type type) {
        aca acaVar;
        switch (this.k) {
            case 0:
                cxa cxaVar = cnuVar.j;
                cbq cbqVar = cnuVar.f13202f;
                Object[] objArr = (Object[]) obj;
                if (obj == null) {
                    if ((cxaVar.k & gar.WriteNullListAsEmpty.mask) != 0) {
                        cxaVar.write("[]");
                        return;
                    } else {
                        cxaVar.o();
                        return;
                    }
                }
                int length = objArr.length;
                int i2 = length - 1;
                if (i2 == -1) {
                    cxaVar.s("[]");
                    return;
                }
                aca acaVar2 = cnuVar.f13198b;
                cnuVar.q(acaVar2, obj, obj2);
                try {
                    cxaVar.write(91);
                    int i3 = 0;
                    if ((cxaVar.k & gar.PrettyFormat.mask) != 0) {
                        cnuVar.i++;
                        cnuVar.p();
                        while (i3 < length) {
                            if (i3 != 0) {
                                cxaVar.write(44);
                                cnuVar.p();
                            }
                            cnuVar.r(objArr[i3]);
                            i3++;
                        }
                        cnuVar.i--;
                        cnuVar.p();
                        cxaVar.write(93);
                    } else {
                        Class<?> cls = null;
                        duf dufVar = null;
                        while (i3 < i2) {
                            Object obj3 = objArr[i3];
                            if (obj3 == null) {
                                cxaVar.s("null,");
                            } else {
                                IdentityHashMap identityHashMap = cnuVar.k;
                                if (identityHashMap == null || !identityHashMap.containsKey(obj3)) {
                                    Class<?> cls2 = obj3.getClass();
                                    if (cls2 == cls) {
                                        dufVar.b(cnuVar, obj3, null, null);
                                    } else {
                                        dufVar = cbqVar.c(cls2);
                                        dufVar.b(cnuVar, obj3, null, null);
                                        cls = cls2;
                                    }
                                } else {
                                    cnuVar.o(obj3);
                                }
                                cxaVar.write(44);
                            }
                            i3++;
                        }
                        Object obj4 = objArr[i2];
                        if (obj4 == null) {
                            cxaVar.s("null]");
                        } else {
                            IdentityHashMap identityHashMap2 = cnuVar.k;
                            if (identityHashMap2 == null || !identityHashMap2.containsKey(obj4)) {
                                try {
                                    cbqVar.c(obj4.getClass()).b(cnuVar, obj4, Integer.valueOf(i2), null);
                                } catch (IOException e2) {
                                    throw new bfj(e2.getMessage(), (Throwable) e2);
                                }
                            } else {
                                cnuVar.o(obj4);
                            }
                            cxaVar.write(93);
                        }
                    }
                    cnuVar.f13198b = acaVar2;
                    return;
                } finally {
                    cnuVar.f13198b = acaVar2;
                }
            case 1:
                cxa cxaVar2 = cnuVar.j;
                if (obj == null) {
                    if ((cxaVar2.k & gar.WriteNullNumberAsZero.mask) != 0) {
                        cxaVar2.write(48);
                        return;
                    } else {
                        cxaVar2.o();
                        return;
                    }
                }
                if (obj instanceof BigInteger) {
                    cxaVar2.write(((BigInteger) obj).toString());
                    return;
                }
                BigDecimal bigDecimal = (BigDecimal) obj;
                cxaVar2.write(bigDecimal.toString());
                if ((cxaVar2.k & gar.WriteClassName.mask) == 0 || type == BigDecimal.class || bigDecimal.scale() != 0) {
                    return;
                }
                cxaVar2.write(46);
                return;
            case 2:
                cxa cxaVar3 = cnuVar.j;
                Boolean bool = (Boolean) obj;
                if (bool == null) {
                    if ((cxaVar3.k & gar.WriteNullBooleanAsFalse.mask) != 0) {
                        cxaVar3.write("false");
                        return;
                    } else {
                        cxaVar3.o();
                        return;
                    }
                }
                if (bool.booleanValue()) {
                    cxaVar3.write("true");
                    return;
                } else {
                    cxaVar3.write("false");
                    return;
                }
            case 3:
                cxa cxaVar4 = cnuVar.j;
                if (obj == null) {
                    if ((cxaVar4.k & gar.WriteNullListAsEmpty.mask) != 0) {
                        cxaVar4.write("[]");
                        return;
                    } else {
                        cxaVar4.o();
                        return;
                    }
                }
                int i4 = cxaVar4.k;
                gar garVar = gar.WriteClassName;
                int i5 = 0;
                Type type2 = ((i4 & garVar.mask) == 0 || !(type instanceof ParameterizedType)) ? null : ((ParameterizedType) type).getActualTypeArguments()[0];
                Collection collection = (Collection) obj;
                acaVar = cnuVar.f13198b;
                cnuVar.q(acaVar, obj, obj2);
                if ((cxaVar4.k & garVar.mask) != 0) {
                    if (HashSet.class == collection.getClass()) {
                        cxaVar4.s("Set");
                    } else if (TreeSet.class == collection.getClass()) {
                        cxaVar4.s("TreeSet");
                    }
                }
                try {
                    cxaVar4.write(91);
                    for (Object obj5 : collection) {
                        int i6 = i5 + 1;
                        if (i5 != 0) {
                            cxaVar4.write(44);
                        }
                        if (obj5 == null) {
                            cxaVar4.o();
                        } else {
                            Class<?> cls3 = obj5.getClass();
                            if (cls3 == Integer.class) {
                                cxaVar4.q(((Integer) obj5).intValue());
                            } else if (cls3 == Long.class) {
                                cxaVar4.w(((Long) obj5).longValue());
                                if ((cxaVar4.k & gar.WriteClassName.mask) != 0) {
                                    cxaVar4.write(76);
                                }
                            } else {
                                cnuVar.f13202f.c(cls3).b(cnuVar, obj5, Integer.valueOf(i5), type2);
                            }
                        }
                        i5 = i6;
                    }
                    cxaVar4.write(93);
                    cnuVar.f13198b = acaVar;
                    return;
                } finally {
                    cnuVar.f13198b = acaVar;
                }
            case 4:
                cxa cxaVar5 = cnuVar.j;
                Number number = (Number) obj;
                if (number == null) {
                    if ((cxaVar5.k & gar.WriteNullNumberAsZero.mask) != 0) {
                        cxaVar5.write(48);
                        return;
                    } else {
                        cxaVar5.o();
                        return;
                    }
                }
                if (obj instanceof Long) {
                    cxaVar5.w(number.longValue());
                } else {
                    cxaVar5.q(number.intValue());
                }
                if ((cxaVar5.k & gar.WriteClassName.mask) != 0) {
                    Class<?> cls4 = number.getClass();
                    if (cls4 == Byte.class) {
                        cxaVar5.write(66);
                        return;
                    }
                    if (cls4 == Short.class) {
                        cxaVar5.write(83);
                        return;
                    }
                    if (cls4 == Long.class) {
                        long longValue = number.longValue();
                        if (longValue > 2147483647L || longValue < -2147483648L || type == Long.class) {
                            return;
                        }
                        cxaVar5.write(76);
                        return;
                    }
                    return;
                }
                return;
            case 5:
                cxa cxaVar6 = cnuVar.j;
                if (obj == null) {
                    if (type == Character.TYPE || type == Character.class) {
                        cnuVar.n("");
                        return;
                    } else if ((cxaVar6.k & gar.WriteNullListAsEmpty.mask) == 0 || !Enumeration.class.isAssignableFrom(dtu.p(type))) {
                        cxaVar6.o();
                        return;
                    } else {
                        cxaVar6.write("[]");
                        return;
                    }
                }
                if (obj instanceof Pattern) {
                    cnuVar.n(((Pattern) obj).pattern());
                    return;
                }
                if (obj instanceof TimeZone) {
                    cnuVar.n(((TimeZone) obj).getID());
                    return;
                }
                if (obj instanceof Currency) {
                    cnuVar.n(((Currency) obj).getCurrencyCode());
                    return;
                }
                if (obj instanceof Class) {
                    cnuVar.n(((Class) obj).getName());
                    return;
                }
                if (obj instanceof Character) {
                    Character ch = (Character) obj;
                    if (ch.charValue() == 0) {
                        cnuVar.n("\u0000");
                        return;
                    } else {
                        cnuVar.n(ch.toString());
                        return;
                    }
                }
                int i7 = 0;
                if (obj instanceof SimpleDateFormat) {
                    String pattern = ((SimpleDateFormat) obj).toPattern();
                    if ((cxaVar6.k & gar.WriteClassName.mask) == 0 || obj.getClass() == type) {
                        cxaVar6.t(pattern);
                        return;
                    }
                    cxaVar6.write(123);
                    cxaVar6.p("@type", false);
                    cnuVar.n(obj.getClass().getName());
                    cxaVar6.write(44);
                    cxaVar6.p("val", false);
                    cxaVar6.t(pattern);
                    cxaVar6.write(125);
                    return;
                }
                if (obj instanceof fpk) {
                    ex exVar = (ex) ((fpk) obj);
                    cxa cxaVar7 = new cxa(ex.f16309c, gar.EMPTY);
                    try {
                        try {
                            new cnu(cxaVar7, cbq.f12606a).r(exVar);
                            cxaVar6.s(cxaVar7.toString());
                            return;
                        } finally {
                            cxaVar7.close();
                        }
                    } catch (IOException e3) {
                        throw new bfj(e3.getMessage(), (Throwable) e3);
                    }
                }
                if (obj instanceof aeu) {
                    cxaVar6.write(((ex) ((aeu) obj)).j());
                    return;
                }
                if (!(obj instanceof Enumeration)) {
                    cnuVar.n(obj.toString());
                    return;
                }
                Type type3 = ((cxaVar6.k & gar.WriteClassName.mask) == 0 || !(type instanceof ParameterizedType)) ? null : ((ParameterizedType) type).getActualTypeArguments()[0];
                Enumeration enumeration = (Enumeration) obj;
                acaVar = cnuVar.f13198b;
                cnuVar.q(acaVar, obj, obj2);
                try {
                    cxaVar6.write(91);
                    while (enumeration.hasMoreElements()) {
                        Object nextElement = enumeration.nextElement();
                        int i8 = i7 + 1;
                        if (i7 != 0) {
                            cxaVar6.write(44);
                        }
                        if (nextElement == null) {
                            cxaVar6.o();
                        } else {
                            cnuVar.f13202f.c(nextElement.getClass()).b(cnuVar, nextElement, Integer.valueOf(i7), type3);
                        }
                        i7 = i8;
                    }
                    cxaVar6.write(93);
                    cnuVar.f13198b = acaVar;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            case 6:
                cxa cxaVar8 = cnuVar.j;
                if (obj == null) {
                    if ((cxaVar8.k & gar.WriteNullNumberAsZero.mask) != 0) {
                        cxaVar8.write(48);
                        return;
                    } else {
                        cxaVar8.o();
                        return;
                    }
                }
                if (obj instanceof Float) {
                    float floatValue = ((Float) obj).floatValue();
                    if (Float.isNaN(floatValue)) {
                        cxaVar8.o();
                        return;
                    }
                    if (Float.isInfinite(floatValue)) {
                        cxaVar8.o();
                        return;
                    }
                    String f2 = Float.toString(floatValue);
                    if (f2.endsWith(".0")) {
                        f2 = f2.substring(0, f2.length() - 2);
                    }
                    cxaVar8.write(f2);
                    if ((cxaVar8.k & gar.WriteClassName.mask) != 0) {
                        cxaVar8.write(70);
                        return;
                    }
                    return;
                }
                double doubleValue = ((Double) obj).doubleValue();
                if (Double.isNaN(doubleValue)) {
                    cxaVar8.o();
                    return;
                }
                if (Double.isInfinite(doubleValue)) {
                    cxaVar8.o();
                    return;
                }
                String d2 = Double.toString(doubleValue);
                if (d2.endsWith(".0")) {
                    d2 = d2.substring(0, d2.length() - 2);
                }
                cxaVar8.s(d2);
                if ((cxaVar8.k & gar.WriteClassName.mask) != 0) {
                    cxaVar8.write(68);
                    return;
                }
                return;
            default:
                String str = (String) obj;
                cxa cxaVar9 = cnuVar.j;
                if (str == null) {
                    cxaVar9.o();
                    return;
                } else {
                    cxaVar9.t(str);
                    return;
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:331:0x04f1  */
    @Override // g.cma
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object g(ccw ccwVar, Type type, Object obj) {
        Collection arrayList;
        Type type2;
        Object valueOf;
        Object x;
        int i2;
        switch (this.k) {
            case 0:
                fzg fzgVar = ccwVar.h;
                int i3 = fzgVar.o;
                if (i3 == 8) {
                    fzgVar.bg(16);
                    return null;
                }
                if (type != char[].class) {
                    if (i3 == 4) {
                        byte[] ao = fzgVar.ao();
                        fzgVar.bg(16);
                        return ao;
                    }
                    Class<?> componentType = ((Class) type).getComponentType();
                    grv grvVar = new grv();
                    ccwVar.aa(componentType, grvVar, obj);
                    return l(ccwVar, componentType, grvVar);
                }
                if (i3 == 4) {
                    String bj = fzgVar.bj();
                    fzgVar.bg(16);
                    return bj.toCharArray();
                }
                if (i3 != 2) {
                    return ex.i(ccwVar.x(null)).toCharArray();
                }
                Number bf = fzgVar.bf();
                fzgVar.bg(16);
                return bf.toString().toCharArray();
            case 1:
                fzg fzgVar2 = ccwVar.h;
                int i4 = fzgVar2.o;
                if (i4 == 2) {
                    String ay = fzgVar2.ay();
                    fzgVar2.bg(16);
                    return type == BigInteger.class ? new BigInteger(ay) : new BigDecimal(ay);
                }
                if (i4 == 3) {
                    BigDecimal bigDecimal = new BigDecimal(fzgVar2.ay());
                    fzgVar2.bg(16);
                    return type == BigInteger.class ? bigDecimal.toBigInteger() : bigDecimal;
                }
                Object x2 = ccwVar.x(null);
                if (x2 == null) {
                    return null;
                }
                return type == BigInteger.class ? dtu.g(x2) : dtu.w(x2);
            case 2:
                fzg fzgVar3 = ccwVar.h;
                int i5 = fzgVar3.o;
                if (i5 == 6) {
                    fzgVar3.bg(16);
                    return Boolean.TRUE;
                }
                if (i5 == 7) {
                    fzgVar3.bg(16);
                    return Boolean.FALSE;
                }
                if (i5 == 2) {
                    int bd = fzgVar3.bd();
                    fzgVar3.bg(16);
                    return bd == 1 ? Boolean.TRUE : Boolean.FALSE;
                }
                Object x3 = ccwVar.x(null);
                if (x3 == null) {
                    return null;
                }
                return dtu.i(x3);
            case 3:
                fzg fzgVar4 = ccwVar.h;
                if (fzgVar4.o == 8) {
                    fzgVar4.bg(16);
                    return null;
                }
                if (type == grv.class) {
                    Collection grvVar2 = new grv();
                    ccwVar.u(grvVar2, null);
                    return grvVar2;
                }
                Type type3 = type;
                while (!(type3 instanceof Class)) {
                    if (!(type3 instanceof ParameterizedType)) {
                        throw new bfj("TODO");
                    }
                    type3 = ((ParameterizedType) type3).getRawType();
                }
                Class cls = (Class) type3;
                Type type4 = Object.class;
                if (cls == AbstractCollection.class || cls == Collection.class) {
                    arrayList = new ArrayList();
                } else if (cls.isAssignableFrom(HashSet.class)) {
                    arrayList = new HashSet();
                } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
                    arrayList = new LinkedHashSet();
                } else if (cls.isAssignableFrom(TreeSet.class)) {
                    arrayList = new TreeSet();
                } else if (cls.isAssignableFrom(ArrayList.class)) {
                    arrayList = new ArrayList();
                } else if (cls.isAssignableFrom(EnumSet.class)) {
                    arrayList = EnumSet.noneOf((Class) (type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : type4));
                } else {
                    try {
                        arrayList = (Collection) cls.newInstance();
                    } catch (Exception unused) {
                        throw new bfj("create instane error, class ".concat(cls.getName()));
                    }
                }
                if (type instanceof ParameterizedType) {
                    type4 = ((ParameterizedType) type).getActualTypeArguments()[0];
                } else {
                    if (type instanceof Class) {
                        Class cls2 = (Class) type;
                        if (!cls2.getName().startsWith("java.")) {
                            Type genericSuperclass = cls2.getGenericSuperclass();
                            if (genericSuperclass instanceof ParameterizedType) {
                                type2 = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
                                if (type2 != null) {
                                    type4 = type2;
                                }
                            }
                        }
                    }
                    type2 = null;
                    if (type2 != null) {
                    }
                }
                ccwVar.aa(type4, arrayList, obj);
                return arrayList;
            case 4:
                fzg fzgVar5 = ccwVar.h;
                int i6 = fzgVar5.o;
                if (i6 == 8) {
                    fzgVar5.bg(16);
                    return null;
                }
                Class cls3 = Long.TYPE;
                if (i6 == 2) {
                    if (type == cls3 || type == Long.class) {
                        valueOf = Long.valueOf(fzgVar5.ba());
                    } else {
                        try {
                            valueOf = Integer.valueOf(fzgVar5.bd());
                        } catch (NumberFormatException e2) {
                            throw new bfj("int value overflow, field : " + obj, (Throwable) e2);
                        }
                    }
                    Object obj2 = valueOf;
                    fzgVar5.bg(16);
                    return obj2;
                }
                if (i6 == 3) {
                    BigDecimal bigDecimal2 = new BigDecimal(fzgVar5.ay());
                    fzgVar5.bg(16);
                    return (type == cls3 || type == Long.class) ? Long.valueOf(bigDecimal2.longValue()) : Integer.valueOf(bigDecimal2.intValue());
                }
                Object x4 = ccwVar.x(null);
                try {
                    return (type == cls3 || type == Long.class) ? dtu.h(x4) : dtu.t(x4);
                } catch (Exception e3) {
                    throw new bfj("cast error, field : " + obj + ", value " + x4, (Throwable) e3);
                }
            case 5:
                fzg fzgVar6 = ccwVar.h;
                if (type == StackTraceElement.class) {
                    int i7 = fzgVar6.o;
                    if (i7 != 8) {
                        if (i7 != 12 && i7 != 16) {
                            throw new bfj("syntax error: ".concat(gs.h(fzgVar6.o)));
                        }
                        String str = null;
                        String str2 = null;
                        String str3 = null;
                        int i8 = 0;
                        while (true) {
                            String bl = fzgVar6.bl(ccwVar.i);
                            if (bl == null) {
                                int i9 = fzgVar6.o;
                                if (i9 == i2) {
                                    fzgVar6.bg(16);
                                } else {
                                    i2 = (i9 == 16 && (fzgVar6.w & cbj.AllowArbitraryCommas.mask) != 0) ? 13 : 13;
                                }
                            }
                            fzgVar6.bp();
                            if ("className".equals(bl)) {
                                int i10 = fzgVar6.o;
                                if (i10 == 8) {
                                    str = null;
                                } else {
                                    if (i10 != 4) {
                                        throw new bfj("syntax error");
                                    }
                                    str = fzgVar6.bj();
                                }
                            } else if ("methodName".equals(bl)) {
                                int i11 = fzgVar6.o;
                                if (i11 == 8) {
                                    str2 = null;
                                } else {
                                    if (i11 != 4) {
                                        throw new bfj("syntax error");
                                    }
                                    str2 = fzgVar6.bj();
                                }
                            } else if (TTDownloadField.TT_FILE_NAME.equals(bl)) {
                                int i12 = fzgVar6.o;
                                if (i12 == 8) {
                                    str3 = null;
                                } else {
                                    if (i12 != 4) {
                                        throw new bfj("syntax error");
                                    }
                                    str3 = fzgVar6.bj();
                                }
                            } else if ("lineNumber".equals(bl)) {
                                int i13 = fzgVar6.o;
                                if (i13 == 8) {
                                    i8 = 0;
                                } else {
                                    if (i13 != 2) {
                                        throw new bfj("syntax error");
                                    }
                                    i8 = fzgVar6.bd();
                                }
                            } else if ("nativeMethod".equals(bl)) {
                                int i14 = fzgVar6.o;
                                if (i14 == 8) {
                                    fzgVar6.bg(16);
                                } else if (i14 == 6) {
                                    fzgVar6.bg(16);
                                } else {
                                    if (i14 != 7) {
                                        throw new bfj("syntax error");
                                    }
                                    fzgVar6.bg(16);
                                }
                            } else {
                                if (bl != "@type") {
                                    throw new bfj(tn.x("syntax error : ", bl));
                                }
                                int i15 = fzgVar6.o;
                                if (i15 == 4) {
                                    String bj2 = fzgVar6.bj();
                                    if (!bj2.equals("java.lang.StackTraceElement")) {
                                        throw new bfj("syntax error : ".concat(bj2));
                                    }
                                } else if (i15 != 8) {
                                    throw new bfj("syntax error");
                                }
                            }
                            if (fzgVar6.o == 13) {
                                fzgVar6.bg(16);
                            }
                        }
                        return new StackTraceElement(str, str2, str3, i8);
                    }
                    fzgVar6.az();
                } else {
                    if (ccwVar.f12658c == 2) {
                        ccwVar.f12658c = 0;
                        ccwVar.w(16);
                        if (fzgVar6.o != 4) {
                            throw new bfj("syntax error");
                        }
                        if (!"val".equals(fzgVar6.bj())) {
                            throw new bfj("syntax error");
                        }
                        fzgVar6.az();
                        ccwVar.w(17);
                        x = ccwVar.x(null);
                        ccwVar.w(13);
                    } else {
                        x = ccwVar.x(null);
                    }
                    if (x != null) {
                        if (!(x instanceof String)) {
                            throw new bfj("except string value");
                        }
                        String str4 = (String) x;
                        if (str4.length() != 0) {
                            if (type == UUID.class) {
                                return UUID.fromString(str4);
                            }
                            if (type == Class.class) {
                                ccwVar.k.getClass();
                                return dtu.m(str4);
                            }
                            if (type == Locale.class) {
                                String[] split = str4.split("_");
                                return split.length == 1 ? new Locale(split[0]) : split.length == 2 ? new Locale(split[0], split[1]) : new Locale(split[0], split[1], split[2]);
                            }
                            if (type == URI.class) {
                                return URI.create(str4);
                            }
                            if (type == URL.class) {
                                try {
                                    return new URL(str4);
                                } catch (MalformedURLException e4) {
                                    throw new bfj("create url error", (Throwable) e4);
                                }
                            }
                            if (type == Pattern.class) {
                                return Pattern.compile(str4);
                            }
                            if (type == Charset.class) {
                                return Charset.forName(str4);
                            }
                            if (type == Currency.class) {
                                return Currency.getInstance(str4);
                            }
                            if (type == SimpleDateFormat.class) {
                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str4, fzgVar6.i);
                                simpleDateFormat.setTimeZone(fzgVar6.u);
                                return simpleDateFormat;
                            }
                            if (type != Character.TYPE && type != Character.class) {
                                return DesugarTimeZone.getTimeZone(str4);
                            }
                            boolean z = dtu.f14793a;
                            if (str4.length() != 0) {
                                if (str4.length() == 1) {
                                    return Character.valueOf(str4.charAt(0));
                                }
                                throw new bfj("can not cast to byte, value : " + ((Object) str4));
                            }
                        }
                    }
                }
                return null;
            case 6:
                fzg fzgVar7 = ccwVar.h;
                int i16 = fzgVar7.o;
                Class cls4 = Byte.TYPE;
                Class cls5 = Short.TYPE;
                Class cls6 = Float.TYPE;
                Class cls7 = Double.TYPE;
                if (i16 == 2) {
                    if (type == cls7 || type == Double.class) {
                        String ay2 = fzgVar7.ay();
                        fzgVar7.bg(16);
                        return Double.valueOf(Double.parseDouble(ay2));
                    }
                    if (type == cls6 || type == Float.class) {
                        String ay3 = fzgVar7.ay();
                        fzgVar7.bg(16);
                        return Float.valueOf(Float.parseFloat(ay3));
                    }
                    long ba = fzgVar7.ba();
                    fzgVar7.bg(16);
                    return (type == cls5 || type == Short.class) ? Short.valueOf((short) ba) : (type == cls4 || type == Byte.class) ? Byte.valueOf((byte) ba) : (ba < -2147483648L || ba > 2147483647L) ? Long.valueOf(ba) : Integer.valueOf((int) ba);
                }
                if (i16 != 3) {
                    Object x5 = ccwVar.x(null);
                    if (x5 == null) {
                        return null;
                    }
                    return (type == cls7 || type == Double.class) ? dtu.c(x5) : (type == cls6 || type == Float.class) ? dtu.r(x5) : (type == cls5 || type == Short.class) ? dtu.q(x5) : (type == cls4 || type == Byte.class) ? dtu.n(x5) : dtu.w(x5);
                }
                if (type == cls7 || type == Double.class) {
                    String ay4 = fzgVar7.ay();
                    fzgVar7.bg(16);
                    return Double.valueOf(Double.parseDouble(ay4));
                }
                if (type == cls6 || type == Float.class) {
                    String ay5 = fzgVar7.ay();
                    fzgVar7.bg(16);
                    return Float.valueOf(Float.parseFloat(ay5));
                }
                BigDecimal bigDecimal3 = new BigDecimal(fzgVar7.ay());
                fzgVar7.bg(16);
                return (type == cls5 || type == Short.class) ? Short.valueOf(bigDecimal3.shortValue()) : (type == cls4 || type == Byte.class) ? Byte.valueOf(bigDecimal3.byteValue()) : bigDecimal3;
            default:
                return ccwVar.q();
        }
    }
}
