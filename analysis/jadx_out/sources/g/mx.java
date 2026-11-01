package g;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbew;
import com.google.android.gms.internal.ads.zzftd;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class mx {
    public float h;

    /* renamed from: e, reason: collision with root package name */
    public static final zzftd f19684e = new zzftd(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    public static final String f19685f = aia.class.getName();

    /* renamed from: b, reason: collision with root package name */
    public static final String f19681b = eti.class.getName();

    /* renamed from: c, reason: collision with root package name */
    public static final String f19682c = aph.class.getName();

    /* renamed from: d, reason: collision with root package name */
    public static final String f19683d = ban.class.getName();

    /* renamed from: g, reason: collision with root package name */
    public static final String f19686g = dzf.class.getName();

    /* renamed from: a, reason: collision with root package name */
    public static final String f19680a = bya.class.getName();

    public static final int i(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    public static final String j(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || l()) {
            string = "emulator";
        }
        return m(string, "MD5");
    }

    public static final int k(Context context, int i) {
        return i(context.getResources().getDisplayMetrics(), i);
    }

    public static final boolean l() {
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlb)).booleanValue();
        if (Build.VERSION.SDK_INT < 31) {
            return Build.DEVICE.startsWith("generic");
        }
        String str = Build.FINGERPRINT;
        if (str.contains("generic") || str.contains("emulator")) {
            return true;
        }
        return booleanValue && Build.HARDWARE.contains("ranchu");
    }

    public static String m(String str, String str2) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    public static final void n(Context context, String str, Bundle bundle, ciq ciqVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            gna.i.getClass();
            str = gna.j(context) + ".243799000";
        }
        bundle.putString("js", str);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter(TTDownloadField.TT_ID, "gmob-apps");
        for (String str2 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str2, bundle.getString(str2));
        }
        ciqVar.zza(appendQueryParameter.toString());
    }

    public static void o(JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject2.get(next);
            try {
                Object obj2 = jSONObject.get(next);
                if (JSONObject.class.isInstance(obj2) && JSONObject.class.isInstance(obj)) {
                    o((JSONObject) obj2, (JSONObject) obj);
                }
            } catch (JSONException unused) {
                jSONObject.put(next, obj);
            }
        }
    }

    public static boolean p(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) zzbew.zzd.zze());
    }

    public final JSONObject q(Map map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                r(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e2) {
            throw new JSONException("Could not convert map to JSON: ".concat(String.valueOf(e2.getMessage())));
        }
    }

    public final void r(JSONObject jSONObject, String str, Object obj) {
        Boolean[] boolArr;
        Long[] lArr;
        Double[] dArr;
        Integer[] numArr;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzo)).booleanValue()) {
            str = String.valueOf(str);
        }
        if (obj instanceof Bundle) {
            jSONObject.put(str, w((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, q((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONObject.put(String.valueOf(str), u((Collection) obj));
            return;
        }
        if (obj instanceof Object[]) {
            jSONObject.put(str, u(Arrays.asList((Object[]) obj)));
            return;
        }
        int i = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (iArr == null) {
                numArr = new Integer[0];
            } else {
                int length = iArr.length;
                Integer[] numArr2 = new Integer[length];
                while (i < length) {
                    numArr2[i] = Integer.valueOf(iArr[i]);
                    i++;
                }
                numArr = numArr2;
            }
            jSONObject.put(str, t(numArr));
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr2 = (double[]) obj;
            if (dArr2 == null) {
                dArr = new Double[0];
            } else {
                int length2 = dArr2.length;
                Double[] dArr3 = new Double[length2];
                while (i < length2) {
                    dArr3[i] = Double.valueOf(dArr2[i]);
                    i++;
                }
                dArr = dArr3;
            }
            jSONObject.put(str, t(dArr));
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (jArr == null) {
                lArr = new Long[0];
            } else {
                int length3 = jArr.length;
                Long[] lArr2 = new Long[length3];
                while (i < length3) {
                    lArr2[i] = Long.valueOf(jArr[i]);
                    i++;
                }
                lArr = lArr2;
            }
            jSONObject.put(str, t(lArr));
            return;
        }
        if (!(obj instanceof boolean[])) {
            jSONObject.put(str, obj);
            return;
        }
        boolean[] zArr = (boolean[]) obj;
        if (zArr == null) {
            boolArr = new Boolean[0];
        } else {
            int length4 = zArr.length;
            Boolean[] boolArr2 = new Boolean[length4];
            while (i < length4) {
                boolArr2[i] = Boolean.valueOf(zArr[i]);
                i++;
            }
            boolArr = boolArr2;
        }
        jSONObject.put(str, t(boolArr));
    }

    public final int s(Context context, int i) {
        if (this.h < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            synchronized (this) {
                try {
                    if (this.h < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        if (windowManager == null) {
                            return 0;
                        }
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        defaultDisplay.getMetrics(displayMetrics);
                        this.h = displayMetrics.density;
                    }
                } finally {
                }
            }
        }
        return Math.round(i / this.h);
    }

    public final JSONArray t(Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            v(jSONArray, obj);
        }
        return jSONArray;
    }

    public final JSONArray u(Collection collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            v(jSONArray, it.next());
        }
        return jSONArray;
    }

    public final void v(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(w((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(q((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(u((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(t((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    public final JSONObject w(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            r(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }
}
