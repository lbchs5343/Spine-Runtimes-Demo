package com.bytedance.sdk.openadsdk.core.u;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.k;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.r.ij;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static final dq dq = new dq();
    private boolean ia;
    private ij mn;

    /* renamed from: d, reason: collision with root package name */
    private String f3542d = "";
    private String ox = "";
    private String p = "";
    private String s = "";
    private JSONArray iw = new JSONArray();

    private dq() {
    }

    private ActivityManager.MemoryInfo d(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        this.p = String.valueOf(memoryInfo.totalMem);
        return memoryInfo;
    }

    private String d() {
        Enumeration<InetAddress> inetAddresses;
        String hostAddress;
        String str = null;
        if (!o.kk()) {
            return null;
        }
        try {
            NetworkInterface byName = NetworkInterface.getByName("wlan0");
            if (byName != null && (inetAddresses = byName.getInetAddresses()) != null) {
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if ((nextElement instanceof Inet6Address) && nextElement.isLinkLocalAddress() && (hostAddress = nextElement.getHostAddress()) != null && hostAddress.startsWith("fe80")) {
                        str = hostAddress;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f3542d = TextUtils.isEmpty(str) ? "" : str;
        return str;
    }

    public static dq dq() {
        return dq;
    }

    private Long ox() {
        Long valueOf = Long.valueOf(new StatFs(Environment.getExternalStorageDirectory().getPath()).getTotalBytes());
        this.ox = valueOf.toString();
        return valueOf;
    }

    private JSONArray ox(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("com.ss.android.ugc.aweme", "a");
            hashMap.put("com.ss.android.ugc.aweme.lite", "al");
            hashMap.put("com.dragon.read", "r");
            hashMap.put("com.ss.android.article.news", "n");
            hashMap.put("com.ss.android.article.lite", "nl");
            PackageManager packageManager = context.getPackageManager();
            for (Map.Entry entry : hashMap.entrySet()) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo((String) entry.getKey(), 0);
                    long j = packageInfo.firstInstallTime;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", entry.getValue());
                    jSONObject.put("i", j);
                    if (TextUtils.equals((CharSequence) entry.getValue(), "a") || TextUtils.equals((CharSequence) entry.getValue(), "n")) {
                        jSONObject.put("u", packageInfo.lastUpdateTime);
                    }
                    jSONArray.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
            this.iw = jSONArray;
        } catch (Throwable unused2) {
        }
        return jSONArray;
    }

    private Long p() {
        long currentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        this.s = String.valueOf(currentTimeMillis);
        return Long.valueOf(currentTimeMillis);
    }

    public void dq(Context context) {
        if (!wp.d().ia()) {
            this.ia = false;
            return;
        }
        if (this.ia) {
            return;
        }
        try {
            d();
            p();
            ox();
            d(context);
            ox(context);
            this.mn = k.kk();
            this.ia = true;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(ij ijVar) {
        this.mn = ijVar;
    }

    public void dq(JSONObject jSONObject) {
        if (wp.d().ia()) {
            try {
                ij ijVar = this.mn;
                if (ijVar != null) {
                    JSONObject ox = ijVar.ox();
                    ox.put("sl", 0);
                    jSONObject.put("u_t", ox);
                }
                jSONObject.put("boot_time_sec", this.s);
                jSONObject.put("memory", this.p);
                jSONObject.put("disk", this.ox);
                jSONObject.put("client_tun", this.f3542d);
                jSONObject.put("pkg_info", this.iw);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
