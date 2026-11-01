package g;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1;
import androidx.lifecycle.SavedStateHandleController;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzfey;
import com.google.android.gms.internal.ads.zzgxp;
import j$.util.stream.IntStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.WeakHashMap;
import java.util.function.IntConsumer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class fso {

    /* renamed from: g, reason: collision with root package name */
    public static final hy f17343g = new hy("NO_DECISION", 1);
    public static final int[] h = {13, 15, 14};
    public static boolean i;

    public static String aa(Context context, float f2) {
        float ab2 = ab(context, f2);
        return Math.abs(ab2 - ((float) Math.round(ab2))) < 1.0E-4f ? String.format(jp.NUMBER_FORMAT, Integer.valueOf(Math.round(ab2))) : String.format("%.1f", Float.valueOf(ab2));
    }

    public static float ab(Context context, float f2) {
        if (context == null) {
            return -1.0f;
        }
        return f2 / context.getResources().getDisplayMetrics().density;
    }

    public static JSONArray ac(JsonReader jsonReader) {
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONArray.put(ac(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONArray.put(at(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else {
                if (!JsonToken.STRING.equals(peek)) {
                    throw new IllegalStateException("unexpected json token: ".concat(String.valueOf(peek)));
                }
                jSONArray.put(jsonReader.nextString());
            }
        }
        jsonReader.endArray();
        return jSONArray;
    }

    public static ArrayList ad(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static void ae(Context context, String str, CharSequence charSequence, boolean z) {
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(str, charSequence));
            if (z) {
                gm.g(context, R.string.copy_success_content, charSequence);
            }
        } catch (Exception unused) {
            if (z) {
                gm.e(context, R.string.copy_failed);
            }
        }
    }

    public static List af(JSONArray jSONArray, ArrayList arrayList) {
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(jSONArray.getString(i2));
            }
        }
        return arrayList;
    }

    public static int[] ag(Context context) {
        Display defaultDisplay = context instanceof Activity ? ((Activity) context).getWindowManager().getDefaultDisplay() : ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return new int[]{point.x, point.y};
    }

    public static int ah() {
        return dyd.ar(26) ? 2003 : 2038;
    }

    public static Drawable ai(Context context, int i2) {
        return ezw.l().s(context, i2);
    }

    public static String aj(zzfey zzfeyVar) {
        if (zzfeyVar == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            an(jsonWriter, zzfeyVar);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e2) {
            agd.f("Error when writing JSON.", e2);
            return null;
        }
    }

    public static void ak(JsonWriter jsonWriter, JSONArray jSONArray) {
        try {
            jsonWriter.beginArray();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof String) {
                    jsonWriter.value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    q(jsonWriter, (JSONObject) obj);
                } else {
                    if (!(obj instanceof JSONArray)) {
                        throw new JSONException("unable to write field: " + String.valueOf(obj));
                    }
                    ak(jsonWriter, (JSONArray) obj);
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }

    public static float al(Context context, float f2) {
        if (context == null) {
            return -1.0f;
        }
        return f2 * context.getResources().getDisplayMetrics().density;
    }

    public static void am(Context context, ert ertVar, String str) {
        y(context, ertVar.q, str);
    }

    public static void an(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return;
        }
        if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof String) {
            jsonWriter.value((String) obj);
            return;
        }
        if (obj instanceof zzfey) {
            q(jsonWriter, ((zzfey) obj).zzd);
            return;
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                an(jsonWriter, it.next());
            }
            jsonWriter.endArray();
            return;
        }
        jsonWriter.beginObject();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Object key = entry.getKey();
            if (key instanceof String) {
                an(jsonWriter.name((String) key), entry.getValue());
            }
        }
        jsonWriter.endObject();
    }

    public static int ao(Context context, float f2) {
        return (int) (al(context, f2) + 0.5f);
    }

    public static double ap(DisplayMetrics displayMetrics, Point point) {
        return Math.sqrt(Math.pow(point.y / displayMetrics.ydpi, 2.0d) + Math.pow(point.x / displayMetrics.xdpi, 2.0d));
    }

    public static long aq(dsg dsgVar, int i2, boolean z, int i3) {
        long j = 0;
        long j2 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            j2 = dsgVar.aa();
            j |= j2 << (i4 * 8);
        }
        if (i3 != 0) {
            while (i2 < i3) {
                j <<= 8;
                i2++;
            }
            return j;
        }
        if (z && (128 & j2) != 0) {
            while (i2 < 8) {
                j |= 255 << (i2 * 8);
                i2++;
            }
        }
        return j;
    }

    public static boolean ar(Context context) {
        return (context == null || context.getResources() == null || context.getResources().getConfiguration() == null || context.getResources().getConfiguration().orientation != 2) ? false : true;
    }

    public static Bundle as(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        Bundle bundle = new Bundle();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                if (opt instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) opt).booleanValue());
                } else if (opt instanceof Double) {
                    bundle.putDouble(next, ((Double) opt).doubleValue());
                } else if (opt instanceof Integer) {
                    bundle.putInt(next, ((Integer) opt).intValue());
                } else if (opt instanceof Long) {
                    bundle.putLong(next, ((Long) opt).longValue());
                } else if (opt instanceof String) {
                    bundle.putString(next, (String) opt);
                } else if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (jSONArray.length() != 0) {
                        int length = jSONArray.length();
                        int i2 = 0;
                        Object obj = null;
                        for (int i3 = 0; obj == null && i3 < length; i3++) {
                            obj = !jSONArray.isNull(i3) ? jSONArray.opt(i3) : null;
                        }
                        if (obj == null) {
                            agd.b("Expected JSONArray with at least 1 non-null element for key:".concat(String.valueOf(next)));
                        } else if (obj instanceof JSONObject) {
                            Bundle[] bundleArr = new Bundle[length];
                            while (i2 < length) {
                                bundleArr[i2] = !jSONArray.isNull(i2) ? as(jSONArray.optJSONObject(i2)) : null;
                                i2++;
                            }
                            bundle.putParcelableArray(next, bundleArr);
                        } else if (obj instanceof Number) {
                            double[] dArr = new double[jSONArray.length()];
                            while (i2 < length) {
                                dArr[i2] = jSONArray.optDouble(i2);
                                i2++;
                            }
                            bundle.putDoubleArray(next, dArr);
                        } else if (obj instanceof CharSequence) {
                            String[] strArr = new String[length];
                            while (i2 < length) {
                                strArr[i2] = !jSONArray.isNull(i2) ? jSONArray.optString(i2) : null;
                                i2++;
                            }
                            bundle.putStringArray(next, strArr);
                        } else if (obj instanceof Boolean) {
                            boolean[] zArr = new boolean[length];
                            while (i2 < length) {
                                zArr[i2] = jSONArray.optBoolean(i2);
                                i2++;
                            }
                            bundle.putBooleanArray(next, zArr);
                        } else {
                            agd.b("JSONArray with unsupported type " + obj.getClass().getCanonicalName() + " for key:" + next);
                        }
                    }
                } else if (opt instanceof JSONObject) {
                    bundle.putBundle(next, as((JSONObject) opt));
                } else {
                    agd.b("Unsupported type for key:".concat(String.valueOf(next)));
                }
            }
        }
        return bundle;
    }

    public static JSONObject at(JsonReader jsonReader) {
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONObject.put(nextName, ac(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONObject.put(nextName, at(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextDouble());
            } else {
                if (!JsonToken.STRING.equals(peek)) {
                    throw new IllegalStateException("unexpected json token: ".concat(String.valueOf(peek)));
                }
                jSONObject.put(nextName, jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return jSONObject;
    }

    public static JSONObject au(JSONObject jSONObject, String[] strArr) {
        for (int i2 = 0; i2 < strArr.length - 1; i2 = 1) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[0]);
        }
        return jSONObject;
    }

    public static void av(View view, boolean z) {
        frf frfVar = (frf) view.getTag(R.id.safe_drawing_padding);
        if (frfVar == null) {
            frfVar = new frf(view);
            view.setTag(R.id.safe_drawing_padding, frfVar);
        }
        if (z) {
            frfVar.f17278b = true;
        } else {
            frfVar.f17280d = true;
        }
        aoi aoiVar = new aoi(21, frfVar);
        WeakHashMap weakHashMap = goi.f18490c;
        cd.b(view, aoiVar);
        dzc.c(view);
    }

    public static final String aw(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    public static final String ax(bdp bdpVar) {
        Object i2;
        if (bdpVar instanceof sk) {
            return bdpVar.toString();
        }
        try {
            i2 = bdpVar + '@' + o(bdpVar);
        } catch (Throwable th) {
            i2 = eg.i(th);
        }
        if (sl.a(i2) != null) {
            i2 = bdpVar.getClass().getName() + '@' + o(bdpVar);
        }
        return (String) i2;
    }

    public static boolean ay() {
        if (!i) {
            try {
                Class.forName("miui.os.Build");
                eg.f15472g = true;
                i = true;
                return true;
            } catch (Exception unused) {
                i = true;
            }
        }
        return eg.f15472g;
    }

    public static boolean az(char c2) {
        if (c2 < 'A' || c2 > 'Z') {
            return c2 >= 'a' && c2 <= 'z';
        }
        return true;
    }

    public static void ba(ghz ghzVar, int[] iArr) {
        Display defaultDisplay = ((WindowManager) ghzVar.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        iArr[0] = point.x;
        iArr[1] = point.y;
    }

    public static ArrayList j(dsg dsgVar, dsg dsgVar2) {
        int u = byh.u(dsgVar);
        ArrayList arrayList = new ArrayList(u);
        for (int i2 = 0; i2 < u; i2++) {
            arrayList.add(v(dsgVar, dsgVar2));
        }
        return arrayList;
    }

    public static void k(ArrayList arrayList) {
        HashMap hashMap = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = 0;
            if (!it.hasNext()) {
                Iterator it2 = hashMap.values().iterator();
                while (it2.hasNext()) {
                    for (dge dgeVar : (Set) it2.next()) {
                        for (djj djjVar : dgeVar.f14123a.f11314e) {
                            if (djjVar.f14278c == 0) {
                                Set<dge> set = (Set) hashMap.get(new fti(djjVar.f14276a, djjVar.f14277b == 2));
                                if (set != null) {
                                    for (dge dgeVar2 : set) {
                                        dgeVar.f14124b.add(dgeVar2);
                                        dgeVar2.f14125c.add(dgeVar);
                                    }
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    dge dgeVar3 = (dge) it4.next();
                    if (dgeVar3.f14125c.isEmpty()) {
                        hashSet2.add(dgeVar3);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    dge dgeVar4 = (dge) hashSet2.iterator().next();
                    hashSet2.remove(dgeVar4);
                    i2++;
                    Iterator it5 = dgeVar4.f14124b.iterator();
                    while (it5.hasNext()) {
                        dge dgeVar5 = (dge) it5.next();
                        dgeVar5.f14125c.remove(dgeVar4);
                        if (dgeVar5.f14125c.isEmpty()) {
                            hashSet2.add(dgeVar5);
                        }
                    }
                }
                if (i2 == arrayList.size()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it6 = hashSet.iterator();
                while (it6.hasNext()) {
                    dge dgeVar6 = (dge) it6.next();
                    if (!dgeVar6.f14125c.isEmpty() && !dgeVar6.f14124b.isEmpty()) {
                        arrayList2.add(dgeVar6.f14123a);
                    }
                }
                throw new ast(arrayList2);
            }
            bdf bdfVar = (bdf) it.next();
            dge dgeVar7 = new dge(bdfVar);
            for (Class cls : bdfVar.f11312c) {
                boolean z = bdfVar.f11310a == 0;
                fti ftiVar = new fti(cls, !z);
                if (!hashMap.containsKey(ftiVar)) {
                    hashMap.put(ftiVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(ftiVar);
                if (!set2.isEmpty() && z) {
                    throw new IllegalArgumentException("Multiple components provide " + cls + ".");
                }
                set2.add(dgeVar7);
            }
        }
    }

    public static String l() {
        BufferedReader bufferedReader;
        String str = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat("ro.build.version.emui")).getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            str = bufferedReader.readLine();
            bufferedReader.close();
            bfc.o(bufferedReader);
            return str;
        } catch (Throwable unused2) {
            bfc.o(bufferedReader);
            return str;
        }
    }

    public static final void m(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m(sb, i2, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            crn crnVar = cyb.f13731d;
            sb.append(bfc.af(new crn(((String) obj).getBytes(dhz.f14209a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof cyb) {
            sb.append(": \"");
            sb.append(bfc.af((cyb) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof cys) {
            sb.append(" {");
            n((cys) obj, sb, i2 + 2);
            sb.append("\n");
            while (i3 < i2) {
                sb.append(' ');
                i3++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i5 = i2 + 2;
        m(sb, i5, "key", entry.getKey());
        m(sb, i5, "value", entry.getValue());
        sb.append("\n");
        while (i3 < i2) {
            sb.append(' ');
            i3++;
        }
        sb.append("}");
    }

    public static void n(cys cysVar, StringBuilder sb, int i2) {
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : cysVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String concat = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1, substring.length() - 4)));
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m(sb, i2, aw(concat), cys.ad(method2, cysVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String concat2 = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1, substring.length() - 3)));
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m(sb, i2, aw(concat2), cys.ad(method3, cysVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set".concat(substring))) != null && (!substring.endsWith("Bytes") || !hashMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                String concat3 = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1)));
                Method method4 = (Method) hashMap.get("get".concat(substring));
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object ad = cys.ad(method4, cysVar, new Object[0]);
                    if (method5 == null) {
                        if (ad instanceof Boolean) {
                            if (((Boolean) ad).booleanValue()) {
                                m(sb, i2, aw(concat3), ad);
                            }
                        } else if (ad instanceof Integer) {
                            if (((Integer) ad).intValue() != 0) {
                                m(sb, i2, aw(concat3), ad);
                            }
                        } else if (ad instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) ad).floatValue()) != 0) {
                                m(sb, i2, aw(concat3), ad);
                            }
                        } else if (!(ad instanceof Double)) {
                            if (ad instanceof String) {
                                equals = ad.equals("");
                            } else if (ad instanceof cyb) {
                                equals = ad.equals(cyb.f13731d);
                            } else if (!(ad instanceof cir)) {
                                if ((ad instanceof Enum) && ((Enum) ad).ordinal() == 0) {
                                }
                                m(sb, i2, aw(concat3), ad);
                            } else if (ad != ((cys) ((cys) ((cir) ad)).a(6))) {
                                m(sb, i2, aw(concat3), ad);
                            }
                            if (!equals) {
                                m(sb, i2, aw(concat3), ad);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) ad).doubleValue()) != 0) {
                            m(sb, i2, aw(concat3), ad);
                        }
                    } else if (((Boolean) cys.ad(method5, cysVar, new Object[0])).booleanValue()) {
                        m(sb, i2, aw(concat3), ad);
                    }
                }
            }
        }
        fjx fjxVar = cysVar.zzc;
        if (fjxVar != null) {
            for (int i3 = 0; i3 < fjxVar.f16902d; i3++) {
                m(sb, i2, String.valueOf(fjxVar.f16903e[i3] >>> 3), fjxVar.f16904f[i3]);
            }
        }
    }

    public static final String o(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static boolean p(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static void q(JsonWriter jsonWriter, JSONObject jSONObject) {
        try {
            jsonWriter.beginObject();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    jsonWriter.name(next).value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.name(next).value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.name(next).value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    q(jsonWriter.name(next), (JSONObject) obj);
                } else {
                    if (!(obj instanceof JSONArray)) {
                        throw new JSONException("unable to write field: " + String.valueOf(obj));
                    }
                    ak(jsonWriter.name(next), (JSONArray) obj);
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }

    public static JSONObject r(String str, JSONObject jSONObject) {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            return jSONObject2;
        }
    }

    public static String s(zzgxp zzgxpVar) {
        StringBuilder sb = new StringBuilder(zzgxpVar.zzd());
        for (int i2 = 0; i2 < zzgxpVar.zzd(); i2++) {
            byte zza = zzgxpVar.zza(i2);
            if (zza == 34) {
                sb.append("\\\"");
            } else if (zza == 39) {
                sb.append("\\'");
            } else if (zza != 92) {
                switch (zza) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (zza < 32 || zza > 126) {
                            sb.append('\\');
                            sb.append((char) (((zza >>> 6) & 3) + 48));
                            sb.append((char) (((zza >>> 3) & 7) + 48));
                            sb.append((char) ((zza & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zza);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static String t(int i2) {
        return i2 <= 120 ? "ldpi" : i2 <= 160 ? "mdpi" : i2 <= 240 ? "hdpi" : i2 <= 320 ? "xhdpi" : i2 <= 480 ? "xxhdpi" : i2 <= 640 ? "xxxhdpi" : "tooBigDpi";
    }

    public static final void u(blj bljVar, hbu hbuVar, euu euuVar) {
        Object obj;
        bff.p(hbuVar, "registry");
        bff.p(euuVar, "lifecycle");
        HashMap hashMap = bljVar.l;
        if (hashMap == null) {
            obj = null;
        } else {
            synchronized (hashMap) {
                obj = bljVar.l.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || savedStateHandleController.f235a) {
            return;
        }
        savedStateHandleController.e(euuVar, hbuVar);
        fqv fqvVar = ((ajs) euuVar).f10342g;
        if (fqvVar == fqv.INITIALIZED || fqvVar.b(fqv.STARTED)) {
            hbuVar.g();
        } else {
            euuVar.l(new LegacySavedStateHandleController$tryToAddRecreator$1(euuVar, hbuVar));
        }
    }

    public static ghr v(dsg dsgVar, dsg dsgVar2) {
        ecx ecxVar;
        dpb dpbVar;
        int aa = dsgVar.aa();
        int i2 = aa & 31;
        int i3 = (aa & 224) >> 5;
        int i4 = i3 + 1;
        if (i2 == 0) {
            return new ghr(dnd.ENCODED_BYTE, Byte.valueOf(((ByteBuffer) dsgVar.f14704a).get()));
        }
        if (i2 == 6) {
            return new ghr(dnd.ENCODED_LONG, Long.valueOf(aq(dsgVar, i4, true, 0)));
        }
        if (i2 == 2) {
            return new ghr(dnd.ENCODED_SHORT, Short.valueOf((short) aq(dsgVar, i4, true, 0)));
        }
        if (i2 == 3) {
            return new ghr(dnd.ENCODED_CHAR, Character.valueOf((char) aq(dsgVar, i4, false, 0)));
        }
        if (i2 == 4) {
            return new ghr(dnd.ENCODED_INT, Integer.valueOf((int) aq(dsgVar, i4, true, 0)));
        }
        if (i2 == 16) {
            return new ghr(dnd.ENCODED_FLOAT, Float.valueOf(Float.intBitsToFloat((int) aq(dsgVar, i4, false, 4))));
        }
        if (i2 == 17) {
            return new ghr(dnd.ENCODED_DOUBLE, Double.valueOf(Double.longBitsToDouble(aq(dsgVar, i4, false, 8))));
        }
        switch (i2) {
            case 21:
                return new ghr(dnd.ENCODED_METHOD_TYPE, dsgVar2.p((int) aq(dsgVar, i4, false, 0)));
            case 22:
                dnd dndVar = dnd.ENCODED_METHOD_HANDLE;
                dsgVar2.m((((int) aq(dsgVar, i4, false, 0)) * 8) + ((eyc) dsgVar2.f14705b).f16358a.f10771f);
                int q = dsgVar2.q();
                switch (q) {
                    case 0:
                        ecxVar = ecx.STATIC_PUT;
                        break;
                    case 1:
                        ecxVar = ecx.STATIC_GET;
                        break;
                    case 2:
                        ecxVar = ecx.INSTANCE_PUT;
                        break;
                    case 3:
                        ecxVar = ecx.INSTANCE_GET;
                        break;
                    case 4:
                        ecxVar = ecx.INVOKE_STATIC;
                        break;
                    case 5:
                        ecxVar = ecx.INVOKE_INSTANCE;
                        break;
                    case 6:
                        ecxVar = ecx.INVOKE_CONSTRUCTOR;
                        break;
                    case 7:
                        ecxVar = ecx.INVOKE_DIRECT;
                        break;
                    case 8:
                        ecxVar = ecx.INVOKE_INTERFACE;
                        break;
                    default:
                        throw new IllegalArgumentException(awf.d(new StringBuilder("Unknown method handle type: 0x"), q));
                }
                dsgVar2.x(2);
                int q2 = dsgVar2.q();
                if (ecxVar.b()) {
                    flq flqVar = new flq(null);
                    flqVar.f17004g = dsgVar2.g(dsgVar2.l(flqVar, q2));
                    dpbVar = new dpb(ecxVar, flqVar, 0);
                } else {
                    esi esiVar = new esi();
                    esiVar.f16085e = ((((eyc) dsgVar2.f14705b).f16359b & 65535) << 16) | (q2 & 65535);
                    esiVar.f16086f = q2;
                    esiVar.i = dsgVar2;
                    dpbVar = new dpb(ecxVar, esiVar, 1);
                }
                return new ghr(dndVar, dpbVar);
            case 23:
                return new ghr(dnd.ENCODED_STRING, dsgVar2.z((int) aq(dsgVar, i4, false, 0)));
            case 24:
                return new ghr(dnd.ENCODED_TYPE, dsgVar2.g((int) aq(dsgVar, i4, false, 0)));
            case 25:
            case 27:
                dnd dndVar2 = dnd.ENCODED_FIELD;
                int aq = (int) aq(dsgVar, i4, false, 0);
                dsgVar2.getClass();
                flq flqVar2 = new flq(null);
                flqVar2.f17004g = dsgVar2.g(dsgVar2.l(flqVar2, aq));
                return new ghr(dndVar2, flqVar2);
            case 26:
                dnd dndVar3 = dnd.ENCODED_METHOD;
                int aq2 = (int) aq(dsgVar, i4, false, 0);
                esi esiVar2 = new esi();
                esiVar2.f16085e = ((((eyc) dsgVar2.f14705b).f16359b & 65535) << 16) | (aq2 & 65535);
                esiVar2.f16086f = aq2;
                esiVar2.i = dsgVar2;
                return new ghr(dndVar3, esiVar2);
            case 28:
                return new ghr(dnd.ENCODED_ARRAY, j(dsgVar, dsgVar2));
            case 29:
                return new ghr(dnd.ENCODED_ANNOTATION, ctw.k(dsgVar, dsgVar2, false));
            case 30:
                return ghr.f18174a;
            case 31:
                return new ghr(dnd.ENCODED_BOOLEAN, Boolean.valueOf(i3 == 1));
            default:
                throw new beo(awf.d(new StringBuilder("Unknown encoded value type: 0x"), i2));
        }
    }

    public static boolean w(String str) {
        if (TextUtils.isEmpty(str)) {
            str = l();
        }
        if (!TextUtils.isEmpty(str) && str.toLowerCase(Locale.getDefault()).startsWith("emotionui")) {
            return true;
        }
        try {
            String str2 = Build.BRAND;
            if (TextUtils.isEmpty(str2) || !str2.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                String str3 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str3)) {
                    return false;
                }
                if (!str3.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void x(hed hedVar) {
        IntStream convert;
        try {
            if (hedVar.l.g(csv.COMPUTE_POST_DOM)) {
                try {
                    int size = hedVar.ak.size();
                    ArrayList arrayList = new ArrayList(size);
                    ffb.ce(hedVar, hedVar.ad, new fov(19), new efe(4, arrayList));
                    int size2 = arrayList.size();
                    final int[] iArr = new int[size];
                    int i2 = 0;
                    for (int i3 = 0; i3 < size2; i3++) {
                        iArr[i3] = ((fza) arrayList.get(i3)).x;
                    }
                    int size3 = arrayList.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        ((fza) arrayList.get(i4)).x = i4;
                    }
                    fza[] w = kj.w(arrayList, new gpn(19));
                    fza fzaVar = (fza) arrayList.get(0);
                    fzaVar.j = giu.f18223a;
                    fzaVar.aa = null;
                    for (int i5 = 1; i5 < size2; i5++) {
                        fza fzaVar2 = (fza) arrayList.get(i5);
                        fza fzaVar3 = w[i5];
                        fzaVar2.aa = fzaVar3;
                        BitSet bitSet = new BitSet(w.length);
                        while (true) {
                            int i6 = fzaVar3.x;
                            if (bitSet.get(i6)) {
                                break;
                            }
                            bitSet.set(i6);
                            BitSet bitSet2 = fzaVar3.f17687g;
                            if (bitSet2 != null) {
                                bitSet.or(bitSet2);
                                break;
                            }
                            fzaVar3 = w[i6];
                        }
                        fzaVar2.j = bitSet;
                    }
                    for (int i7 = 1; i7 < size2; i7++) {
                        fza fzaVar4 = (fza) arrayList.get(i7);
                        final BitSet bitSet3 = new BitSet(size2);
                        convert = IntStream.VivifiedWrapper.convert(fzaVar4.j.stream());
                        convert.forEach(new IntConsumer() { // from class: g.anj
                            @Override // java.util.function.IntConsumer
                            public final void accept(int i8) {
                                bitSet3.set(iArr[i8]);
                            }

                            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
                                return j$.util.function.l.$default$andThen(this, intConsumer);
                            }
                        });
                        bitSet3.clear(iArr[i7]);
                        fzaVar4.j = bitSet3;
                    }
                    int i8 = size - size2;
                    if (i8 != 0) {
                        for (fza fzaVar5 : hedVar.ak) {
                            if (fzaVar5.j == null) {
                                fzaVar5.j = giu.f18223a;
                                fzaVar5.aa = null;
                                i2 += fzaVar5.ac.size();
                            }
                        }
                        hedVar.bv("Infinite loop detected, blocks: " + i8 + ", insns: " + i2);
                    }
                    hedVar.ba();
                } catch (Exception e2) {
                    e = e2;
                    hedVar.bt("Failed to build post-dominance tree", e);
                    hedVar.ba();
                } catch (StackOverflowError e3) {
                    e = e3;
                    hedVar.bt("Failed to build post-dominance tree", e);
                    hedVar.ba();
                }
            }
        } catch (Throwable th) {
            hedVar.ba();
            throw th;
        }
    }

    public static void y(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("item_id", str2);
        bundle.putString("item_name", str2);
        bundle.putString("content_type", "tool_" + str);
        if (dzm.p != null) {
            acq.br(context, "select_content", bundle);
        }
    }

    public static int z(int i2, int i3, int i4) {
        if ((i3 & 8) != 0) {
            i2--;
        }
        if (i4 <= i2) {
            return i2 - i4;
        }
        throw new IOException(tn.t(i4, i2, "PROTOCOL_ERROR padding ", " > remaining length "));
    }

    public abstract void d(int i2);

    public abstract void e(Typeface typeface, boolean z);
}
