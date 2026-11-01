package g;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.PopupWindow;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class byh implements gig {

    /* renamed from: b, reason: collision with root package name */
    public static Field f12443b = null;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f12445d = false;

    /* renamed from: e, reason: collision with root package name */
    public static final fpd f12446e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f12447f = true;

    /* renamed from: g, reason: collision with root package name */
    public static fpd f12448g;
    public static Method h;
    public static Boolean i;
    public static boolean j;
    public static boolean k;

    /* renamed from: c, reason: collision with root package name */
    public static final aoy[] f12444c = {new aoy("com.google.android.gms.measurement.AppMeasurementJobService"), new aoy("com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService")};
    public static final String[] l = {"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "last_advertising_id_reset", "first_open_after_install", "lifetime_user_engagement", "session_user_engagement", "non_personalized_ads", "ga_session_number", "ga_session_id", "last_gclid", "session_number", "session_id"};

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f12442a = {"_ln", "_fot", "_fvt", "_ldl", ada.COLUMN_ID, "_lair", "_fi", "_lte", "_se", "_npa", "_sno", "_sid", "_lgclid", "_sno", "_sid"};

    static {
        Object obj = null;
        f12446e = new fpd(obj, obj, obj, 7, false);
    }

    public static Object aa(chw chwVar) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ckd.at("Must not be called on the main application thread");
        ckd.aq();
        ckd.w(chwVar, "Task must not be null");
        ja jaVar = chwVar.i;
        ckd.w(timeUnit, "TimeUnit must not be null");
        if (chwVar.d()) {
            return aq(chwVar);
        }
        dcq dcqVar = new dcq(23);
        fpe fpeVar = fot.f17160b;
        jaVar.f(new err((Executor) fpeVar, (etk) dcqVar));
        chwVar.n();
        jaVar.f(new err((Executor) fpeVar, (fbr) dcqVar));
        chwVar.n();
        jaVar.f(new err((Executor) fpeVar, (brm) dcqVar));
        chwVar.n();
        if (((CountDownLatch) dcqVar.f13976f).await(30000L, timeUnit)) {
            return aq(chwVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static gdt ab(String str) {
        gdt gdtVar = null;
        if (str != null && !str.isEmpty()) {
            gdtVar = (gdt) gdt.f17948a.get(Integer.valueOf(Integer.parseInt(str)));
        }
        if (gdtVar != null) {
            return gdtVar;
        }
        throw new IllegalArgumentException(tn.x("Unsupported commandId ", str));
    }

    public static void ac(List list, iz izVar, dtn dtnVar, ajm ajmVar) {
        int size;
        if (list == null || list.size() - 1 < 0) {
            return;
        }
        ((bbs) list.get(size)).getClass();
        throw null;
    }

    public static void ad(Context context, String str, boolean z) {
        ay(context, str, Integer.toString(z ? 1 : 0));
    }

    public static boolean ae(gey geyVar, gey geyVar2) {
        if (!geyVar.getClass().equals(geyVar2.getClass())) {
            return false;
        }
        if ((geyVar instanceof gdz) || (geyVar instanceof hee)) {
            return true;
        }
        if (!(geyVar instanceof hbz)) {
            return geyVar instanceof bsa ? geyVar.zzi().equals(geyVar2.zzi()) : geyVar instanceof bbk ? geyVar.zzg().equals(geyVar2.zzg()) : geyVar == geyVar2;
        }
        if (Double.isNaN(geyVar.zzh().doubleValue()) || Double.isNaN(geyVar2.zzh().doubleValue())) {
            return false;
        }
        return geyVar.zzh().equals(geyVar2.zzh());
    }

    public static void af(String str, eek eekVar, ArrayList arrayList, yu yuVar) {
        gsh aj;
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 4;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int codePointAt = str.codePointAt(i3);
            i3 += Character.charCount(codePointAt);
            boolean z = codePointAt == 1;
            boolean z2 = codePointAt == 2;
            if (z || z2) {
                if (sb.length() != 0) {
                    eekVar._an(gsh.aj(new epw(sb.toString())));
                    sb.setLength(0);
                }
                if (z) {
                    eekVar._an(gsh.ai(yuVar, i4, cwx.ad));
                    i4++;
                } else {
                    int i5 = i2 + 1;
                    ghr ghrVar = (ghr) arrayList.get(i2);
                    Object m = bff.m(ghrVar);
                    if (m == null) {
                        aj = gsh.ag(0L, cwx.ad);
                    } else if (m instanceof ekh) {
                        aj = (ekh) m;
                    } else if (m instanceof cwx) {
                        aj = gsh.aj(new dkd((cwx) m));
                    } else {
                        if (!(m instanceof String)) {
                            throw new gck("Can't build insn arg from encoded value: " + ghrVar);
                        }
                        aj = gsh.aj(new epw((String) m));
                    }
                    eekVar._an(aj);
                    i2 = i5;
                }
            } else {
                sb.appendCodePoint(codePointAt);
            }
        }
        if (sb.length() != 0) {
            eekVar._an(gsh.aj(new epw(sb.toString())));
        }
    }

    public static void ag(PopupWindow popupWindow, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            id.k(popupWindow, i2);
            return;
        }
        if (!j) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                h = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            j = true;
        }
        Method method = h;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i2));
            } catch (Exception unused2) {
            }
        }
    }

    public static void ah(int i2, String str, List list) {
        if (list.size() == i2) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires " + i2 + " parameters found " + list.size());
    }

    public static void ai(ui uiVar, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            id.v(uiVar, z);
            return;
        }
        if (!f12445d) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f12443b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f12445d = true;
        }
        Field field = f12443b;
        if (field != null) {
            try {
                field.set(uiVar, Boolean.valueOf(z));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public static boolean aj(Context context) {
        return context.getResources().getInteger(R.integer.adchannel) == 2;
    }

    public static HashMap ak(byt bytVar) {
        HashMap hashMap = new HashMap();
        bytVar.getClass();
        Iterator it = new ArrayList(bytVar.f12467c.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Object v = v(bytVar.zzf(str));
            if (v != null) {
                hashMap.put(str, v);
            }
        }
        return hashMap;
    }

    public static boolean al(Context context, boolean z) {
        return context.getResources().getInteger(R.integer.cchannel) == 3 && aw(context, z);
    }

    public static eek am(yu yuVar, ArrayList arrayList) {
        try {
            eek eekVar = new eek(hay.STR_CONCAT, (arrayList.size() - 3) + yuVar.i());
            af((String) ((ghr) arrayList.get(3)).f18176f, eekVar, arrayList, yuVar);
            int k2 = yuVar.k();
            if (k2 != -1) {
                aog aogVar = cwx.al;
                dba dbaVar = gsh.ad;
                eekVar.ax(new gks(k2, aogVar));
            }
            return eekVar;
        } catch (Exception e2) {
            eek eekVar2 = new eek(hay.NOP, 0);
            eekVar2.w(csv.SYNTHETIC);
            eekVar2.o(acq.af, new hab("Failed to process dynamic string concat: " + e2.getMessage(), e2));
            return eekVar2;
        }
    }

    public static Long an(Context context, String str, long j2) {
        String ax = ax(context, str, null);
        if (TextUtils.isEmpty(ax)) {
            return Long.valueOf(j2);
        }
        try {
            return Long.valueOf(Long.parseLong(ax));
        } catch (NumberFormatException unused) {
            return Long.valueOf(j2);
        }
    }

    public static boolean ao(String str, boolean z) {
        try {
            return Boolean.parseBoolean(str);
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return z;
        }
    }

    public static boolean ap(gey geyVar) {
        if (geyVar == null) {
            return false;
        }
        Double zzh = geyVar.zzh();
        return !zzh.isNaN() && zzh.doubleValue() >= 0.0d && zzh.equals(Double.valueOf(Math.floor(zzh.doubleValue())));
    }

    public static Object aq(ci ciVar) {
        if (ciVar.a()) {
            return ciVar.c();
        }
        if (((chw) ciVar).f12905e) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(ciVar.b());
    }

    public static double ar(double d2) {
        if (Double.isNaN(d2)) {
            return 0.0d;
        }
        if (Double.isInfinite(d2) || d2 == 0.0d || d2 == 0.0d) {
            return d2;
        }
        return Math.floor(Math.abs(d2)) * (d2 > 0.0d ? 1 : -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final InetAddress as(int i2, int i3, String str) {
        int i4;
        byte[] bArr = new byte[16];
        int i5 = 0;
        int i6 = -1;
        int i7 = -1;
        int i8 = i2;
        while (true) {
            if (i8 >= i3) {
                break;
            }
            if (i5 == 16) {
                return null;
            }
            int i9 = i8 + 2;
            if (i9 <= i3 && dmc.bz(str, i8, "::", false)) {
                if (i6 != -1) {
                    return null;
                }
                i5 += 2;
                i6 = i5;
                if (i9 == i3) {
                    break;
                }
                i7 = i9;
                i8 = i7;
                int i10 = 0;
                while (i8 < i3) {
                }
                i4 = i8 - i7;
                return i4 == 0 ? null : null;
            }
            if (i5 != 0) {
                if (dmc.bz(str, i8, ":", false)) {
                    i8++;
                } else {
                    if (!dmc.bz(str, i8, ".", false)) {
                        return null;
                    }
                    int i11 = i5 - 2;
                    int i12 = i11;
                    while (i7 < i3) {
                        if (i12 == 16) {
                            return null;
                        }
                        if (i12 != i11) {
                            if (str.charAt(i7) != '.') {
                                return null;
                            }
                            i7++;
                        }
                        int i13 = i7;
                        int i14 = 0;
                        while (i13 < i3) {
                            char charAt = str.charAt(i13);
                            if (bff.ad(charAt, 48) < 0 || bff.ad(charAt, 57) > 0) {
                                break;
                            }
                            if ((i14 == 0 && i7 != i13) || ((i14 * 10) + charAt) - 48 > 255) {
                                return null;
                            }
                            i13++;
                        }
                        if (i13 - i7 == 0) {
                            return null;
                        }
                        bArr[i12] = (byte) i14;
                        i12++;
                        i7 = i13;
                    }
                    if (i12 != i5 + 2) {
                        return null;
                    }
                    i5 += 2;
                }
            }
            i7 = i8;
            i8 = i7;
            int i102 = 0;
            while (i8 < i3) {
                int aa = erq.aa(str.charAt(i8));
                if (aa == -1) {
                    break;
                }
                i102 = (i102 << 4) + aa;
                i8++;
            }
            i4 = i8 - i7;
            if (i4 == 0 && i4 <= 4) {
                int i15 = i5 + 1;
                bArr[i5] = (byte) (255 & (i102 >>> 8));
                i5 += 2;
                bArr[i15] = (byte) (i102 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            }
        }
        if (i5 != 16) {
            if (i6 == -1) {
                return null;
            }
            int i16 = i5 - i6;
            System.arraycopy(bArr, i6, bArr, 16 - i16, i16);
            Arrays.fill(bArr, i6, (16 - i5) + i6, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    public static void at(dpa dpaVar) {
        int az = az(dpaVar.k("runtime.counter").zzh().doubleValue() + 1.0d);
        if (az > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        dpaVar.q("runtime.counter", new hbz(Double.valueOf(az)));
    }

    public static float au(float f2, String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return f2;
        }
    }

    public static int av(Context context, int i2, String str) {
        String ax = ax(context, str, null);
        if (TextUtils.isEmpty(ax)) {
            return i2;
        }
        try {
            return Integer.parseInt(ax);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
    
        if ("honor".equalsIgnoreCase(r5) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean aw(Context context, boolean z) {
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTimeInMillis(Long.parseLong(context.getString(R.string.compile_time)));
        } catch (NumberFormatException unused) {
            calendar.setTimeInMillis(1739623799170L);
        }
        int i2 = 2;
        calendar.add(5, ((context.getResources().getInteger(R.integer.cchannel) == 3) && fnp.f()) ? 2 : 1);
        if (z) {
            if (!fnp.m()) {
                String str = Build.MANUFACTURER;
                if (!"oppo".equalsIgnoreCase(str)) {
                    if (!fnp.f()) {
                        if (!"huawei".equalsIgnoreCase(str)) {
                        }
                        calendar.add(5, i2);
                    }
                }
            }
            i2 = 0;
            calendar.add(5, i2);
        }
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        return System.currentTimeMillis() < calendar.getTimeInMillis();
    }

    public static String ax(Context context, String str, String str2) {
        int columnIndex;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        String[] strArr = {"local", str};
        synchronized (ada.class) {
            try {
                Cursor query = context.getContentResolver().query(ada.getContentUri(context), null, "(d=? AND k=?)", strArr, null);
                if (query != null && (columnIndex = query.getColumnIndex(ada.COLUMN_VALUE)) >= 0) {
                    if (query.moveToFirst()) {
                        str2 = query.getString(columnIndex);
                    }
                    if (!query.isClosed()) {
                        query.close();
                    }
                    return str2;
                }
                return str2;
            } finally {
            }
        }
    }

    public static Uri ay(Context context, String str, String str2) {
        Uri insert;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(ada.COLUMN_DOMAIN, "local");
        contentValues.put(ada.COLUMN_KEY, str);
        contentValues.put(ada.COLUMN_VALUE, str2);
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        contentValues.put(ada.COLUMN_CREATE_TIME, Long.valueOf(System.currentTimeMillis()));
        synchronized (ada.class) {
            insert = context.getContentResolver().insert(ada.getContentUri(context), contentValues);
        }
        return insert;
    }

    public static int az(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2) || d2 == 0.0d) {
            return 0;
        }
        return (int) ((Math.floor(Math.abs(d2)) * (d2 > 0.0d ? 1 : -1)) % 4.294967296E9d);
    }

    public static void ba(String str, int i2, ArrayList arrayList) {
        if (arrayList.size() <= i2) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires at most " + i2 + " parameters found " + arrayList.size());
    }

    public static void bb(Context context, int i2, String str) {
        ay(context, str, Integer.toString(i2));
    }

    public static boolean bc() {
        Boolean bool = i;
        return bool != null && bool.booleanValue();
    }

    public static chw bd(Callable callable, Executor executor) {
        ckd.w(executor, "Executor must not be null");
        chw chwVar = new chw();
        executor.execute(new fuy(chwVar, 18, callable));
        return chwVar;
    }

    public static List be(Context context, ArrayList arrayList) {
        String ax = ax(context, "op_update_noti_mode", null);
        return ax == null ? arrayList : new ArrayList(Arrays.asList(ax.split(",")));
    }

    public static void bf(int i2, String str, List list) {
        if (list.size() >= i2) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires at least " + i2 + " parameters found " + list.size());
    }

    public static boolean m(ArrayList arrayList) {
        if (arrayList.size() >= 4) {
            dpb dpbVar = (dpb) ((ghr) arrayList.get(0)).f18176f;
            if (dpbVar.e() == ecx.INVOKE_STATIC) {
                ful d2 = dpbVar.d();
                if (d2.getName().equals("makeConcatWithConstants") && d2.l().equals("Ljava/lang/invoke/StringConcatFactory;") && Objects.equals(((ghr) arrayList.get(1)).f18176f, "makeConcatWithConstants") && ((ghr) arrayList.get(3)).f18175b == dnd.ENCODED_STRING) {
                    return true;
                }
            }
        }
        return false;
    }

    public static gzf n(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            if (bundle2 == null) {
                return new gzf();
            }
            HashMap hashMap = new HashMap();
            for (String str : bundle2.keySet()) {
                bff.e(str, "key");
                hashMap.put(str, bundle2.get(str));
            }
            return new gzf(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = parcelableArrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = parcelableArrayList.get(i2);
            bff.ag(obj, "null cannot be cast to non-null type kotlin.String");
            linkedHashMap.put((String) obj, parcelableArrayList2.get(i2));
        }
        return new gzf(linkedHashMap);
    }

    public static int o(String str, int i2) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return i2;
        }
    }

    public static void p(Context context, String str) {
        List<String> be = be(context, null);
        if (be == null) {
            be = new ArrayList();
        }
        if (be.contains(str)) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : be) {
                if (!cux.ah(str2, str)) {
                    arrayList.add(str2);
                }
            }
            ay(context, "op_update_noti_mode", TextUtils.join(",", arrayList));
        }
    }

    public static void q(ContextWrapper contextWrapper) {
        PackageManager packageManager = contextWrapper.getPackageManager();
        if (packageManager != null) {
            aoy[] aoyVarArr = f12444c;
            if (acw.n(aoyVarArr)) {
                return;
            }
            int i2 = 0;
            if ((contextWrapper.getResources().getInteger(R.integer.cchannel) == 2 || contextWrapper.getResources().getInteger(R.integer.cchannel) == 3) && !k) {
                while (i2 < 2) {
                    try {
                        packageManager.setComponentEnabledSetting(new ComponentName(contextWrapper.getPackageName(), (String) aoyVarArr[i2].h), 2, 1);
                    } catch (Exception unused) {
                    }
                    i2++;
                }
                return;
            }
            while (i2 < 2) {
                try {
                    packageManager.setComponentEnabledSetting(new ComponentName(contextWrapper.getPackageName(), (String) aoyVarArr[i2].h), 1, 1);
                } catch (Exception unused2) {
                }
                i2++;
            }
        }
    }

    public static boolean r(Context context, String str, boolean z) {
        String ax = ax(context, str, null);
        if (TextUtils.isEmpty(ax)) {
            return z;
        }
        try {
            return Integer.parseInt(ax) == 1;
        } catch (NumberFormatException unused) {
            return z;
        }
    }

    public static int s(int i2) {
        return (int) (Integer.rotateLeft((int) (i2 * (-862048943)), 15) * 461845907);
    }

    public static final String t(String str) {
        bff.p(str, "<this>");
        int i2 = -1;
        int i3 = 0;
        if (!dcv.bq(str, ":")) {
            try {
                String ascii = IDN.toASCII(str);
                bff.e(ascii, "toASCII(host)");
                Locale locale = Locale.US;
                bff.e(locale, "US");
                String lowerCase = ascii.toLowerCase(locale);
                bff.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (lowerCase.length() == 0) {
                    return null;
                }
                int length = lowerCase.length();
                for (int i4 = 0; i4 < length; i4++) {
                    char charAt = lowerCase.charAt(i4);
                    if (bff.ad(charAt, 31) <= 0 || bff.ad(charAt, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) >= 0 || dcv.bh(" #%/:?@[\\]", charAt, 0, 6) != -1) {
                        return null;
                    }
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress as = (dmc.bw(str, "[", false) && dmc.by(str, "]")) ? as(1, str.length() - 1, str) : as(0, str.length(), str);
        if (as == null) {
            return null;
        }
        byte[] address = as.getAddress();
        if (address.length != 16) {
            if (address.length == 4) {
                return as.getHostAddress();
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < address.length) {
            int i7 = i5;
            while (i7 < 16 && address[i7] == 0 && address[i7 + 1] == 0) {
                i7 += 2;
            }
            int i8 = i7 - i5;
            if (i8 > i6 && i8 >= 4) {
                i2 = i5;
                i6 = i8;
            }
            i5 = i7 + 2;
        }
        clq clqVar = new clq();
        while (i3 < address.length) {
            if (i3 == i2) {
                clqVar.al(58);
                i3 += i6;
                if (i3 == 16) {
                    clqVar.al(58);
                }
            } else {
                if (i3 > 0) {
                    clqVar.al(58);
                }
                byte b2 = address[i3];
                byte[] bArr = erq.f16043c;
                clqVar.u(((b2 & 255) << 8) | (address[i3 + 1] & 255));
                i3 += 2;
            }
        }
        return clqVar.x();
    }

    public static int u(dsg dsgVar) {
        int i2;
        int i3 = 0;
        int i4 = 0;
        do {
            int aa = dsgVar.aa();
            i3 |= (aa & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) << (i4 * 7);
            i4++;
            i2 = aa & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
            if (i2 != 128) {
                break;
            }
        } while (i4 < 5);
        if (i2 != 128) {
            return i3;
        }
        throw new beo("Invalid LEB128 sequence");
    }

    public static Object v(gey geyVar) {
        if (gey.i.equals(geyVar)) {
            return null;
        }
        if (gey.o.equals(geyVar)) {
            return "";
        }
        if (geyVar instanceof byt) {
            return ak((byt) geyVar);
        }
        if (!(geyVar instanceof gwa)) {
            return !geyVar.zzh().isNaN() ? geyVar.zzh() : geyVar.zzi();
        }
        ArrayList arrayList = new ArrayList();
        gwa gwaVar = (gwa) geyVar;
        gwaVar.getClass();
        int i2 = 0;
        while (i2 < gwaVar.s()) {
            if (i2 >= gwaVar.s()) {
                throw new NoSuchElementException(awf.ac(i2, "Out of bounds index: "));
            }
            int i3 = i2 + 1;
            Object v = v(gwaVar.g(i2));
            if (v != null) {
                arrayList.add(v);
            }
            i2 = i3;
        }
        return arrayList;
    }

    public static chw w(Object obj) {
        chw chwVar = new chw();
        chwVar.m(obj);
        return chwVar;
    }

    public static Object x(chw chwVar) {
        ja jaVar = chwVar.i;
        ckd.at("Must not be called on the main application thread");
        ckd.aq();
        if (chwVar.d()) {
            return aq(chwVar);
        }
        dcq dcqVar = new dcq(23);
        fpe fpeVar = fot.f17160b;
        jaVar.f(new err((Executor) fpeVar, (etk) dcqVar));
        chwVar.n();
        jaVar.f(new err((Executor) fpeVar, (fbr) dcqVar));
        chwVar.n();
        jaVar.f(new err((Executor) fpeVar, (brm) dcqVar));
        chwVar.n();
        ((CountDownLatch) dcqVar.f13976f).await();
        return aq(chwVar);
    }

    public static void y(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static bgh z(Context context, dlv dlvVar, JSONObject jSONObject, JSONObject jSONObject2) {
        blw blwVar;
        csh cshVar = new csh();
        String optString = jSONObject.optString("on");
        JSONArray optJSONArray = jSONObject.optJSONArray("handlers");
        cshVar.f13426a = buj.at(optString, jSONObject2);
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            cshVar = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                blw at = buj.at(optJSONArray.optString(i2), jSONObject2);
                if (at != null) {
                    arrayList.add(at);
                }
            }
            cshVar.f13427b = arrayList;
        }
        if (cshVar != null && (blwVar = cshVar.f13426a) != null) {
            if (TextUtils.equals(blwVar.f11806a, MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM)) {
                dus dusVar = new dus(context);
                dusVar.dq(dlvVar);
                dusVar.dq(cshVar);
                dusVar.iw();
                return dusVar;
            }
            btr btrVar = (btr) re.f19895a.get(blwVar.f11807b);
            if (btrVar != null) {
                bgh dq = btrVar.dq(context);
                dq.dq(dlvVar);
                dq.dq(cshVar);
                dq.iw();
                return dq;
            }
        }
        return null;
    }

    public abstract boolean bg();

    @Override // g.gig
    public void bh() {
    }

    public abstract void bi(boolean z);

    public abstract InputFilter[] bj(InputFilter[] inputFilterArr);

    @Override // g.gig
    public void bk() {
    }

    public abstract TransformationMethod bl(TransformationMethod transformationMethod);

    public abstract void bm(boolean z);
}
