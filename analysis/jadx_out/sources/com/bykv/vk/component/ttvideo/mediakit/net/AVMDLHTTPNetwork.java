package com.bykv.vk.component.ttvideo.mediakit.net;

import com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient;
import com.bytedance.sdk.component.d.dq.d;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.o;
import com.bytedance.sdk.component.d.dq.ox;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AVMDLHTTPNetwork extends AVMDLNetClient {
    private static final int HTTP_TIME_OUT = 10;
    public static final o JSON = o.dq("application/json");
    private static ig mClient;
    private d mCall;

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient
    public void cancel() {
        d dVar = this.mCall;
        if (dVar == null || dVar.ox()) {
            return;
        }
        this.mCall.d();
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient
    public void startTask(String str, Map<String, String> map, final AVMDLNetClient.CompletionListener completionListener) {
        synchronized (AVMDLHTTPNetwork.class) {
            try {
                if (mClient == null) {
                    ig.dq d2 = new ig().d();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    mClient = d2.dq(10L, timeUnit).ox(10L, timeUnit).d(10L, timeUnit).dq();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        q.dq dq = new q.dq().dq(str);
        if (map != null) {
            for (String str2 : map.keySet()) {
                dq.dq(str2, map.get(str2));
            }
        }
        d dq2 = mClient.dq(dq.d());
        this.mCall = dq2;
        dq2.dq(new ox() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.AVMDLHTTPNetwork.1
            @Override // com.bytedance.sdk.component.d.dq.ox
            public void onFailure(d dVar, IOException iOException) {
                completionListener.onCompletion(null, new Error(0, null, null, iOException.toString()));
            }

            @Override // com.bytedance.sdk.component.d.dq.ox
            public void onResponse(d dVar, f fVar) {
                fw fwVar;
                Throwable th2;
                JSONObject jSONObject;
                try {
                    fwVar = fVar.iw();
                    try {
                        try {
                            jSONObject = new JSONObject(fwVar.d());
                            e = null;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (fwVar != null) {
                                try {
                                    fwVar.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        jSONObject = null;
                    }
                    if (e == null && !fVar.p()) {
                        e = new Exception("http fail");
                        fVar.ox();
                    }
                    if (fwVar != null) {
                        try {
                            fwVar.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (e == null) {
                        completionListener.onCompletion(jSONObject, null);
                    } else {
                        completionListener.onCompletion(jSONObject, new Error(0, null, null, e.toString()));
                    }
                } catch (Throwable th4) {
                    fwVar = null;
                    th2 = th4;
                }
            }
        });
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient
    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i, final AVMDLNetClient.CompletionListener completionListener) {
        synchronized (AVMDLHTTPNetwork.class) {
            try {
                if (mClient == null) {
                    ig.dq d2 = new ig().d();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    mClient = d2.dq(10L, timeUnit).ox(10L, timeUnit).d(10L, timeUnit).dq();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        q.dq dq = new q.dq().dq(str);
        if (map != null && map.size() > 0) {
            for (String str2 : map.keySet()) {
                dq.d(str2, map.get(str2));
            }
        }
        if (i == 1) {
            dq.dq(jy.dq(JSON, String.valueOf(jSONObject)));
        }
        d dq2 = mClient.dq(dq.d());
        this.mCall = dq2;
        dq2.dq(new ox() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.AVMDLHTTPNetwork.2
            @Override // com.bytedance.sdk.component.d.dq.ox
            public void onFailure(d dVar, IOException iOException) {
                completionListener.onCompletion(null, new Error(0, null, null, iOException.toString()));
            }

            @Override // com.bytedance.sdk.component.d.dq.ox
            public void onResponse(d dVar, f fVar) throws IOException {
                fw fwVar;
                Throwable th2;
                String obj;
                JSONObject jSONObject2;
                try {
                    fwVar = fVar.iw();
                    try {
                        try {
                            jSONObject2 = new JSONObject(fwVar.d());
                            obj = null;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (fwVar != null) {
                                try {
                                    fwVar.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Exception e2) {
                        obj = e2.toString();
                        e2.printStackTrace();
                        jSONObject2 = null;
                    }
                    if (!fVar.p()) {
                        obj = fVar.s();
                        fVar.ox();
                    }
                    if (fwVar != null) {
                        try {
                            fwVar.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (obj == null) {
                        completionListener.onCompletion(jSONObject2, null);
                    } else {
                        completionListener.onCompletion(jSONObject2, new Error(0, null, null, obj.toString()));
                    }
                } catch (Throwable th4) {
                    fwVar = null;
                    th2 = th4;
                }
            }
        });
    }
}
