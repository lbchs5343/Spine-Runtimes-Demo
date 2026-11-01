package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.bb;
import g.abn;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class H5JavaScriptInterface {

    /* renamed from: a, reason: collision with root package name */
    private static HashSet<Integer> f9520a = new HashSet<>();

    /* renamed from: b, reason: collision with root package name */
    private String f9521b = null;

    /* renamed from: c, reason: collision with root package name */
    private Thread f9522c = null;

    /* renamed from: d, reason: collision with root package name */
    private String f9523d = null;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, String> f9524e = null;

    private H5JavaScriptInterface() {
    }

    private static bb a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                bb bbVar = new bb();
                String string2 = jSONObject.getString("projectRoot");
                bbVar.f9665a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                bbVar.f9666b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString(abn.EXTRA_URL);
                bbVar.f9667c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString(TTDownloadField.TT_USERAGENT);
                bbVar.f9668d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString(MediaFormat.KEY_LANGUAGE);
                bbVar.f9669e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString(abn.EXTRA_UA_APP_NAME);
                bbVar.f9670f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int indexOf = string.indexOf("\n");
                if (indexOf < 0) {
                    al.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                bbVar.h = string.substring(indexOf + 1);
                String substring = string.substring(0, indexOf);
                bbVar.f9671g = substring;
                int indexOf2 = substring.indexOf(":");
                if (indexOf2 > 0) {
                    bbVar.f9671g = bbVar.f9671g.substring(indexOf2 + 1);
                }
                bbVar.i = jSONObject.getString("file");
                if (bbVar.f9670f == null) {
                    return null;
                }
                long j = jSONObject.getLong("lineNumber");
                bbVar.j = j;
                if (j < 0) {
                    return null;
                }
                long j2 = jSONObject.getLong("columnNumber");
                bbVar.k = j2;
                if (j2 < 0) {
                    return null;
                }
                al.a("H5 crash information is following: ", new Object[0]);
                al.a("[projectRoot]: " + bbVar.f9665a, new Object[0]);
                al.a("[context]: " + bbVar.f9666b, new Object[0]);
                al.a("[url]: " + bbVar.f9667c, new Object[0]);
                al.a("[userAgent]: " + bbVar.f9668d, new Object[0]);
                al.a("[language]: " + bbVar.f9669e, new Object[0]);
                al.a("[name]: " + bbVar.f9670f, new Object[0]);
                al.a("[message]: " + bbVar.f9671g, new Object[0]);
                al.a("[stacktrace]: \n" + bbVar.h, new Object[0]);
                al.a("[file]: " + bbVar.i, new Object[0]);
                al.a("[lineNumber]: " + bbVar.j, new Object[0]);
                al.a("[columnNumber]: " + bbVar.k, new Object[0]);
                return bbVar;
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.a aVar) {
        String str = null;
        if (aVar == null || f9520a.contains(Integer.valueOf(aVar.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f9520a.add(Integer.valueOf(aVar.hashCode()));
        Thread currentThread = Thread.currentThread();
        h5JavaScriptInterface.f9522c = currentThread;
        if (currentThread != null) {
            StringBuilder sb = new StringBuilder("\n");
            for (int i = 2; i < currentThread.getStackTrace().length; i++) {
                StackTraceElement stackTraceElement = currentThread.getStackTrace()[i];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
            str = sb.toString();
        }
        h5JavaScriptInterface.f9523d = str;
        HashMap hashMap = new HashMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) aVar.c());
        hashMap.put("[WebView] ContentDescription", sb2.toString());
        h5JavaScriptInterface.f9524e = hashMap;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        al.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            al.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String c2 = ap.c(str.getBytes());
        String str2 = this.f9521b;
        if (str2 != null && str2.equals(c2)) {
            al.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.f9521b = c2;
        al.d("Handling JS exception ...", new Object[0]);
        bb a2 = a(str);
        if (a2 == null) {
            al.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = a2.f9665a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = a2.f9666b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = a2.f9667c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = a2.f9668d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = a2.i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j = a2.j;
        if (j != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f9524e);
        linkedHashMap.put("Java Stack", this.f9523d);
        InnerApi.postH5CrashAsync(this.f9522c, a2.f9670f, a2.f9671g, a2.h, linkedHashMap);
    }
}
