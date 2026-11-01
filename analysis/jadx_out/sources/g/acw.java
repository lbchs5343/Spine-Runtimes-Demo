package g;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.webkit.WebView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.google.android.gms.internal.ads.zzbuj;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class acw {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f10010a;

    /* renamed from: b, reason: collision with root package name */
    public static String f10011b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f10012c;

    /* renamed from: d, reason: collision with root package name */
    public static final Object[] f10013d = new Object[0];

    /* renamed from: e, reason: collision with root package name */
    public static Field f10014e;

    /* renamed from: f, reason: collision with root package name */
    public static String f10015f;

    /* renamed from: g, reason: collision with root package name */
    public static String f10016g;
    public static Resources h;
    public static String i;
    public static Field j;

    public static void aa(Context context) {
        cro.az(context, cro.av(context, 0, "success_total_count") - 1, "success_total_count");
    }

    public static final boolean ab(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        bff.p(bArr, "a");
        bff.p(bArr2, "b");
        for (int i5 = 0; i5 < i4; i5++) {
            if (bArr[i5 + i2] != bArr2[i5 + i3]) {
                return false;
            }
        }
        return true;
    }

    public static int ac(int i2, byte[] bArr) {
        byte b2 = bArr[i2];
        byte b3 = bArr[i2 + 1];
        return ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 2] & 255) << 16) | ((b3 & 255) << 8) | (b2 & 255);
    }

    public static void ad(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    public static boolean ae(dms dmsVar, String str) {
        boolean an = cro.an(dmsVar, str, false);
        if (an) {
            return an;
        }
        synchronized (acw.class) {
            try {
                if (!dmsVar.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(str, false)) {
                    cro.af(dmsVar, str, true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return an;
    }

    public static String af(Context context) {
        String str;
        if (dyd.bp(29)) {
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getAbsolutePath());
            String str2 = File.separator;
            sb.append(str2);
            sb.append(ah(context));
            return awf.c(sb.toString(), str2);
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            externalStorageDirectory = Environment.getDataDirectory();
        }
        if (externalStorageDirectory == null) {
            externalStorageDirectory = Environment.getDownloadCacheDirectory();
        }
        if (externalStorageDirectory == null || context == null) {
            str = null;
        } else {
            str = externalStorageDirectory.getPath() + File.separator;
        }
        if (!TextUtils.isEmpty(str)) {
            StringBuilder o = awf.o(str);
            o.append("TimeShining" + File.separator + ah(context));
            File file = new File(o.toString());
            file.mkdirs();
            if (file.exists()) {
                return file.getPath();
            }
        }
        return null;
    }

    public static void ag(ByteArrayOutputStream byteArrayOutputStream, long j2, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) ((j2 >> (i3 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static String ah(Context context) {
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            return "TimeShining";
        }
        if ("cn.trinea.android.developertools".equals(packageName)) {
            return "DevTools";
        }
        if ("cn.trinea.android.developertools.pro".equals(packageName)) {
            return "DevToolsPro";
        }
        int lastIndexOf = packageName.lastIndexOf(".");
        return lastIndexOf < 0 ? packageName : lastIndexOf < packageName.length() + (-1) ? packageName.substring(lastIndexOf + 1) : "TimeShining";
    }

    public static Object ai(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return awf.q(1, list);
    }

    public static List aj(List list, Object obj, Object obj2) {
        if (list == null || list.isEmpty()) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(obj2);
            return arrayList;
        }
        int indexOf = list.indexOf(obj);
        if (indexOf != -1) {
            list.set(indexOf, obj2);
            return list;
        }
        list.add(obj2);
        return list;
    }

    public static boolean ak(List list, Comparable comparable) {
        if (list == null || list.size() != 1) {
            return false;
        }
        return Objects.equals(list.get(0), comparable);
    }

    public static String al(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String[] ai = eyt.ai(context);
        return aq(str.replace("%an", str2).replace("%vn", ai[0]) + " pm/" + Build.MANUFACTURER + " vc/" + ai[1]);
    }

    public static Object am(List list) {
        int size = list.size();
        if (size == 0) {
            return null;
        }
        return list.remove(size - 1);
    }

    public static String an(Context context) {
        String format;
        String str;
        Locale z = cux.z(context);
        if (z == null || (str = i) == null || !str.equals(z.getLanguage())) {
            i = z == null ? null : z.getLanguage();
            StringBuilder sb = new StringBuilder();
            String str2 = Build.VERSION.RELEASE;
            if (TextUtils.isEmpty(str2)) {
                sb.append("1.0");
            } else if (Character.isDigit(str2.charAt(0))) {
                sb.append(str2);
            } else {
                sb.append("3.0");
            }
            sb.append("; ");
            String language = z != null ? z.getLanguage() : null;
            if (language != null) {
                if ("iw".equals(language)) {
                    language = "he";
                } else if ("in".equals(language)) {
                    language = TTDownloadField.TT_ID;
                } else if ("ji".equals(language)) {
                    language = "yi";
                }
                sb.append(language);
                String country = z.getCountry();
                if (country != null) {
                    sb.append("-");
                    sb.append(country.toLowerCase());
                }
            } else {
                sb.append("en");
            }
            sb.append(";");
            if ("REL".equals(Build.VERSION.CODENAME)) {
                String str3 = Build.MODEL;
                if (str3.length() > 0) {
                    sb.append(" ");
                    sb.append(str3);
                }
            }
            format = String.format(context.getResources().getText(R.string.web_user_agent).toString(), sb, context.getResources().getText(R.string.web_user_agent_target_content).toString());
            f10016g = format;
        } else {
            format = f10016g;
        }
        return !TextUtils.isEmpty(format) ? aq(format) : format;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object ao(ayw aywVar, cvw cvwVar, w wVar) {
        ewn ewnVar;
        int i2;
        try {
            if (wVar instanceof ewn) {
                ewnVar = (ewn) wVar;
                int i3 = ewnVar.label;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    ewnVar.label = i3 - Integer.MIN_VALUE;
                    Object obj = ewnVar.result;
                    cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                    i2 = ewnVar.label;
                    if (i2 != 0) {
                        eg.k(obj);
                        if (ewnVar.getContext()._x(dwm.o) != aywVar) {
                            throw new IllegalStateException("awaitClose() can only be invoked from the producer context");
                        }
                        ewnVar.L$0 = aywVar;
                        ewnVar.L$1 = cvwVar;
                        ewnVar.label = 1;
                        gsn gsnVar = new gsn(1, awt.ab(ewnVar));
                        gsnVar.ac();
                        ((dgs) aywVar).v(new bie(gsnVar));
                        if (gsnVar.z() == cxrVar) {
                            return cxrVar;
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        cvwVar = (cvw) ewnVar.L$1;
                        eg.k(obj);
                    }
                    cvwVar.invoke();
                    return dgi.f14134a;
                }
            }
            if (i2 != 0) {
            }
            cvwVar.invoke();
            return dgi.f14134a;
        } catch (Throwable th) {
            cvwVar.invoke();
            throw th;
        }
        ewnVar = new ewn(wVar);
        Object obj2 = ewnVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i2 = ewnVar.label;
    }

    public static final boolean ap(String str) {
        return "codekk_op".equals(str) || "codekk_op2".equals(str);
    }

    public static String aq(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt > 31 && charAt < 127) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static void ar(JSONObject jSONObject, ActivityManager activityManager) {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("native_heap_size", Debug.getNativeHeapSize());
        jSONObject2.put("native_heap_alloc_size", Debug.getNativeHeapAllocatedSize());
        jSONObject2.put("native_heap_free_size", Debug.getNativeHeapFreeSize());
        Runtime runtime = Runtime.getRuntime();
        jSONObject2.put("max_memory", runtime.maxMemory());
        jSONObject2.put("free_memory", runtime.freeMemory());
        jSONObject2.put("total_memory", runtime.totalMemory());
        if (activityManager != null) {
            jSONObject2.put("memory_class", activityManager.getMemoryClass());
            jSONObject2.put("large_memory_class", activityManager.getLargeMemoryClass());
        }
        jSONObject.put("app_memory_info", jSONObject2);
    }

    public static int as(Context context, String str, String str2) {
        if (h == null) {
            h = context.getResources();
        }
        Resources resources = h;
        if (f10015f == null) {
            f10015f = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, f10015f);
    }

    public static final Object[] at(Collection collection, Object[] objArr) {
        Object[] objArr2;
        int size = collection.size();
        int i2 = 0;
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                if (size <= objArr.length) {
                    objArr2 = objArr;
                } else {
                    Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    bff.ag(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                    objArr2 = (Object[]) newInstance;
                }
                while (true) {
                    int i3 = i2 + 1;
                    objArr2[i2] = it.next();
                    if (i3 >= objArr2.length) {
                        if (!it.hasNext()) {
                            return objArr2;
                        }
                        int i4 = ((i3 * 3) + 1) >>> 1;
                        if (i4 <= i3) {
                            i4 = 2147483645;
                            if (i3 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr2 = Arrays.copyOf(objArr2, i4);
                        bff.e(objArr2, "copyOf(...)");
                    } else if (!it.hasNext()) {
                        if (objArr2 == objArr) {
                            objArr[i3] = null;
                            return objArr;
                        }
                        Object[] copyOf = Arrays.copyOf(objArr2, i3);
                        bff.e(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i2 = i3;
                }
            } else if (objArr.length > 0) {
                objArr[0] = null;
            }
        } else if (objArr.length > 0) {
            objArr[0] = null;
            return objArr;
        }
        return objArr;
    }

    public static boolean au(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("TrineaAndroidCommon", 0).edit();
        edit.putString(str, str2);
        return edit.commit();
    }

    public static String av() {
        String str = f10011b;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            f10011b = awt.ao();
        } catch (Throwable unused) {
        }
        String str2 = f10011b;
        return str2 == null ? "" : str2;
    }

    public static final void aw(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            StringBuilder l = awf.l(j2, "size=", " offset=");
            l.append(j3);
            l.append(" byteCount=");
            l.append(j4);
            throw new ArrayIndexOutOfBoundsException(l.toString());
        }
    }

    public static void ax(AbstractCollection abstractCollection, CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        abstractCollection.add(charSequence);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        if (r0.finished() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        throw new java.lang.IllegalStateException("Inflater did not finish");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] ay(FileInputStream fileInputStream, int i2, int i3) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i3];
            byte[] bArr2 = new byte[2048];
            int i4 = 0;
            int i5 = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i4 < i2) {
                int read = fileInputStream.read(bArr2);
                if (read < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i2 + " bytes");
                }
                inflater.setInput(bArr2, 0, read);
                try {
                    i5 += inflater.inflate(bArr, i5, i3 - i5);
                    i4 += read;
                } catch (DataFormatException e2) {
                    throw new IllegalStateException(e2.getMessage());
                }
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i2 + " actual=" + i4);
        } finally {
            inflater.end();
        }
    }

    public static byte[] az(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    public static InvocationHandler ba() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = am.e();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", null);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, null).getClass().getClassLoader();
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException(e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(e4);
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", null).invoke(null, null);
    }

    public static String bb(Activity activity) {
        byte[] hardwareAddress;
        if (eyt.am(activity, "android.permission.ACCESS_WIFI_STATE") != 0) {
            return null;
        }
        Context d2 = fgj.d(activity);
        if (dyd.ar(23)) {
            WifiInfo connectionInfo = ((WifiManager) d2.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo == null) {
                return null;
            }
            return connectionInfo.getMacAddress();
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces != null) {
                if (!networkInterfaces.hasMoreElements()) {
                    return null;
                }
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (nextElement != null && (hardwareAddress = nextElement.getHardwareAddress()) != null && hardwareAddress.length != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    String sb2 = sb.toString();
                    if ("wlan0".equals(nextElement.getName())) {
                        return sb2;
                    }
                }
            }
            return null;
        } catch (SocketException unused) {
            return null;
        }
    }

    public static Object bc(List list, Predicate predicate) {
        if (list != null && !list.isEmpty()) {
            Object obj = null;
            for (Object obj2 : list) {
                if (predicate.test(obj2)) {
                    if (obj == null) {
                        obj = obj2;
                    }
                }
            }
            return obj;
        }
        return null;
    }

    public static String bd(Activity activity) {
        String af = af(activity);
        if (TextUtils.isEmpty(af)) {
            return null;
        }
        File file = new File(awf.ad(awf.o(af), File.separator, "temp"));
        file.mkdirs();
        if (file.exists()) {
            return file.getPath();
        }
        return null;
    }

    public static Class be(Context context) {
        if (f10012c == null && !f10010a) {
            try {
                f10012c = Class.forName(context.getPackageName() + ".BuildConfig");
            } catch (ClassNotFoundException unused) {
            }
            f10010a = true;
        }
        return f10012c;
    }

    public static boolean bf(byte b2) {
        return b2 > -65;
    }

    public static byte[] bg(InputStream inputStream, int i2) {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i3, i2 - i3);
            if (read < 0) {
                throw new IllegalStateException(awf.ac(i2, "Not enough bytes to read: "));
            }
            i3 += read;
        }
        return bArr;
    }

    public static boolean bh(List list, Predicate predicate) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!predicate.test(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final Object[] bi(Collection collection) {
        int size = collection.size();
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr = new Object[size];
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    objArr[i2] = it.next();
                    if (i3 >= objArr.length) {
                        if (!it.hasNext()) {
                            return objArr;
                        }
                        int i4 = ((i3 * 3) + 1) >>> 1;
                        if (i4 <= i3) {
                            i4 = 2147483645;
                            if (i3 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr = Arrays.copyOf(objArr, i4);
                        bff.e(objArr, "copyOf(...)");
                    } else if (!it.hasNext()) {
                        Object[] copyOf = Arrays.copyOf(objArr, i3);
                        bff.e(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i2 = i3;
                }
            }
        }
        return f10013d;
    }

    public static boolean bj(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return eyt.am(context, "android.permission.ACCESS_NETWORK_STATE") == 0 && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static String bk(cms cmsVar) {
        if (dyd.bp(29)) {
            return "Document" + File.separator + ah(cmsVar);
        }
        StringBuilder sb = new StringBuilder("SDCard");
        String str = File.separator;
        sb.append(str);
        sb.append("TimeShining" + str + ah(cmsVar));
        return sb.toString();
    }

    public static String bl(boolean z) {
        try {
            ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
            if (u(list)) {
                return null;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ArrayList<InetAddress> list2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses());
                if (!u(list2)) {
                    for (InetAddress inetAddress : list2) {
                        if (!inetAddress.isLoopbackAddress()) {
                            String hostAddress = inetAddress.getHostAddress();
                            boolean z2 = hostAddress.indexOf(58) < 0;
                            if (z && z2) {
                                return hostAddress;
                            }
                            if (!z && !z2) {
                                int indexOf = hostAddress.indexOf(37);
                                if (indexOf < 0 || indexOf > hostAddress.length() - 1) {
                                    return hostAddress.toUpperCase();
                                }
                                if ("wlan0".equalsIgnoreCase(hostAddress.substring(indexOf + 1).trim())) {
                                    return hostAddress.substring(0, indexOf).toUpperCase();
                                }
                            }
                        }
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void bm(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static List bn(Collection collection, Predicate predicate) {
        if (collection == null || collection.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (predicate.test(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static int bo(Collection collection) {
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    public static Long k(Context context, String str, long j2) {
        return Long.valueOf(cro.ae(context, str, j2));
    }

    public static void l(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void m(JSONObject jSONObject, ActivityManager activityManager) {
        JSONObject jSONObject2 = new JSONObject();
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        jSONObject2.put("availMem", memoryInfo.availMem);
        jSONObject2.put("lowMemory", memoryInfo.lowMemory);
        jSONObject2.put("threshold", memoryInfo.threshold);
        jSONObject2.put("totalMem", memoryInfo.totalMem);
        jSONObject.put("sys_memory_info", jSONObject2);
    }

    public static boolean n(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public static boolean o(Context context, String str) {
        int av = cro.av(context, 1, str);
        cro.az(context, av + 1, str);
        return av > 2;
    }

    public static Object p(Context context, Callable callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return callable.call();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            agd.f("Unexpected exception.", th);
            zzbuj.zza(context).zzh(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }

    public static void q(JSONObject jSONObject) {
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("dalvikPrivateDirty", x(memoryInfo.dalvikPrivateDirty));
        jSONObject2.put("dalvikPss", x(memoryInfo.dalvikPss));
        jSONObject2.put("dalvikSharedDirty", x(memoryInfo.dalvikSharedDirty));
        jSONObject2.put("nativePrivateDirty", x(memoryInfo.nativePrivateDirty));
        jSONObject2.put("nativePss", x(memoryInfo.nativePss));
        jSONObject2.put("nativeSharedDirty", x(memoryInfo.nativeSharedDirty));
        jSONObject2.put("otherPrivateDirty", x(memoryInfo.otherPrivateDirty));
        jSONObject2.put("otherPss", x(memoryInfo.otherPss));
        jSONObject2.put("otherSharedDirty", memoryInfo.otherSharedDirty);
        jSONObject2.put("totalPrivateClean", memoryInfo.getTotalPrivateClean());
        jSONObject2.put("totalPrivateDirty", memoryInfo.getTotalPrivateDirty());
        jSONObject2.put("totalPss", x(memoryInfo.getTotalPss()));
        jSONObject2.put("totalSharedClean", memoryInfo.getTotalSharedClean());
        jSONObject2.put("totalSharedDirty", x(memoryInfo.getTotalSharedDirty()));
        jSONObject2.put("totalSwappablePss", x(memoryInfo.getTotalSwappablePss()));
        jSONObject.put("memory_info", jSONObject2);
    }

    public static String r(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? awf.b(i2, "Unknown(", ")") : "BIN" : "Great" : "Good" : "Moderate" : "Poor";
    }

    public static void s(Context context, String str, long j2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("TrineaAndroidCommon", 0).edit();
        edit.putLong(str, j2);
        edit.commit();
    }

    public static List t(Collection collection, Function function) {
        if (collection == null || collection.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(function.apply(it.next()));
        }
        return arrayList;
    }

    public static boolean u(Collection collection) {
        return collection == null || collection.size() == 0;
    }

    public static void v(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        ag(byteArrayOutputStream, i2, 2);
    }

    public static long w(InputStream inputStream, int i2) {
        byte[] bg = bg(inputStream, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 += (bg[i3] & 255) << (i3 * 8);
        }
        return j2;
    }

    public static long x(int i2) {
        if (i2 < 0) {
            return 0L;
        }
        return i2 * 1024;
    }

    public static boolean y(Collection collection, Predicate predicate) {
        if (collection == null || collection.isEmpty()) {
            return false;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static String z(Activity activity) {
        NetworkInfo activeNetworkInfo;
        TelephonyManager telephonyManager;
        if (eyt.am(activity, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) activity.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            return "disconnect";
        }
        String typeName = activeNetworkInfo.getTypeName();
        if ("WIFI".equalsIgnoreCase(typeName)) {
            return "Wifi";
        }
        if (!"MOBILE".equalsIgnoreCase(typeName)) {
            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        }
        if (!TextUtils.isEmpty(Proxy.getDefaultHost())) {
            return "Wap";
        }
        if (eyt.am(activity, "android.permission.READ_PHONE_STATE") != 0 || (telephonyManager = (TelephonyManager) activity.getSystemService("phone")) == null) {
            return "Mobile 2g";
        }
        try {
            switch (telephonyManager.getNetworkType()) {
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 13:
                case 14:
                case 15:
                    return "Mobile 4g/3g";
                case 4:
                case 7:
                case 11:
                default:
                    return "Mobile 2g";
            }
        } catch (SecurityException unused) {
            return "Mobile 2g";
        }
    }
}
