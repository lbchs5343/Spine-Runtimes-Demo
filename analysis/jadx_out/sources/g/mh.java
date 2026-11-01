package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class mh {

    /* renamed from: a, reason: collision with root package name */
    public static final mh f19642a = new mh();

    /* renamed from: b, reason: collision with root package name */
    public final gqc f19643b;

    /* renamed from: c, reason: collision with root package name */
    public final gqc f19644c;

    public mh() {
        gqc gqcVar = new gqc(8);
        this.f19643b = gqcVar;
        this.f19644c = new gqc(12);
        eyg eygVar = eyg.j;
        gqcVar.bd(SimpleDateFormat.class, eygVar);
        gvz gvzVar = gvz.f18853a;
        gqcVar.bd(Date.class, gvzVar);
        gqcVar.bd(Calendar.class, gvzVar);
        xq xqVar = xq.f20308b;
        gqcVar.bd(Map.class, xqVar);
        gqcVar.bd(HashMap.class, xqVar);
        gqcVar.bd(LinkedHashMap.class, xqVar);
        gqcVar.bd(TreeMap.class, xqVar);
        gqcVar.bd(ConcurrentMap.class, xqVar);
        gqcVar.bd(ConcurrentHashMap.class, xqVar);
        eyg eygVar2 = eyg.f16366d;
        gqcVar.bd(Collection.class, eygVar2);
        gqcVar.bd(List.class, eygVar2);
        gqcVar.bd(ArrayList.class, eygVar2);
        xq xqVar2 = xq.f20307a;
        gqcVar.bd(Object.class, xqVar2);
        gqcVar.bd(String.class, eyg.f16368f);
        gqcVar.bd(Character.TYPE, eygVar);
        gqcVar.bd(Character.class, eygVar);
        eyg eygVar3 = eyg.f16364a;
        gqcVar.bd(Byte.TYPE, eygVar3);
        gqcVar.bd(Byte.class, eygVar3);
        gqcVar.bd(Short.TYPE, eygVar3);
        gqcVar.bd(Short.class, eygVar3);
        eyg eygVar4 = eyg.f16367e;
        gqcVar.bd(Integer.TYPE, eygVar4);
        gqcVar.bd(Integer.class, eygVar4);
        gqcVar.bd(Long.TYPE, eygVar4);
        gqcVar.bd(Long.class, eygVar4);
        eyg eygVar5 = eyg.i;
        gqcVar.bd(BigInteger.class, eygVar5);
        gqcVar.bd(BigDecimal.class, eygVar5);
        gqcVar.bd(Float.TYPE, eygVar3);
        gqcVar.bd(Float.class, eygVar3);
        gqcVar.bd(Double.TYPE, eygVar3);
        gqcVar.bd(Double.class, eygVar3);
        eyg eygVar6 = eyg.f16365c;
        gqcVar.bd(Boolean.TYPE, eygVar6);
        gqcVar.bd(Boolean.class, eygVar6);
        gqcVar.bd(Class.class, eygVar);
        eyg eygVar7 = eyg.h;
        gqcVar.bd(char[].class, eygVar7);
        gqcVar.bd(Object[].class, eygVar7);
        gqcVar.bd(UUID.class, eygVar);
        gqcVar.bd(TimeZone.class, eygVar);
        gqcVar.bd(Locale.class, eygVar);
        gqcVar.bd(Currency.class, eygVar);
        gqcVar.bd(URI.class, eygVar);
        gqcVar.bd(URL.class, eygVar);
        gqcVar.bd(Pattern.class, eygVar);
        gqcVar.bd(Charset.class, eygVar);
        gqcVar.bd(Number.class, eygVar3);
        gqcVar.bd(StackTraceElement.class, eygVar);
        gqcVar.bd(Serializable.class, xqVar2);
        gqcVar.bd(Cloneable.class, xqVar2);
        gqcVar.bd(Comparable.class, xqVar2);
        gqcVar.bd(Closeable.class, xqVar2);
    }

    public final cma d(Type type) {
        cma cmaVar = (cma) this.f19643b.as(type);
        if (cmaVar != null) {
            return cmaVar;
        }
        if (type instanceof Class) {
            return e(type, (Class) type);
        }
        if (!(type instanceof ParameterizedType)) {
            return xq.f20307a;
        }
        Type rawType = ((ParameterizedType) type).getRawType();
        return rawType instanceof Class ? e(type, (Class) rawType) : d(rawType);
    }

    public final cma e(Type type, Class cls) {
        ecz eczVar;
        Class mappingTo;
        cma cmaVar = eyg.f16366d;
        gqc gqcVar = this.f19643b;
        cma cmaVar2 = (cma) gqcVar.as(type);
        if (cmaVar2 != null) {
            return cmaVar2;
        }
        if (type == null) {
            type = cls;
        }
        cma cmaVar3 = (cma) gqcVar.as(type);
        if (cmaVar3 != null) {
            return cmaVar3;
        }
        if (!cls.isPrimitive() && cls != Boolean.class && cls != Character.class && cls != Byte.class && cls != Short.class && cls != Integer.class && cls != Long.class && cls != Float.class && cls != Double.class && cls != BigInteger.class && cls != BigDecimal.class && cls != String.class && cls != Date.class && cls != java.sql.Date.class && cls != Time.class && cls != Timestamp.class && (eczVar = (ecz) cls.getAnnotation(ecz.class)) != null && (mappingTo = eczVar.mappingTo()) != Void.class) {
            return e(mappingTo, mappingTo);
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable) || (type instanceof ParameterizedType)) {
            cmaVar3 = (cma) gqcVar.as(cls);
        }
        if (cmaVar3 != null) {
            return cmaVar3;
        }
        cma cmaVar4 = (cma) gqcVar.as(type);
        if (cmaVar4 != null) {
            return cmaVar4;
        }
        if (cls.isEnum()) {
            cmaVar = new hev(cls);
        } else if (cls.isArray()) {
            cmaVar = eyg.h;
        } else if (cls != Set.class && cls != HashSet.class && cls != Collection.class && cls != List.class && cls != ArrayList.class && !Collection.class.isAssignableFrom(cls)) {
            cmaVar = Map.class.isAssignableFrom(cls) ? xq.f20308b : Throwable.class.isAssignableFrom(cls) ? new dso(this, cls, cls) : new dhm(this, cls, type);
        }
        gqcVar.bd(type, cmaVar);
        return cmaVar;
    }
}
