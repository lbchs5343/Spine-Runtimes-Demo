package com.bytedance.sdk.component.iw.d;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.iw.p<p> {
    private Map<String, String> dq(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list != null && list.size() > 0) {
                hashMap.put(str, list.get(0));
            }
        }
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // com.bytedance.sdk.component.iw.p
    /* renamed from: call, reason: merged with bridge method [inline-methods] */
    public p call2(com.bytedance.sdk.component.iw.s sVar) {
        Closeable closeable;
        InputStream inputStream;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        String message;
        Closeable closeable2;
        HttpURLConnection httpURLConnection;
        InputStream inputStream2 = null;
        Map<String, String> map = null;
        int i = 0;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(sVar.dq()).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                httpURLConnection.setReadTimeout(MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                httpURLConnection.connect();
                inputStream = httpURLConnection.getInputStream();
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr2 = new byte[1024];
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int read = inputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    } catch (MalformedURLException e2) {
                        e = e2;
                        bArr = null;
                    } catch (IOException e3) {
                        e = e3;
                        bArr = null;
                    }
                }
                i = 200;
                bArr = byteArrayOutputStream.toByteArray();
                try {
                    map = sVar.d() ? dq(httpURLConnection) : null;
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(byteArrayOutputStream);
                    message = "success";
                } catch (MalformedURLException e4) {
                    e = e4;
                    e.getMessage();
                    message = e.getMessage();
                    closeable2 = byteArrayOutputStream;
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable2);
                    return new p(i, bArr, message, map);
                } catch (IOException e5) {
                    e = e5;
                    e.getMessage();
                    message = e.getMessage();
                    closeable2 = byteArrayOutputStream;
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable2);
                    return new p(i, bArr, message, map);
                }
            } catch (MalformedURLException e6) {
                e = e6;
                bArr = null;
                byteArrayOutputStream = bArr;
                e.getMessage();
                message = e.getMessage();
                closeable2 = byteArrayOutputStream;
                com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
                com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable2);
                return new p(i, bArr, message, map);
            } catch (IOException e7) {
                e = e7;
                bArr = null;
                byteArrayOutputStream = bArr;
                e.getMessage();
                message = e.getMessage();
                closeable2 = byteArrayOutputStream;
                com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
                com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable2);
                return new p(i, bArr, message, map);
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
                inputStream2 = inputStream;
                com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream2);
                com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable);
                throw th;
            }
        } catch (MalformedURLException e8) {
            e = e8;
            inputStream = null;
            bArr = null;
        } catch (IOException e9) {
            e = e9;
            inputStream = null;
            bArr = null;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream2);
            com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable);
            throw th;
        }
        return new p(i, bArr, message, map);
    }
}
