package com.bytedance.sdk.component.kk.p;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class iw {
    public static int d(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        return 5;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        if (!TextUtils.isEmpty(subtypeName)) {
                            if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA")) {
                                if (subtypeName.equalsIgnoreCase("CDMA2000")) {
                                }
                            }
                            return 3;
                        }
                        return 1;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }

    private static String d(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!str.startsWith("http://") || !str.startsWith("https://")) {
            str = "https://".concat(str);
        }
        try {
            str2 = URI.create(str).getHost();
            if (str2 == null) {
                if (ox(str)) {
                    return str;
                }
            }
            return str2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return str2;
        }
    }

    public static float dq(String str, int i, int i2) {
        String d2 = d(str);
        if (TextUtils.isEmpty(d2)) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        String dq = dq(dq(i, i2, d2));
        if (TextUtils.isEmpty(dq)) {
            return -1.0f;
        }
        String substring = dq.substring(dq.indexOf("received,"));
        return Float.parseFloat(substring.substring(9, substring.indexOf("packet")).replace("%", ""));
    }

    public static int dq(String str, int i, int i2, int i3) {
        String d2 = d(str);
        if (TextUtils.isEmpty(d2)) {
            return 0;
        }
        String dq = dq(dq(i2, i3, d2));
        ox.d("NETWORK_UTILS", dq);
        if (!TextUtils.isEmpty(dq)) {
            try {
                String[] split = dq.substring(dq.indexOf("min/avg/max/mdev") + 19).split("/");
                if (i == 1) {
                    return Math.round(Float.parseFloat(split[0]));
                }
                if (i == 2) {
                    return Math.round(Float.parseFloat(split[1]));
                }
                if (i == 3) {
                    return Math.round(Float.parseFloat(split[2]));
                }
                if (i != 4) {
                    return -1;
                }
                return Math.round(Float.parseFloat(split[3]));
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return -1;
    }

    private static String dq(int i, int i2, String str) {
        StringBuilder z = awf.z(i, i2, "/system/bin/ping -c ", " -w ", " ");
        z.append(str);
        return z.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(String str) {
        Throwable th;
        Process process;
        Process process2;
        try {
            try {
                process2 = Runtime.getRuntime().exec(str);
                try {
                    InputStream inputStream = process2.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            bufferedReader.close();
                            inputStream.close();
                            String sb2 = sb.toString();
                            process2.destroy();
                            return sb2;
                        }
                        sb.append(readLine);
                        sb.append("\n");
                    }
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (process2 != null) {
                        process2.destroy();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                process = str;
                if (process != 0) {
                    process.destroy();
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            process2 = null;
        } catch (Throwable th3) {
            th = th3;
            process = 0;
            if (process != 0) {
            }
            throw th;
        }
    }

    public static boolean dq(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            Log.e("ignored", th.toString());
        }
        return false;
    }

    public static String ox(Context context) {
        int d2 = d(context);
        return d2 != 2 ? d2 != 3 ? d2 != 4 ? d2 != 5 ? "mobile" : "4g" : "wifi" : "3g" : "2g";
    }

    private static boolean ox(String str) {
        return Pattern.matches("((2(5[0-5]|[0-4]\\\\d))|[0-1]?\\\\d{1,2})(\\\\.((2(5[0-5]|[0-4]\\\\d))|[0-1]?\\\\d{1,2})){3}", str);
    }
}
