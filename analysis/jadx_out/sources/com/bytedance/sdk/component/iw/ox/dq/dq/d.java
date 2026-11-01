package com.bytedance.sdk.component.iw.ox.dq.dq;

import com.bytedance.sdk.component.iw.ox.dq.dq.dq;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class d implements com.bytedance.sdk.component.iw.ox {

    /* renamed from: d, reason: collision with root package name */
    private dq f1954d;
    private long dq;

    public d(File file, long j, ExecutorService executorService) {
        this.dq = j;
        try {
            this.f1954d = dq.dq(file, 20210302, 1, j, executorService);
        } catch (IOException e2) {
            e2.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.Closeable, java.io.InputStream] */
    @Override // com.bytedance.sdk.component.iw.dq
    /* renamed from: d, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public byte[] dq(String str) {
        Closeable closeable;
        Closeable closeable2;
        ByteArrayOutputStream byteArrayOutputStream;
        dq dqVar = this.f1954d;
        Closeable closeable3 = null;
        if (dqVar != null) {
            try {
                if (str != 0) {
                    try {
                        dq.ox dq = dqVar.dq((String) str);
                        if (dq == null) {
                            com.bytedance.sdk.component.iw.ox.ox.d.dq(null);
                            com.bytedance.sdk.component.iw.ox.ox.d.dq(null);
                            return null;
                        }
                        str = dq.dq(0);
                        if (str != 0) {
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int read = str.read(bArr);
                                        if (read == -1) {
                                            break;
                                        }
                                        byteArrayOutputStream.write(bArr, 0, read);
                                    }
                                } catch (IOException e2) {
                                    e = e2;
                                    closeable2 = str;
                                    e.toString();
                                    com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable2);
                                    com.bytedance.sdk.component.iw.ox.ox.d.dq(byteArrayOutputStream);
                                    return null;
                                }
                            } catch (IOException e3) {
                                e = e3;
                                byteArrayOutputStream = null;
                                closeable2 = str;
                                e.toString();
                                com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable2);
                                com.bytedance.sdk.component.iw.ox.ox.d.dq(byteArrayOutputStream);
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                closeable = null;
                                closeable3 = str;
                                com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable3);
                                com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable);
                                throw th;
                            }
                        } else {
                            byteArrayOutputStream = null;
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(str);
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(byteArrayOutputStream);
                        return byteArray;
                    } catch (IOException e4) {
                        e = e4;
                        closeable2 = null;
                        byteArrayOutputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = null;
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable3);
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(closeable);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.component.iw.ox
    public InputStream dq(String str) {
        dq dqVar = this.f1954d;
        if (dqVar == null) {
            return null;
        }
        try {
            dq.ox dq = dqVar.dq(str);
            if (dq != null) {
                return dq.dq(0);
            }
        } catch (IOException e2) {
            e2.getMessage();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public void dq(double d2) {
        this.f1954d.dq((long) (this.dq * d2));
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean dq(String str, byte[] bArr) {
        OutputStream outputStream;
        dq dqVar = this.f1954d;
        if (dqVar == null || bArr == null || str == null) {
            return false;
        }
        OutputStream outputStream2 = null;
        outputStream2 = null;
        dq.C0119dq c0119dq = null;
        try {
            try {
                dq.C0119dq d2 = dqVar.d(str);
                if (d2 == null) {
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(null);
                    return false;
                }
                try {
                    outputStream2 = d2.dq(0);
                    if (outputStream2 == dq.ox) {
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(outputStream2);
                        return false;
                    }
                    outputStream2.write(bArr);
                    d2.dq();
                    this.f1954d.dq();
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(outputStream2);
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    OutputStream outputStream3 = outputStream2;
                    c0119dq = d2;
                    outputStream = outputStream3;
                    try {
                        e.toString();
                        if (c0119dq != null) {
                            try {
                                c0119dq.d();
                            } catch (IOException unused) {
                            }
                        }
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(outputStream);
                        return false;
                    } catch (Throwable th) {
                        outputStream2 = outputStream;
                        th = th;
                        com.bytedance.sdk.component.iw.ox.ox.d.dq(outputStream2);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                com.bytedance.sdk.component.iw.ox.ox.d.dq(outputStream2);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            outputStream = null;
        }
    }

    @Override // com.bytedance.sdk.component.iw.dq
    /* renamed from: ox, reason: merged with bridge method [inline-methods] */
    public boolean d(String str) {
        try {
            try {
                dq.ox dq = this.f1954d.dq(str);
                boolean z = dq != null;
                com.bytedance.sdk.component.iw.ox.ox.d.dq(dq);
                return z;
            } catch (IOException e2) {
                e2.getMessage();
                com.bytedance.sdk.component.iw.ox.ox.d.dq(null);
                return false;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.iw.ox.ox.d.dq(null);
            throw th;
        }
    }
}
