package com.bytedance.sdk.openadsdk.core.e.d;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static String f2839d;
    private static String dq;
    private static Map<String, Integer> ox = new HashMap();

    static {
        if (ox.dq()) {
            f2839d = Build.SUPPORTED_ABIS[0];
        } else {
            f2839d = Build.CPU_ABI;
        }
        ox.put("arm64-v8a", 64);
        ox.put("armeabi-v7a", 32);
        ox.put("armeabi", 32);
        ox.put("x86_64", 64);
        ox.put("x86", 32);
        ox.put("mips64", 64);
        ox.put("mips", 32);
        dq = d();
    }

    private static String d() {
        JSONObject ox2 = ox();
        String dq2 = dq(ox2);
        return dq2 == null ? d(ox2) : dq2;
    }

    private static String d(JSONObject jSONObject) {
        HashSet hashSet;
        String[] strArr;
        try {
            Context context = wp.getContext();
            ZipFile zipFile = new ZipFile(new File(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.sourceDir));
            hashSet = new HashSet(dq(zipFile).keySet());
            try {
                zipFile.close();
            } catch (IOException unused) {
                ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiManual, close sourceApkZipFile error!");
            }
            strArr = ox.dq() ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
        } catch (Throwable th) {
            ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiManual failed!", th);
            dq(jSONObject, "manualError", "1");
        }
        if (hashSet.isEmpty()) {
            ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiManual, host source apk .so is empty, use supportedABIs[0]=" + strArr[0]);
            dq(jSONObject, "supportedABI0", strArr[0]);
            return strArr[0];
        }
        for (String str : strArr) {
            if (hashSet.contains(str)) {
                ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiManual, match cpuAbi=".concat(String.valueOf(str)));
                dq(jSONObject, "matchCpuAbi", str);
                return str;
            }
        }
        if (ox.dq()) {
            String[] strArr2 = Build.SUPPORTED_ABIS;
            dq(jSONObject, "defaultABI0", strArr2[0]);
            return strArr2[0];
        }
        String str2 = Build.CPU_ABI;
        dq(jSONObject, "defaultABI", str2);
        return str2;
    }

    public static String dq() {
        String str = dq;
        if (str != null) {
            return str;
        }
        String d2 = d();
        dq = d2;
        return d2;
    }

    private static String dq(JSONObject jSONObject) {
        boolean is64Bit;
        if (!ox.dq()) {
            return null;
        }
        try {
            String str = (String) dq.dq(wp.getContext().getApplicationInfo(), "primaryCpuAbi");
            ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto, primaryCpuAbi=".concat(String.valueOf(str)));
            dq(jSONObject, "primaryCpuAbi", str);
            if (str == null) {
                return null;
            }
            int i = 0;
            if (ox.d()) {
                try {
                    is64Bit = Process.is64Bit();
                    i = is64Bit ? 64 : 32;
                    ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto, processMode=".concat(String.valueOf(i)));
                } catch (Exception unused) {
                    ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto, processMode exception default=".concat(String.valueOf(i)));
                }
            } else {
                ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto, processMode default=0");
            }
            dq(jSONObject, "processMode", String.valueOf(i));
            if (i == 0) {
                ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto1, sHostAbi=".concat(str));
            } else {
                if (ox.get(str).intValue() != i) {
                    return null;
                }
                ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto2, sHostAbi=".concat(str));
            }
            return str;
        } catch (Exception e2) {
            ig.d("NativeLibHelper", "NativeLibHelper inferHostAbiAuto failed!", e2);
            dq(jSONObject, "autoError", "1");
            return null;
        }
    }

    private static Map<String, List<ZipEntry>> dq(ZipFile zipFile) {
        String[] split;
        HashMap hashMap = new HashMap();
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        Pattern compile = Pattern.compile("^lib/[^/]+/lib[^/]+.so$");
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            if (!nextElement.isDirectory() && compile.matcher(nextElement.getName()).matches() && (split = nextElement.getName().split(File.separator)) != null && split.length >= 2) {
                String str = split[split.length - 2];
                if (ox.containsKey(str)) {
                    if (hashMap.get(str) == null) {
                        hashMap.put(str, new LinkedList());
                    }
                    ((List) hashMap.get(str)).add(nextElement);
                }
            }
        }
        ig.dq("NativeLibHelper", "NativeLibHelper getAllSoZipEntries, zipFile=" + zipFile.getName() + ", soEntries=" + hashMap.toString());
        return hashMap;
    }

    private static void dq(JSONObject jSONObject, String str, String str2) {
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private static JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("primaryCpuAbi", "0");
            jSONObject.put("processMode", "0");
            jSONObject.put("supportedABI0", "0");
            jSONObject.put("matchCpuAbi", "0");
            jSONObject.put("defaultABI0", "0");
            jSONObject.put("defaultABI", "0");
            jSONObject.put("autoError", "0");
            jSONObject.put("manualError", "0");
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }
}
