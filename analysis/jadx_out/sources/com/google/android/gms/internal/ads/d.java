package com.google.android.gms.internal.ads;

import g.awf;
import g.dmd;
import g.fso;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f3951a;

    static {
        char[] cArr = new char[80];
        f3951a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        c(sb, i);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(fso.s(zzgxp.zzw((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzgxp) {
            sb.append(": \"");
            sb.append(fso.s((zzgxp) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzgyx) {
            sb.append(" {");
            d((zzgyx) obj, sb, i + 2);
            sb.append("\n");
            c(sb, i);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i3 = i + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        b(sb, i3, "key", entry.getKey());
        b(sb, i3, "value", entry.getValue());
        sb.append("\n");
        c(sb, i);
        sb.append("}");
    }

    public static void c(StringBuilder sb, int i) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f3951a, 0, i2);
            i -= i2;
        }
    }

    public static void d(zzgyx zzgyxVar, StringBuilder sb, int i) {
        int i2;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzgyxVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i3 = 0;
        while (true) {
            i2 = 3;
            if (i3 >= length) {
                break;
            }
            Method method3 = declaredMethods[i3];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i3++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i2);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null) {
                if (method2.getReturnType().equals(List.class)) {
                    b(sb, i, substring.substring(0, substring.length() - 4), zzgyx.bz(method2, zzgyxVar, new Object[0]));
                    i2 = 3;
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb, i, substring.substring(0, substring.length() - 3), zzgyx.bz(method, zzgyxVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object bz = zzgyx.bz(method4, zzgyxVar, new Object[0]);
                    if (method5 != null) {
                        if (!((Boolean) zzgyx.bz(method5, zzgyxVar, new Object[0])).booleanValue()) {
                        }
                        b(sb, i, substring, bz);
                    } else if (bz instanceof Boolean) {
                        if (!((Boolean) bz).booleanValue()) {
                        }
                        b(sb, i, substring, bz);
                    } else if (bz instanceof Integer) {
                        if (((Integer) bz).intValue() == 0) {
                        }
                        b(sb, i, substring, bz);
                    } else if (bz instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) bz).floatValue()) == 0) {
                        }
                        b(sb, i, substring, bz);
                    } else if (bz instanceof Double) {
                        if (Double.doubleToRawLongBits(((Double) bz).doubleValue()) == 0) {
                        }
                        b(sb, i, substring, bz);
                    } else {
                        if (bz instanceof String) {
                            equals = bz.equals("");
                        } else if (bz instanceof zzgxp) {
                            equals = bz.equals(zzgxp.zzb);
                        } else if (bz instanceof zzhai) {
                            if (bz == ((zzhai) bz).zzbt()) {
                            }
                            b(sb, i, substring, bz);
                        } else {
                            if ((bz instanceof Enum) && ((Enum) bz).ordinal() == 0) {
                            }
                            b(sb, i, substring, bz);
                        }
                        if (equals) {
                        }
                        b(sb, i, substring, bz);
                    }
                }
            }
            i2 = 3;
        }
        if (zzgyxVar instanceof zzgyt) {
            Iterator k = ((zzgyt) zzgyxVar).zza.k();
            while (k.hasNext()) {
                Map.Entry entry2 = (Map.Entry) k.next();
                b(sb, i, awf.b(((dmd) entry2.getKey()).f14416c, "[", "]"), entry2.getValue());
            }
        }
        zzhbo zzhboVar = zzgyxVar.zzt;
        if (zzhboVar != null) {
            for (int i4 = 0; i4 < zzhboVar.f8702d; i4++) {
                b(sb, i, String.valueOf(zzhboVar.f8703e[i4] >>> 3), zzhboVar.f8704f[i4]);
            }
        }
    }
}
