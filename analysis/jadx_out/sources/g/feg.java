package g;

import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class feg extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f16653a;

    /* renamed from: b, reason: collision with root package name */
    public static final List f16654b;

    /* renamed from: c, reason: collision with root package name */
    public static final Map f16655c;

    /* renamed from: d, reason: collision with root package name */
    public dwg f16656d;

    static {
        String[] strArr = {"java.lang.String", "str", "java.lang.Class", "cls", "java.lang.Throwable", "th", "java.lang.Object", "obj", "java.util.Iterator", "it", "java.util.HashMap", "map", "java.lang.Boolean", "bool", "java.lang.Short", "sh", "java.lang.Integer", "num", "java.lang.Character", "ch", "java.lang.Byte", "b", "java.lang.Float", "f", "java.lang.Long", "l", "java.lang.Double", ada.COLUMN_DOMAIN, "java.lang.StringBuilder", "sb", "java.lang.Exception", "exc"};
        String str = evh.f16225a;
        HashMap hashMap = new HashMap(16);
        for (int i = 0; i < 31; i += 2) {
            hashMap.put(strArr[i], strArr[i + 1]);
        }
        f16655c = Collections.unmodifiableMap(hashMap);
        Object[] objArr = {"size", "length", "list", "map", "next"};
        HashSet hashSet = new HashSet(5);
        for (int i2 = 0; i2 < 5; i2++) {
            Object obj = objArr[i2];
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        f16653a = Collections.unmodifiableSet(hashSet);
        Object[] objArr2 = {"get", "set", "to", "parse", "read", "format"};
        ArrayList arrayList = new ArrayList(6);
        for (int i3 = 0; i3 < 6; i3++) {
            Object obj2 = objArr2[i3];
            Objects.requireNonNull(obj2);
            arrayList.add(obj2);
        }
        f16654b = Collections.unmodifiableList(arrayList);
    }

    public static String e(String str) {
        if (str != null && !str.isEmpty()) {
            if (str.toUpperCase().equals(str)) {
                return str.toLowerCase();
            }
            String str2 = Character.toLowerCase(str.charAt(0)) + str.substring(1);
            if (!str2.equals(str)) {
                return str2;
            }
            if (str.length() < 3) {
                return str.concat("Var");
            }
        }
        return null;
    }

    public static String g(ve veVar) {
        String i = veVar.i();
        String e2 = e(i);
        if (e2 != null) {
            return e2;
        }
        String k = foj.k(i.toLowerCase());
        return i.equals(k) ? awf.c(k, "Var") : k;
    }

    @Override // g.pj
    public final String f() {
        return "ApplyVariableNames";
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        this.f16656d = dwgVar;
    }

    public final String i(cwx cwxVar) {
        cwxVar.getClass();
        if (cwxVar instanceof cff) {
            return cwxVar.f().d().toLowerCase();
        }
        if (cwxVar instanceof aoe) {
            return i(cwxVar.e()) + "Arr";
        }
        if (cwxVar instanceof btl) {
            return foj.k(cwxVar.l().toLowerCase());
        }
        if (!cwxVar.m()) {
            return foj.k(cwxVar.toString());
        }
        String str = (String) f16655c.get(cwxVar.l());
        return str != null ? str : g(ve.h(this.f16656d, cwxVar));
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        String i;
        String str;
        Iterator it = hedVar.at.iterator();
        while (it.hasNext()) {
            ejb u = ((vm) it.next()).u();
            if (u.f15629b) {
                i = "this";
            } else if (u.f15631d && !cbd.e(u.f15630c)) {
                List<vm> list = u.f15633f;
                if (evh.e(list)) {
                    if (!Collection.b.stream(list).anyMatch(new bev(0))) {
                        for (vm vmVar : list) {
                            String o = vmVar.o();
                            if (o != null) {
                                str = o;
                            } else {
                                eek eekVar = vmVar.f20177c.ae;
                                if (eekVar != null) {
                                    str = l(vmVar, eekVar);
                                    if (cbd.e(str)) {
                                    }
                                }
                                str = null;
                            }
                            if (str != null) {
                                i = str;
                                break;
                            }
                        }
                    } else {
                        i = i(u.f15632e);
                    }
                }
                i = i(u.f15632e);
            } else {
                i = null;
            }
            if (i != null) {
                u.f15630c = i;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        if (r7.l.g(g.csv.ANONYMOUS_CONSTRUCTOR) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String l(vm vmVar, eek eekVar) {
        String l;
        int i = ccq.f12647a[eekVar.ah.ordinal()];
        Map map = f16655c;
        String str = null;
        switch (i) {
            case 1:
                ayu ayuVar = ((hdc) eekVar).ad;
                String str2 = ayuVar.f11073a;
                ve veVar = ayuVar.f11076d;
                if ("getInstance".equals(str2)) {
                    String str3 = (String) map.get(veVar.f20147b);
                    return str3 != null ? str3 : g(veVar);
                }
                Iterator it = f16654b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        String str4 = (String) it.next();
                        if (str2.startsWith(str4)) {
                            str = str2.substring(str4.length());
                        }
                    }
                }
                if (str != null) {
                    return e(str);
                }
                if ("iterator".equals(str2)) {
                    return "it";
                }
                if ("toString".equals(str2)) {
                    String str5 = (String) map.get(veVar.f20147b);
                    return str5 != null ? str5 : g(veVar);
                }
                if ("forName".equals(str2) && veVar.f20149d.equals(cwx.f13657ab)) {
                    return (String) map.get("java.lang.Class");
                }
                if (!f16653a.contains(str2)) {
                    String i2 = i(vmVar.u().f15632e);
                    if (!i2.equalsIgnoreCase(str2)) {
                        StringBuilder o = awf.o(i2);
                        if (!foj.l(str2)) {
                            str2 = Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
                        }
                        o.append(str2);
                        return o.toString();
                    }
                }
                return str2;
            case 2:
                eew eewVar = (eew) eekVar;
                ebp r = this.f16656d.f14930b.r(eewVar);
                hed hedVar = r instanceof hed ? (hed) r : null;
                if (hedVar != null) {
                    break;
                }
                ve veVar2 = eewVar.f15409a.f11076d;
                String str6 = (String) map.get(veVar2.f20147b);
                return str6 != null ? str6 : g(veVar2);
            case 3:
                return "length";
            case 4:
            case 5:
            case 6:
                for (gsh gshVar : eekVar.aj) {
                    gshVar.getClass();
                    if ((gshVar instanceof cly) && (l = l(vmVar, ((cly) gshVar).f13104a)) != null) {
                        return l;
                    }
                }
                return null;
            default:
                return null;
        }
    }
}
