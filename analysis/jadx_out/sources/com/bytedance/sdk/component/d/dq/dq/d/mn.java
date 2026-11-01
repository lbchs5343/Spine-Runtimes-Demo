package com.bytedance.sdk.component.d.dq.dq.d;

import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.o;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* loaded from: classes.dex */
public class mn extends fw {

    /* renamed from: d, reason: collision with root package name */
    InputStream f1839d;
    HttpURLConnection dq;

    public mn(HttpURLConnection httpURLConnection) throws IOException {
        this.dq = httpURLConnection;
        this.f1839d = new s(httpURLConnection.getInputStream(), httpURLConnection);
    }

    @Override // com.bytedance.sdk.component.d.dq.fw, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f1839d.close();
            this.dq.disconnect();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public String d() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f1839d));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    String stringBuffer2 = stringBuffer.toString();
                    close();
                    return stringBuffer2;
                }
                stringBuffer.append(readLine + "\n");
            }
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public long dq() {
        try {
            return this.dq.getContentLength();
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public InputStream ox() {
        return this.f1839d;
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public byte[] p() {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = this.f1839d.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream2.write(bArr, 0, read);
                } catch (Exception unused) {
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    return new byte[0];
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    throw th;
                }
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            try {
                byteArrayOutputStream2.close();
            } catch (Throwable unused4) {
            }
            return byteArray;
        } catch (Exception unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public o s() {
        if (this.dq.getContentType() != null) {
            return o.dq(this.dq.getContentType());
        }
        return null;
    }
}
