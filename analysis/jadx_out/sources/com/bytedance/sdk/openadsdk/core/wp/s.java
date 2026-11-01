package com.bytedance.sdk.openadsdk.core.wp;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.ats.ATS;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import g.hat;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@ATS(single = true, value = {"pitaya"})
/* loaded from: classes3.dex */
public class s implements dq.d, ox {
    private EventListener ox;
    private AtomicBoolean dq = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f3729d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j, p pVar) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(j, pVar);
    }

    private void ia() {
        if (this.ox == null) {
            this.ox = new mn() { // from class: com.bytedance.sdk.openadsdk.core.wp.s.3
                @Override // com.bytedance.sdk.openadsdk.core.wp.mn, com.bykv.vk.openvk.api.proto.EventListener
                public ValueSet onEvent(int i, Result result) {
                    try {
                        if (i == 1) {
                            JSONObject jSONObject = (JSONObject) result.values().objectValue(10, JSONObject.class);
                            dq.dq().dq(jSONObject.optString("module"), jSONObject.optString("key"), jSONObject.optString("value"));
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("success", true);
                            hat f2 = hat.f();
                            f2.f19148c.put(37, jSONObject2);
                            return f2.k();
                        }
                        if (i != 2) {
                            return super.onEvent(i, result);
                        }
                        JSONObject jSONObject3 = (JSONObject) result.values().objectValue(10, JSONObject.class);
                        String optString = jSONObject3.optString("module");
                        String optString2 = jSONObject3.optString("key");
                        String dq = dq.dq().dq(optString, optString2);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put(optString2, dq);
                        hat f3 = hat.f();
                        f3.f19148c.put(37, jSONObject4);
                        return f3.k();
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        JSONObject jSONObject5 = new JSONObject();
                        hat f4 = hat.f();
                        f4.f19148c.put(37, jSONObject5);
                        return f4.k();
                    }
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        com.bytedance.sdk.openadsdk.core.ir.dq p = com.bytedance.sdk.openadsdk.core.no.ia().p();
        if (p != null) {
            p.dq(this);
        }
    }

    private Bridge mn() {
        Bridge dq = wp.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB);
        if (dq != null && p()) {
            return dq;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void d() {
        Bridge mn;
        try {
            if (com.bytedance.sdk.openadsdk.core.no.ia().le() || (mn = mn()) == null) {
                return;
            }
            hat f2 = hat.f();
            f2.o(36, 0);
            mn.call(1008, f2.k(), null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void dq() {
        Bridge mn;
        try {
            if (com.bytedance.sdk.openadsdk.core.no.ia().le() || (mn = mn()) == null) {
                return;
            }
            hat f2 = hat.f();
            f2.o(36, 1);
            mn.call(1008, f2.k(), null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.ox
    @ATSMethod(1)
    public void dq(Context context, final EventListener eventListener) {
        final long currentTimeMillis = System.currentTimeMillis();
        Bridge dq = wp.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB);
        if (dq == null) {
            if (eventListener != null) {
                eventListener.onEvent(-1, null);
                return;
            }
            return;
        }
        if (p()) {
            if (eventListener != null) {
                eventListener.onEvent(0, null);
                return;
            }
            return;
        }
        try {
            if (this.dq.compareAndSet(false, true)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("aid", "1371");
                jSONObject.put("channel", op.iw);
                jSONObject.put("core_api_version", op.ox);
                jSONObject.put("core_plugin_version", "6.6.0.7");
                jSONObject.put("debug", false);
                jSONObject.put("update", true);
                jSONObject.put("download_concurrency", 2);
                jSONObject.put("py_concurrency", 2);
                jSONObject.put("provide_applog", true);
                jSONObject.put("sdk_session_id", com.bytedance.sdk.openadsdk.core.gh.d.dq);
                ia();
                hat f2 = hat.f();
                SparseArray sparseArray = f2.f19148c;
                sparseArray.put(21, jSONObject);
                sparseArray.put(22, context);
                sparseArray.put(38, this.ox);
                sparseArray.put(1, new mn() { // from class: com.bytedance.sdk.openadsdk.core.wp.s.2
                    @Override // com.bytedance.sdk.openadsdk.core.wp.mn
                    public ValueSet dq(int i, p pVar) {
                        s.this.f3729d.set(pVar.dq());
                        if (pVar.dq()) {
                            EventListener eventListener2 = eventListener;
                            if (eventListener2 != null) {
                                eventListener2.onEvent(0, null);
                            }
                            s.this.iw();
                        } else {
                            if (pVar.d() != null) {
                                com.bytedance.sdk.component.utils.ig.p("pitaya_ext_plugin", "pit error:" + pVar.d().toString());
                            }
                            EventListener eventListener3 = eventListener;
                            if (eventListener3 != null) {
                                eventListener3.onEvent(-1, null);
                            }
                        }
                        s.this.dq(System.currentTimeMillis() - currentTimeMillis, pVar);
                        return super.dq(i, pVar);
                    }
                });
                sparseArray.put(13, com.bytedance.sdk.component.o.mn.dq());
                dq.call(1001, f2.k(), null);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p("pitaya_ext_plugin", "pit#initPit:" + th.getMessage());
            if (eventListener != null) {
                eventListener.onEvent(-1, null);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.ox
    @ATSMethod(6)
    public void dq(String str, EventListener eventListener) {
        Bridge dq = wp.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB);
        if (dq != null) {
            hat f2 = hat.f();
            f2.m(1, eventListener);
            f2.n(25, str);
            dq.call(1004, f2.k(), null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.ox
    @ATSMethod(5)
    public void dq(String str, com.bytedance.sdk.component.ia.dq.d dVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.ox
    @ATSMethod(4)
    public void dq(final String str, JSONObject jSONObject, EventListener eventListener) {
        Bridge dq = wp.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB);
        if (dq == null) {
            if (eventListener != null) {
                eventListener.onEvent(8, new Result() { // from class: com.bytedance.sdk.openadsdk.core.wp.s.1
                    @Override // com.bykv.vk.openvk.api.proto.Result
                    public int code() {
                        return -6;
                    }

                    @Override // com.bykv.vk.openvk.api.proto.Result
                    public boolean isSuccess() {
                        return false;
                    }

                    @Override // com.bykv.vk.openvk.api.proto.Result
                    public String message() {
                        return "predict bridge is null";
                    }

                    @Override // com.bykv.vk.openvk.api.proto.Result
                    public ValueSet values() {
                        hat f2 = hat.f();
                        f2.n(5, str);
                        return f2.k();
                    }
                });
                return;
            }
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("run_package_start", System.currentTimeMillis());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        hat f2 = hat.f();
        SparseArray sparseArray = f2.f19148c;
        sparseArray.put(25, str);
        sparseArray.put(26, jSONObject);
        sparseArray.put(1, eventListener);
        sparseArray.put(37, jSONObject2);
        dq.call(1003, f2.k(), null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.ox
    @ATSMethod(2)
    public boolean ox() {
        int i;
        if (!op.dq() || op.f3334d < 5003 || (i = Build.VERSION.SDK_INT) < 28) {
            return false;
        }
        if (s() && i == 29) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.core.cd.d.d(wp.d().kx());
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.ox
    @ATSMethod(3)
    public boolean p() {
        return this.f3729d.get();
    }

    public boolean s() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo") || str.toLowerCase().contains("realme");
    }
}
