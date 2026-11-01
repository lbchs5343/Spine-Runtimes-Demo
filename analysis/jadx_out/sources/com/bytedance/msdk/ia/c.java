package com.bytedance.msdk.ia;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c {

    /* renamed from: d, reason: collision with root package name */
    private static String f1084d = null;
    private static String dq = null;
    private static String ox = null;
    private static String p = "ToolUtils";

    public static synchronized String d() {
        String str;
        synchronized (c.class) {
            try {
                if (TextUtils.isEmpty(f1084d) && com.bytedance.msdk.core.dq.getContext() != null) {
                    try {
                        PackageInfo packageInfo = com.bytedance.msdk.core.dq.getContext().getPackageManager().getPackageInfo(dq(), 0);
                        f1084d = String.valueOf(packageInfo.versionCode);
                        ox = packageInfo.versionName;
                    } catch (Throwable th) {
                        com.bytedance.msdk.dq.s.ox.p(p, "ToolUtils getVersionCode throws exception :" + th);
                    }
                }
                str = f1084d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static byte[] d(String str) {
        return com.bytedance.sdk.component.panglearmor.kk.dq().dq(p(str));
    }

    public static synchronized String dq() {
        String str;
        synchronized (c.class) {
            try {
                if (TextUtils.isEmpty(dq) && com.bytedance.msdk.core.dq.getContext() != null) {
                    try {
                        dq = com.bytedance.msdk.core.dq.getContext().getPackageName();
                    } catch (Throwable th) {
                        com.bytedance.msdk.dq.s.ox.p(p, "ToolUtils getPackageName throws exception :" + th);
                    }
                }
                str = dq;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static String dq(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 17) {
            return str;
        }
        return dq.d(str.substring(17), ox(str.substring(1, 17)));
    }

    public static String dq(byte[] bArr) {
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    String d2 = com.bytedance.sdk.openadsdk.core.ir.ig.d(com.bytedance.sdk.component.panglearmor.kk.dq().d(bArr));
                    if (TextUtils.isEmpty(d2)) {
                        return null;
                    }
                    return d2;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static JSONObject dq(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                try {
                    String dq2 = dq.dq();
                    String str = "2" + dq2 + dq.dq(jSONObject.toString(), dq.dq(dq2));
                    if (TextUtils.isEmpty(str)) {
                        jSONObject2.put("message", jSONObject.toString());
                        jSONObject2.put("cypher", 0);
                        return jSONObject2;
                    }
                    jSONObject2.put("message", str);
                    jSONObject2.put("cypher", 2);
                    return jSONObject2;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        }
        return jSONObject2;
    }

    public static boolean dq(com.bytedance.sdk.component.kk.d dVar) {
        if (dVar == null || !com.bytedance.sdk.component.kk.p.dq.dq(dVar.ox())) {
            return (dVar == null || dVar.p() == null || dVar.p().startsWith("{") || dVar.p().endsWith("}")) ? false : true;
        }
        return true;
    }

    public static synchronized String ox() {
        String str;
        synchronized (c.class) {
            try {
                if (TextUtils.isEmpty(ox) && com.bytedance.msdk.core.dq.getContext() != null) {
                    try {
                        PackageInfo packageInfo = com.bytedance.msdk.core.dq.getContext().getPackageManager().getPackageInfo(dq(), 0);
                        f1084d = String.valueOf(packageInfo.versionCode);
                        ox = packageInfo.versionName;
                    } catch (Throwable th) {
                        com.bytedance.msdk.dq.s.ox.p(p, "ToolUtils getVersionName throws exception :" + th);
                    }
                }
                str = ox;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    private static String ox(String str) {
        String dq2 = dq.dq(str);
        if (str != null) {
            return dq2;
        }
        String dq3 = d.dq();
        return dq3.concat(dq3).substring(8, 24);
    }

    public static String p() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Exception unused) {
            str = "unKnow";
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(";");
        if (lastIndexOf != -1 && str.length() > lastIndexOf) {
            int i = lastIndexOf + 1;
            String substring = str.substring(0, i);
            str = substring.concat(" " + Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry() + ";").concat(str.substring(i));
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    private static byte[] p(String str) {
        GZIPOutputStream gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            try {
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.close();
        } catch (Exception e4) {
            e = e4;
            gZIPOutputStream2 = gZIPOutputStream;
            e.printStackTrace();
            if (gZIPOutputStream2 != null) {
                gZIPOutputStream2.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String s() {
        try {
            byte[] bArr = new byte[8];
            new SecureRandom().nextBytes(bArr);
            return q.dq(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
