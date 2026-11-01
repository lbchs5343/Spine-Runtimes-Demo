package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public final class af {

    /* renamed from: a, reason: collision with root package name */
    static af f9552a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f9553b;

    /* renamed from: c, reason: collision with root package name */
    public Map<String, String> f9554c = null;

    public af(Context context) {
        this.f9553b = context;
    }

    private static HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str2);
            Proxy proxy = an.f9588a;
            if (proxy != null) {
                httpURLConnection = (HttpURLConnection) url.openConnection(proxy);
            } else if (str == null || !str.toLowerCase(Locale.US).contains("wap")) {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")))));
            }
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (Throwable th) {
            if (al.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    private static HttpURLConnection a(String str, byte[] bArr, String str2, Map<String, String> map) {
        if (str == null) {
            al.e("destUrl is null.", new Object[0]);
            return null;
        }
        HttpURLConnection a2 = a(str2, str);
        if (a2 == null) {
            al.e("Failed to get HttpURLConnection object.", new Object[0]);
            return null;
        }
        try {
            a2.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    a2.setRequestProperty(entry.getKey(), URLEncoder.encode(entry.getValue(), "utf-8"));
                }
            }
            a2.setRequestProperty("A37", URLEncoder.encode(str2, "utf-8"));
            a2.setRequestProperty("A38", URLEncoder.encode(str2, "utf-8"));
            OutputStream outputStream = a2.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
                return a2;
            }
            outputStream.write(bArr);
            return a2;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            al.e("Failed to upload, please check your network.", new Object[0]);
            return null;
        }
    }

    private static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list.size() > 0) {
                hashMap.put(str, list.get(0));
            }
        }
        return hashMap;
    }

    private static byte[] b(HttpURLConnection httpURLConnection) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read <= 0) {
                        byteArrayOutputStream.flush();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        try {
                            bufferedInputStream.close();
                            return byteArray;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            return byteArray;
                        }
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0176 A[Catch: all -> 0x00e3, TRY_LEAVE, TryCatch #2 {all -> 0x00e3, blocks: (B:25:0x00a7, B:28:0x00af, B:30:0x00c0, B:33:0x00d1, B:43:0x00cf, B:54:0x013c, B:57:0x0147, B:70:0x0170, B:72:0x0176, B:82:0x00fe, B:99:0x0106, B:86:0x0129, B:89:0x0130), top: B:24:0x00a7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] a(String str, byte[] bArr, aj ajVar, Map<String, String> map) {
        byte[] bArr2;
        long j;
        String c2;
        byte[] bArr3 = null;
        if (str == null) {
            al.e("Failed for no URL.", new Object[0]);
            return null;
        }
        long length = bArr == null ? 0L : bArr.length;
        int i = 1;
        al.c("request: %s, send: %d (pid=%d | tid=%d)", str, Long.valueOf(length), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        String str2 = str;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 <= 0 && i3 <= 0) {
            if (z) {
                bArr2 = bArr3;
                z = false;
            } else {
                i2++;
                if (i2 > i) {
                    bArr2 = bArr3;
                    al.c("try time: ".concat(String.valueOf(i2)), new Object[0]);
                    j = 0;
                    SystemClock.sleep(new Random(System.currentTimeMillis()).nextInt(10000) + ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
                    int i4 = i2;
                    c2 = ab.c(this.f9553b);
                    if (c2 != null) {
                        al.d("Failed to request for network not avail", new Object[0]);
                    } else {
                        ajVar.a(length);
                        HttpURLConnection a2 = a(str2, bArr, c2, map);
                        if (a2 != null) {
                            try {
                                try {
                                    int responseCode = a2.getResponseCode();
                                    try {
                                        al.c("response code ".concat(String.valueOf(responseCode)), new Object[0]);
                                        if (responseCode == 200) {
                                            this.f9554c = a(a2);
                                            byte[] b2 = b(a2);
                                            ajVar.b(b2 == null ? j : b2.length);
                                            try {
                                                a2.disconnect();
                                            } catch (Throwable th) {
                                                if (!al.a(th)) {
                                                    th.printStackTrace();
                                                }
                                            }
                                            return b2;
                                        }
                                        if (responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307) {
                                            try {
                                                String headerField = a2.getHeaderField("Location");
                                                if (headerField == null) {
                                                    try {
                                                        al.e("Failed to redirect: %d".concat(String.valueOf(responseCode)), new Object[0]);
                                                        try {
                                                            a2.disconnect();
                                                        } catch (Throwable th2) {
                                                            if (!al.a(th2)) {
                                                                th2.printStackTrace();
                                                            }
                                                        }
                                                        return bArr2;
                                                    } catch (IOException e2) {
                                                        e = e2;
                                                        z = true;
                                                        if (!al.a(e)) {
                                                            e.printStackTrace();
                                                        }
                                                        try {
                                                            a2.disconnect();
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            if (al.a(th)) {
                                                            }
                                                            th.printStackTrace();
                                                        }
                                                        i2 = i4;
                                                        bArr3 = bArr2;
                                                        i = 1;
                                                    }
                                                } else {
                                                    i3++;
                                                    try {
                                                    } catch (IOException e3) {
                                                        e = e3;
                                                    }
                                                    try {
                                                        al.c("redirect code: %d ,to:%s", Integer.valueOf(responseCode), headerField);
                                                        str2 = headerField;
                                                        i4 = 0;
                                                        z = true;
                                                    } catch (IOException e4) {
                                                        e = e4;
                                                        str2 = headerField;
                                                        i4 = 0;
                                                        z = true;
                                                        if (!al.a(e)) {
                                                        }
                                                        a2.disconnect();
                                                        i2 = i4;
                                                        bArr3 = bArr2;
                                                        i = 1;
                                                    }
                                                }
                                            } catch (IOException e5) {
                                                e = e5;
                                            }
                                        }
                                        try {
                                            long contentLength = a2.getContentLength();
                                            if (contentLength < j) {
                                                contentLength = j;
                                            }
                                            ajVar.b(contentLength);
                                            try {
                                                a2.disconnect();
                                            } catch (Throwable th4) {
                                                th = th4;
                                                if (al.a(th)) {
                                                }
                                                th.printStackTrace();
                                            }
                                        } catch (IOException e6) {
                                            e = e6;
                                            if (!al.a(e)) {
                                            }
                                            a2.disconnect();
                                            i2 = i4;
                                            bArr3 = bArr2;
                                            i = 1;
                                        }
                                    } catch (IOException e7) {
                                        e = e7;
                                    }
                                } finally {
                                }
                            } catch (IOException e8) {
                                e = e8;
                            }
                        } else {
                            al.c("Failed to execute post.", new Object[0]);
                            ajVar.b(j);
                        }
                    }
                    i2 = i4;
                    bArr3 = bArr2;
                    i = 1;
                } else {
                    bArr2 = bArr3;
                }
            }
            j = 0;
            int i42 = i2;
            c2 = ab.c(this.f9553b);
            if (c2 != null) {
            }
            i2 = i42;
            bArr3 = bArr2;
            i = 1;
        }
        return bArr3;
    }
}
