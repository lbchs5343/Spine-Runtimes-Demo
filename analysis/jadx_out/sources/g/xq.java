package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class xq implements cma {

    /* renamed from: a, reason: collision with root package name */
    public static final xq f20307a = new xq(0);

    /* renamed from: b, reason: collision with root package name */
    public static final xq f20308b = new xq(1);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f20309c;

    public /* synthetic */ xq(int i) {
        this.f20309c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0162, code lost:
    
        return r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Map d(Object obj, Type type, Map map, ccw ccwVar) {
        String at;
        fzg fzgVar = ccwVar.h;
        mh mhVar = ccwVar.k;
        gqc gqcVar = ccwVar.i;
        int i = fzgVar.o;
        int i2 = fzgVar.w;
        if (i != 12) {
            throw new bfj("syntax error, expect {, actual " + fzgVar.o);
        }
        fpd fpdVar = ccwVar.l;
        while (true) {
            try {
                fzgVar.aj();
                char c2 = fzgVar.l;
                if ((cbj.AllowArbitraryCommas.mask & i2) != 0) {
                    while (c2 == ',') {
                        fzgVar.ag();
                        fzgVar.aj();
                        c2 = fzgVar.l;
                    }
                }
                if (c2 == '\"') {
                    at = fzgVar.ax(gqcVar, '\"');
                    fzgVar.aj();
                    if (fzgVar.l != ':') {
                        throw new bfj("syntax error, " + fzgVar.ac());
                    }
                } else {
                    if (c2 == '}') {
                        fzgVar.ag();
                        fzgVar.x = 0;
                        fzgVar.bg(16);
                        return map;
                    }
                    if (c2 == '\'') {
                        if ((cbj.AllowSingleQuotes.mask & i2) == 0) {
                            throw new bfj("syntax error, " + fzgVar.ac());
                        }
                        at = fzgVar.ax(gqcVar, '\'');
                        fzgVar.aj();
                        if (fzgVar.l != ':') {
                            throw new bfj("syntax error, " + fzgVar.ac());
                        }
                    } else {
                        if ((cbj.AllowUnQuotedFieldNames.mask & i2) == 0) {
                            throw new bfj("syntax error");
                        }
                        at = fzgVar.at(gqcVar);
                        fzgVar.aj();
                        char c3 = fzgVar.l;
                        if (c3 != ':') {
                            throw new bfj("expect ':' at " + fzgVar.t + ", actual " + c3);
                        }
                    }
                }
                fzgVar.ag();
                fzgVar.aj();
                fzgVar.x = 0;
                Object obj2 = null;
                if (at != "@type" || fzgVar.an(cbj.DisableSpecialKeyDetect)) {
                    fzgVar.az();
                    ccwVar.v(fpdVar);
                    if (fzgVar.o == 8) {
                        fzgVar.az();
                    } else {
                        obj2 = ccwVar.p(at, type);
                    }
                    map.put(at, obj2);
                    if (ccwVar.f12658c == 1) {
                        ccwVar.o(at, map);
                    }
                    ccwVar.y(fpdVar, obj2, at);
                    int i3 = fzgVar.o;
                    if (i3 == 20 || i3 == 15) {
                        break;
                    }
                    if (i3 == 13) {
                        fzgVar.az();
                        return map;
                    }
                } else {
                    String ax = fzgVar.ax(gqcVar, '\"');
                    mhVar.getClass();
                    Class<?> m = dtu.m(ax);
                    if (m != map.getClass()) {
                        cma d2 = mhVar.d(m);
                        fzgVar.bg(16);
                        ccwVar.f12658c = 2;
                        if (fpdVar != null && !(obj instanceof Integer)) {
                            ccwVar.l = (fpd) ccwVar.l.f17187c;
                            fpd[] fpdVarArr = ccwVar.f12657b;
                            int i4 = ccwVar.f12656a - 1;
                            fpdVarArr[i4] = null;
                            ccwVar.f12656a = i4;
                        }
                        return (Map) d2.g(ccwVar, m, obj);
                    }
                    fzgVar.bg(16);
                    if (fzgVar.o == 13) {
                        fzgVar.bg(16);
                        return map;
                    }
                }
            } finally {
                ccwVar.v(fpdVar);
            }
        }
    }

    public static Map e(Type type) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type == SortedMap.class || type == TreeMap.class) {
            return new TreeMap();
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return new ConcurrentHashMap();
        }
        if (type == Map.class || type == HashMap.class) {
            return new HashMap();
        }
        if (type == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (type == cof.class) {
            return new cof(false);
        }
        if (type instanceof ParameterizedType) {
            return e(((ParameterizedType) type).getRawType());
        }
        Class cls = (Class) type;
        if (cls.isInterface()) {
            throw new bfj("unsupport type " + type);
        }
        try {
            return (Map) cls.newInstance();
        } catch (Exception e2) {
            throw new bfj("unsupport type " + type, (Throwable) e2);
        }
    }

    public static Object f(ccw ccwVar, Map map, Type type, Type type2) {
        Object obj;
        fzg fzgVar = ccwVar.h;
        mh mhVar = ccwVar.k;
        int i = fzgVar.o;
        if (i != 12 && i != 16) {
            throw new bfj("syntax error, expect {, actual ".concat(gs.h(i)));
        }
        cma d2 = mhVar.d(type);
        cma d3 = mhVar.d(type2);
        fzgVar.az();
        fpd fpdVar = ccwVar.l;
        while (true) {
            try {
                int i2 = fzgVar.o;
                if (i2 == 13) {
                    fzgVar.bg(16);
                    return map;
                }
                if (i2 == 4 && fzgVar.x == 4 && fzgVar.k.startsWith("$ref", fzgVar.h + 1) && !fzgVar.an(cbj.DisableSpecialKeyDetect)) {
                    fzgVar.bp();
                    if (fzgVar.o != 4) {
                        throw new bfj("illegal ref, " + gs.h(i2));
                    }
                    String bj = fzgVar.bj();
                    if ("..".equals(bj)) {
                        obj = ((fpd) fpdVar.f17187c).f17190f;
                    } else if ("$".equals(bj)) {
                        fpd fpdVar2 = fpdVar;
                        while (true) {
                            fpd fpdVar3 = (fpd) fpdVar2.f17187c;
                            if (fpdVar3 == null) {
                                break;
                            }
                            fpdVar2 = fpdVar3;
                        }
                        obj = fpdVar2.f17190f;
                    } else {
                        ccwVar.z(new ggl(fpdVar, bj));
                        ccwVar.f12658c = 1;
                        obj = null;
                    }
                    fzgVar.bg(13);
                    if (fzgVar.o != 13) {
                        throw new bfj("illegal ref");
                    }
                    fzgVar.bg(16);
                    return obj;
                }
                if (map.size() == 0 && i2 == 4 && "@type".equals(fzgVar.bj()) && !fzgVar.an(cbj.DisableSpecialKeyDetect)) {
                    fzgVar.bp();
                    fzgVar.bg(16);
                    if (fzgVar.o == 13) {
                        fzgVar.az();
                        return map;
                    }
                    fzgVar.az();
                }
                Object g2 = d2.g(ccwVar, type, null);
                if (fzgVar.o != 17) {
                    throw new bfj("syntax error, expect :, actual " + fzgVar.o);
                }
                fzgVar.az();
                Object g3 = d3.g(ccwVar, type2, g2);
                if (ccwVar.f12658c == 1) {
                    ccwVar.o(g2, map);
                }
                map.put(g2, g3);
                if (fzgVar.o == 16) {
                    fzgVar.az();
                }
            } finally {
                ccwVar.v(fpdVar);
            }
        }
    }

    @Override // g.cma
    public final Object g(ccw ccwVar, Type type, Object obj) {
        Object s;
        switch (this.f20309c) {
            case 0:
                if (!(type instanceof GenericArrayType)) {
                    return ccwVar.x(obj);
                }
                Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                if (genericComponentType instanceof TypeVariable) {
                    genericComponentType = ((TypeVariable) genericComponentType).getBounds()[0];
                }
                ArrayList arrayList = new ArrayList();
                ccwVar.aa(genericComponentType, arrayList, null);
                if (!(genericComponentType instanceof Class)) {
                    return arrayList.toArray();
                }
                Object[] objArr = (Object[]) Array.newInstance((Class<?>) genericComponentType, arrayList.size());
                arrayList.toArray(objArr);
                return objArr;
            default:
                fzg fzgVar = ccwVar.h;
                if (type == cof.class) {
                    return (cof) ccwVar.s(null, (fzgVar.w & cbj.OrderedField.mask) != 0 ? new cof(new LinkedHashMap()) : new cof(false));
                }
                if (fzgVar.o == 8) {
                    fzgVar.bg(16);
                    return null;
                }
                Map e2 = e(type);
                fpd fpdVar = ccwVar.l;
                try {
                    ccwVar.y(fpdVar, e2, obj);
                    if (type instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) type;
                        Type type2 = parameterizedType.getActualTypeArguments()[0];
                        Type type3 = parameterizedType.getActualTypeArguments()[1];
                        s = String.class == type2 ? d(obj, type3, e2, ccwVar) : f(ccwVar, e2, type2, type3);
                    } else {
                        s = ccwVar.s(obj, e2);
                    }
                    return s;
                } finally {
                    ccwVar.v(fpdVar);
                }
        }
    }
}
