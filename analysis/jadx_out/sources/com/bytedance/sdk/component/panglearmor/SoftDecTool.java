package com.bytedance.sdk.component.panglearmor;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.awf;
import g.bid;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SoftDecTool {
    public static final String SP_NAME = "softdec";

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f2164a = false;
    public static volatile double acs = -1.0d;
    public static volatile long act;

    /* renamed from: d, reason: collision with root package name */
    private static volatile int f2165d;
    private static SharedPreferences dq;

    /* renamed from: f, reason: collision with root package name */
    public static volatile boolean f2166f;
    public static volatile boolean h;

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b5, code lost:
    
        if (r3 == null) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b() {
        InputStream inputStream;
        ZipFile zipFile;
        InputStream inputStream2;
        String iw = iw.iw();
        if (iw.isEmpty()) {
            return 1;
        }
        int i = 11;
        i = 11;
        i = 11;
        InputStream inputStream3 = null;
        try {
            zipFile = new ZipFile(iw.concat("/apk/base-1.apk"));
            try {
                InputStream inputStream4 = zipFile.getInputStream(zipFile.getEntry("classes.dex"));
                try {
                    String dq2 = dq(inputStream4);
                    String str = dq2.substring(dq2.length() / 2) + dq2.substring(0, dq2.length() / 2);
                    ZipEntry entry = zipFile.getEntry("assets/pangle_vp_config.db");
                    if (entry != null) {
                        inputStream3 = zipFile.getInputStream(entry);
                        byte[] bArr = new byte[inputStream3.available()];
                        inputStream3.read(bArr);
                        i = new String(bArr).equals(str);
                    }
                    if (inputStream4 != null) {
                        try {
                            inputStream4.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (Exception unused3) {
                    InputStream inputStream5 = inputStream3;
                    inputStream3 = inputStream4;
                    inputStream2 = inputStream5;
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused5) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    InputStream inputStream6 = inputStream3;
                    inputStream3 = inputStream4;
                    inputStream = inputStream6;
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused7) {
                        }
                    }
                    if (zipFile == null) {
                        throw th;
                    }
                    try {
                        zipFile.close();
                        throw th;
                    } catch (IOException unused8) {
                        throw th;
                    }
                }
            } catch (Exception unused9) {
                inputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        } catch (Exception unused10) {
            inputStream2 = null;
            zipFile = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            zipFile = null;
        }
        try {
            zipFile.close();
        } catch (IOException unused11) {
        }
        return i;
    }

    @HungeonFlag
    public static native Object b(int i, Object[] objArr);

    public static native byte[] bc(int i, byte[] bArr);

    @DungeonFlag
    public static synchronized Object cn(int i, Object[] objArr) {
        synchronized (SoftDecTool.class) {
            if (!kk.d()) {
                return null;
            }
            return b(i, objArr);
        }
    }

    @DungeonFlag
    public static void cs(String str) {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("sofchara", str).putLong("t", System.currentTimeMillis()).apply();
        }
    }

    @DungeonFlag
    public static String dgb() {
        StringBuilder sb = new StringBuilder();
        sb.append(dq(Build.BOARD, "ro.product.board"));
        sb.append(dq(Build.MODEL, "ro.product.model"));
        sb.append(dq(Build.VERSION.RELEASE, "ro.build.version.release"));
        sb.append(dq(Build.MANUFACTURER, "ro.product.manufacturer"));
        sb.append(dq(Build.DISPLAY, "ro.build.display.id"));
        long j = Build.TIME;
        long parseLong = Long.parseLong(iw.dq("ro.build.date.utc", "-1"));
        if (j == -1000 || parseLong == -1) {
            sb.append("00");
        } else {
            if (String.valueOf(j).length() >= 10) {
                sb.append(Long.parseLong(String.valueOf(j).substring(0, 10)) == parseLong ? 0 : 1);
            } else {
                sb.append(1);
            }
            sb.append(j == parseLong * 1000 ? 0 : 1);
        }
        return sb.toString();
    }

    @DungeonFlag
    public static String dn() {
        try {
            return Settings.Secure.getString(iw.p().getContentResolver(), "bluetooth_name");
        } catch (Throwable unused) {
            return "-1";
        }
    }

    @DungeonFlag
    private static int dq(String str, String str2) {
        String dq2 = iw.dq(str2, MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
        return (str.equals(MediationConfigUserInfoForSegment.GENDER_UNKNOWN) || dq2.equals(MediationConfigUserInfoForSegment.GENDER_UNKNOWN) || str.equals(dq2)) ? 0 : 1;
    }

    private static long dq(long j) {
        return (j + TimeZone.getDefault().getOffset(j)) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
    }

    @DungeonFlag
    private static String dq(InputStream inputStream) {
        int i;
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b2 : digest) {
                int i2 = b2 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UnsupportedEncodingException", e2);
        } catch (IOException e3) {
            e3.printStackTrace();
            return "";
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException("NoSuchAlgorithmException", e4);
        }
    }

    private static boolean dq(long j, long j2) {
        long j3 = j2 - j;
        return j3 < AdBaseConstants.DEFAULT_DELAY_TIMESTAMP && j3 > -86400000 && dq(j) == dq(j2);
    }

    @DungeonFlag
    public static long fi() {
        try {
            return iw.p().getPackageManager().getPackageInfo(iw.p().getPackageName(), 0).firstInstallTime / 1000;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    @DungeonFlag
    public static long fr() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences == null) {
            return 0L;
        }
        long j = sharedPreferences.getLong("frt", 0L);
        if (j != 0) {
            return j;
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        sharedPreferences.edit().putLong("frt", currentTimeMillis).apply();
        return currentTimeMillis;
    }

    @DungeonFlag
    public static String gc() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("sofchara", "");
            long j = sharedPreferences.getLong("t", 0L);
            if (j != 0 && !TextUtils.isEmpty(string) && System.currentTimeMillis() - j <= 300000) {
                return string;
            }
        }
        return "";
    }

    @DungeonFlag
    public static JSONObject gdh() {
        List<Sensor> sensorList;
        try {
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            if (sharedPreferences == null || sharedPreferences.getBoolean("reported_devicehardware_2", false) || iw.p() == null || dq(iw.p().getPackageManager().getPackageInfo(iw.p().getPackageName(), 0).firstInstallTime, System.currentTimeMillis())) {
                return null;
            }
            TreeSet treeSet = new TreeSet();
            SensorManager sensorManager = (SensorManager) iw.p().getSystemService("sensor");
            if (sensorManager != null && (sensorList = sensorManager.getSensorList(-1)) != null) {
                for (Sensor sensor : sensorList) {
                    if (sensor != null) {
                        treeSet.add(String.format(Locale.getDefault(), "%s###%s###%d", sensor.getName(), sensor.getVendor(), Integer.valueOf(sensor.getType())));
                    }
                }
            }
            String dq2 = iw.dq("gsm.version.baseband", "");
            String dq3 = iw.dq("ro.build.fingerprint", "");
            String property = System.getProperty("os.version");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sensors", treeSet);
            jSONObject.put("radio", dq2);
            jSONObject.put(bid.EXTRA_FILE_PATH, dq3);
            jSONObject.put("kernel", property);
            jSONObject.put("rom_version", iw.dq("ro.build.display.id", ""));
            jSONObject.put("build_id", iw.dq("ro.build.id", ""));
            jSONObject.put("incremental", iw.dq("ro.build.version.incremental", ""));
            jSONObject.put("compiling_time", iw.dq("ro.build.date.utc", ""));
            sharedPreferences.edit().putBoolean("reported_devicehardware_2", true).apply();
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static SharedPreferences getSharedPreferences(String str) {
        Context createDeviceProtectedStorageContext;
        boolean moveSharedPreferencesFrom;
        if (dq == null) {
            try {
                Context p = iw.p();
                if (p != null && str != null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        createDeviceProtectedStorageContext = p.createDeviceProtectedStorageContext();
                        moveSharedPreferencesFrom = createDeviceProtectedStorageContext.moveSharedPreferencesFrom(p, str);
                        if (!moveSharedPreferencesFrom) {
                            ig.d("HARLOG", "Failed to move shared preferences.");
                        }
                        p = createDeviceProtectedStorageContext;
                    }
                    dq = com.bytedance.sdk.openadsdk.api.plugin.d.d(p, str, 0);
                }
                return null;
            } catch (Exception unused) {
            }
        }
        return dq;
    }

    @DungeonFlag
    public static synchronized int h(String str, boolean z) {
        synchronized (SoftDecTool.class) {
            try {
                SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
                int i = sharedPreferences.getInt(str, 0);
                if (!z) {
                    return i;
                }
                int i2 = i + 1;
                sharedPreferences.edit().putInt(str, i2).apply();
                return i2;
            } catch (Throwable th) {
                th.printStackTrace();
                return -1;
            }
        }
    }

    @DungeonFlag
    public static int hv() {
        Network activeNetwork;
        if (Build.VERSION.SDK_INT < 23) {
            return -1;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) iw.p().getSystemService("connectivity");
            activeNetwork = connectivityManager.getActiveNetwork();
            return connectivityManager.getNetworkCapabilities(activeNetwork).hasCapability(15) ? 0 : 1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @DungeonFlag
    public static String i() {
        int i = f2165d + 1;
        f2165d = i;
        if (i != 2) {
            return "2";
        }
        try {
            AccessibilityManager accessibilityManager = (AccessibilityManager) iw.p().getSystemService("accessibility");
            TreeSet treeSet = new TreeSet();
            for (AccessibilityServiceInfo accessibilityServiceInfo : accessibilityManager.getInstalledAccessibilityServiceList()) {
                treeSet.add(accessibilityServiceInfo.getResolveInfo().serviceInfo.packageName + "#" + accessibilityServiceInfo.getResolveInfo().serviceInfo.name);
            }
            JSONArray jSONArray = new JSONArray((Collection) treeSet);
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            String jSONArray2 = jSONArray.toString();
            String format = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            String string = sharedPreferences.getString("iacba", "");
            String string2 = sharedPreferences.getString("date", "1970-01-01");
            if (string.equals(jSONArray.toString()) && format.equals(string2)) {
                return "2";
            }
            sharedPreferences.edit().putString("iacba", jSONArray2).apply();
            sharedPreferences.edit().putString("date", format).apply();
            return jSONArray2;
        } catch (Throwable th) {
            th.printStackTrace();
            return "-1";
        }
    }

    @DungeonFlag
    public static String kv() {
        return System.getProperty("os.version");
    }

    @DungeonFlag
    public static String p() {
        return com.bytedance.sdk.openadsdk.api.plugin.d.dq(iw.p()).getPath();
    }

    @DungeonFlag
    public static String prx() {
        String property = System.getProperty("http.proxyHost");
        String property2 = System.getProperty("http.proxyPort");
        return (TextUtils.isEmpty(property) && TextUtils.isEmpty(property2)) ? "" : awf.i(property, ":", property2);
    }

    @DungeonFlag
    public static void rsd(final String str) {
        com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.panglearmor.SoftDecTool.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ia mn = iw.mn();
                    if (mn != null) {
                        JSONObject gdh = SoftDecTool.gdh();
                        if (gdh == null && !TextUtils.isEmpty(str)) {
                            gdh = new JSONObject();
                        }
                        if (gdh != null) {
                            if (!TextUtils.isEmpty(str)) {
                                gdh.put("rd2", str);
                            }
                            mn.dq("device_hardware", gdh);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }, 20000L);
    }

    @DungeonFlag
    public static long tft() {
        return iw.ia();
    }

    @DungeonFlag
    public static int trc() {
        return iw.kk();
    }

    @DungeonFlag
    public static int u() {
        UsbAccessory[] accessoryList = ((UsbManager) iw.p().getSystemService("usb")).getAccessoryList();
        return (accessoryList == null || accessoryList.length == 0) ? 0 : 1;
    }

    public static void ua() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            acs = sharedPreferences.getFloat("acs", -1.0f);
            act = sharedPreferences.getLong("act", 0L);
        }
    }

    public static void ua(double d2, long j) {
        acs = d2;
        act = j;
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putFloat("acs", (float) d2).putLong("act", j).apply();
        }
    }
}
