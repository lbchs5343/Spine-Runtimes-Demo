package com.bytedance.msdk.s.d;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.d.p;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.f;
import com.bytedance.msdk.ia.wp;
import com.bytedance.msdk.s.s;
import com.bytedance.sdk.component.panglearmor.kk;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.tn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements dq<com.bytedance.msdk.s.dq> {

    /* renamed from: d, reason: collision with root package name */
    private static volatile int f1244d = -1;
    public static volatile boolean dq = false;
    private static volatile boolean ox = true;
    private int p = 0;
    private int s = 0;

    public d(Context context) {
        if (f1244d == -1) {
            int d2 = com.bytedance.msdk.core.dq.d().d();
            f1244d = d2;
            if (d2 == 0 || f1244d == 1) {
                return;
            }
            f1244d = 1;
        }
    }

    private byte[] d(List<com.bytedance.msdk.s.dq> list) {
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject ox2 = ox(list);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            gZIPOutputStream.write(ox2.toString().getBytes());
            gZIPOutputStream.close();
        } catch (Exception e4) {
            e = e4;
            gZIPOutputStream2 = gZIPOutputStream;
            dq("buildAdEventV3BodyRaw", "exception: " + e.toString());
            e.printStackTrace();
            if (gZIPOutputStream2 != null) {
                gZIPOutputStream2.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private s dq(String str, byte[] bArr) {
        boolean z;
        String str2;
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.msdk.p.d.dq().d().d();
        d2.dq(str);
        String ia = com.bytedance.msdk.core.d.no().ia();
        if (!TextUtils.isEmpty(ia)) {
            d2.d("X-Tt-Env", ia);
            d2.d("x-use-ppe", "1");
        }
        d2.d("User-Agent", p.dq);
        d2.d("Content-Encoding", "union_sdk_encode");
        d2.dq("application/json; charset=utf-8", bArr);
        com.bytedance.sdk.component.kk.d dq2 = d2.dq();
        boolean z2 = true;
        if (dq2 != null) {
            try {
            } catch (JSONException e2) {
                int i = this.s;
                this.s = i + 1;
                if (i < 20) {
                    dq("doUploadApplogAdEventV3", "exception: " + e2);
                }
                ox.p("uploadEvent", "ignore:" + e2.toString());
                e2.printStackTrace();
            }
            if (dq(new JSONObject(dq2.p()))) {
                z = true;
                int dq3 = dq2 == null ? dq2.dq() : 0;
                if (z && dq3 == 200) {
                    str2 = "server say not success";
                } else {
                    if (dq2 == null) {
                        String d3 = dq2.d();
                        if (z) {
                            str2 = d3;
                        } else {
                            StringBuilder l = tn.l(d3, "::");
                            l.append(dq2.p());
                            str2 = l.toString();
                        }
                    } else {
                        str2 = "error unknown";
                    }
                    z2 = false;
                }
                return new s(z, dq3, str2, z2);
            }
        }
        z = false;
        if (dq2 == null) {
        }
        if (z) {
        }
        if (dq2 == null) {
        }
        z2 = false;
        return new s(z, dq3, str2, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private s dq(String str, byte[] bArr, boolean z) {
        String str2;
        boolean z2;
        String str3;
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.msdk.p.d.dq().d().d();
        d2.dq(str);
        String ia = com.bytedance.msdk.core.d.no().ia();
        if (!TextUtils.isEmpty(ia)) {
            d2.d("X-Tt-Env", ia);
            d2.d("x-use-ppe", "1");
        }
        if (z) {
            d2.d("x-pglcypher", "4");
            d2.d("Content-Encoding", "union_sdk_encode");
            str2 = "application/octet-stream";
        } else {
            str2 = "application/octet-stream;tt-data=a";
        }
        d2.d("User-Agent", p.dq);
        d2.dq(str2, bArr);
        com.bytedance.sdk.component.kk.d dq2 = d2.dq();
        boolean z3 = true;
        if (dq2 != null) {
            try {
            } catch (JSONException e2) {
                int i = this.s;
                this.s = i + 1;
                if (i < 20) {
                    dq("doUploadApplogAdEvent", "exception: " + e2);
                }
                ox.p("uploadEvent", "ignore:" + e2.toString());
                e2.printStackTrace();
            }
            if (dq(new JSONObject(dq2.p()))) {
                z2 = true;
                int dq3 = dq2 == null ? dq2.dq() : 0;
                if (z2 && dq3 == 200) {
                    str3 = "server say not success";
                } else {
                    if (dq2 == null) {
                        String d3 = dq2.d();
                        if (z2) {
                            str3 = d3;
                        } else {
                            StringBuilder l = tn.l(d3, "::");
                            l.append(dq2.p());
                            str3 = l.toString();
                        }
                    } else {
                        str3 = "error unknown";
                    }
                    z3 = false;
                }
                return new s(z2, dq3, str3, z3);
            }
        }
        z2 = false;
        if (dq2 == null) {
        }
        if (z2) {
        }
        if (dq2 == null) {
        }
        z3 = false;
        return new s(z2, dq3, str3, z3);
    }

    private String dq(boolean z) {
        if (ox) {
            ox = false;
            return "1";
        }
        if (!dq) {
            return z ? "3" : "2";
        }
        dq = false;
        return "4";
    }

    public static void dq(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("ts", Long.valueOf(System.currentTimeMillis()));
            jSONObject.putOpt("v3_Id", str);
            jSONObject.putOpt("v3_err_msg", str2);
            bl.dq(jSONObject);
        } catch (Throwable unused) {
        }
    }

    private boolean dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.optInt(PluginConstants.KEY_ERROR_CODE) != 20000) {
                    return "success".equals(jSONObject.optString("message"));
                }
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    private byte[] dq(String str) {
        try {
            return str == null ? new byte[0] : str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            return new byte[0];
        }
    }

    private byte[] dq(List<com.bytedance.msdk.s.dq> list, boolean z) {
        byte[] d2 = d(list);
        if (d2 == null) {
            dq("buildAdEventV3Body", "zipData is null");
        } else if (d2.length <= 0) {
            dq("buildAdEventV3Body", "zipData len 0");
        }
        byte[] dq2 = z ? kk.dq().dq(d2) : dq(d2, d2.length);
        if (dq2 == null) {
            dq("buildAdEventV3Body", "data is null");
            return dq2;
        }
        if (dq2.length <= 0) {
            dq("buildAdEventV3Body", "data len 0");
        }
        return dq2;
    }

    private byte[] dq(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            try {
                if (bArr.length == i) {
                    return f.dq(bArr, i);
                }
            } catch (Throwable th) {
                dq("encrypt", "exception: " + th.toString());
                th.printStackTrace();
                return null;
            }
        }
        StringBuilder sb = new StringBuilder("inputData is ");
        sb.append(bArr == null ? "null" : "0");
        dq("encrypt", sb.toString());
        return null;
    }

    private JSONObject ox(List<com.bytedance.msdk.s.dq> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_user_agent", e.n());
            jSONObject.put("client_ip", e.le());
            jSONObject.put("header", wp.d());
            JSONArray jSONArray = new JSONArray();
            Iterator<com.bytedance.msdk.s.dq> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().f1246d);
            }
            jSONObject.put("event_v3", jSONArray);
            jSONObject.put("magic_tag", "ss_app_log");
            jSONObject.put("_gen_time", System.currentTimeMillis());
            return jSONObject;
        } catch (JSONException e2) {
            dq("getAdEventV3Json", "exception: " + e2.toString());
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private byte[] p(List<com.bytedance.msdk.s.dq> list) {
        try {
            return dq(com.bytedance.msdk.ia.ox.dq(ox(list)).toString());
        } catch (Throwable th) {
            dq("buildAdEventV3Body2", "exception: " + th.toString());
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.msdk.s.d.dq
    public s dq(List<com.bytedance.msdk.s.dq> list) {
        s dq2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (list == null) {
            return null;
        }
        boolean z = true;
        try {
            if (list.isEmpty()) {
                return null;
            }
            ox.d("TTMediationSDK", "--==-- v3: " + list.size());
            boolean dq3 = dq();
            byte[] dq4 = dq(list, dq3);
            if (dq4 == null || dq4.length <= 0) {
                dq2 = dq(com.bytedance.msdk.core.ox.d(), p(list));
            } else {
                dq2 = dq(com.bytedance.msdk.core.ox.d(), dq4, dq3);
            }
            if (list.size() < com.bytedance.msdk.core.dq.d().kx()) {
                z = false;
            }
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            bl.dq(dq2.dq, list.size(), dq(z), elapsedRealtime2, dq2.f1274d + "::" + dq2.ox);
            return dq2;
        } catch (Throwable th) {
            int i = this.p;
            this.p = i + 1;
            if (i < 20) {
                dq("uploadEvent", "exception: " + th.toString());
            }
            ox.p("ReportNetApiImpl", "uploadEvent error:");
            th.printStackTrace();
            long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
            bl.dq(false, 0, dq(z), elapsedRealtime3, "-1::" + th);
            return new s(false, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, "service_busy", false);
        }
    }

    @Override // com.bytedance.msdk.s.d.dq
    public boolean dq() {
        return f1244d == 1 && kk.d();
    }
}
