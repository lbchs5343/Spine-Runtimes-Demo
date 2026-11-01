package com.bytedance.embedapplog;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class yy {
    public static JSONObject dq;
    private static final String[] p = {"GET", "POST"};
    private static final String[] s = {"aid", "app_version", "tt_data"};

    /* renamed from: d, reason: collision with root package name */
    static final String[] f753d = {"aid", "version_code", "ab_client", "ab_version", "ab_feature", "ab_group", "iid", "device_platform"};
    public static final String[] ox = {"tt_data", "device_platform"};

    public static JSONObject d(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        String dq2 = dq(1, str, null, z.dq(jSONObject.toString()));
        if (dq2 != null) {
            try {
                jSONObject2 = new JSONObject(dq2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            if (jSONObject2 == null && "ss_app_log".equals(jSONObject2.optString("magic_tag", ""))) {
                return jSONObject2.optJSONObject("config");
            }
            return null;
        }
        jSONObject2 = null;
        if (jSONObject2 == null) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int dq(String[] strArr, byte[] bArr, u uVar) {
        JSONObject jSONObject;
        int i;
        HashMap hashMap = new HashMap(2);
        if (dq.mn()) {
            hashMap.put("Content-Type", "application/octet-stream;tt-data=a");
        } else {
            hashMap.put("Content-Type", "application/json; charset=utf-8");
        }
        String str = null;
        for (String str2 : strArr) {
            str = dq(1, str2, hashMap, bArr);
            if (!TextUtils.isEmpty(str)) {
                break;
            }
        }
        try {
        } catch (JSONException e2) {
            e = e2;
            jSONObject = null;
        }
        if (TextUtils.isEmpty(str)) {
            jSONObject = null;
            i = 0;
            if (i == 200) {
            }
            return i;
        }
        jSONObject = new JSONObject(str);
        try {
            i = jSONObject.optInt("http_code");
            if (i == 200) {
                i = "ss_app_log".equals(jSONObject.optString("magic_tag")) ? "success".equals(jSONObject.optString("message")) ? 200 : Integer.valueOf("101").intValue() : Integer.valueOf("102").intValue();
            }
        } catch (JSONException e3) {
            e = e3;
            jo.d(e);
            i = 0;
            if (i == 200) {
            }
            return i;
        }
        if (i == 200) {
            try {
                long optLong = jSONObject.optLong("server_time");
                if (optLong > 0) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("server_time", optLong);
                    jSONObject2.put("local_time", System.currentTimeMillis() / 1000);
                    dq = jSONObject2;
                }
            } catch (Exception e4) {
                jo.d(e4);
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("blacklist");
            if (optJSONObject != null) {
                JSONArray optJSONArray = optJSONObject.optJSONArray("v1");
                int length = optJSONArray != null ? optJSONArray.length() : 0;
                HashSet hashSet = new HashSet(length);
                for (int i2 = 0; i2 < length; i2++) {
                    String optString = optJSONArray.optString(i2, null);
                    if (!TextUtils.isEmpty(optString)) {
                        hashSet.add(optString);
                    }
                }
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("v3");
                int length2 = optJSONArray2 != null ? optJSONArray2.length() : 0;
                HashSet hashSet2 = new HashSet(length2);
                for (int i3 = 0; i3 < length2; i3++) {
                    String optString2 = optJSONArray2.optString(i3, null);
                    if (!TextUtils.isEmpty(optString2)) {
                        hashSet2.add(optString2);
                    }
                }
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object, java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(int i, String str, HashMap<String, String> hashMap, byte[] bArr) {
        DataOutputStream dataOutputStream;
        BufferedReader bufferedReader;
        Object obj;
        ?? r9;
        DataOutputStream dataOutputStream2;
        BufferedReader bufferedReader2;
        String sb;
        if (jo.f730d) {
            jo.dq("http: ".concat(String.valueOf(str)), null);
            if (hashMap != null) {
                for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                        jo.dq("http headers key:" + entry.getKey() + " value:" + entry.getValue(), null);
                    }
                }
            }
            if (bArr != null) {
                jo.dq("http data length:" + bArr.length, null);
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (i == 0) {
                httpURLConnection.setDoOutput(false);
            } else if (i == 1) {
                httpURLConnection.setDoOutput(true);
            } else {
                jo.d((Throwable) null);
            }
            httpURLConnection.setRequestMethod(p[i]);
            if (hashMap != null && !hashMap.isEmpty()) {
                for (Map.Entry<String, String> entry2 : hashMap.entrySet()) {
                    if (TextUtils.isEmpty(entry2.getKey()) || TextUtils.isEmpty(entry2.getValue())) {
                        jo.d((Throwable) null);
                    } else {
                        httpURLConnection.addRequestProperty(entry2.getKey(), entry2.getValue());
                    }
                }
            }
            httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
            if (bArr == null || bArr.length <= 0) {
                dataOutputStream2 = null;
            } else {
                dataOutputStream2 = new DataOutputStream(httpURLConnection.getOutputStream());
                try {
                    dataOutputStream2.write(bArr);
                    dataOutputStream2.flush();
                    dataOutputStream2.close();
                } catch (Throwable th) {
                    dataOutputStream = dataOutputStream2;
                    th = th;
                    bufferedReader = null;
                    obj = bufferedReader;
                    try {
                        jo.d(th);
                        if (dataOutputStream != null) {
                        }
                        if (bufferedReader != null) {
                        }
                        r9 = obj;
                        if (jo.f730d) {
                        }
                        return r9;
                    } finally {
                    }
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                Object jSONObject = new JSONObject().put("http_code", responseCode).toString();
                try {
                    new RuntimeException("HttpCode:".concat(String.valueOf(responseCode))).printStackTrace();
                    r9 = jSONObject;
                    bufferedReader2 = null;
                } catch (Throwable th2) {
                    obj = jSONObject;
                    dataOutputStream = dataOutputStream2;
                    th = th2;
                    bufferedReader = null;
                    jo.d(th);
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused2) {
                        }
                    }
                    r9 = obj;
                    if (jo.f730d) {
                    }
                    return r9;
                }
            } else if (httpURLConnection.getContentLength() < 10240) {
                InputStream inputStream = httpURLConnection.getInputStream();
                bufferedReader2 = "gzip".equalsIgnoreCase(httpURLConnection.getContentEncoding()) ? new BufferedReader(new InputStreamReader(new GZIPInputStream(inputStream))) : new BufferedReader(new InputStreamReader(inputStream));
                try {
                    StringBuilder sb2 = new StringBuilder(inputStream.available());
                    while (true) {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb2.append(readLine);
                        sb2.append("\n");
                    }
                    sb = sb2.toString();
                } catch (Throwable th3) {
                    BufferedReader bufferedReader3 = bufferedReader2;
                    dataOutputStream = dataOutputStream2;
                    th = th3;
                    bufferedReader = bufferedReader3;
                    obj = null;
                }
                try {
                    JSONObject jSONObject2 = new JSONObject(sb);
                    jSONObject2.put("http_code", 200);
                    r9 = jSONObject2.toString();
                } catch (Throwable th4) {
                    BufferedReader bufferedReader4 = bufferedReader2;
                    dataOutputStream = dataOutputStream2;
                    th = th4;
                    obj = sb;
                    bufferedReader = bufferedReader4;
                    jo.d(th);
                    if (dataOutputStream != null) {
                    }
                    if (bufferedReader != null) {
                    }
                    r9 = obj;
                    if (jo.f730d) {
                    }
                    return r9;
                }
            } else {
                jo.d((Throwable) null);
                bufferedReader2 = null;
                r9 = 0;
            }
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused4) {
                }
            }
        } catch (Throwable th5) {
            th = th5;
            dataOutputStream = null;
            bufferedReader = null;
        }
        if (jo.f730d) {
            jo.dq("http response: ".concat(String.valueOf((Object) r9)), null);
        }
        return r9;
    }

    private static String dq(String str) {
        if (TextUtils.isEmpty(str) || !dq.mn()) {
            return str;
        }
        Uri parse = Uri.parse(str);
        String query = parse.getQuery();
        ArrayList arrayList = new ArrayList();
        for (String str2 : s) {
            String queryParameter = parse.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                arrayList.add(new Pair(str2, queryParameter));
            }
        }
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.clearQuery();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            buildUpon.appendQueryParameter((String) pair.first, (String) pair.second);
        }
        buildUpon.appendQueryParameter("tt_info", new String(Base64.encode(z.dq(query), 8)));
        return buildUpon.build().toString();
    }

    public static String dq(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        HashMap hashMap = new HashMap(strArr.length);
        for (String str2 : strArr) {
            String queryParameter = parse.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                hashMap.put(str2, queryParameter);
            }
        }
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.clearQuery();
        for (String str3 : hashMap.keySet()) {
            buildUpon.appendQueryParameter(str3, (String) hashMap.get(str3));
        }
        return buildUpon.build().toString();
    }

    public static JSONObject dq(String str, JSONObject jSONObject) {
        HashMap hashMap = new HashMap(2);
        if (dq.mn()) {
            hashMap.put("Content-Type", "application/octet-stream;tt-data=a");
        } else {
            hashMap.put("Content-Type", "application/json; charset=utf-8");
        }
        String dq2 = dq(1, dq(str), hashMap, z.dq(jSONObject.toString()));
        if (dq2 == null) {
            return null;
        }
        try {
            return new JSONObject(dq2);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean dq(int i) {
        return i >= 500 && i < 600;
    }

    public static JSONObject ox(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        String dq2 = dq(1, str, null, z.dq(jSONObject.toString()));
        if (dq2 != null) {
            try {
                jSONObject2 = new JSONObject(dq2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            if (jSONObject2 == null && "success".equals(jSONObject2.optString("message", ""))) {
                return jSONObject2.optJSONObject("data");
            }
            return null;
        }
        jSONObject2 = null;
        if (jSONObject2 == null) {
        }
        return null;
    }
}
