package com.bytedance.sdk.component.ia.d.s;

import android.text.TextUtils;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.component.ia.dq.dq.iw;
import com.bytedance.sdk.component.ia.dq.dq.ox;
import com.bytedance.sdk.component.ia.dq.ia;
import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.tn;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.ia.dq.dq.dq<com.bytedance.sdk.component.ia.dq.d> {

    /* renamed from: d, reason: collision with root package name */
    private static final SimpleDateFormat f1926d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    private s p;
    private final String ox = "x-pglcypher";
    private final boolean dq = d();

    private String d(int i) {
        return i >= 4 ? "application/octet-stream" : "application/octet-stream;tt-data=a";
    }

    private void d(byte[] bArr, Map<String, String> map, String str) {
        s dq;
        p p;
        ia ig;
        if (bArr == null || bArr.length == 0 || (dq = dq()) == null || (p = dq.p()) == null || (ig = p.ig()) == null || !ig.dq()) {
            return;
        }
        iw s = ig.s();
        s.dq(ig.d());
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                s.dq(entry.getKey(), entry.getValue());
            }
        }
        s.dq(str, bArr);
        s.dq("User-Agent", p.s());
        s.dq(new ox() { // from class: com.bytedance.sdk.component.ia.d.s.dq.1
            @Override // com.bytedance.sdk.component.ia.dq.dq.ox
            public void dq(com.bytedance.sdk.component.ia.dq.dq.p pVar, com.bytedance.sdk.component.ia.dq.dq.s sVar) {
                if (sVar == null || !sVar.dq()) {
                    dq.this.dq();
                } else {
                    sVar.d();
                    dq.this.dq();
                }
            }

            @Override // com.bytedance.sdk.component.ia.dq.dq.ox
            public void dq(com.bytedance.sdk.component.ia.dq.dq.p pVar, IOException iOException) {
                iOException.getMessage();
                dq.this.dq();
            }
        });
    }

    private static boolean d() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static byte[] d(JSONObject jSONObject) {
        return jSONObject == null ? new byte[0] : jSONObject.toString().getBytes(StandardCharsets.UTF_8);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private com.bytedance.sdk.component.ia.d.d.ox.d dq(byte[] bArr, Map<String, String> map, String str) {
        Throwable th;
        String str2;
        int i;
        boolean z;
        int i2;
        try {
            p p = dq().p();
            ia ig = p.ig();
            iw s = ig.s();
            s.dq(ig.iw());
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    s.dq(entry.getKey(), entry.getValue());
                }
            }
            s.dq(str, bArr);
            s.dq("User-Agent", p.s());
            com.bytedance.sdk.component.ia.dq.dq.s dq = s.dq();
            if (dq == null) {
                return new com.bytedance.sdk.component.ia.d.d.ox.d(false, MediaPlayer.MEDIA_PLAYER_OPTION_LICENSE_DIR, "RSP IS NULL", false, AVErrorInfo.ERROR);
            }
            boolean z2 = false;
            if (!dq.dq() || TextUtils.isEmpty(dq.d())) {
                i = 0;
                z = false;
            } else {
                JSONObject jSONObject = new JSONObject(dq.d());
                z = ox(jSONObject);
                i = s(jSONObject);
            }
            int ox = dq.ox();
            String str3 = dq.s() != null ? dq.s().get("x-tt-logid") : AVErrorInfo.ERROR;
            boolean z3 = !z && ox == 200;
            try {
                String p2 = dq.p();
                if (p2 != null) {
                    if (TextUtils.isEmpty(p2)) {
                    }
                    if (i == 0) {
                        p2 = "RSP FAIL";
                        i2 = i;
                        z3 = true;
                    } else {
                        z2 = z;
                        i2 = ox;
                    }
                    String str4 = p2;
                    d(bArr, map, str);
                    return new com.bytedance.sdk.component.ia.d.d.ox.d(z2, i2, str4, z3, str3);
                }
                p2 = "DEFAULT OK";
                if (i == 0) {
                }
                String str42 = p2;
                d(bArr, map, str);
                return new com.bytedance.sdk.component.ia.d.d.ox.d(z2, i2, str42, z3, str3);
            } catch (Throwable th2) {
                th = th2;
                str2 = str3;
                com.bytedance.sdk.component.ia.d.ox.ox.ox("NetApiImpl", "uploadEvent error" + th.getMessage(), dq());
                return new com.bytedance.sdk.component.ia.d.d.ox.d(false, MediaPlayer.MEDIA_PLAYER_OPTION_LICENSE_FILENAME, th.getMessage(), false, str2);
            }
        } catch (Throwable th3) {
            th = th3;
            str2 = AVErrorInfo.ERROR;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public s dq() {
        if (this.p == null) {
            this.p = com.bytedance.sdk.component.ia.d.dq.ox("csj").s();
        }
        return this.p;
    }

    private Map<String, String> dq(int i) {
        HashMap hashMap = new HashMap();
        if (i >= 4) {
            hashMap.put("Content-Encoding", "union_sdk_encode");
            hashMap.put("x-pglcypher", String.valueOf(i));
        }
        hashMap.put("Content-Type", d(i));
        return hashMap;
    }

    private boolean dq(String str, String str2) throws Exception {
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(ox().getEncoded()));
        Signature signature = Signature.getInstance("Sha1withRSA");
        signature.initVerify(generatePublic);
        signature.update(str.getBytes());
        return signature.verify(Base64.decode(str2.getBytes(Charset.forName("UTF-8")), 2));
    }

    private boolean iw(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    private static PublicKey ox() throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKtjHB7PDkflFl5bX4x/25mE9x2/C6kd\n8wVgzXFiC67Jx+meptu1hL54XgnPnI+AvxXhEgN/+DZUmrRPdvB+UZECAwEAAQ==".getBytes(Charset.forName("UTF-8")), 2)));
    }

    private Map<String, String> p(JSONObject jSONObject) {
        HashMap p = tn.p("Content-Type", "application/json; charset=utf-8");
        if (iw(jSONObject)) {
            p.put("Content-Encoding", "union_sdk_encode");
        }
        return p;
    }

    private int s(JSONObject jSONObject) {
        String optString;
        int indexOf;
        if (jSONObject == null) {
            return 0;
        }
        try {
            optString = jSONObject.optString("s_sig_ts");
        } catch (Throwable unused) {
        }
        if (optString == null || (indexOf = optString.indexOf("_")) < 5) {
            return 512;
        }
        String substring = optString.substring(0, indexOf);
        String substring2 = optString.substring(indexOf + 1);
        JSONObject kk = dq().p().ig().kk();
        if (dq((kk != null ? kk.optString("device_id") : "") + "_" + substring, substring2)) {
            if (Math.abs((System.currentTimeMillis() / 1000) - Long.valueOf(substring).longValue()) > 300) {
                return MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_ID;
            }
            return 0;
        }
        return 512;
    }

    public List<com.bytedance.sdk.component.ia.dq.d> d(List<com.bytedance.sdk.component.ia.dq.d> list) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject mn = dVar.mn();
                String optString = mn.optString(TTDownloadField.TT_LABEL);
                if (TextUtils.isEmpty(optString)) {
                    optString = mn.optString("event");
                }
                jSONObject.putOpt("event", optString);
                long optLong = mn.optLong("event_ts", System.currentTimeMillis());
                jSONObject.putOpt("local_time_ms", Long.valueOf(optLong));
                jSONObject.putOpt("datetime", f1926d.format(new Date(optLong)));
                JSONObject jSONObject2 = new JSONObject();
                if (mn.has("params") && mn.has("event")) {
                    jSONObject2 = mn.optJSONObject("params");
                } else {
                    Iterator<String> keys = mn.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (!TextUtils.equals(next, TTDownloadField.TT_LABEL)) {
                            jSONObject2.putOpt(next, mn.opt(next));
                        }
                    }
                }
                jSONObject.putOpt("params", jSONObject2);
                com.bytedance.sdk.component.ia.d.p.dq.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq.dq(dVar.ox(), jSONObject);
                dqVar.dq(dVar.p());
                dqVar.d(dVar.s());
                arrayList.add(dqVar);
            } catch (Exception e2) {
                com.bytedance.sdk.component.ia.d.ox.ox.ox(e2.getMessage(), dq());
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.component.ia.dq.dq.dq
    public com.bytedance.sdk.component.ia.d.d.ox.d dq(List<com.bytedance.sdk.component.ia.dq.d> list) {
        ia ig;
        com.bytedance.sdk.component.ia.d.d.ox.d dq;
        String str;
        p p = dq().p();
        if (p != null) {
            try {
                if (p.p() && (ig = p.ig()) != null && list != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    String str2 = "1streqid";
                    String str3 = "2ndreqid";
                    String str4 = "";
                    boolean z = false;
                    for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
                        if (TextUtils.equals("show", com.bytedance.sdk.component.ia.d.ox.dq.dq(dVar, dq()))) {
                            String dq2 = com.bytedance.sdk.component.ia.d.ox.dq.dq(dVar.mn(), this.p);
                            if (z) {
                                str3 = com.bytedance.sdk.component.ia.d.ox.dq.iw(dVar, this.p);
                                str = str3;
                            } else {
                                str = com.bytedance.sdk.component.ia.d.ox.dq.iw(dVar, this.p);
                            }
                            str4 = dq2;
                            str2 = str;
                            z = true;
                        }
                        arrayList.add(dVar);
                    }
                    int o = ig.o();
                    if (!arrayList.isEmpty()) {
                        JSONObject dq3 = ig.dq(d(arrayList), this.dq);
                        byte[] dq4 = ig.dq(dq3, o);
                        if (dq4 == null) {
                            JSONObject dq5 = ig.dq(dq3);
                            dq4 = d(dq5);
                            dq = dq(dq4, p(dq5), "application/json; charset=utf-8");
                        } else {
                            dq = dq(dq4, dq(o), d(o));
                        }
                        if (z) {
                            int length = dq4 != null ? dq4.length : 0;
                            if (dq != null) {
                                com.bytedance.sdk.component.ia.d.ox.dq.dq(dq.dq, dq.f1896d, dq.ox, awf.i(str2, "|", str3), length, str4);
                            }
                        }
                        return dq;
                    }
                }
                return null;
            } catch (Throwable th) {
                com.bytedance.sdk.component.ia.d.ox.ox.ox("NetApiImpl", "uploadEvent error" + th.getMessage(), dq());
                return new com.bytedance.sdk.component.ia.d.d.ox.d(false, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, th.getMessage(), false, AVErrorInfo.ERROR);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
    
        if (r2 == 60005) goto L50;
     */
    @Override // com.bytedance.sdk.component.ia.dq.dq.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.bytedance.sdk.component.ia.d.d.ox.d dq(JSONObject jSONObject) {
        ia ig;
        int i;
        boolean z;
        boolean z2;
        int i2;
        com.bytedance.sdk.component.ia.dq.dq.s dq;
        boolean z3;
        int ox;
        p p = dq().p();
        if (p == null || !p.p() || jSONObject == null || jSONObject.length() <= 0 || (ig = p.ig()) == null) {
            return null;
        }
        iw s = ig.s();
        s.dq(ig.mn());
        int o = ig.o();
        byte[] d2 = ig.d(jSONObject, o);
        if (d2 == null) {
            s.d(ig.dq(jSONObject).toString());
        } else {
            s.dq(d(o), d2);
            s.dq("x-pglcypher", String.valueOf(o));
        }
        s.dq("User-Agent", p.s());
        String str = "error unknown";
        boolean z4 = false;
        try {
            dq = s.dq();
        } catch (Throwable unused) {
            i = 0;
            z = false;
        }
        if (dq == null) {
            return new com.bytedance.sdk.component.ia.d.d.ox.d(false, 0, "error unknown", false, "ignore");
        }
        if (!dq.dq() || TextUtils.isEmpty(dq.d())) {
            z3 = false;
        } else {
            JSONObject jSONObject2 = new JSONObject(dq.d());
            int optInt = jSONObject2.optInt(PluginConstants.KEY_ERROR_CODE, -1);
            str = jSONObject2.optString("data", "");
            z = true;
            z3 = optInt == 20000;
        }
        z = false;
        try {
            ox = dq.ox();
        } catch (Throwable unused2) {
            z4 = z3;
            i = 0;
        }
        try {
            if (!dq.dq()) {
                str = dq.p();
            }
            i2 = ox;
            z2 = z3;
        } catch (Throwable unused3) {
            i = ox;
            z4 = z3;
            z2 = z4;
            i2 = i;
            return new com.bytedance.sdk.component.ia.d.d.ox.d(z2, i2, str, z, "ignore");
        }
        return new com.bytedance.sdk.component.ia.d.d.ox.d(z2, i2, str, z, "ignore");
    }

    public boolean ox(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            return jSONObject.optString("message").equalsIgnoreCase("success");
        } catch (Throwable unused) {
            return false;
        }
    }
}
