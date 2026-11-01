package com.bytedance.sdk.openadsdk.downloadnew;

import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes3.dex */
public class d {

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public Map<String, String> f3737d;
        public InputStream dq;
        public int ox;
        public HttpURLConnection p;

        public dq(InputStream inputStream, Map<String, String> map, int i, HttpURLConnection httpURLConnection) {
            this.dq = inputStream;
            this.f3737d = map;
            this.ox = i;
            this.p = httpURLConnection;
        }
    }

    public static dq dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws IOException {
        int responseCode;
        HashMap hashMap = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (com.ss.android.socialbase.downloader.model.ox oxVar : list) {
                hashMap.put(oxVar.dq(), oxVar.d());
            }
        }
        HttpURLConnection dq2 = dq(str, hashMap);
        if (dq2 == null || (responseCode = dq2.getResponseCode()) < 200 || responseCode >= 300) {
            return null;
        }
        Map<String, String> dq3 = dq(dq2);
        InputStream inputStream = dq2.getInputStream();
        String contentEncoding = dq2.getContentEncoding();
        if (!TextUtils.isEmpty(contentEncoding) && contentEncoding.contains("gzip")) {
            inputStream = new GZIPInputStream(inputStream);
        }
        return new dq(inputStream, dq3, responseCode, dq2);
    }

    public static HttpURLConnection dq(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setRequestProperty("accept", "*/*");
                httpURLConnection.setRequestProperty("connection", "Keep-Alive");
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                return ((responseCode < 200 || responseCode >= 300) && responseCode >= 300 && responseCode < 400) ? dq(httpURLConnection.getHeaderField("Location"), map) : httpURLConnection;
            } catch (Exception unused) {
                return httpURLConnection;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Map<String, String> dq(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i = 0; i < size; i++) {
            hashMap.put(httpURLConnection.getHeaderFieldKey(i), httpURLConnection.getHeaderField(i));
        }
        return hashMap;
    }
}
