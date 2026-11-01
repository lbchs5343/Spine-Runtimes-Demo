package com.bytedance.sdk.openadsdk.mp;

import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.h.p;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.tn;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyStore;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: com.bytedance.sdk.openadsdk.mp.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0203dq {
        void dq(int i, String str);

        void dq(String str);
    }

    private static SSLSocketFactory dq(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (Throwable th) {
            throw new RuntimeException("No System TLS", th);
        }
    }

    private static X509TrustManager dq() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (Throwable th) {
            ig.d("Https", th);
            return null;
        }
    }

    private void dq(DataOutputStream dataOutputStream, String str, String str2, String str3) throws IOException {
        StringBuilder o = tn.o("\r\n--", str3, "\r\nContent-Disposition: form-data; name=\"", str, "\";\r\nContent-Length: ");
        o.append(str2.length());
        o.append("\r\n\r\n");
        o.append(str2);
        o.append("\r\n");
        dataOutputStream.writeBytes(o.toString());
    }

    private void dq(HttpURLConnection httpURLConnection, InterfaceC0203dq interfaceC0203dq) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            } else {
                sb.append(readLine);
            }
        }
        if (responseCode == 200) {
            if (interfaceC0203dq != null) {
                interfaceC0203dq.dq(sb.toString());
            }
        } else if (interfaceC0203dq != null) {
            interfaceC0203dq.dq(responseCode, sb.toString());
        }
    }

    public void dq(String str, File file, Map<String, String> map, InterfaceC0203dq interfaceC0203dq, Map<String, String> map2) {
        DataOutputStream dataOutputStream;
        HttpsURLConnection httpsURLConnection;
        String uuid;
        HttpsURLConnection httpsURLConnection2 = null;
        try {
            httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
            try {
                httpsURLConnection.setRequestMethod("POST");
                httpsURLConnection.setReadTimeout(AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setUseCaches(false);
                uuid = UUID.randomUUID().toString();
                if (map2 != null) {
                    for (Map.Entry<String, String> entry : map2.entrySet()) {
                        httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpsURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + uuid);
                httpsURLConnection.setSSLSocketFactory(dq(dq()));
                httpsURLConnection.connect();
                dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
            } catch (Throwable th) {
                th = th;
                dataOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
        try {
            dataOutputStream.writeBytes("--" + uuid + "\r\nContent-Disposition: form-data; name=\"logFile\"; filename=\"" + file.getName() + "\"\r\nContent-Type: multipart/form-data\r\nContent-Length: " + file.length() + "\r\n\r\n");
            dataOutputStream.flush();
            p.dq(dataOutputStream, file);
            dataOutputStream.writeBytes("\r\n");
            if (map != null) {
                for (Map.Entry<String, String> entry2 : map.entrySet()) {
                    String key = entry2.getKey();
                    String value = entry2.getValue();
                    if (value != null && key != null) {
                        dq(dataOutputStream, key, value, uuid);
                    }
                }
            }
            dataOutputStream.writeBytes("--" + uuid + "--\r\n");
            dataOutputStream.flush();
            dataOutputStream.close();
            dq(httpsURLConnection, interfaceC0203dq);
            httpsURLConnection.disconnect();
            p.dq(dataOutputStream);
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection2 = httpsURLConnection;
            try {
                ig.d("Https", th);
                if (interfaceC0203dq != null) {
                    interfaceC0203dq.dq(-1, th.getMessage());
                }
            } finally {
                if (httpsURLConnection2 != null) {
                    httpsURLConnection2.disconnect();
                }
                p.dq(dataOutputStream);
            }
        }
    }
}
