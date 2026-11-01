package com.bytedance.sdk.openadsdk.core.op.dq;

import android.net.Network;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject dq(Network network, String str, String str2) {
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        InputStream inputStream;
        JSONObject jSONObject;
        InputStream inputStream2 = null;
        if (str == null) {
            return null;
        }
        try {
            httpsURLConnection = network == null ? (HttpsURLConnection) new URL(str).openConnection() : (HttpsURLConnection) network.openConnection(new URL(str));
            if (httpsURLConnection == null) {
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
                com.bytedance.sdk.openadsdk.h.p.dq((Closeable) null);
                com.bytedance.sdk.openadsdk.h.p.dq((Closeable) null);
                return null;
            }
            try {
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setDefaultUseCaches(false);
                if (TextUtils.isEmpty(str2)) {
                    httpsURLConnection.setRequestMethod("GET");
                    outputStream = null;
                } else {
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setDoOutput(true);
                    outputStream = httpsURLConnection.getOutputStream();
                    try {
                        outputStream.write(str2.getBytes());
                        outputStream.flush();
                    } catch (Throwable unused) {
                        inputStream = null;
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        com.bytedance.sdk.openadsdk.h.p.dq(outputStream);
                        com.bytedance.sdk.openadsdk.h.p.dq(inputStream);
                        return null;
                    }
                }
                httpsURLConnection.connect();
                if (httpsURLConnection.getResponseCode() == 200) {
                    inputStream = httpsURLConnection.getInputStream();
                    try {
                        byte[] bArr = new byte[2048];
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            sb.append(new String(bArr, 0, read, StandardCharsets.UTF_8));
                        }
                        jSONObject = new JSONObject(sb.toString());
                        inputStream2 = inputStream;
                    } catch (Throwable unused2) {
                        if (httpsURLConnection != null) {
                        }
                        com.bytedance.sdk.openadsdk.h.p.dq(outputStream);
                        com.bytedance.sdk.openadsdk.h.p.dq(inputStream);
                        return null;
                    }
                } else {
                    jSONObject = null;
                }
                httpsURLConnection.disconnect();
                com.bytedance.sdk.openadsdk.h.p.dq(outputStream);
                com.bytedance.sdk.openadsdk.h.p.dq(inputStream2);
                return jSONObject;
            } catch (Throwable unused3) {
                outputStream = null;
                inputStream = outputStream;
                if (httpsURLConnection != null) {
                }
                com.bytedance.sdk.openadsdk.h.p.dq(outputStream);
                com.bytedance.sdk.openadsdk.h.p.dq(inputStream);
                return null;
            }
        } catch (Throwable unused4) {
            httpsURLConnection = null;
            outputStream = null;
        }
    }
}
