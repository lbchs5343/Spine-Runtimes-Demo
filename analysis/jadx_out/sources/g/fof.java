package g;

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
public abstract class fof {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f17137a;

    static {
        char[] cArr = new char[80];
        f17137a = cArr;
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
            gto gtoVar = aki.f10381a;
            sb.append(bff.ap(new gto(((String) obj).getBytes(cua.f13515a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof aki) {
            sb.append(": \"");
            sb.append(bff.ap((aki) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof fsu) {
            sb.append(" {");
            d((fsu) obj, sb, i + 2);
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
            sb.append(f17137a, 0, i2);
            i -= i2;
        }
    }

    public static void d(fsu fsuVar, StringBuilder sb, int i) {
        int i2;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = fsuVar.getClass().getDeclaredMethods();
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
                    b(sb, i, substring.substring(0, substring.length() - 4), fsu.q(method2, fsuVar, new Object[0]));
                    i2 = 3;
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb, i, substring.substring(0, substring.length() - 3), fsu.q(method, fsuVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object q = fsu.q(method4, fsuVar, new Object[0]);
                    if (method5 != null) {
                        if (!((Boolean) fsu.q(method5, fsuVar, new Object[0])).booleanValue()) {
                        }
                        b(sb, i, substring, q);
                    } else if (q instanceof Boolean) {
                        if (!((Boolean) q).booleanValue()) {
                        }
                        b(sb, i, substring, q);
                    } else if (q instanceof Integer) {
                        if (((Integer) q).intValue() == 0) {
                        }
                        b(sb, i, substring, q);
                    } else if (q instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) q).floatValue()) == 0) {
                        }
                        b(sb, i, substring, q);
                    } else if (q instanceof Double) {
                        if (Double.doubleToRawLongBits(((Double) q).doubleValue()) == 0) {
                        }
                        b(sb, i, substring, q);
                    } else {
                        if (q instanceof String) {
                            equals = q.equals("");
                        } else if (q instanceof aki) {
                            equals = q.equals(aki.f10381a);
                        } else if (q instanceof bsv) {
                            if (q == ((fsu) ((fsu) ((bsv) q)).i(6))) {
                            }
                            b(sb, i, substring, q);
                        } else {
                            if ((q instanceof Enum) && ((Enum) q).ordinal() == 0) {
                            }
                            b(sb, i, substring, q);
                        }
                        if (equals) {
                        }
                        b(sb, i, substring, q);
                    }
                }
            }
            i2 = 3;
        }
        wl wlVar = fsuVar.zzc;
        if (wlVar != null) {
            for (int i4 = 0; i4 < wlVar.f20224d; i4++) {
                b(sb, i, String.valueOf(wlVar.f20225e[i4] >>> 3), wlVar.f20226f[i4]);
            }
        }
    }
}
