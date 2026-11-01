package com.bytedance.sdk.openadsdk.core.ia.dq.p;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.text.TextUtils;
import com.bytedance.sdk.component.no.dq.d;
import com.bytedance.sdk.component.no.p.ox;
import com.bytedance.sdk.component.no.p.p;
import com.bytedance.sdk.component.no.p.s;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.api.plugin.d;
import com.bytedance.sdk.openadsdk.core.bl.mn;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ox.iw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static String ia;
    private static long iw;
    private static String mn;
    private static long s;
    private static SharedPreferences dq = d.d(wp.getContext(), "uchain_data", 0);

    /* renamed from: d, reason: collision with root package name */
    private static AtomicInteger f2972d = new AtomicInteger(0);
    private static int ox = -1;
    private static int p = -1;
    private static boolean kk = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.ia.dq.p.dq$4, reason: invalid class name */
    public static class AnonymousClass4 implements ox {
        final /* synthetic */ JSONArray dq;

        public AnonymousClass4(JSONArray jSONArray) {
            this.dq = jSONArray;
        }

        @Override // com.bytedance.sdk.component.no.p.ox
        public void dq(com.bytedance.sdk.component.no.dq.dq dqVar) {
            dqVar.dq(new p() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.4.1
                @Override // com.bytedance.sdk.component.no.p.p
                public s d() {
                    return new s() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.4.1.1
                        @Override // com.bytedance.sdk.component.no.p.s
                        public void d(com.bytedance.sdk.component.no.dq.dq dqVar2, Map<String, Object> map) {
                            try {
                                String dq = dqVar2.mn().dq();
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("event", dq);
                                jSONObject.put("status", false);
                                AnonymousClass4.this.dq.put(jSONObject);
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }

                        @Override // com.bytedance.sdk.component.no.p.s
                        public void dq(com.bytedance.sdk.component.no.dq.dq dqVar2, Map<String, Object> map) {
                            try {
                                String dq = dqVar2.mn().dq();
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("event", dq);
                                jSONObject.put("status", true);
                                boolean unused = dq.kk = true;
                                AnonymousClass4.this.dq.put(jSONObject);
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                        }
                    };
                }
            });
        }
    }

    public static JSONObject d(String str, String str2) {
        if ((TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String string = dq.getString(str, "");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            String ox2 = com.bytedance.sdk.component.utils.dq.ox(string);
            p = 2;
            mn = str;
            ia = str2;
            return new JSONObject(ox2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final int i, final int i2, final long j) {
        com.bytedance.sdk.openadsdk.core.gh.d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() {
                JSONObject jSONObject = new JSONObject();
                try {
                    int i3 = i;
                    if (i3 != -1) {
                        jSONObject.put("dsl_error_code", i3);
                    }
                    jSONObject.put("dsl_url", dq.ia);
                    jSONObject.put("dsl_md5", dq.mn);
                    jSONObject.put("dsl_load_type", i2);
                    jSONObject.put("dsl_load_time", j);
                    jSONObject.put("dsl_stats_id", UUID.randomUUID());
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("uchain_stats_tracker").d(jSONObject.toString());
            }
        }, "uchain_stats_tracker", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0) {
            f2972d.set(3);
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("event_template");
        if (optJSONObject == null || optJSONObject.length() <= 0) {
            f2972d.set(3);
        } else {
            com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(optJSONObject);
            f2972d.set(2);
        }
    }

    public static boolean d() {
        if (f2972d.get() == 2) {
            return true;
        }
        mn d2 = wp.d();
        if (d2 == null || !d2.xn()) {
            return false;
        }
        iw = System.currentTimeMillis();
        q();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0060 A[Catch: IOException -> 0x0063, TRY_LEAVE, TryCatch #2 {IOException -> 0x0063, blocks: (B:36:0x005b, B:31:0x0060), top: B:35:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject dq(Context context, String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        InputStream inputStream;
        InputStream inputStream2;
        Object obj;
        InputStream open;
        AssetManager assets = context.getAssets();
        ?? r0 = 0;
        r0 = 0;
        r0 = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                try {
                    open = assets.open(str);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                    } catch (Exception unused) {
                        obj = null;
                        inputStream2 = open;
                    }
                } catch (Throwable th2) {
                    ByteArrayOutputStream byteArrayOutputStream3 = r0;
                    th = th2;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    inputStream = assets;
                }
            } catch (Exception unused2) {
                try {
                    ox = 100005;
                    return null;
                } catch (Exception unused3) {
                    inputStream2 = null;
                    obj = null;
                    ox = 100006;
                    if (byteArrayOutputStream2 != null) {
                        try {
                            byteArrayOutputStream2.close();
                        } catch (IOException unused4) {
                            r0 = obj;
                            assets = inputStream2;
                            return r0;
                        }
                    }
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    r0 = obj;
                    assets = inputStream2;
                    return r0;
                }
            }
        } catch (Throwable th3) {
            byteArrayOutputStream = null;
            th = th3;
            inputStream = null;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byteArrayOutputStream.flush();
            r0 = iw.dq(byteArrayOutputStream.toByteArray(), "uchain_dsl");
            if (r0 == 0) {
                ox = 100007;
            }
            try {
                byteArrayOutputStream.close();
                open.close();
                r0 = r0;
                assets = open;
            } catch (IOException unused5) {
            }
        } catch (Exception unused6) {
            Object obj2 = r0;
            byteArrayOutputStream2 = byteArrayOutputStream;
            obj = obj2;
            inputStream2 = open;
            ox = 100006;
            if (byteArrayOutputStream2 != null) {
            }
            if (inputStream2 != null) {
            }
            r0 = obj;
            assets = inputStream2;
            return r0;
        } catch (Throwable th4) {
            th = th4;
            inputStream = open;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused7) {
                    throw th;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
        return r0;
    }

    public static void dq(j jVar, Map<String, Object> map, String str, HashMap<String, Object> hashMap, String str2, HashMap<String, Object> hashMap2) {
        if (jVar == null) {
            return;
        }
        JSONObject ve = jVar.ve();
        try {
            for (Map.Entry<String, Object> entry : hashMap2.entrySet()) {
                ve.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        JSONArray jSONArray = new JSONArray();
        kk = false;
        new d.dq(str).dq(ve).dq(hashMap).dq(new AnonymousClass4(jSONArray)).dq().dq();
        JSONObject jSONObject = new JSONObject();
        UUID randomUUID = UUID.randomUUID();
        if (map != null) {
            map.put("uchain_event_id", randomUUID);
        }
        try {
            jSONObject.put("uchain_event_id", randomUUID);
            jSONObject.put(str, jSONArray);
            jSONObject.put("slot_type", c.ia(jVar));
            jSONObject.put("valid_uchain", jVar.ru());
            if (kk && jVar.ju()) {
                jSONObject.put("material", jVar.ve());
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.d(jVar, str2, "uchain_event_tracker", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public static void dq(final String str, final String str2) {
        mn = str;
        ia = str2;
        iw = System.currentTimeMillis();
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject d2 = d(str, str2);
        if (d2 == null || d2.length() <= 0) {
            com.bytedance.sdk.component.kk.d.dq s2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().s();
            if (s2 == null) {
                return;
            }
            s2.dq(str2);
            s2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.1
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    int unused = dq.p = 1;
                    String unused2 = dq.mn = str;
                    String unused3 = dq.ia = str2;
                    if (dVar != null) {
                        try {
                            if (dVar.ia()) {
                                JSONObject dq2 = iw.dq(dVar.o(), "uchain_dsl");
                                long unused4 = dq.s = System.currentTimeMillis() - dq.iw;
                                if (dq2 != null && dq2.length() > 0) {
                                    dq.d(dq.ox, dq.p, dq.s);
                                    dq.d(dq2);
                                    dq.dq.edit().putString(str, com.bytedance.sdk.component.utils.dq.d(dq2.toString())).apply();
                                    return;
                                }
                                dq.d(dq.ox, dq.p, dq.s);
                                dq.mp();
                                return;
                            }
                        } catch (Throwable unused5) {
                            dq.mp();
                            return;
                        }
                    }
                    dq.mp();
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    int unused = dq.p = 1;
                    dq.mp();
                }
            });
            return;
        }
        p = 2;
        mn = str;
        ia = str2;
        long currentTimeMillis = System.currentTimeMillis() - iw;
        s = currentTimeMillis;
        d(ox, p, currentTimeMillis);
    }

    public static boolean dq() {
        return (com.bytedance.sdk.openadsdk.core.ox.p.dq().ir() & 2) == 2 ? ox() : d();
    }

    public static boolean dq(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        Object obj = map.get("is_feed_register_direct_download");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mp() {
        ox = 100008;
        long currentTimeMillis = System.currentTimeMillis() - iw;
        s = currentTimeMillis;
        d(ox, p, currentTimeMillis);
        q();
    }

    public static boolean ox() {
        mn d2;
        if (f2972d.get() == 2) {
            return true;
        }
        if (f2972d.get() == 3 || f2972d.get() == 1 || (d2 = wp.d()) == null || !d2.xn()) {
            return false;
        }
        f2972d.set(1);
        com.bytedance.sdk.component.o.mn.d(new kk("") { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.2
            @Override // java.lang.Runnable
            public void run() {
                long unused = dq.iw = System.currentTimeMillis();
                dq.q();
            }
        });
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q() {
        String sp;
        String xq;
        JSONObject d2;
        ox = -1;
        mn d3 = wp.d();
        if (d3 != null && (d2 = d((sp = d3.sp()), (xq = d3.xq()))) != null && d2.length() > 0) {
            p = 2;
            mn = sp;
            ia = xq;
            long currentTimeMillis = System.currentTimeMillis() - iw;
            s = currentTimeMillis;
            d(ox, p, currentTimeMillis);
            d(d2);
            return;
        }
        JSONObject dq2 = dq(wp.getContext(), "uc_dsl/uc_dsl.bin");
        if (dq2 == null || dq2.length() <= 0) {
            f2972d.set(3);
            d(ox, p, s);
            return;
        }
        p = 0;
        ia = "uc_dsl/uc_dsl.bin";
        long currentTimeMillis2 = System.currentTimeMillis() - iw;
        s = currentTimeMillis2;
        d(ox, p, currentTimeMillis2);
        d(dq2);
    }
}
