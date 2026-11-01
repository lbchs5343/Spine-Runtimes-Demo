package com.bytedance.sdk.component.kk.d;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.o;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.d.dq.s;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s extends p {
    jy dq;

    public s(ig igVar) {
        super(igVar);
        this.dq = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public o dq(fw fwVar) {
        try {
            return fwVar.s();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Charset dq(o oVar) {
        try {
            return oVar != null ? oVar.dq(com.bytedance.sdk.component.d.dq.d.o.dq) : com.bytedance.sdk.component.d.dq.d.o.dq;
        } catch (Exception unused) {
            return com.bytedance.sdk.component.d.dq.d.o.dq;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.kk.d dVar, f fVar) {
        if (dVar == null || fVar == null) {
            return;
        }
        dVar.dq(fVar.kk());
    }

    @Override // com.bytedance.sdk.component.kk.d.p
    public com.bytedance.sdk.component.kk.d dq() {
        com.bytedance.sdk.component.kk.d dVar;
        try {
            q.dq dqVar = new q.dq();
            if (TextUtils.isEmpty(this.iw)) {
                com.bytedance.sdk.component.kk.p.s.dq("PostExecutor", "execute: Url is Empty");
                return new com.bytedance.sdk.component.kk.d(false, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE, "URL_NULL_MSG", null, "URL_NULL_BODY", 1L, 1L);
            }
            dqVar.dq(this.iw);
            if (this.dq == null) {
                com.bytedance.sdk.component.kk.p.s.dq("PostExecutor", "RequestBody is null, content type is not support!!");
                return new com.bytedance.sdk.component.kk.d(false, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE, "BODY_NULL_MSG", null, "BODY_NULL_BODY", 1L, 1L);
            }
            dq(dqVar);
            dqVar.dq((Object) d());
            f dq = this.ox.dq(dqVar.dq(this.dq).d()).dq();
            if (dq == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            iw mn = dq.mn();
            if (mn != null) {
                for (int i = 0; i < mn.dq(); i++) {
                    String dq2 = mn.dq(i);
                    String d2 = mn.d(i);
                    hashMap.put(dq2, d2);
                    if (dq2 != null && dq2.equalsIgnoreCase("content-type")) {
                        hashMap.put("content-type", d2 == null ? "" : d2.toLowerCase());
                    }
                }
            }
            if (com.bytedance.sdk.component.kk.p.dq.dq(hashMap)) {
                byte[] p = dq.iw().p();
                dVar = new com.bytedance.sdk.component.kk.d(dq.p(), dq.ox(), dq.s(), hashMap, null, dq.d(), dq.dq());
                dVar.dq(p);
            } else if (this.mn) {
                byte[] p2 = dq.iw().p();
                dVar = new com.bytedance.sdk.component.kk.d(dq.p(), dq.ox(), dq.s(), hashMap, new String(p2, dq(dq(dq.iw()))), dq.d(), dq.dq());
                dVar.dq(p2);
            } else {
                dVar = new com.bytedance.sdk.component.kk.d(dq.p(), dq.ox(), dq.s(), hashMap, dq.iw().d(), dq.d(), dq.dq());
            }
            dq(dVar, dq);
            return dVar;
        } catch (Throwable th) {
            return new com.bytedance.sdk.component.kk.d(false, MediaPlayer.MEDIA_PLAYER_OPTION_CRASH_INFO, th.getMessage(), null, "BODY_NULL_BODY", 1L, 1L);
        }
    }

    public void dq(final com.bytedance.sdk.component.kk.dq.dq dqVar) {
        try {
            q.dq dqVar2 = new q.dq();
            if (TextUtils.isEmpty(this.iw)) {
                dqVar.dq(this, new IOException("Url is Empty"));
                return;
            }
            dqVar2.dq(this.iw);
            if (this.dq == null) {
                if (dqVar != null) {
                    dqVar.dq(this, new IOException("RequestBody is null, content type is not support!!"));
                }
            } else {
                dq(dqVar2);
                dqVar2.dq((Object) d());
                this.ox.dq(dqVar2.dq(this.dq).d()).dq(new com.bytedance.sdk.component.d.dq.ox() { // from class: com.bytedance.sdk.component.kk.d.s.1
                    @Override // com.bytedance.sdk.component.d.dq.ox
                    public void onFailure(com.bytedance.sdk.component.d.dq.d dVar, IOException iOException) {
                        com.bytedance.sdk.component.kk.dq.dq dqVar3 = dqVar;
                        if (dqVar3 != null) {
                            dqVar3.dq(s.this, iOException);
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
                    /* JADX WARN: Removed duplicated region for block: B:36:0x00f4  */
                    /* JADX WARN: Type inference failed for: r0v3, types: [com.bytedance.sdk.component.d.dq.iw] */
                    /* JADX WARN: Type inference failed for: r13v5, types: [com.bytedance.sdk.component.kk.dq.dq] */
                    /* JADX WARN: Type inference failed for: r2v0 */
                    /* JADX WARN: Type inference failed for: r2v1, types: [com.bytedance.sdk.component.kk.d] */
                    /* JADX WARN: Type inference failed for: r2v10 */
                    /* JADX WARN: Type inference failed for: r2v11, types: [int] */
                    /* JADX WARN: Type inference failed for: r2v13 */
                    /* JADX WARN: Type inference failed for: r2v14 */
                    /* JADX WARN: Type inference failed for: r2v15 */
                    /* JADX WARN: Type inference failed for: r2v16 */
                    /* JADX WARN: Type inference failed for: r2v17 */
                    /* JADX WARN: Type inference failed for: r2v3 */
                    /* JADX WARN: Type inference failed for: r2v8, types: [com.bytedance.sdk.component.kk.d] */
                    @Override // com.bytedance.sdk.component.d.dq.ox
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void onResponse(com.bytedance.sdk.component.d.dq.d dVar, f fVar) throws IOException {
                        Throwable th;
                        ?? r2;
                        HashMap hashMap;
                        ?? r22;
                        com.bytedance.sdk.component.kk.dq.dq dqVar3 = dqVar;
                        if (dqVar3 != null) {
                            if (fVar == null) {
                                dqVar3.dq(s.this, new IOException("No response"));
                                return;
                            }
                            IOException iOException = null;
                            try {
                                hashMap = new HashMap();
                                ?? mn = fVar.mn();
                                if (mn != 0) {
                                    r22 = 0;
                                    while (r22 < mn.dq()) {
                                        String dq = mn.dq(r22);
                                        String d2 = mn.d(r22);
                                        hashMap.put(dq, d2);
                                        if (dq != null && dq.equalsIgnoreCase("content-type")) {
                                            hashMap.put("content-type", d2 == null ? "" : d2.toLowerCase());
                                        }
                                        r22++;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            try {
                                if (com.bytedance.sdk.component.kk.p.dq.dq(hashMap)) {
                                    byte[] p = fVar.iw().p();
                                    com.bytedance.sdk.component.kk.d dVar2 = new com.bytedance.sdk.component.kk.d(fVar.p(), fVar.ox(), fVar.s(), hashMap, null, fVar.d(), fVar.dq());
                                    dVar2.dq(p);
                                    r22 = dVar2;
                                } else if (s.this.mn) {
                                    byte[] p2 = fVar.iw().p();
                                    s sVar = s.this;
                                    com.bytedance.sdk.component.kk.d dVar3 = new com.bytedance.sdk.component.kk.d(fVar.p(), fVar.ox(), fVar.s(), hashMap, new String(p2, sVar.dq(sVar.dq(fVar.iw()))), fVar.d(), fVar.dq());
                                    dVar3.dq(p2);
                                    r22 = dVar3;
                                } else {
                                    r22 = new com.bytedance.sdk.component.kk.d(fVar.p(), fVar.ox(), fVar.s(), hashMap, fVar.iw().d(), fVar.d(), fVar.dq());
                                }
                                s.this.dq((com.bytedance.sdk.component.kk.d) r22, fVar);
                                r2 = r22;
                            } catch (Throwable th3) {
                                th = th3;
                                iOException = r22;
                                r2 = iOException;
                                iOException = new IOException(th);
                                if (r2 == 0) {
                                }
                            }
                            if (r2 == 0) {
                                dqVar.dq(s.this, r2);
                                return;
                            }
                            com.bytedance.sdk.component.kk.dq.dq dqVar4 = dqVar;
                            s sVar2 = s.this;
                            if (iOException == null) {
                                iOException = new IOException("Unexpected exception");
                            }
                            dqVar4.dq(sVar2, iOException);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
            dqVar.dq(this, new IOException(th.getMessage()));
        }
    }

    public void dq(String str, byte[] bArr) {
        this.dq = jy.dq(o.dq(str), bArr);
    }

    public void dq(Map<String, String> map) {
        s.dq dqVar = new s.dq();
        if (map != null && !map.isEmpty()) {
            for (String str : map.keySet()) {
                dqVar.dq(str, map.get(str));
            }
        }
        this.dq = dqVar.dq();
    }

    public void dq(JSONObject jSONObject) {
        this.dq = jy.dq(o.dq("application/json; charset=utf-8"), jSONObject != null ? jSONObject.toString() : "{}");
    }

    public void ox(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "{}";
        }
        this.dq = jy.dq(o.dq("application/json; charset=utf-8"), str);
    }
}
