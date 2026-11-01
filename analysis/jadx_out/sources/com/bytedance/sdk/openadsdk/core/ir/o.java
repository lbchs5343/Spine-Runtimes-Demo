package com.bytedance.sdk.openadsdk.core.ir;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.system.OsConstants;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrength;
import android.telephony.CellSignalStrengthTdscdma;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.k;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.abn;
import g.aft;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o {
    private static volatile long cd;

    /* renamed from: d, reason: collision with root package name */
    private static volatile boolean f3067d;
    private static String dq;

    /* renamed from: f, reason: collision with root package name */
    private static volatile long f3069f;
    private static volatile String gh;
    private static volatile p h;
    private static volatile long i;
    private static volatile d ji;
    private static volatile long k;
    private static volatile String le;
    private static volatile long mp;
    private static volatile boolean ox;
    private static volatile long q;
    private static volatile String r;
    private static AtomicBoolean p = new AtomicBoolean(false);
    private static AtomicBoolean s = new AtomicBoolean(false);
    private static AtomicInteger iw = new AtomicInteger(-1);
    private static volatile boolean mn = true;
    private static long ia = 0;
    private static volatile int kk = -1;
    private static volatile int o = -1;
    private static volatile String no = null;
    private static volatile String ig = null;
    private static volatile float jy = -2.0f;
    private static volatile int fw = -1;
    private static volatile long wp = -1;

    /* renamed from: e, reason: collision with root package name */
    private static volatile long f3068e = System.currentTimeMillis();
    private static volatile int kx = -1;

    public static class d extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("present", false);
                if (booleanExtra) {
                    int intExtra = intent.getIntExtra("status", -1);
                    if (intExtra == -1) {
                        dq.dq = intExtra;
                    } else if (intExtra == 2) {
                        dq.dq = 1;
                    } else {
                        dq.dq = 0;
                    }
                } else {
                    dq.dq = 2;
                }
                dq.f3070d = (intent.getIntExtra("level", -1) * 100) / intent.getIntExtra("scale", -1);
                if (!com.bytedance.sdk.openadsdk.core.no.ia().le()) {
                    com.bytedance.sdk.openadsdk.dq.d.d.dq(booleanExtra);
                }
            }
            if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                com.bytedance.sdk.component.utils.ia.dq().post(new com.bytedance.sdk.component.o.kk("tt_vol") { // from class: com.bytedance.sdk.openadsdk.core.ir.o.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AudioManager audioManager = (AudioManager) com.bytedance.sdk.openadsdk.core.wp.getContext().getSystemService(MediaFormat.KEY_AUDIO);
                            if (audioManager == null) {
                                return;
                            }
                            int unused = o.kx = audioManager.getStreamVolume(3);
                        } catch (Exception unused2) {
                        }
                    }
                });
            }
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        static float f3070d = 0.0f;
        static int dq = -1;

        public static float d(Context context) {
            com.bytedance.sdk.openadsdk.dq.d.d.d(context);
            return f3070d;
        }

        public static int dq(Context context) {
            com.bytedance.sdk.openadsdk.dq.d.d.dq(context);
            return dq;
        }
    }

    public static class ox implements k.dq {
        @Override // com.bytedance.sdk.component.utils.k.dq
        public void dq(Context context, Intent intent, boolean z, int i) {
            if (o.iw.get() == i) {
                return;
            }
            o.iw.set(i);
            o.p.set(true);
            o.s.set(true);
            if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
                return;
            }
            com.bytedance.sdk.component.panglearmor.d.d.dq().dq(i);
        }
    }

    public static class p extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = o.mn = true;
                com.bytedance.sdk.component.utils.ig.dq("DeviceUtils", "screen_on");
            } else if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    long unused2 = o.f3068e = System.currentTimeMillis();
                }
            } else {
                boolean unused3 = o.mn = false;
                com.bytedance.sdk.component.utils.ig.dq("DeviceUtils", "screen_off");
                if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
                    return;
                }
                com.bytedance.sdk.component.panglearmor.d.d.dq().d(intent.getAction());
            }
        }
    }

    public static long d() {
        return f3068e;
    }

    private static String d(byte[] bArr) {
        return (bArr[0] & 255) + "." + (bArr[1] & 255) + "." + (bArr[2] & 255) + "." + (bArr[3] & 255);
    }

    public static JSONObject d(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", com.bytedance.sdk.openadsdk.core.no.ia().mp());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, com.bytedance.sdk.openadsdk.core.no.ia().q());
            d(jSONObject);
            com.bytedance.sdk.openadsdk.jy.d.dq(jSONObject, i2);
            jSONObject.put("is_paid_app", com.bytedance.sdk.openadsdk.core.no.ia().jy());
            if (!com.bytedance.sdk.openadsdk.core.ox.p.dq().o(i2)) {
                jSONObject.put("network_speed", com.bytedance.sdk.openadsdk.core.le.dq.dq());
            }
            jSONObject.put("apk_sign", com.bytedance.sdk.openadsdk.core.mn.dq.ia());
            jSONObject.put("useful_open_sdk", com.bytedance.sdk.openadsdk.core.d.dq.d.ia.ox().d());
            jSONObject.put("real_app_name", com.bytedance.sdk.openadsdk.core.mn.dq.d(com.bytedance.sdk.openadsdk.core.wp.getContext()));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p("dev14", com.bytedance.sdk.component.utils.dq.d(str));
        le = str;
        k = System.currentTimeMillis();
    }

    private static void d(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", c.kk());
            jSONObject.put("version_code", c.o());
            jSONObject.put("version", c.no());
        } catch (Exception unused) {
        }
    }

    public static boolean d(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private static boolean d(boolean z, InetAddress inetAddress, String[] strArr) {
        if (z) {
            try {
                if (!TextUtils.isEmpty(strArr[0])) {
                    return true;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        if (!z && !TextUtils.isEmpty(strArr[1])) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 24) {
            return dq(z, inetAddress, strArr);
        }
        Field declaredField = z ? InetAddress.class.getDeclaredField("holder") : Inet6Address.class.getDeclaredField("holder6");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(inetAddress);
        Class<?> cls = obj.getClass();
        if (z) {
            Field declaredField2 = cls.getDeclaredField("address");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            int intValue = obj2 instanceof Integer ? ((Integer) obj2).intValue() : 0;
            byte[] bArr = {(byte) ((intValue >>> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE), (byte) ((intValue >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE), (byte) ((intValue >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE), (byte) (intValue & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)};
            String d2 = d(bArr);
            if (bArr[0] != Byte.MAX_VALUE) {
                strArr[0] = d2;
            }
        } else {
            Field declaredField3 = cls.getDeclaredField("ipaddress");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj);
            if (obj3 instanceof byte[]) {
                String dq2 = dq((byte[]) obj3);
                if (!ox(dq2)) {
                    return true;
                }
                strArr[1] = dq2;
            }
        }
        return true;
    }

    public static int dq(Context context, boolean z) {
        if (o != -1) {
            return o;
        }
        if (z) {
            String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("dev06", 2592000000L);
            try {
                if (!TextUtils.isEmpty(ox2)) {
                    o = Integer.parseInt(ox2);
                }
            } catch (Exception unused) {
            }
            if (o != -1) {
                return o;
            }
        }
        if (ox(context)) {
            o = 3;
        } else if (d(context)) {
            o = 2;
        } else {
            o = 1;
        }
        if (z) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("dev06", String.valueOf(o));
        }
        return o;
    }

    public static String dq(int i2) {
        if (i2 == 0 && !TextUtils.isEmpty(no) && !dq(mp, 60000L)) {
            return no;
        }
        if (i2 == 1 && !TextUtils.isEmpty(ig) && !dq(q, 60000L)) {
            return ig;
        }
        String p2 = p(i2);
        if (i2 == 0) {
            no = p2;
            mp = System.currentTimeMillis();
            return p2;
        }
        if (i2 == 1) {
            ig = p2;
            q = System.currentTimeMillis();
        }
        return p2;
    }

    public static String dq(String str) {
        if (!TextUtils.isEmpty(le) && !dq(k, 1800000L)) {
            return le;
        }
        String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("dev14", 1800000L);
        if (TextUtils.isEmpty(ox2)) {
            if (str == null) {
                str = iw();
            }
            le = str;
        } else {
            le = com.bytedance.sdk.component.utils.dq.ox(ox2);
        }
        k = System.currentTimeMillis();
        return le;
    }

    private static String dq(byte[] bArr) {
        StringBuilder sb = new StringBuilder(39);
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = i2 << 1;
            sb.append(Integer.toHexString(((bArr[i3] << 8) & 65280) | (bArr[i3 + 1] & 255)));
            if (i2 < 7) {
                sb.append(":");
            }
        }
        return sb.toString();
    }

    private static List<InetAddress> dq(NetworkInterface networkInterface) {
        if (networkInterface == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            if (Build.VERSION.SDK_INT < 24) {
                Object dq2 = wp.dq(networkInterface, "java.net.NetworkInterface", "addresses", null);
                return !(dq2 instanceof List) ? Collections.list(networkInterface.getInetAddresses()) : (List) dq2;
            }
            Object dq3 = wp.dq(networkInterface, "java.net.NetworkInterface", "addrs", null);
            return !(dq3 instanceof InetAddress[]) ? Collections.list(networkInterface.getInetAddresses()) : Arrays.asList((InetAddress[]) dq3);
        } catch (Throwable unused) {
            return Collections.list(networkInterface.getInetAddresses());
        }
    }

    public static void dq(long j) {
        if (j == -1 || wp == j) {
            return;
        }
        wp = j;
        com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("dev19", j);
    }

    public static void dq(Context context) {
        if (f3067d) {
            return;
        }
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                mn = powerManager.isScreenOn();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            h = new p();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            context.getApplicationContext().registerReceiver(h, intentFilter);
            f3067d = true;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void dq(JSONObject jSONObject) throws JSONException {
        if (mp.d()) {
            jSONObject.putOpt("os_new", "harmony");
            jSONObject.putOpt("harmonyos_api", mp.s());
            jSONObject.putOpt("harmonyos_version", mp.iw());
            jSONObject.putOpt("harmonyos_release_type", mp.mn());
            jSONObject.putOpt("harmonyos_build_version", mp.ia());
            jSONObject.putOpt("pure_mode", Integer.valueOf(mp.dq(com.bytedance.sdk.openadsdk.core.wp.getContext()) ? 1 : 2));
        } else {
            jSONObject.putOpt("os_new", "android");
        }
        jSONObject.putOpt("rom_name", Build.BRAND);
    }

    public static boolean dq() {
        if (!mn && SystemClock.elapsedRealtime() - ia >= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
            ia = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) com.bytedance.sdk.openadsdk.core.wp.getContext().getSystemService("power");
                if (powerManager != null) {
                    mn = powerManager.isInteractive();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return mn;
    }

    private static boolean dq(long j, long j2) {
        return System.currentTimeMillis() - j > j2;
    }

    private static boolean dq(boolean z, InetAddress inetAddress, String[] strArr) {
        if (z) {
            try {
                if (!TextUtils.isEmpty(strArr[0])) {
                    return true;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        if (!z && !TextUtils.isEmpty(strArr[1])) {
            return true;
        }
        Class<?> cls = Class.forName("libcore.io.Libcore");
        Field declaredField = cls.getDeclaredField("os");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(cls);
        Method method = obj.getClass().getMethod("getnameinfo", InetAddress.class, Integer.TYPE);
        method.setAccessible(true);
        Object invoke = method.invoke(obj, inetAddress, Integer.valueOf(OsConstants.NI_NUMERICHOST));
        if (invoke == null) {
            return false;
        }
        String str = (String) invoke;
        if (str.startsWith("127")) {
            return true;
        }
        if (z) {
            strArr[0] = str;
            return true;
        }
        int indexOf = str.indexOf(37);
        if (indexOf >= 0) {
            str = str.substring(0, indexOf);
        }
        if (!ox(str)) {
            return true;
        }
        strArr[1] = str;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0071 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] dq(boolean z) {
        long j;
        String str;
        String str2;
        String e2;
        if (r()) {
            return new String[]{gh, r};
        }
        String[] strArr = {"", ""};
        String wp2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().wp();
        long j2 = 0;
        if (wp2 != null) {
            try {
                JSONObject jSONObject = new JSONObject(wp2);
                str = com.bytedance.sdk.component.utils.dq.ox(jSONObject.getString("value"));
                try {
                    j = jSONObject.getLong("time");
                } catch (JSONException unused) {
                    j = 0;
                }
            } catch (JSONException unused2) {
                j = 0;
                str = null;
                str2 = null;
            }
        } else {
            j = 0;
            str = null;
        }
        try {
            e2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().e();
        } catch (JSONException unused3) {
        }
        if (e2 != null) {
            JSONObject jSONObject2 = new JSONObject(e2);
            str2 = com.bytedance.sdk.component.utils.dq.ox(jSONObject2.getString("value"));
            try {
                j2 = jSONObject2.getLong("time");
            } catch (JSONException unused4) {
            }
            if (str == null || str2 != null) {
                strArr[0] = str;
                strArr[1] = str2;
                if (z) {
                    return strArr;
                }
            }
            if (p.getAndSet(false)) {
                if (str != null && System.currentTimeMillis() - j > 3600000) {
                    str = null;
                }
                String str3 = (str2 == null || System.currentTimeMillis() - j2 <= 3600000) ? str2 : null;
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str3)) {
                    strArr = le();
                } else {
                    strArr[0] = str;
                    strArr[1] = str3;
                }
            } else {
                strArr = le();
                if (TextUtils.isEmpty(strArr[0]) && TextUtils.isEmpty(strArr[1])) {
                    if (str == null) {
                        str = "";
                    }
                    strArr[0] = str;
                    strArr[1] = str2 != null ? str2 : "";
                }
            }
            gh = strArr[0];
            r = strArr[1];
            i = System.currentTimeMillis();
            return strArr;
        }
        str2 = null;
        if (str == null) {
        }
        strArr[0] = str;
        strArr[1] = str2;
        if (z) {
        }
        if (p.getAndSet(false)) {
        }
        gh = strArr[0];
        r = strArr[1];
        i = System.currentTimeMillis();
        return strArr;
    }

    public static int f() {
        if (kx >= 0) {
            return kx;
        }
        try {
            AudioManager audioManager = (AudioManager) com.bytedance.sdk.openadsdk.core.wp.getContext().getSystemService(MediaFormat.KEY_AUDIO);
            if (audioManager == null) {
                return 0;
            }
            kx = audioManager.getStreamVolume(3);
            return kx;
        } catch (Exception unused) {
            return 0;
        }
    }

    private static String[] i() {
        String[] strArr = {"", ""};
        if (p.getAndSet(false)) {
            strArr = le();
        }
        String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("dev13", 3600000L);
        String ox3 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("dev15", 3600000L);
        try {
            if (TextUtils.isEmpty(ox2) && TextUtils.isEmpty(ox3)) {
                String[] le2 = le();
                gh = le2[0];
                r = le2[1];
                i = System.currentTimeMillis();
                return le2;
            }
            String ox4 = com.bytedance.sdk.component.utils.dq.ox(ox2);
            strArr[0] = ox4;
            String ox5 = com.bytedance.sdk.component.utils.dq.ox(ox3);
            strArr[1] = ox5;
            gh = ox4;
            r = ox5;
            i = System.currentTimeMillis();
        } catch (Throwable unused) {
        }
        return strArr;
    }

    public static String[] ia() {
        String[] strArr = {"", ""};
        if (kk()) {
            try {
                Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                boolean z = false;
                boolean z2 = false;
                loop0: while (it.hasNext()) {
                    for (InetAddress inetAddress : dq((NetworkInterface) it.next())) {
                        boolean z3 = inetAddress instanceof Inet4Address;
                        if (!z3 || !z) {
                            if (z3 || !z2) {
                                if (d(z3, inetAddress, strArr)) {
                                    if (!TextUtils.isEmpty(strArr[0]) && !TextUtils.isEmpty(strArr[1])) {
                                        break loop0;
                                    }
                                } else {
                                    String hostAddress = inetAddress.getHostAddress();
                                    if (!TextUtils.isEmpty(hostAddress) && !hostAddress.startsWith("127")) {
                                        if (z3) {
                                            com.bytedance.sdk.openadsdk.core.ox.p.dq().e(com.bytedance.sdk.component.utils.dq.d(hostAddress));
                                            strArr[0] = hostAddress;
                                            if (z2) {
                                                break loop0;
                                            }
                                            z = true;
                                        } else {
                                            int indexOf = hostAddress.indexOf(37);
                                            if (indexOf >= 0) {
                                                hostAddress = hostAddress.substring(0, indexOf);
                                            }
                                            if (ox(hostAddress)) {
                                                com.bytedance.sdk.openadsdk.core.ox.p.dq().kx(com.bytedance.sdk.component.utils.dq.d(hostAddress));
                                                strArr[1] = hostAddress;
                                                if (z) {
                                                    break loop0;
                                                }
                                                z2 = true;
                                            } else {
                                                continue;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return strArr;
    }

    public static void ig() {
        try {
            if (ox && ji != null) {
                com.bytedance.sdk.openadsdk.core.wp.getContext().getApplicationContext().unregisterReceiver(ji);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String iw() {
        return r() ? gh : i()[0];
    }

    public static long jy() {
        return wp != -1 ? wp : com.bytedance.sdk.openadsdk.core.ox.p.dq().d("dev19", -1L);
    }

    public static boolean kk() {
        if (!com.bytedance.sdk.openadsdk.core.wp.d().gv()) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(com.bytedance.sdk.openadsdk.core.no.ia().cd());
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                if (optJSONObject != null && !optJSONObject.isNull(abn.EXTRA_UA_APP_NAME) && "tt_inner_isw".equals(optJSONObject.optString(abn.EXTRA_UA_APP_NAME))) {
                    return optJSONObject.optBoolean("value", true);
                }
            }
        } catch (JSONException unused) {
        }
        return true;
    }

    private static String[] le() {
        String[] ia2 = ia();
        if (TextUtils.isEmpty(ia2[0]) && TextUtils.isEmpty(ia2[1])) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().e("");
        }
        return ia2;
    }

    public static String mn() {
        return r() ? r : i()[1];
    }

    public static int mp() {
        if (fw != -1 && !dq(cd, 60000L)) {
            return fw;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.bytedance.sdk.openadsdk.core.wp.getContext().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        fw = accessibilityManager.isEnabled() ? 1 : 0;
        cd = System.currentTimeMillis();
        return fw;
    }

    public static float no() {
        if (jy != -2.0f && !dq(f3069f, 30000L)) {
            return jy;
        }
        int i2 = -1;
        try {
            Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
            if (context != null) {
                i2 = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p("DeviceUtils", th.getMessage());
        }
        if (i2 < 0) {
            jy = -1.0f;
        } else {
            jy = Math.round((i2 / 255.0f) * 10.0f) / 10.0f;
        }
        f3069f = System.currentTimeMillis();
        return jy;
    }

    public static String o() {
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    public static void ox() {
        iw.set(com.bytedance.sdk.component.utils.q.ox(com.bytedance.sdk.openadsdk.core.wp.getContext()));
        p();
        no();
        mp();
        dq(0);
        dq(1);
        dq(false);
        dq((String) null);
    }

    public static boolean ox(Context context) {
        return (context.getResources().getConfiguration().uiMode & 15) == 4;
    }

    private static boolean ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char charAt = str.charAt(0);
        if ((charAt != '2' && charAt != '3' && charAt != '5') || str.length() < 2) {
            return false;
        }
        char charAt2 = str.charAt(1);
        if (charAt2 >= '0' && charAt2 <= '9') {
            return true;
        }
        if (charAt2 < 'a' || charAt2 > 'f') {
            return charAt2 >= 'A' && charAt2 <= 'F';
        }
        return true;
    }

    public static int p() {
        if (kk == -1 || s.getAndSet(false)) {
            kk = com.bytedance.sdk.component.utils.q.d(com.bytedance.sdk.openadsdk.core.wp.getContext());
        }
        return kk;
    }

    private static String p(int i2) {
        List<CellInfo> allCellInfo;
        CellSignalStrengthTdscdma cellSignalStrength;
        int dbm;
        CellSignalStrength cellSignalStrength2;
        WifiInfo d2;
        int ox2 = com.bytedance.sdk.component.utils.q.ox(com.bytedance.sdk.openadsdk.core.wp.getContext());
        com.bytedance.sdk.openadsdk.f.d.ox.p kk2 = com.bytedance.sdk.openadsdk.core.no.ia().kk();
        try {
            if (ox2 == 4) {
                if (i2 == 0 && kk2.p() && (d2 = com.bytedance.sdk.openadsdk.core.i.d()) != null) {
                    return d2.getRssi() + "dBm";
                }
                return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
            }
            if (kk2.ox() && kk2.dq() && i2 == 1 && com.bytedance.sdk.openadsdk.core.i.jy()) {
                TelephonyManager dq2 = com.bytedance.sdk.openadsdk.core.i.dq();
                int i3 = Build.VERSION.SDK_INT;
                if (dq2 != null && (allCellInfo = dq2.getAllCellInfo()) != null) {
                    CellInfo cellInfo = allCellInfo.get(0);
                    if (cellInfo instanceof CellInfoGsm) {
                        dbm = ((CellInfoGsm) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoCdma) {
                        dbm = ((CellInfoCdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoLte) {
                        dbm = ((CellInfoLte) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        dbm = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (i3 >= 29 && aft.e(cellInfo)) {
                        cellSignalStrength2 = aft.q(cellInfo).getCellSignalStrength();
                        dbm = cellSignalStrength2.getDbm();
                    } else {
                        if (i3 < 29 || !aft.n(cellInfo)) {
                            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                        }
                        cellSignalStrength = aft.ac(cellInfo).getCellSignalStrength();
                        dbm = cellSignalStrength.getDbm();
                    }
                    if (Integer.MIN_VALUE == dbm) {
                        return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                    }
                    return dbm + "dBm";
                }
                return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
            }
            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        } catch (Throwable unused) {
            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        }
    }

    public static void p(Context context) {
        if (ox) {
            return;
        }
        try {
            ji = new d();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            context.getApplicationContext().registerReceiver(ji, intentFilter);
            ox = true;
        } catch (Throwable unused) {
        }
    }

    public static void q() {
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        if (context != null) {
            int mp2 = c.mp();
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("cpu_cnt", mp2);
            c.dq = mp2;
            int ox2 = c.ox(c.mp());
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("cpu_max_freq", ox2);
            c.f3030d = ox2;
            int p2 = c.p(c.mp());
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("cpu_min_freq", p2);
            c.ox = p2;
            String s2 = c.s(context, "MemTotal");
            if (s2 != null) {
                com.bytedance.sdk.openadsdk.core.ox.p.dq().d("total_memory", s2);
                c.p = s2;
            }
            long fw2 = c.fw();
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("internal_storage", fw2);
            c.s = fw2;
            long dq2 = com.bytedance.sdk.component.utils.mp.dq();
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("free_storage", dq2);
            c.iw = dq2;
            long cd2 = c.cd();
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("sdcard_storage", cd2);
            c.mn = cd2;
            boolean gh2 = c.gh();
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq("is_root", gh2 ? 1 : 0);
            c.ia = gh2 ? 1 : 0;
        }
    }

    private static boolean r() {
        return (p.get() || dq(i, 1800000L) || TextUtils.isEmpty(gh)) ? false : true;
    }

    public static void s() {
        try {
            if (f3067d && h != null) {
                com.bytedance.sdk.openadsdk.core.wp.getContext().getApplicationContext().unregisterReceiver(h);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void s(Context context) {
        com.bytedance.sdk.component.utils.k.dq(new ox(), context);
    }
}
