package com.bytedance.sdk.openadsdk.core.wp.dq;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.component.kk.d.ox;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.le.s;
import com.bytedance.sdk.openadsdk.core.ox.p;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.core.wp.d;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.constant.BaseConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements d {

    /* renamed from: d, reason: collision with root package name */
    private static final FileFilter f3721d = new FileFilter() { // from class: com.bytedance.sdk.openadsdk.core.wp.dq.dq.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i = 3; i < name.length(); i++) {
                if (!Character.isDigit(name.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    };
    private static volatile dq dq;

    private static int d(Context context) {
        long dq2 = dq(context) / BaseConstants.MB_VALUE;
        if (dq2 <= 2000) {
            return 0;
        }
        if (dq2 <= 3000) {
            return 1;
        }
        if (dq2 <= 4000) {
            return 2;
        }
        return dq2 <= 6000 ? 3 : 4;
    }

    private static int d(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                int ox = ox(readLine);
                fileInputStream.close();
                return ox;
            } finally {
            }
        } catch (IOException unused) {
            return -1;
        }
    }

    public static dq d() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0034, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int dq(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int read = fileInputStream.read(bArr);
            int i = 0;
            while (i < read) {
                byte b2 = bArr[i];
                if (b2 == 10 || i == 0) {
                    if (b2 == 10) {
                        i++;
                    }
                    for (int i2 = i; i2 < read; i2++) {
                        int i3 = i2 - i;
                        if (bArr[i2] == str.charAt(i3)) {
                            if (i3 == str.length() - 1) {
                                return dq(bArr, i2);
                            }
                        }
                    }
                }
                i++;
            }
            return -1;
        } catch (IOException | NumberFormatException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private static int dq(byte[] bArr, int i) {
        byte b2;
        while (i < bArr.length && (b2 = bArr[i]) != 10) {
            if (Character.isDigit(b2)) {
                int i2 = i + 1;
                while (i2 < bArr.length && Character.isDigit(bArr[i2])) {
                    i2++;
                }
                return Integer.parseInt(new String(bArr, 0, i, i2 - i));
            }
            i++;
        }
        return -1;
    }

    @TargetApi(16)
    public static long dq(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    private void dq(int i) {
        dq("device_level", String.valueOf(i));
        p.dq().f(i);
    }

    private void ia() {
        try {
            ox ox = s.dq().d().ox();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("os", "android");
            jSONObject.put("device_model", Build.MODEL);
            ox.dq(Uri.parse(c.mn("/api/ad/union/sdk/device_score")).buildUpon().appendQueryParameter("is_bidding", "1").appendQueryParameter("extra", com.bytedance.sdk.component.utils.dq.d(jSONObject.toString())).toString());
            com.bytedance.sdk.component.kk.d dq2 = ox.dq();
            if (dq2 == null || !dq2.ia()) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(dq2.p());
            if (jSONObject2.optInt(PluginConstants.KEY_ERROR_CODE) != 200) {
                dq("bytebench_value", "-1.0");
                return;
            }
            double optDouble = jSONObject2.optDouble("score");
            dq("bytebench_update_time", String.valueOf(System.currentTimeMillis()));
            dq("bytebench_value", String.valueOf(optDouble));
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("score", optDouble);
            ig.dq().s(jSONObject3);
        } catch (Exception e2) {
            e2.printStackTrace();
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("score", -1);
                ig.dq().s(jSONObject4);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
    }

    private int kk() {
        int d2 = d(wp.getContext());
        int o = o();
        int i = 2;
        if (d2 != 0 && d2 != 1 && o != 0) {
            if (d2 != 2 || o <= 0) {
                if (d2 <= 2) {
                    i = AVMDLDataLoader.AVMDLErrorIsCreateTask;
                } else if (o > 1) {
                    i = 0;
                }
            }
            i = 1;
        }
        dq("ram_level", String.valueOf(d2));
        dq("cpu_level", String.valueOf(o));
        dq("update_time", String.valueOf(System.currentTimeMillis()));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ram", d2);
            jSONObject.put("cpu", o);
            jSONObject.put("level", i);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        ig.dq().p(jSONObject);
        dq(i);
        return i;
    }

    private static int o() {
        int ox = ox() / 1000;
        if (ox <= 1600) {
            return 0;
        }
        if (ox <= 2000) {
            return 1;
        }
        return ox <= 2500 ? 2 : 3;
    }

    public static int ox() {
        int i = -1;
        for (int i2 = 0; i2 < p(); i2++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists() && file.canRead()) {
                    byte[] bArr = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i3 = 0;
                        while (Character.isDigit(bArr[i3]) && i3 < 128) {
                            i3++;
                        }
                        int parseInt = Integer.parseInt(new String(bArr, 0, i3));
                        if (parseInt > i) {
                            i = parseInt;
                        }
                    } catch (NumberFormatException unused) {
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                    fileInputStream.close();
                }
            } catch (IOException unused2) {
                return -1;
            }
        }
        if (i == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            try {
                int dq2 = dq("cpu MHz", fileInputStream2) * 1000;
                if (dq2 > i) {
                    i = dq2;
                }
            } finally {
                fileInputStream2.close();
            }
        }
        return i;
    }

    private static int ox(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    public static int p() {
        try {
            int d2 = d("/sys/devices/system/cpu/possible");
            if (d2 == -1) {
                d2 = d("/sys/devices/system/cpu/present");
            }
            return d2 == -1 ? new File("/sys/devices/system/cpu/").listFiles(f3721d).length : d2;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq() {
        return "DeviceRate";
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq(String str) {
        return com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).d(str, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public void dq(String str, String str2) {
        com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).dq(str, str2);
    }

    public boolean iw() {
        String dq2 = dq("update_time");
        return dq2.isEmpty() || System.currentTimeMillis() - Long.parseLong(dq2) >= 15552000000L;
    }

    public boolean mn() {
        String dq2 = dq("bytebench_update_time");
        return dq2.isEmpty() || System.currentTimeMillis() - Long.parseLong(dq2) >= 15552000000L;
    }

    public void s() {
        if (wp.d().td() && iw()) {
            kk();
        }
        if (wp.d().gn() && mn()) {
            ia();
        }
    }
}
