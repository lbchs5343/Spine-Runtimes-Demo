package com.bytedance.sdk.component.kk.d;

import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

/* loaded from: classes.dex */
public class dq extends p {
    public dq(ig igVar) {
        super(igVar);
    }

    @Override // com.bytedance.sdk.component.kk.d.p
    public com.bytedance.sdk.component.kk.d dq() {
        InputStream inputStream;
        try {
            q.dq dqVar = new q.dq();
            dqVar.dq((Object) d());
            d("Range", "bytes=0-");
            if (TextUtils.isEmpty(this.iw)) {
                Log.e("ByteDownloadExecutor", "execute: Url is Empty");
                return null;
            }
            dqVar.dq(this.iw);
            dq(dqVar);
            f dq = this.ox.dq(dqVar.dq().d()).dq();
            if (dq == null || !dq.p()) {
                return null;
            }
            HashMap hashMap = new HashMap();
            iw mn = dq.mn();
            if (mn != null) {
                for (int i = 0; i < mn.dq(); i++) {
                    hashMap.put(mn.dq(i), mn.d(i));
                }
            }
            long dq2 = dq.iw().dq();
            byte[] bArr = new byte[Long.valueOf(dq2).intValue()];
            inputStream = dq.iw().ox();
            try {
                if (inputStream.read(bArr) != dq2) {
                    com.bytedance.sdk.component.kk.d dVar = new com.bytedance.sdk.component.kk.d(false, dq.ox(), "Byte opt fail", hashMap, null, dq.d(), dq.dq());
                    try {
                        inputStream.close();
                    } catch (Throwable unused) {
                    }
                    return dVar;
                }
                com.bytedance.sdk.component.kk.d dVar2 = new com.bytedance.sdk.component.kk.d(dq.p(), dq.ox(), dq.s(), hashMap, null, dq.d(), dq.dq());
                dVar2.dq(bArr);
                try {
                    inputStream.close();
                } catch (Throwable unused2) {
                }
                return dVar2;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable unused4) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public void dq(final com.bytedance.sdk.component.kk.dq.dq dqVar) {
        try {
            q.dq dqVar2 = new q.dq();
            dqVar2.dq((Object) d());
            d("Range", "bytes=0-");
            if (TextUtils.isEmpty(this.iw)) {
                dqVar.dq(this, new IOException("Url is Empty"));
                return;
            }
            dqVar2.dq(this.iw);
            dq(dqVar2);
            this.ox.dq(dqVar2.dq().d()).dq(new com.bytedance.sdk.component.d.dq.ox() { // from class: com.bytedance.sdk.component.kk.d.dq.1
                @Override // com.bytedance.sdk.component.d.dq.ox
                public void onFailure(com.bytedance.sdk.component.d.dq.d dVar, IOException iOException) {
                    com.bytedance.sdk.component.kk.dq.dq dqVar3 = dqVar;
                    if (dqVar3 != null) {
                        dqVar3.dq(dq.this, iOException);
                    }
                }

                @Override // com.bytedance.sdk.component.d.dq.ox
                public void onResponse(com.bytedance.sdk.component.d.dq.d dVar, f fVar) throws IOException {
                    if (dqVar == null) {
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    if (fVar == null) {
                        return;
                    }
                    com.bytedance.sdk.component.kk.d dVar2 = new com.bytedance.sdk.component.kk.d(fVar.p(), fVar.ox(), fVar.s(), hashMap, null, fVar.d(), fVar.dq());
                    if (!fVar.p()) {
                        dqVar.dq(dq.this, dVar2);
                        return;
                    }
                    InputStream inputStream = null;
                    try {
                        iw mn = fVar.mn();
                        if (mn != null) {
                            for (int i = 0; i < mn.dq(); i++) {
                                hashMap.put(mn.dq(i), mn.d(i));
                            }
                        }
                        int intValue = Long.valueOf(fVar.iw().dq()).intValue();
                        byte[] bArr = new byte[intValue];
                        inputStream = fVar.iw().ox();
                        if (inputStream.read(bArr) == intValue) {
                            dVar2.dq(bArr);
                        } else {
                            dVar2 = new com.bytedance.sdk.component.kk.d(false, fVar.ox(), "Byte opt fail", hashMap, null, fVar.d(), fVar.dq());
                        }
                        dqVar.dq(dq.this, dVar2);
                        try {
                            inputStream.close();
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable th) {
                        try {
                            th.printStackTrace();
                            dqVar.dq(dq.this, new IOException(th.getMessage()));
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable unused2) {
                                }
                            }
                        } finally {
                        }
                    }
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
