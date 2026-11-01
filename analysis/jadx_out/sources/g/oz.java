package g;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class oz implements duf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19785a;

    public /* synthetic */ oz(int i) {
        this.f19785a = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // g.duf
    public final void b(cnu cnuVar, Object obj, Object obj2, Type type) {
        aca acaVar;
        boolean z;
        switch (this.f19785a) {
            case 0:
                cxa cxaVar = cnuVar.j;
                if ((cxaVar.k & gar.WriteEnumUsingToString.mask) == 0) {
                    cxaVar.q(((Enum) obj).ordinal());
                    return;
                }
                String str = ((Enum) obj).toString();
                if ((cxaVar.k & gar.UseSingleQuotes.mask) != 0) {
                    cxaVar.r(str);
                    return;
                } else {
                    cxaVar.v(false, str, (char) 0);
                    return;
                }
            case 1:
                cxa cxaVar2 = cnuVar.j;
                cbq cbqVar = cnuVar.f13202f;
                boolean z2 = (cxaVar2.k & gar.WriteClassName.mask) != 0;
                Type type2 = (z2 && (type instanceof ParameterizedType)) ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
                if (obj == null) {
                    if ((cxaVar2.k & gar.WriteNullListAsEmpty.mask) != 0) {
                        cxaVar2.write("[]");
                        return;
                    } else {
                        cxaVar2.o();
                        return;
                    }
                }
                List list = (List) obj;
                int size = list.size();
                if (size == 0) {
                    cxaVar2.s("[]");
                    return;
                }
                acaVar = cnuVar.f13198b;
                if ((cxaVar2.k & gar.DisableCircularReferenceDetect.mask) == 0) {
                    cnuVar.f13198b = new aca(acaVar, obj, obj2, 0);
                    if (cnuVar.k == null) {
                        cnuVar.k = new IdentityHashMap();
                    }
                    cnuVar.k.put(obj, acaVar);
                }
                try {
                    int i = 44;
                    if ((cxaVar2.k & gar.PrettyFormat.mask) != 0) {
                        cxaVar2.write(91);
                        cnuVar.i++;
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj3 = list.get(i2);
                            if (i2 != 0) {
                                cxaVar2.write(i);
                            }
                            cnuVar.p();
                            if (obj3 != null) {
                                IdentityHashMap identityHashMap = cnuVar.k;
                                if (identityHashMap == null || !identityHashMap.containsKey(obj3)) {
                                    duf c2 = cbqVar.c(obj3.getClass());
                                    cnuVar.f13198b = new aca(acaVar, obj, obj2, 0);
                                    c2.b(cnuVar, obj3, Integer.valueOf(i2), type2);
                                } else {
                                    cnuVar.o(obj3);
                                }
                            } else {
                                cxaVar2.o();
                            }
                            i2++;
                            i = 44;
                        }
                        cnuVar.i--;
                        cnuVar.p();
                        cxaVar2.write(93);
                    } else {
                        int i3 = cxaVar2.m + 1;
                        if (i3 > cxaVar2.l.length) {
                            cxaVar2.u(i3);
                        }
                        cxaVar2.l[cxaVar2.m] = '[';
                        cxaVar2.m = i3;
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            Object obj4 = list.get(i4);
                            if (i4 != 0) {
                                int i5 = cxaVar2.m + 1;
                                if (i5 > cxaVar2.l.length) {
                                    cxaVar2.u(i5);
                                }
                                cxaVar2.l[cxaVar2.m] = ',';
                                cxaVar2.m = i5;
                            }
                            if (obj4 == null) {
                                cxaVar2.s("null");
                            } else {
                                Class<?> cls = obj4.getClass();
                                if (cls == Integer.class) {
                                    cxaVar2.q(((Integer) obj4).intValue());
                                } else if (cls == Long.class) {
                                    long longValue = ((Long) obj4).longValue();
                                    if (z2) {
                                        cxaVar2.w(longValue);
                                        cxaVar2.write(76);
                                    } else {
                                        cxaVar2.w(longValue);
                                    }
                                } else if (cls == String.class) {
                                    String str2 = (String) obj4;
                                    if ((cxaVar2.k & gar.UseSingleQuotes.mask) != 0) {
                                        cxaVar2.r(str2);
                                    } else {
                                        cxaVar2.v(true, str2, (char) 0);
                                    }
                                } else {
                                    if ((cxaVar2.k & gar.DisableCircularReferenceDetect.mask) == 0) {
                                        cnuVar.f13198b = new aca(acaVar, obj, obj2, 0);
                                    }
                                    IdentityHashMap identityHashMap2 = cnuVar.k;
                                    if (identityHashMap2 == null || !identityHashMap2.containsKey(obj4)) {
                                        cbqVar.c(obj4.getClass()).b(cnuVar, obj4, Integer.valueOf(i4), type2);
                                    } else {
                                        cnuVar.o(obj4);
                                    }
                                }
                            }
                        }
                        int i6 = cxaVar2.m + 1;
                        if (i6 > cxaVar2.l.length) {
                            cxaVar2.u(i6);
                        }
                        cxaVar2.l[cxaVar2.m] = ']';
                        cxaVar2.m = i6;
                    }
                    cnuVar.f13198b = acaVar;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            default:
                cxa cxaVar3 = cnuVar.j;
                cbq cbqVar2 = cnuVar.f13202f;
                if (obj == null) {
                    cxaVar3.o();
                    return;
                }
                Map map = (Map) obj;
                Class<?> cls2 = map.getClass();
                boolean z3 = (cls2 == cof.class || cls2 == HashMap.class || cls2 == LinkedHashMap.class) && map.containsKey("@type");
                if ((cxaVar3.k & gar.SortField.mask) != 0 && !(map instanceof SortedMap) && !(map instanceof LinkedHashMap)) {
                    try {
                        map = new TreeMap(map);
                    } catch (Exception unused) {
                    }
                }
                IdentityHashMap identityHashMap3 = cnuVar.k;
                if (identityHashMap3 != null && identityHashMap3.containsKey(obj)) {
                    cnuVar.o(obj);
                    return;
                }
                acaVar = cnuVar.f13198b;
                cnuVar.q(acaVar, obj, obj2);
                try {
                    cxaVar3.write(123);
                    cnuVar.i++;
                    if ((cxaVar3.k & gar.WriteClassName.mask) == 0 || z3) {
                        z = true;
                    } else {
                        cbqVar2.getClass();
                        cxaVar3.p("@type", false);
                        cxaVar3.t(obj.getClass().getName());
                        z = false;
                    }
                    Class<?> cls3 = null;
                    duf dufVar = null;
                    for (Map.Entry entry : map.entrySet()) {
                        Object value = entry.getValue();
                        Object key = entry.getKey();
                        ArrayList arrayList = cnuVar.f13197a;
                        if (arrayList != null) {
                            Iterator it = arrayList.iterator();
                            if (it.hasNext()) {
                                if (it.next() != null) {
                                    throw new ClassCastException();
                                }
                                if (key != null && !(key instanceof String)) {
                                    key = ex.i(key);
                                }
                                throw null;
                            }
                        }
                        ArrayList arrayList2 = cnuVar.f13201e;
                        if (arrayList2 != null) {
                            Object i7 = (key == null || (key instanceof String)) ? key : ex.i(key);
                            Iterator it2 = arrayList2.iterator();
                            if (it2.hasNext()) {
                                if (it2.next() != null) {
                                    throw new ClassCastException();
                                }
                                throw null;
                            }
                        }
                        ArrayList arrayList3 = cnuVar.m;
                        if (arrayList3 != null) {
                            if (key != null && !(key instanceof String)) {
                                key = ex.i(key);
                            }
                            Iterator it3 = arrayList3.iterator();
                            if (it3.hasNext()) {
                                if (it3.next() != null) {
                                    throw new ClassCastException();
                                }
                                throw null;
                            }
                        }
                        ArrayList arrayList4 = cnuVar.f13203g;
                        if (arrayList4 != null) {
                            Object i8 = (key == null || (key instanceof String)) ? key : ex.i(key);
                            Iterator it4 = arrayList4.iterator();
                            if (it4.hasNext()) {
                                if (it4.next() != null) {
                                    throw new ClassCastException();
                                }
                                throw null;
                            }
                        }
                        if (value != null || (cxaVar3.k & gar.WriteMapNullValue.mask) != 0) {
                            if (key instanceof String) {
                                String str3 = (String) key;
                                if (!z) {
                                    cxaVar3.write(44);
                                }
                                if ((cxaVar3.k & gar.PrettyFormat.mask) != 0) {
                                    cnuVar.p();
                                }
                                cxaVar3.p(str3, true);
                            } else {
                                if (!z) {
                                    cxaVar3.write(44);
                                }
                                int i9 = cxaVar3.k;
                                if ((gar.BrowserCompatible.mask & i9) == 0 && (i9 & gar.WriteNonStringKeyAsString.mask) == 0) {
                                    cnuVar.r(key);
                                    cxaVar3.write(58);
                                }
                                cnuVar.n(ex.i(key));
                                cxaVar3.write(58);
                            }
                            if (value == null) {
                                cxaVar3.o();
                            } else {
                                Class<?> cls4 = value.getClass();
                                if (cls4 == cls3) {
                                    dufVar.b(cnuVar, value, key, null);
                                } else {
                                    duf c3 = cbqVar2.c(cls4);
                                    c3.b(cnuVar, value, key, null);
                                    dufVar = c3;
                                    cls3 = cls4;
                                }
                            }
                            z = false;
                        }
                    }
                    cnuVar.f13198b = acaVar;
                    cnuVar.i--;
                    if ((cxaVar3.k & gar.PrettyFormat.mask) != 0 && map.size() > 0) {
                        cnuVar.p();
                    }
                    cxaVar3.write(125);
                    return;
                } finally {
                    cnuVar.f13198b = acaVar;
                }
        }
    }
}
