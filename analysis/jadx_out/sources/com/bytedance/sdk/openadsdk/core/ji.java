package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.r.by;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.z;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.bytedance.sdk.openadsdk.tools.LogAdapter;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.abn;
import g.awf;
import g.ekq;
import g.hat;
import g.tn;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ji implements h<com.bytedance.sdk.openadsdk.core.ig.dq> {

    /* renamed from: d, reason: collision with root package name */
    private AtomicLong f3087d = new AtomicLong(0);
    private final Context dq;

    /* renamed from: com.bytedance.sdk.openadsdk.core.ji$18, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass18 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[TTAdLoadType.values().length];
            dq = iArr;
            try {
                iArr[TTAdLoadType.LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[TTAdLoadType.PRELOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        public final boolean f3108d;
        public final int dq;

        private d(int i, boolean z) {
            this.dq = i;
            this.f3108d = z;
        }

        public static d dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            return new d(jSONObject.optInt("error_code"), jSONObject.optBoolean(ekq.EXTRA_PERMISSION_RESULT));
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        final long f3109d;
        final int dq;
        public final com.bytedance.sdk.openadsdk.core.r.dq ia;
        final int iw;
        final String kk;
        final String mn;
        final ArrayList<Integer> o;
        final long ox;
        final int p;
        final String s;

        private dq(String str, int i, int i2, String str2, int i3, String str3, com.bytedance.sdk.openadsdk.core.r.dq dqVar, long j, long j2, ArrayList<Integer> arrayList) {
            this.dq = i;
            this.p = i2;
            this.s = str2;
            this.mn = str3;
            this.ia = dqVar;
            this.kk = str;
            this.iw = i3;
            this.f3109d = j;
            this.ox = j2;
            this.o = arrayList;
        }

        public static dq dq(JSONObject jSONObject) {
            return dq(jSONObject, null, null);
        }

        public static dq dq(JSONObject jSONObject, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
            Object obj;
            String optString = jSONObject.optString("did");
            int optInt = jSONObject.optInt("processing_time_ms");
            long optLong = jSONObject.optLong("s_receive_ts");
            long optLong2 = jSONObject.optLong("s_send_ts");
            int optInt2 = jSONObject.optInt("status_code");
            String optString2 = jSONObject.optString("desc");
            String optString3 = jSONObject.optString("request_id");
            int optInt3 = jSONObject.optInt(MediationConstant.KEY_REASON);
            Pair<com.bytedance.sdk.openadsdk.core.r.dq, ArrayList<Integer>> dq = com.bytedance.sdk.openadsdk.core.d.dq(jSONObject, dVar, nhVar, optLong2);
            if (dq != null && (obj = dq.first) != null) {
                ((com.bytedance.sdk.openadsdk.core.r.dq) obj).dq(jSONObject.optLong("request_after"));
            }
            return dq == null ? new dq(optString, optInt, optInt2, optString2, optInt3, optString3, null, optLong, optLong2, null) : new dq(optString, optInt, optInt2, optString2, optInt3, optString3, (com.bytedance.sdk.openadsdk.core.r.dq) dq.first, optLong, optLong2, (ArrayList) dq.second);
        }
    }

    public static class ox {

        /* renamed from: d, reason: collision with root package name */
        public final String f3112d;
        public final int dq;
        public final by ox;

        private ox(int i, String str, by byVar) {
            this.dq = i;
            this.f3112d = str;
            this.ox = byVar;
        }

        public static ox dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int optInt = jSONObject.optInt(PluginConstants.KEY_ERROR_CODE);
            String optString = jSONObject.optString("message");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            by byVar = new by();
            if (optJSONObject != null) {
                try {
                    byVar.dq(optJSONObject.optBoolean("is_open"));
                    byVar.dq(optJSONObject.optString("req_id"));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return new ox(optInt, optString, byVar);
        }
    }

    public static class p {

        /* renamed from: d, reason: collision with root package name */
        public final boolean f3113d;
        public final int dq;
        public final z ox;

        private p(int i, boolean z, z zVar) {
            this.dq = i;
            this.f3113d = z;
            this.ox = zVar;
        }

        public static p dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int optInt = jSONObject.optInt(PluginConstants.KEY_ERROR_CODE);
            boolean optBoolean = jSONObject.optBoolean("verify");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            z zVar = new z();
            if (optJSONObject != null) {
                try {
                    zVar.dq(optJSONObject.optInt(MediationConstant.KEY_REASON));
                    zVar.d(optJSONObject.optInt("corp_type"));
                    zVar.ox(optJSONObject.optInt(MediationConstant.REWARD_AMOUNT));
                    zVar.dq(optJSONObject.optString(MediationConstant.REWARD_NAME));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return new p(optInt, optBoolean, zVar);
        }
    }

    public ji(Context context) {
        this.dq = context;
    }

    private static String d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        String ox2 = ox(dVar);
        Map<String, Object> gh = no.ia().gh();
        if (gh != null && !gh.isEmpty()) {
            try {
                JSONArray jSONArray = TextUtils.isEmpty(ox2) ? new JSONArray() : new JSONArray(ox2);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    String optString = optJSONObject != null ? optJSONObject.optString(abn.EXTRA_UA_APP_NAME) : "";
                    if (!TextUtils.isEmpty(optString) && gh.containsKey(optString)) {
                        gh.remove(optString);
                    }
                }
                for (Map.Entry<String, Object> entry : gh.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(abn.EXTRA_UA_APP_NAME, entry.getKey());
                        jSONObject.put("value", entry.getValue());
                        jSONArray.put(jSONObject);
                    }
                }
                return dq(jSONArray).toString();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return ox2;
    }

    private JSONArray d(List<com.bytedance.sdk.openadsdk.f.d.d.iw> list) {
        if (list == null || list.isEmpty()) {
            return new JSONArray();
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<com.bytedance.sdk.openadsdk.f.d.d.iw> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().dq());
        }
        return jSONArray;
    }

    private static JSONArray d(JSONArray jSONArray, String str) {
        JSONObject jSONObject;
        try {
            if (TextUtils.equals("0", str)) {
                jSONObject = new JSONObject();
                jSONObject.put(abn.EXTRA_UA_APP_NAME, "is_shake_ads");
                jSONObject.put("value", "0");
                no.ia().d("0");
            } else {
                jSONObject = null;
            }
            if (jSONObject == null) {
                return jSONArray;
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                jSONArray.put(jSONArray.length(), jSONObject);
                return jSONArray;
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, jSONObject);
            return jSONArray2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONArray;
        }
    }

    private JSONObject d(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, List<com.bytedance.sdk.openadsdk.f.d.d.iw> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("action", "dislike");
            jSONObject2.put("timestamp", System.currentTimeMillis());
            jSONObject2.put("ad_sdk_version", op.ox);
            com.bytedance.sdk.openadsdk.jy.d.dq(this.dq, jSONObject2);
            if (dVar != null) {
                jSONObject2.put("extra", dVar.p());
                if (dVar.d() == null) {
                    dVar.dq("other");
                }
                jSONObject2.put("dislike_source", dVar.d());
            }
            String dq2 = dq(list);
            if (dq2 != null) {
                jSONObject2.put("comment", dq2);
                list.clear();
            } else {
                jSONObject2.put("comment", (Object) null);
            }
            jSONObject2.put("filter_words", d(list));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("actions", jSONArray);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject d(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            String upperCase = com.bytedance.sdk.component.utils.s.d("id=" + str + "&timestamp=" + currentTimeMillis + "&ext=" + str2).toUpperCase();
            jSONObject.put(TTDownloadField.TT_ID, str);
            jSONObject.put("timestamp", currentTimeMillis);
            jSONObject.put("sign", upperCase);
            jSONObject.put("ext", str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(io ioVar, String str, String str2, final h.ox oxVar, int i, long j) {
        JSONObject dq2 = dq(ioVar, str, str2);
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        if (i == 1) {
            d2.dq(ioVar.mn());
        } else {
            d2.dq(ioVar.dq());
        }
        d2.dq(dq2);
        d2.s(new HashMap());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ji.10
            @Override // java.lang.Runnable
            public void run() {
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                oxVar.dq(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN, "time out!");
            }
        }, j);
        d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.12
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                if (dVar == null) {
                    oxVar.dq(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN, "response is null!");
                    return;
                }
                if (!dVar.ia()) {
                    oxVar.dq(dVar.dq(), dVar.d());
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(dVar.p());
                    String optString = jSONObject.optString("message");
                    int optInt = jSONObject.optInt("status", -1);
                    if (optInt != 200) {
                        oxVar.dq(optInt, optString);
                        return;
                    }
                    JSONObject optJSONObject = jSONObject.optJSONObject("data");
                    if (optJSONObject != null) {
                        oxVar.dq(optJSONObject);
                        return;
                    }
                    oxVar.dq(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, optString + ", data is null!");
                } catch (Throwable th) {
                    oxVar.dq(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, th.getMessage());
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                oxVar.dq(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
            }
        });
    }

    private void d(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar, final int i, h.d dVar2, String str, final int i2) {
        final com.bytedance.sdk.openadsdk.core.r.d dVar3;
        final h.d dVar4;
        Throwable th;
        com.bytedance.sdk.openadsdk.core.r.d dVar5 = new com.bytedance.sdk.openadsdk.core.r.d();
        dVar5.dq(dVar);
        try {
            dVar3 = dVar5;
            dVar4 = dVar2;
            if (dq(dVar, dVar5, dVar2, i2 == 5, nhVar, i)) {
                return;
            }
            try {
                com.bytedance.sdk.component.kk.d.s dq2 = dq(dVar, nhVar, i, dVar4, str, i2, dVar3);
                if (dq2 == null) {
                    try {
                        dVar3.dq(-15);
                        dVar4.dq(-15, o.dq(-15), dVar3);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        dq(th, dVar3, dVar4);
                    }
                }
                try {
                    try {
                        com.bytedance.sdk.component.kk.dq.dq dqVar = new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.19
                            @Override // com.bytedance.sdk.component.kk.dq.dq
                            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar6) {
                                ji.this.dq(pVar, dVar6, dVar3, dVar4, dVar, nhVar, i, i2);
                            }

                            @Override // com.bytedance.sdk.component.kk.dq.dq
                            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                                ji.this.dq(pVar, iOException, dVar3, dVar4);
                            }
                        };
                        dVar3 = dVar3;
                        dVar4 = dVar4;
                        dq2.dq(dqVar);
                        s.dq().ox();
                        dq();
                    } catch (Throwable th3) {
                        th = th3;
                        dVar3 = dVar3;
                        dVar4 = dVar4;
                        th = th;
                        dq(th, dVar3, dVar4);
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            dVar3 = dVar5;
            dVar4 = dVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(JSONObject jSONObject, final h.ox<com.bytedance.sdk.component.kk.d> oxVar) {
        String dq2 = com.bytedance.sdk.openadsdk.core.ir.c.dq("/api/ad/union/sdk/apply_coupon/v2", false);
        com.bytedance.sdk.openadsdk.core.ir.wn wnVar = new com.bytedance.sdk.openadsdk.core.ir.wn(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
        wnVar.dq(dq2);
        wnVar.ox(jSONObject, "coupon_apply");
        wnVar.s(new HashMap());
        wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.16
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                h.ox oxVar2 = oxVar;
                if (oxVar2 != null) {
                    oxVar2.dq(dVar);
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                h.ox oxVar2 = oxVar;
                if (oxVar2 != null) {
                    oxVar2.dq(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
                }
            }
        });
    }

    private boolean d(int i) {
        return i == 3 || i == 4;
    }

    private boolean d(String str) {
        if (com.bytedance.sdk.openadsdk.core.mp.ox.dq()) {
            return true;
        }
        if (!com.bytedance.sdk.openadsdk.core.mp.ox.dq(str)) {
            return false;
        }
        String d2 = com.bytedance.sdk.openadsdk.core.mp.ox.d();
        if (!TextUtils.isEmpty(d2)) {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(d2, System.currentTimeMillis(), false);
        }
        return true;
    }

    private com.bytedance.sdk.component.kk.d.s dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, h.d dVar2, String str, int i2, com.bytedance.sdk.openadsdk.core.r.d dVar3) throws JSONException {
        byte[] bytes;
        Map<String, String> dq2;
        com.bytedance.sdk.openadsdk.core.ji.d dq3 = dq(dVar, dVar3, nhVar, i, i2, dVar2);
        if (dq3 == null) {
            return null;
        }
        String dq4 = com.bytedance.sdk.openadsdk.core.ir.c.dq(str, true);
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        String dq5 = com.bytedance.sdk.openadsdk.mn.p.dq(d2, dq4);
        d2.dq(dq5);
        com.bytedance.sdk.openadsdk.mn.p.dq(dq3);
        if (i2 != 5) {
            JSONObject p2 = dq3.p();
            d2.dq(p2);
            bytes = p2.toString().getBytes(StandardCharsets.UTF_8);
        } else if (dq3.p() != null) {
            JSONObject p3 = dq3.p();
            d2.dq(p3);
            bytes = p3.toString().getBytes(StandardCharsets.UTF_8);
            d2.dq(false);
        } else {
            if (dq3.ox() == null) {
                return null;
            }
            bytes = dq3.ox();
            d2.dq("application/octet-stream", bytes);
            d2.dq(true);
        }
        boolean z = i2 == 5;
        nhVar.dq("doHttpReqSignReady", z);
        com.bytedance.sdk.openadsdk.dq.dq.dq dq6 = com.bytedance.sdk.openadsdk.dq.dq.dq.dq(no.ia().mp(), no.ia().kk());
        nhVar.dq("MSInst", z);
        Map<String, String> dq7 = dq6.dq(dq5, bytes);
        nhVar.dq("doHttpReqSign", z);
        if (dq7 == null) {
            dq7 = new HashMap<>();
        }
        if (i2 == 5 && (dq2 = com.bytedance.sdk.openadsdk.tools.d.dq(dVar.mn())) != null) {
            dq7.putAll(dq2);
        }
        com.bytedance.sdk.openadsdk.core.ir.u.dq(dq7);
        Map<String, String> s = dq3.s();
        d2.d("User-Agent", com.bytedance.sdk.openadsdk.core.ir.c.mn());
        if (s != null) {
            dq7.putAll(s);
        }
        if (dq7.size() > 0) {
            for (Map.Entry<String, String> entry : dq7.entrySet()) {
                d2.d(entry.getKey(), entry.getValue());
            }
        }
        d2.s(dq(bytes, s, dq3));
        nhVar.dq("appendHeader", z);
        return d2;
    }

    private com.bytedance.sdk.openadsdk.core.ji.dq dq(com.bytedance.sdk.component.kk.d.p pVar) {
        try {
            Object obj = pVar.ox().get("load_time_model");
            if (obj instanceof com.bytedance.sdk.openadsdk.core.ji.dq) {
                com.bytedance.sdk.openadsdk.core.ji.dq dqVar = (com.bytedance.sdk.openadsdk.core.ji.dq) obj;
                dqVar.ox(true);
                return dqVar;
            }
        } catch (Throwable unused) {
        }
        return new com.bytedance.sdk.openadsdk.core.ji.dq();
    }

    private static String dq(String str, String str2) {
        if (str2 != null) {
            if (TextUtils.isEmpty(str)) {
                JSONArray d2 = d(dq((JSONArray) null, str2), str2);
                if (d2 == null) {
                    return null;
                }
                return d2.toString();
            }
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                boolean z = false;
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null && TextUtils.equals(optJSONObject.optString(abn.EXTRA_UA_APP_NAME), "is_shake_ads")) {
                        if (TextUtils.equals("0", str2)) {
                            optJSONObject.put("value", "0");
                            no.ia().d("0");
                        } else {
                            no.ia().d(optJSONObject.optString("value"));
                        }
                        z = true;
                    }
                }
                if (!z) {
                    jSONArray = d(jSONArray, str2);
                }
                JSONArray dq2 = dq(jSONArray, str2);
                if (dq2 != null) {
                    return dq2.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return str;
            }
        }
        return str;
    }

    private String dq(List<com.bytedance.sdk.openadsdk.f.d.d.iw> list) {
        if (list.get(0).dq().equals("0:00")) {
            return list.get(0).d();
        }
        return null;
    }

    private Map<String, Object> dq(byte[] bArr, Map<String, String> map, com.bytedance.sdk.openadsdk.core.ji.d dVar) {
        HashMap hashMap = new HashMap();
        try {
            com.bytedance.sdk.openadsdk.core.ji.dq dqVar = new com.bytedance.sdk.openadsdk.core.ji.dq();
            dqVar.ia(System.currentTimeMillis());
            dqVar.kk(bArr == null ? 0L : bArr.length);
            dqVar.ox(dVar.d());
            if (map != null) {
                dqVar.dq(map.get("x-pglcypher"));
            }
            dqVar.dq(dVar.dq());
            dqVar.d(com.bytedance.sdk.component.panglearmor.kk.d() ? 1 : 2);
            dqVar.dq(wp.d().mc());
            hashMap.put("load_time_model", dqVar);
        } catch (Exception unused) {
        }
        return hashMap;
    }

    private static JSONArray dq(JSONArray jSONArray) throws JSONException {
        if (op.iw() && jSONArray != null && jSONArray.length() != 0) {
            JSONArray jSONArray2 = new JSONArray();
            int length = jSONArray.length();
            JSONObject jSONObject = null;
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2 != null) {
                    String optString = jSONObject2.optString(abn.EXTRA_UA_APP_NAME, null);
                    if (!"device_id".equals(optString)) {
                        if ("game_adapter_did".equals(optString)) {
                            jSONObject = jSONObject2;
                        } else {
                            jSONArray2.put(jSONObject2);
                        }
                    }
                }
            }
            if (jSONObject != null) {
                jSONObject.put(abn.EXTRA_UA_APP_NAME, "device_id");
                jSONArray2.put(jSONObject);
                return jSONArray2;
            }
        }
        return jSONArray;
    }

    private static JSONArray dq(JSONArray jSONArray, String str) {
        JSONObject jSONObject;
        if (str != null) {
            try {
                jSONObject = new JSONObject();
                jSONObject.put(abn.EXTRA_UA_APP_NAME, "can_use_sensor");
                jSONObject.put("value", str);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            jSONObject = null;
        }
        if (jSONObject != null) {
            if (jSONArray != null && jSONArray.length() > 0) {
                jSONArray.put(jSONArray.length(), jSONObject);
                return jSONArray;
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, jSONObject);
            return jSONArray2;
        }
        return jSONArray;
    }

    private JSONObject dq(io ioVar, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adv_id", ioVar.ox());
            jSONObject.put("site_id", ioVar.p());
            jSONObject.put("page_url", str);
            jSONObject.put("log_extra", str2);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            dq(jSONObject, "keywords", no.ia().f());
            jSONObject.put("protection_of_minors", no.ia().ir());
            if (!com.bytedance.sdk.openadsdk.core.ox.p.dq().o(i)) {
                com.bytedance.sdk.openadsdk.jy.d.p(this.dq, jSONObject);
            }
            String d2 = d(dVar);
            String dq2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().dq(dVar.mn(), "");
            if (!TextUtils.isEmpty(dq2)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt(abn.EXTRA_UA_APP_NAME, "dynamic_slot_ab_extra");
                jSONObject2.putOpt("value", dq2);
                JSONArray jSONArray = TextUtils.isEmpty(d2) ? new JSONArray() : new JSONArray(d2);
                jSONArray.put(jSONObject2);
                String jSONArray2 = jSONArray.toString();
                if (!TextUtils.equals("[]", jSONArray2)) {
                    dq(jSONObject, "data", jSONArray2);
                    return jSONObject;
                }
            } else if (!TextUtils.equals("[]", d2)) {
                dq(jSONObject, "data", d2);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i, nh nhVar) {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TTDownloadField.TT_ID, dVar.mn());
            jSONObject.put(MediationConstant.KEY_GM_PRIME_RIT, dVar.le());
            jSONObject.put("show_seq", dVar.i());
            jSONObject.put("adtype", i);
            jSONObject.put("themeStatus", no.ia().j());
            jSONObject.put("download_type", 0);
            if (!TextUtils.isEmpty(dVar.p()) || !TextUtils.isEmpty(dVar.s()) || !TextUtils.isEmpty(dVar.iw()) || com.bytedance.sdk.openadsdk.tools.d.dq()) {
                JSONObject jSONObject2 = new JSONObject();
                if (!TextUtils.isEmpty(dVar.p())) {
                    jSONObject2.put(MediationConstant.EXTRA_ADID, dVar.p());
                }
                if (!TextUtils.isEmpty(dVar.s())) {
                    jSONObject2.put("creative_id", dVar.s());
                }
                if (dVar.iw() != null) {
                    jSONObject2.put("ext", dVar.iw());
                }
                com.bytedance.sdk.openadsdk.tools.d.dq(jSONObject2, dVar.mn());
                jSONObject.put("preview_ads", jSONObject2);
            }
            if (com.bytedance.sdk.openadsdk.tools.d.dq() && no.ia().uh()) {
                com.bytedance.sdk.openadsdk.tools.d.d(jSONObject, dVar.mn());
            }
            if (i == 3 || i == 4) {
                if (nhVar != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("publisher_timeout_control", nhVar.o);
                    jSONObject3.put("time_out_control", nhVar.no);
                    jSONObject3.put("time_out", nhVar.ig);
                    jSONObject.put("tmax", jSONObject3);
                }
                jSONObject.put("splash_button_type", 1);
            }
            if (nhVar != null) {
                jSONObject.put("render_method", nhVar.mn);
                int i2 = nhVar.mn;
                if (i2 == 1) {
                    if (p(dVar)) {
                        dq(i, jSONObject);
                    } else {
                        dq(jSONObject, "accepted_size", dVar.kk(), dVar.o());
                    }
                } else if (i2 == 2) {
                    if (dVar.no() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && dVar.ig() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq(jSONObject, "accepted_size", com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.dq, dVar.no()), com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.dq, dVar.ig()));
                    }
                    if (p(dVar)) {
                        dq(i, jSONObject);
                    } else {
                        dq(jSONObject, "accepted_size", dVar.kk(), dVar.o());
                    }
                }
            } else {
                jSONObject.put("render_method", 1);
                dq(jSONObject, "accepted_size", dVar.kk(), dVar.o());
            }
            jSONObject.put("ptpl_ids", com.bytedance.sdk.openadsdk.core.ox.d.dq().dq(dVar.mn(), i));
            jSONObject.put("ptpl_ids_v3", com.bytedance.sdk.openadsdk.core.ox.d.dq().d(dVar.mn(), i));
            jSONObject.put("pos", com.bytedance.sdk.openadsdk.core.ir.c.s(i));
            jSONObject.put("is_support_dpl", dVar.mp());
            jSONObject.put("if_support_render_control", dVar.q() ? 1 : 0);
            jSONObject.put("support_icon_style", (op.f3334d < 5900 || !dVar.bl()) ? 0 : 1);
            if (i == 3 || i == 4) {
                jSONObject.put("splash_load_type", wp.d().kk(com.bytedance.sdk.openadsdk.core.ir.c.dq(dVar)));
            }
            if (i == 1 || i == 2) {
                jSONObject.put("is_origin_ad", true);
            }
            if (nhVar != null && (obj = nhVar.mp) != null) {
                jSONObject.put("session_params", obj);
            }
            int jy = dVar.jy();
            if (i == 7) {
                jy = 1;
            }
            if (i == 8) {
                boolean fw = wp.d().fw(dVar.mn());
                boolean dq2 = com.bytedance.sdk.openadsdk.core.mp.s.dq(dVar.mn());
                if (!fw) {
                    jSONObject.put("refresh_control", 0);
                } else if (dq2) {
                    jSONObject.put("refresh_control", 0);
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.2
                        @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                        public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                            JSONObject jSONObject4 = new JSONObject();
                            try {
                                jSONObject4.put("cid", "");
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                            }
                            return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("refresh_max").d(jSONObject4.toString());
                        }
                    }, "refresh_max");
                } else {
                    jSONObject.put("refresh_control", 1);
                    jy = wp.d().tv();
                }
                jy = 1;
            }
            if (nhVar != null && nhVar.iw != null) {
                jy = dVar.jy();
            }
            jSONObject.put("ad_count", jy);
            int dq3 = com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.s.dq(dVar);
            if (dq3 == 1) {
                jSONObject.put("group_load_more", dq3);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void dq() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f3087d.get() >= 30000) {
            this.f3087d.set(currentTimeMillis);
            com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ji.21
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.bl.s.dq((com.bytedance.sdk.openadsdk.core.bl.p) null).p();
                }
            }, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        }
    }

    private void dq(int i, JSONObject jSONObject) {
        if (d(i)) {
            dq(jSONObject, "accepted_size", com.bytedance.sdk.openadsdk.core.ir.ce.p(this.dq), com.bytedance.sdk.openadsdk.core.ir.ce.s(this.dq));
        } else {
            dq(jSONObject, "accepted_size", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Bridge bridge, int i, String str) {
        if (bridge != null) {
            hat f2 = hat.f();
            f2.o(0, i);
            f2.n(1, str);
            bridge.call(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM, f2.k(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Bridge bridge, String str) {
        if (bridge != null) {
            hat f2 = hat.f();
            f2.n(0, str);
            bridge.call(10000, f2.k(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar, com.bytedance.sdk.openadsdk.core.r.d dVar2, h.d dVar3, com.bytedance.sdk.openadsdk.f.d.ox.d dVar4, nh nhVar, int i, int i2) {
        h.d dVar5;
        String str;
        com.bytedance.sdk.openadsdk.core.ji.dq dqVar;
        long length;
        JSONObject dq2;
        boolean z;
        boolean z2;
        dq dqVar2;
        nh nhVar2;
        ji jiVar;
        long length2;
        final JSONObject jSONObject;
        final boolean z3;
        if (dVar == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (!dVar.ia()) {
            int dq3 = dVar.dq();
            String d2 = dVar.d();
            dVar2.dq(dq3);
            dVar3.dq(dq3, d2, dVar2);
            com.bytedance.sdk.openadsdk.core.s.d.d();
            return;
        }
        if (i2 == 1) {
            dq(dVar, dVar4, i, nhVar, dVar3, dVar2);
            return;
        }
        if (i2 == 3) {
            dq(dVar, dVar4, i, nhVar, dVar3, dVar2, pVar);
            return;
        }
        com.bytedance.sdk.openadsdk.core.r.d dVar6 = dVar2;
        com.bytedance.sdk.openadsdk.core.ji.dq dq4 = dq(pVar);
        dq4.iw(currentTimeMillis);
        com.bytedance.sdk.openadsdk.core.gh.d.dq();
        try {
            final String p2 = dVar.p();
            if (i2 == 5) {
                byte[] o = dVar.o();
                Pair<Boolean, JSONObject> dq5 = com.bytedance.sdk.openadsdk.core.ox.iw.dq(dVar, "get_ads", true);
                JSONObject jSONObject2 = (JSONObject) dq5.second;
                boolean booleanValue = ((Boolean) dq5.first).booleanValue();
                if (booleanValue) {
                    length2 = TextUtils.isEmpty(p2) ? 0L : p2.getBytes(StandardCharsets.UTF_8).length;
                    dVar6.dq(p2);
                } else {
                    length2 = o == null ? 0L : o.length;
                }
                if (LogAdapter.dq == null || jSONObject2 == null) {
                    dqVar = dq4;
                    jSONObject = jSONObject2;
                    z3 = booleanValue;
                } else {
                    z3 = booleanValue;
                    dqVar = dq4;
                    jSONObject = jSONObject2;
                    com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("logAdapter") { // from class: com.bytedance.sdk.openadsdk.core.ji.24
                        @Override // java.lang.Runnable
                        public void run() {
                            Object obj;
                            try {
                                String str2 = "";
                                if (z3) {
                                    str2 = p2;
                                } else {
                                    Pair<Integer, JSONObject> dq6 = com.bytedance.sdk.openadsdk.core.ox.iw.dq().dq(jSONObject.toString(), false);
                                    if (dq6 != null && (obj = dq6.second) != null) {
                                        str2 = ((JSONObject) obj).toString();
                                    }
                                }
                                if (LogAdapter.dq == null || TextUtils.isEmpty(str2)) {
                                    return;
                                }
                                LogAdapter.dq.p("NetApiImpl", "response:");
                                LogAdapter.dq.p("NetApiImpl", str2);
                            } catch (Exception e2) {
                                com.bytedance.sdk.component.utils.ig.d(e2.getMessage());
                            }
                        }
                    });
                }
                dq2 = jSONObject;
                length = length2;
                z = z3;
            } else {
                dqVar = dq4;
                dVar6.dq(p2);
                LogAdapter logAdapter = LogAdapter.dq;
                if (logAdapter != null) {
                    logAdapter.p("NetApiImpl", "response:");
                    LogAdapter.dq.p("NetApiImpl", p2);
                }
                JSONObject jSONObject3 = new JSONObject(p2);
                length = TextUtils.isEmpty(p2) ? 0L : p2.getBytes(StandardCharsets.UTF_8).length;
                dq2 = com.bytedance.sdk.openadsdk.core.ox.iw.dq(jSONObject3, false, true);
                z = false;
            }
            com.bytedance.sdk.openadsdk.core.ji.dq dqVar3 = dqVar;
            dqVar3.mn(length);
            if (dq2 == null) {
                dq(dVar3, dVar6);
                return;
            }
            com.bytedance.sdk.openadsdk.mn.p.dq(dq2);
            dq dq6 = dq.dq(dq2, dVar4, nhVar);
            dVar6.dq(dq6.o);
            i.dq(dq6.kk);
            int i3 = dq6.p;
            if (i3 != 20000) {
                dVar6.dq(i3);
                dVar6.d(dq6.iw);
                dVar3.dq(dq6.p, "reason: " + dq6.iw + "  message: " + dq6.s, dVar6);
                return;
            }
            com.bytedance.sdk.openadsdk.core.r.dq dqVar4 = dq6.ia;
            if (dqVar4 == null) {
                dq(dVar3, dVar6);
                return;
            }
            dqVar4.dq(dq2);
            dqVar3.d(System.currentTimeMillis());
            if (nhVar != null) {
                long kk = dqVar3.kk() - nhVar.ia;
                long j = dq6.dq;
                dVar5 = dVar3;
                z2 = z;
                nhVar2 = nhVar;
                str = "NetApiImpl";
                dqVar2 = dq6;
                jiVar = this;
                try {
                    jiVar.dq(dVar6, kk, j, dqVar3.iw() - dqVar3.kk(), dqVar3.d() - dqVar3.iw());
                    dVar6 = dVar6;
                } catch (Throwable th) {
                    th = th;
                    dVar6 = dVar6;
                    com.bytedance.sdk.component.utils.ig.d(str, "get ad error: ", th);
                    dq(dVar5, dVar6);
                }
            } else {
                dVar5 = dVar3;
                str = "NetApiImpl";
                z2 = z;
                dqVar2 = dq6;
                nhVar2 = nhVar;
                jiVar = this;
            }
            try {
                dVar5.dq(dqVar2.ia, dVar6);
                for (com.bytedance.sdk.openadsdk.core.r.j jVar : dqVar2.ia.d()) {
                    if (nhVar2 != null) {
                        jVar.e(nhVar2.dq);
                    }
                    com.bytedance.sdk.openadsdk.core.ir.c.dq(jiVar.dq, jVar);
                    com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(jVar);
                    if (com.bytedance.sdk.openadsdk.s.dq.dq(jVar)) {
                        com.bytedance.sdk.openadsdk.upie.d.dq().dq(jiVar.dq, com.bytedance.sdk.openadsdk.s.dq.s(jVar));
                    }
                }
                if (dqVar3.ig() && dqVar2.ia.d() != null && !dqVar2.ia.d().isEmpty()) {
                    com.bytedance.sdk.openadsdk.core.r.j jVar2 = dqVar2.ia.d().get(0);
                    s.dq().dq(jVar2);
                    String d3 = com.bytedance.sdk.openadsdk.core.ir.c.d(i);
                    dqVar3.d(i2 != 5);
                    dqVar3.dq(i2 != 5 || z2);
                    dqVar3.s(dVar.s());
                    dqVar3.p(dVar.iw());
                    dqVar3.dq(dqVar2.dq);
                    com.bytedance.sdk.component.d.dq.no no = dVar.no();
                    if (no != null) {
                        dqVar3.o(no.dq);
                        dqVar3.no(no.f1854d);
                        dqVar3.ig(no.ox);
                        dqVar3.mp(no.p);
                        dqVar3.q(no.s);
                    }
                    jiVar.dq(nhVar2, jVar2, d3, dqVar3);
                }
                com.bytedance.sdk.openadsdk.d.d.dq().dq(dq2);
                com.bytedance.sdk.openadsdk.core.s.d.d();
            } catch (Throwable th2) {
                th = th2;
                com.bytedance.sdk.component.utils.ig.d(str, "get ad error: ", th);
                dq(dVar5, dVar6);
            }
        } catch (Throwable th3) {
            th = th3;
            dVar5 = dVar3;
            str = "NetApiImpl";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException, com.bytedance.sdk.openadsdk.core.r.d dVar, h.d dVar2) {
        com.bytedance.sdk.openadsdk.core.gh.d.dq();
        if (iOException != null) {
            dVar.dq(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN);
            dVar2.dq(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN, iOException.getMessage(), dVar);
            com.bytedance.sdk.component.utils.ig.dq("NetApiImpl", "onFailure: ", Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE));
        }
    }

    private void dq(com.bytedance.sdk.component.kk.d dVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar2, int i, nh nhVar, h.d dVar3, com.bytedance.sdk.openadsdk.core.r.d dVar4) {
        if (dVar != null) {
            try {
                JSONArray optJSONArray = new JSONObject(dVar.p()).optJSONArray("ads");
                if (optJSONArray == null || optJSONArray.length() == 0) {
                    if (dVar3 != null) {
                        dVar3.dq(-9, o.dq(-9), dVar4);
                        return;
                    }
                    return;
                }
                int e2 = wp.d().e();
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    JSONObject optJSONObject = optJSONArray.getJSONObject(i2).optJSONObject("creative");
                    if (optJSONObject != null) {
                        JSONObject dq2 = com.bytedance.sdk.openadsdk.core.ox.iw.dq(new JSONObject(optJSONObject.optString("adm")), false, true);
                        if (dq2 != null || dVar3 == null) {
                            dq dq3 = dq.dq(dq2, dVar2, nhVar);
                            com.bytedance.sdk.openadsdk.core.ir.s.dq(dq3.ia, i, e2);
                            if (dVar3 != null) {
                                dVar3.dq(dq3.ia, dVar4);
                            }
                        } else {
                            dVar3.dq(-9, o.dq(-9), dVar4);
                        }
                    } else if (dVar3 != null) {
                        dVar3.dq(-9, o.dq(-9), dVar4);
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                if (dVar3 != null) {
                    dVar3.dq(-9, o.dq(-9), dVar4);
                }
            }
        }
    }

    private void dq(com.bytedance.sdk.component.kk.d dVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar2, int i, nh nhVar, h.d dVar3, com.bytedance.sdk.openadsdk.core.r.d dVar4, com.bytedance.sdk.component.kk.d.p pVar) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        String str;
        String str2;
        dq dqVar;
        nh nhVar2 = nhVar;
        String str3 = "auction_price";
        if (dVar != null) {
            if (!dVar.ia()) {
                int dq2 = dVar.dq();
                String d2 = dVar.d();
                dVar4.dq(dq2);
                dVar3.dq(dq2, d2, dVar4);
                return;
            }
            ji jiVar = this;
            try {
                com.bytedance.sdk.openadsdk.core.ji.dq dq3 = jiVar.dq(pVar);
                long currentTimeMillis = System.currentTimeMillis();
                String p2 = dVar.p();
                dVar4.dq(p2);
                LogAdapter logAdapter = LogAdapter.dq;
                if (logAdapter != null) {
                    logAdapter.p("NetApiImpl", "response:");
                    LogAdapter.dq.p("NetApiImpl", p2);
                }
                JSONObject jSONObject3 = new JSONObject(p2);
                int optInt = jSONObject3.optInt("status_code");
                String optString = new JSONObject(dVar2.wp()).optString("auction_price");
                int i2 = AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS;
                if (optInt != 20000) {
                    if (optInt == 40046) {
                        dVar4.dq(optInt);
                        dVar3.dq(40046, o.dq(optInt), dVar4);
                        return;
                    }
                    return;
                }
                JSONObject optJSONObject = jSONObject3.optJSONObject("adms");
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    JSONObject jSONObject4 = new JSONObject(optJSONObject.optString(keys.next()));
                    jSONObject4.put(str3, optString);
                    JSONObject dq4 = com.bytedance.sdk.openadsdk.core.ox.iw.dq(jSONObject4, false, true);
                    if (dq4 == null) {
                        dq(dVar3, dVar4);
                        return;
                    }
                    dq dq5 = dq.dq(dq4, dVar2, nhVar2);
                    dVar4.dq(dq5.o);
                    int i3 = dq5.p;
                    if (i3 != i2) {
                        dVar4.dq(i3);
                        dVar3.dq(dq5.p, "reason: " + dq5.iw + "  message: " + dq5.s, dVar4);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.r.dq dqVar2 = dq5.ia;
                    if (dqVar2 == null) {
                        dq(dVar3, dVar4);
                        return;
                    }
                    dqVar2.dq(dq4);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (nhVar2 != null) {
                        jSONObject2 = dq4;
                        str2 = str3;
                        dqVar = dq5;
                        jSONObject = optJSONObject;
                        str = optString;
                        jiVar.dq(dVar4, dq3.kk() - nhVar2.ia, dq5.dq, currentTimeMillis - dq3.kk(), currentTimeMillis2 - currentTimeMillis);
                    } else {
                        jSONObject = optJSONObject;
                        jSONObject2 = dq4;
                        str = optString;
                        str2 = str3;
                        dqVar = dq5;
                    }
                    dVar3.dq(dqVar.ia, dVar4);
                    Iterator<com.bytedance.sdk.openadsdk.core.r.j> it = dqVar.ia.d().iterator();
                    while (it.hasNext()) {
                        com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(it.next());
                    }
                    com.bytedance.sdk.openadsdk.d.d.dq().dq(jSONObject2);
                    i2 = AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS;
                    jiVar = this;
                    str3 = str2;
                    nhVar2 = nhVar;
                    optString = str;
                    optJSONObject = jSONObject;
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.d("NetApiImpl", "get ad error: ", th);
                dq(dVar3, dVar4);
            }
        }
    }

    public static void dq(h.d dVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
        dVar2.dq(-1);
        dVar.dq(-1, o.dq(-1), dVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(h.p pVar) {
        pVar.dq(-1, o.dq(-1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(h.s sVar) {
        sVar.dq(-1, o.dq(-1));
    }

    private void dq(com.bytedance.sdk.openadsdk.core.r.d dVar, long j, long j2, long j3, long j4) {
        if (dVar == null) {
            return;
        }
        dVar.dq(j);
        dVar.d(j3);
        dVar.ox(j2);
        dVar.p(j4);
    }

    private void dq(com.bytedance.sdk.openadsdk.core.r.d dVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar2, final h.d dVar3, nh nhVar, int i) {
        dVar.ox(2);
        dVar.dq(dVar2.wp());
        try {
            boolean z = false;
            JSONObject dq2 = com.bytedance.sdk.openadsdk.core.ox.iw.dq(new JSONObject(dVar2.wp()), false, true);
            if (dq2 == null) {
                dq(dVar3, dVar);
                return;
            }
            dq dq3 = dq.dq(dq2, dVar2, nhVar);
            dVar.dq(dq3.o);
            i.dq(dq3.kk);
            int i2 = dq3.p;
            if (i2 != 20000) {
                dVar.dq(i2);
                dVar3.dq(dq3.p, "reason: " + dq3.iw + "  message: " + dq3.s, dVar);
                return;
            }
            com.bytedance.sdk.openadsdk.core.r.dq dqVar = dq3.ia;
            if (dqVar == null) {
                dq(dVar3, dVar);
                return;
            }
            dqVar.dq(dq2);
            List<com.bytedance.sdk.openadsdk.core.r.j> d2 = dq3.ia.d();
            if (d2 != null) {
                ArrayList arrayList = new ArrayList(d2);
                for (com.bytedance.sdk.openadsdk.core.r.j jVar : d2) {
                    com.bytedance.sdk.openadsdk.core.r.j dq4 = com.bytedance.sdk.openadsdk.core.ir.s.dq(jVar.wp(), i);
                    if (dq4 != null) {
                        arrayList.remove(jVar);
                        dq4.ji(jVar.iy());
                        arrayList.add(dq4);
                    } else if (jVar.e()) {
                        wp.dq().ox(dVar2, nhVar, i, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.ji.20
                            @Override // com.bytedance.sdk.openadsdk.core.h.d
                            public void dq(int i3, String str, com.bytedance.sdk.openadsdk.core.r.d dVar4) {
                                com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(i3);
                                dVar3.dq(i3, str, dVar4);
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.h.d
                            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar2, com.bytedance.sdk.openadsdk.core.r.d dVar4) {
                                com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(0);
                                dVar3.dq(dqVar2, dVar4);
                            }
                        });
                        z = true;
                    }
                }
                if (z) {
                    return;
                } else {
                    dq3.ia.dq(arrayList);
                }
            }
            dVar3.dq(dq3.ia, dVar);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("NetApiImpl", "get ad error: ", th);
            dq(dVar3, dVar);
        }
    }

    private void dq(nh nhVar, com.bytedance.sdk.openadsdk.core.r.j jVar, String str, com.bytedance.sdk.openadsdk.core.ji.dq dqVar) {
        long j;
        long j2;
        if (wp.d().vw() && dqVar != null) {
            JSONObject jSONObject = new JSONObject();
            if (nhVar != null) {
                try {
                    if (nhVar.ia > 0) {
                        jSONObject.put("client_start_time", dqVar.kk() - nhVar.ia);
                        j = dqVar.d() - nhVar.ia;
                    } else {
                        j = 0;
                    }
                    if (nhVar.kk > 0) {
                        jSONObject.put("real_user_duration", dqVar.d() - nhVar.kk);
                        jSONObject.put("switch_st1_time", nhVar.ia - nhVar.kk);
                    }
                    j2 = j;
                } catch (Exception unused) {
                    return;
                }
            } else {
                j2 = 0;
            }
            jSONObject.put("net_send_time", dqVar.s() - dqVar.kk());
            jSONObject.put("net_rcv_time", dqVar.p() - dqVar.s());
            jSONObject.put("net_callback_time", dqVar.iw() - dqVar.p());
            jSONObject.put("network_time", dqVar.iw() - dqVar.kk());
            jSONObject.put("sever_time", dqVar.dq());
            jSONObject.put("client_end_time", dqVar.d() - dqVar.iw());
            if (dqVar.o() > 0) {
                jSONObject.put("req_body_length", dqVar.o());
            }
            if (dqVar.ia() > 0) {
                jSONObject.put("res_body_length", dqVar.ia());
            }
            if (!TextUtils.isEmpty(dqVar.no())) {
                jSONObject.put("x-pglcypher", dqVar.no());
            }
            jSONObject.put("cypher_v", dqVar.cd());
            jSONObject.put("armor_s", dqVar.gh());
            long ox2 = dqVar.ox();
            if (ox2 > 0) {
                jSONObject.put("raw_req_length", ox2);
            }
            int i = 1;
            jSONObject.put("sdk_parallel_load", 1);
            jSONObject.put("net_module", com.bytedance.sdk.openadsdk.core.ox.ox.dq().iw());
            if (!dqVar.mn()) {
                i = 2;
            }
            jSONObject.put("has_base64", i);
            jSONObject.put("req_build_opt", com.bytedance.sdk.openadsdk.core.ox.ox.dq().mn());
            jSONObject.put("is_boost", com.bytedance.sdk.openadsdk.core.ox.s.ox());
            if (dqVar.f() > 0) {
                jSONObject.put("net_whqueue", dqVar.q() - dqVar.mp());
                jSONObject.put("net_wtqueue", dqVar.jy() - dqVar.q());
                jSONObject.put("net_oconn", dqVar.fw() - dqVar.f());
                jSONObject.put("net_bconn", dqVar.f() - dqVar.jy());
            }
            try {
                JSONObject dq2 = nhVar.jy.dq(-1L);
                Iterator<String> keys = dq2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        jSONObject.put(next, dq2.opt(next));
                    }
                }
            } catch (Exception unused2) {
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, str, "load_ad_time", j2, jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, h.d dVar2, String str, int i2) {
        d(dVar, nhVar, i, dVar2, str, i2);
    }

    private void dq(Throwable th, com.bytedance.sdk.openadsdk.core.r.d dVar, h.d dVar2) {
        if (dVar2 != null) {
            dVar.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE);
            dVar2.dq(TTAdConstant.INIT_LOCAL_FAIL_CODE, th.getMessage(), dVar);
            com.bytedance.sdk.component.utils.ig.ox("NetApiImpl", " msg = ", th.getMessage());
        }
    }

    private void dq(JSONObject jSONObject, nh nhVar) {
        JSONArray jSONArray;
        if (nhVar == null || (jSONArray = nhVar.iw) == null) {
            return;
        }
        try {
            jSONObject.put("source_temai_product_ids", jSONArray);
        } catch (Exception unused) {
        }
    }

    private void dq(JSONObject jSONObject, String str, float f2, float f3) {
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put(MediaFormat.KEY_WIDTH, (int) f2);
            jSONObject2.put(MediaFormat.KEY_HEIGHT, (int) f3);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private void dq(JSONObject jSONObject, String str, int i, int i2) {
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            if (i <= 0 || i2 <= 0) {
                jSONObject2.put(MediaFormat.KEY_WIDTH, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
                jSONObject2.put(MediaFormat.KEY_HEIGHT, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            } else {
                jSONObject2.put(MediaFormat.KEY_WIDTH, i);
                jSONObject2.put(MediaFormat.KEY_HEIGHT, i2);
            }
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private void dq(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    private void dq(boolean z, JSONObject jSONObject, String str) throws Exception {
        String dq2 = com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().dq(z, str);
        String str2 = "0";
        String str3 = null;
        if (dq2 != null && !TextUtils.isEmpty(dq2)) {
            if (TextUtils.equals(dq2, "0")) {
                str3 = "0";
            } else if (TextUtils.equals(dq2, "1")) {
                str3 = "1";
            } else {
                JSONObject jSONObject2 = new JSONObject(dq2);
                jSONObject.putOpt("cache_info", jSONObject2);
                str2 = jSONObject2.optString("req_id");
            }
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(str, str2, str3, false);
    }

    private boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, com.bytedance.sdk.openadsdk.core.r.d dVar2, h.d dVar3, boolean z, nh nhVar, int i) {
        if (dVar3 == null) {
            return true;
        }
        if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            dVar2.dq(1000);
            dVar3.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员", dVar2);
            return true;
        }
        if (!z) {
            return false;
        }
        nhVar.dq("execGetAdReady", z);
        if (!TextUtils.isEmpty(dVar.wp()) && nhVar.s <= 0) {
            dq(dVar2, dVar, dVar3, nhVar, i);
            com.bytedance.sdk.openadsdk.core.gh.d.dq();
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (!dq(dVar.mn(), nhVar)) {
            nhVar.dq("checkCallFreq", System.currentTimeMillis() - currentTimeMillis, z);
            return false;
        }
        dVar2.dq(-8);
        dVar3.dq(-8, o.dq(-8), dVar2);
        com.bytedance.sdk.openadsdk.core.gh.d.dq();
        return true;
    }

    private boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i) {
        boolean dq2 = wp.d().dq(dVar.mn());
        if (dq2) {
            s(dVar, nhVar, i, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.ji.5
                @Override // com.bytedance.sdk.openadsdk.core.h.d
                public void dq(int i2, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(i2);
                }

                @Override // com.bytedance.sdk.openadsdk.core.h.d
                public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(0);
                }
            });
        }
        return dq2;
    }

    private boolean dq(String str, nh nhVar) {
        return (nhVar == null || nhVar.s != 2 || com.bytedance.sdk.openadsdk.core.ox.p.dq().p() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) ? d(str) : ox(str);
    }

    private static String ox(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        String cd = no.ia().cd();
        String iw = no.ia().iw();
        no.ia().d((String) null);
        String e2 = dVar != null ? dVar.e() : null;
        if (TextUtils.isEmpty(cd)) {
            return dq(e2, iw);
        }
        try {
            if (!TextUtils.isEmpty(cd) && cd.contains("game_adapter_did")) {
                cd = dq(new JSONArray(cd)).toString();
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        if (TextUtils.isEmpty(e2)) {
            return dq(cd, iw);
        }
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = new JSONArray(e2);
            int length = jSONArray.length();
            boolean z = false;
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject != null) {
                    String optString = jSONObject.optString(abn.EXTRA_UA_APP_NAME, null);
                    if (TextUtils.equals("is_shake_ads", optString)) {
                        if (TextUtils.equals(iw, "0")) {
                            jSONObject.put("value", "0");
                            no.ia().d("0");
                        } else {
                            no.ia().d(jSONObject.optString("value"));
                        }
                        z = true;
                    }
                    hashSet.add(optString);
                }
            }
            try {
                JSONArray jSONArray2 = new JSONArray(cd);
                int length2 = jSONArray2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                    if (jSONObject2 != null) {
                        String optString2 = jSONObject2.optString(abn.EXTRA_UA_APP_NAME, null);
                        if (!hashSet.contains(optString2)) {
                            if (TextUtils.equals("is_shake_ads", optString2)) {
                                if (TextUtils.equals(iw, "0")) {
                                    jSONObject2.put("value", "0");
                                    no.ia().d("0");
                                } else {
                                    no.ia().d(jSONObject2.optString("value"));
                                }
                                z = true;
                            }
                            jSONArray.put(jSONObject2);
                        }
                    }
                }
                if (!z) {
                    jSONArray = d(jSONArray, iw);
                }
                return dq(dq(jSONArray), iw).toString();
            } catch (Throwable unused) {
                return dq(e2, iw);
            }
        } catch (Throwable unused2) {
            return dq(cd, iw);
        }
    }

    private boolean ox(String str) {
        if (com.bytedance.sdk.openadsdk.core.mp.ox.ox()) {
            return true;
        }
        if (!com.bytedance.sdk.openadsdk.core.mp.ox.d(str)) {
            return false;
        }
        String p2 = com.bytedance.sdk.openadsdk.core.mp.ox.p();
        if (!TextUtils.isEmpty(p2)) {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(p2, System.currentTimeMillis(), true);
        }
        return true;
    }

    private void p(String str) {
        com.bytedance.sdk.component.kk.d.ox ox2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
        ox2.dq(str);
        ox2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.17
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
            }
        });
    }

    private boolean p(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        return dVar != null && dVar.o() == 320 && dVar.kk() == 640;
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void d(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar, final int i, h.d dVar2) {
        final com.bytedance.sdk.openadsdk.core.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.dq.dq(dVar2);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("bid_pre") { // from class: com.bytedance.sdk.openadsdk.core.ji.11
                @Override // java.lang.Runnable
                public void run() {
                    ji.this.dq(dVar, nhVar, i, dqVar, "/api/ad/union/server_bidding/pre_cache/", 2);
                }
            });
        } else {
            dq(dVar, nhVar, i, dqVar, "/api/ad/union/server_bidding/pre_cache/", 2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public com.bytedance.sdk.component.adexpress.dq.ox.dq dq(int i) {
        if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            return null;
        }
        String xv = i == 2 ? wp.d().xv() : wp.d().m();
        if (TextUtils.isEmpty(xv)) {
            return null;
        }
        com.bytedance.sdk.component.kk.d.ox ox2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
        ox2.dq(com.bytedance.sdk.openadsdk.core.ir.u.d(xv));
        com.bytedance.sdk.component.kk.d dq2 = ox2.dq();
        if (dq2 != null) {
            try {
                if (dq2.ia()) {
                    return i == 2 ? com.bytedance.sdk.openadsdk.core.ugeno.mn.d.s(dq2.p()) : com.bytedance.sdk.component.adexpress.dq.ox.dq.p(dq2.p());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.core.ji.d dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, com.bytedance.sdk.openadsdk.core.r.d dVar2, nh nhVar, int i, int i2, h.d dVar3) {
        com.bytedance.sdk.openadsdk.core.ji.d d2;
        com.bytedance.sdk.openadsdk.tools.d.dq(dVar);
        boolean z = i2 == 5;
        nhVar.dq("buildAdBodyReady", z);
        JSONObject dq2 = dq(dVar, nhVar, i, false, i2);
        nhVar.dq("doBuildAdBody", z);
        if (dq2 == null) {
            dVar2.dq(-9);
            dVar3.dq(-9, o.dq(-9), dVar2);
            return null;
        }
        String jSONObject = dq2.toString();
        if (i2 == 5) {
            long currentTimeMillis = System.currentTimeMillis();
            d2 = com.bytedance.sdk.openadsdk.core.ox.iw.dq().dq(jSONObject);
            nhVar.dq("encrypt", System.currentTimeMillis() - currentTimeMillis, z);
        } else {
            d2 = com.bytedance.sdk.openadsdk.core.ox.iw.dq().d(jSONObject);
        }
        if (d2 != null) {
            d2.dq(dq2);
            return d2;
        }
        dVar2.dq(-9);
        dVar3.dq(-9, o.dq(-9), dVar2);
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public com.bytedance.sdk.openadsdk.core.r.ox dq(final com.bytedance.sdk.openadsdk.core.r.j jVar, String str) {
        String str2;
        String str3;
        Object obj;
        if (jVar != null) {
            str2 = jVar.uo();
            com.bytedance.sdk.openadsdk.core.r.p gm = jVar.gm();
            com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
            str3 = hy != null ? hy.ig() : null;
            if (TextUtils.isEmpty(str3) && gm != null) {
                str3 = gm.p();
            }
            Map<String, Object> ps = jVar.ps();
            if (TextUtils.isEmpty(str3) && ps != null && (obj = ps.get("ad_package_name")) != null) {
                str3 = obj.toString();
            }
            if (TextUtils.isEmpty(str3)) {
                str3 = jVar.f3457d;
            }
        } else {
            str2 = null;
            str3 = null;
        }
        com.bytedance.sdk.component.kk.d.ox ox2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
        ox2.dq("https://" + wp.d().wi() + "/customer/api/app/pkg_info/");
        ox2.dq("convert_id", str2);
        ox2.dq("package_name", str3);
        ox2.dq("download_url", com.bytedance.sdk.openadsdk.h.ia.d(str));
        StringBuilder sb = new StringBuilder();
        awf.y(sb, str2, "_", str3, "_");
        sb.append(str);
        String sb2 = sb.toString();
        com.bytedance.sdk.openadsdk.core.r.ox dq2 = com.bytedance.sdk.openadsdk.core.o.dq.dq(sb2);
        if (dq2 != null) {
            return dq2;
        }
        final com.bytedance.sdk.component.kk.d[] dVarArr = {null};
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        ox2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.7
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                dVarArr[0] = dVar;
                countDownLatch.countDown();
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(final com.bytedance.sdk.component.kk.d.p pVar, final IOException iOException) {
                countDownLatch.countDown();
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.7.1
                    @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                    public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        com.bytedance.sdk.component.kk.d.p pVar2 = pVar;
                        if (pVar2 != null) {
                            jSONObject.putOpt("net_extra", pVar2.p());
                        }
                        IOException iOException2 = iOException;
                        if (iOException2 != null) {
                            jSONObject.putOpt("io_error", iOException2.getMessage());
                        }
                        com.bytedance.sdk.openadsdk.core.gh.dq.ox<com.bytedance.sdk.openadsdk.core.gh.dq.ox> d2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d();
                        com.bytedance.sdk.openadsdk.core.r.j jVar2 = jVar;
                        return d2.ia(jVar2 != null ? jVar2.dn() : "").dq("pkg_info_failed").d(jSONObject.toString());
                    }
                }, "pkg_info_failed");
            }
        });
        try {
            countDownLatch.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        try {
            com.bytedance.sdk.component.kk.d dVar = dVarArr[0];
            if (dVar != null && dVar.ia() && !TextUtils.isEmpty(dVarArr[0].p()) && new JSONObject(dVarArr[0].p()).optInt(PluginConstants.KEY_ERROR_CODE, -1) == 0) {
                com.bytedance.sdk.openadsdk.core.r.ox oxVar = new com.bytedance.sdk.openadsdk.core.r.ox(new JSONObject(dVarArr[0].p()));
                com.bytedance.sdk.openadsdk.core.o.dq.dq(sb2, oxVar);
                return oxVar;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public String dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        return dq(dVar, false, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ca  */
    @Override // com.bytedance.sdk.openadsdk.core.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z, int i) {
        String str;
        int i2;
        JSONObject jSONObject = new JSONObject();
        nh nhVar = new nh();
        kx kxVar = nhVar.jy;
        if (3 == dVar.k()) {
            nhVar.ia = System.currentTimeMillis();
        }
        if (z) {
            nhVar.mn = 2;
        }
        if (1 == dVar.gh() || 2 == dVar.gh()) {
            nhVar.mn = 2;
        }
        if (nhVar.mn != 2 && wp.d().no(dVar.mn())) {
            nhVar.mn = 2;
        }
        int k = dVar.k() > 0 ? dVar.k() : i > 0 ? i : 0;
        JSONObject dq2 = dq(dVar, nhVar, k, true, 4);
        kxVar.d("adbody_time");
        dq(dVar, nhVar, k);
        kxVar.d("prefetch_time");
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("User-Agent", com.bytedance.sdk.openadsdk.core.ir.c.mn());
            kxVar.d("request_headers_time");
            jSONObject.putOpt("header", jSONObject2);
            jSONObject.putOpt("bid_request", dq2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Pair<Integer, JSONObject> dq3 = com.bytedance.sdk.openadsdk.core.ox.iw.dq().dq(jSONObject.toString(), true);
        kxVar.d("encry_time");
        try {
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(i, kxVar);
        } catch (Throwable unused) {
        }
        str = "";
        if (dq3 != null) {
            Object obj = dq3.second;
            str = obj != null ? ((JSONObject) obj).optString("message") : "";
            Object obj2 = dq3.first;
            if (obj2 != null) {
                i2 = ((Integer) obj2).intValue();
                return i2 == 3 ? tn.x("0000000004", str) : tn.x("0000000003", str);
            }
        }
        i2 = 3;
        if (i2 == 3) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(38:0|1|(3:156|157|(1:159)(32:160|4|(2:8|(1:(1:11)(1:12))(1:13))|14|(9:(1:19)|(1:23)|24|(1:26)|27|28|(1:30)|31|(1:33))(2:150|(1:155))|34|35|(3:37|38|39)(1:147)|(2:41|(1:43))(1:145)|44|(1:46)|47|(1:143)|53|(1:55)(1:142)|56|(1:58)|59|(1:61)(1:141)|62|(10:64|(1:68)|(1:72)|73|(1:75)|76|77|(1:79)(1:83)|(1:81)|82)|84|85|(1:140)(1:89)|90|(1:92)|93|(1:139)(1:96)|97|(4:99|(3:101|(1:103)(1:136)|104)(1:137)|105|(1:107))(1:138)|(1:109)(2:112|(6:114|(1:116)(4:(2:132|(1:134))(1:135)|118|(2:(4:122|(2:124|125)(2:127|128)|126|120)|129)|130)|117|118|(0)|130))|110))|3|4|(3:6|8|(0)(0))|14|(0)(0)|34|35|(0)(0)|(0)(0)|44|(0)|47|(1:49)|143|53|(0)(0)|56|(0)|59|(0)(0)|62|(0)|84|85|(1:87)|140|90|(0)|93|(0)|139|97|(0)(0)|(0)(0)|110) */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x011b, code lost:
    
        r17 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x036b A[Catch: all -> 0x03e9, TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03b4 A[Catch: all -> 0x03e9, LOOP:0: B:120:0x03b4->B:126:0x03dd, LOOP_START, PHI: r13
      0x03b4: PHI (r13v2 int) = (r13v1 int), (r13v3 int) binds: [B:119:0x03b2, B:126:0x03dd] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004d A[Catch: all -> 0x03e9, TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e3 A[Catch: all -> 0x011d, TryCatch #2 {all -> 0x011d, blocks: (B:39:0x00d9, B:41:0x00e3, B:43:0x00f1, B:44:0x00f8, B:46:0x00fe, B:47:0x0103, B:49:0x0109, B:51:0x010f, B:143:0x0115), top: B:38:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fe A[Catch: all -> 0x011d, TryCatch #2 {all -> 0x011d, blocks: (B:39:0x00d9, B:41:0x00e3, B:43:0x00f1, B:44:0x00f8, B:46:0x00fe, B:47:0x0103, B:49:0x0109, B:51:0x010f, B:143:0x0115), top: B:38:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0191 A[Catch: all -> 0x03e9, TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c9 A[Catch: all -> 0x03e9, TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02ac A[Catch: all -> 0x03e9, TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0312 A[Catch: all -> 0x03e9, TryCatch #0 {all -> 0x03e9, blocks: (B:157:0x0017, B:160:0x0020, B:6:0x002e, B:8:0x0034, B:11:0x0044, B:12:0x0049, B:13:0x004d, B:17:0x0055, B:19:0x0059, B:21:0x005e, B:23:0x0066, B:24:0x0074, B:26:0x007a, B:27:0x0088, B:30:0x0090, B:31:0x009c, B:33:0x00a2, B:53:0x011d, B:56:0x014b, B:58:0x0191, B:59:0x0196, B:62:0x01a4, B:64:0x01c9, B:66:0x01d3, B:68:0x01d9, B:70:0x01e0, B:72:0x01e6, B:73:0x01ef, B:75:0x01f9, B:76:0x0206, B:79:0x0214, B:81:0x022b, B:82:0x0234, B:83:0x021b, B:84:0x024d, B:87:0x027a, B:89:0x027d, B:90:0x0284, B:92:0x02ac, B:93:0x02b1, B:96:0x02f5, B:97:0x0307, B:99:0x0312, B:101:0x0339, B:104:0x0343, B:105:0x0359, B:107:0x035d, B:109:0x036b, B:114:0x0375, B:116:0x038d, B:118:0x03a2, B:120:0x03b4, B:122:0x03ba, B:124:0x03c8, B:126:0x03dd, B:127:0x03da, B:130:0x03e0, B:132:0x0395, B:137:0x034c, B:153:0x00b5, B:155:0x00b9, B:3:0x0023), top: B:156:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JSONObject dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, boolean z, int i2) {
        String str;
        int i3;
        int i4;
        String mn;
        JSONObject dq2;
        String[] dq3;
        String str2;
        String str3;
        int i5;
        String str4;
        String str5;
        String dq4;
        JSONArray optJSONArray;
        String s;
        String iw;
        JSONObject jSONObject;
        String str6;
        int i6;
        int i7;
        JSONObject jSONObject2 = new JSONObject();
        if (nhVar != null) {
            if (!TextUtils.isEmpty(nhVar.dq)) {
                str = nhVar.dq;
                if (dVar != null && dVar.kx() != null) {
                    i7 = AnonymousClass18.dq[dVar.kx().ordinal()];
                    if (i7 != 1) {
                        jSONObject2.put("req_type", 3);
                    } else if (i7 != 2) {
                        jSONObject2.put("req_type", -1);
                    } else {
                        jSONObject2.put("req_type", 1);
                    }
                }
                if (i != 7) {
                    if (nhVar != null && (i6 = nhVar.f3496d) > 0) {
                        jSONObject2.put("req_type", i6);
                    }
                    if (nhVar != null && !TextUtils.isEmpty(nhVar.ox)) {
                        jSONObject2.put("pre_sessions", nhVar.ox);
                        jSONObject2.put("play_again_count", nhVar.p);
                    }
                    if (com.bytedance.sdk.openadsdk.core.r.bl.dq()) {
                        jSONObject2.put("insert_ad_control", 1);
                        jSONObject2.put("insert_ad_req_num", com.bytedance.sdk.openadsdk.core.r.bl.p());
                    }
                    if (com.bytedance.sdk.openadsdk.core.r.bl.d()) {
                        jSONObject2.put("refresh_ad_control", 1);
                        jSONObject2.put("refresh_ad_req_num", com.bytedance.sdk.openadsdk.core.r.bl.s());
                    }
                    if (com.bytedance.sdk.openadsdk.core.r.bl.ox()) {
                        jSONObject2.put("force_refresh_ad_control", 1);
                        jSONObject2.put("refresh_ad_req_num", com.bytedance.sdk.openadsdk.core.r.bl.s());
                    }
                } else if (i == 8 && nhVar != null && (i3 = nhVar.f3496d) > 0) {
                    jSONObject2.put("req_type", i3);
                }
                s = com.bytedance.sdk.openadsdk.core.ox.p.dq().s();
                iw = com.bytedance.sdk.openadsdk.core.ox.p.dq().iw();
                jSONObject = new JSONObject();
                if (TextUtils.isEmpty(s)) {
                    i4 = 1;
                    try {
                        jSONObject.putOpt("version", s);
                    } catch (Throwable unused) {
                    }
                } else {
                    i4 = 1;
                }
                if (dVar == null) {
                    str6 = com.bytedance.sdk.openadsdk.core.ir.c.dq(dVar.r());
                    if (!TextUtils.isEmpty(str6)) {
                        jSONObject.put("external_ab_vid", str6);
                    }
                } else {
                    str6 = null;
                }
                if (!TextUtils.isEmpty(iw)) {
                    jSONObject.putOpt("param", iw);
                }
                if (TextUtils.isEmpty(s) || !TextUtils.isEmpty(str6) || !TextUtils.isEmpty(iw)) {
                    jSONObject2.put("abtest", jSONObject);
                }
                jSONObject2.put("request_id", str);
                jSONObject2.put("ad_sdk_version", op.ox);
                jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
                jSONObject2.put("is_plugin", op.dq());
                jSONObject2.put("sdk_boost_type", com.bytedance.sdk.openadsdk.core.ox.s.ox());
                jSONObject2.put("is_use_tt_video", !op.p() ? 1 : 2);
                long currentTimeMillis = System.currentTimeMillis();
                com.bytedance.sdk.openadsdk.core.live.d dq5 = com.bytedance.sdk.openadsdk.core.live.d.dq();
                jSONObject2.put("live_sdk_status", dq5.ox());
                jSONObject2.put("live_auth_status", dq5.s());
                jSONObject2.put("live_sdk_config", dq5.ia());
                jSONObject2.put("live_ad_click_count", dq5.iw());
                jSONObject2.put("csj_type", no.ia().n() ? 1 : 0);
                mn = dq5.mn();
                if (!TextUtils.isEmpty(mn)) {
                    jSONObject2.put("live_plugin_version", mn);
                }
                nhVar.dq("liveInfo", System.currentTimeMillis() - currentTimeMillis, i2 != 5);
                jSONObject2.put("source_type", "app");
                jSONObject2.put("logsdk_version", com.bytedance.sdk.openadsdk.core.ox.p.dq().iw(i));
                jSONObject2.put("app", com.bytedance.sdk.openadsdk.core.ir.o.d(i));
                dq2 = com.bytedance.sdk.openadsdk.core.ox.dq.dq(this.dq, i);
                if (dq2 != null) {
                    if (!wp.d().dc() && !com.bytedance.sdk.openadsdk.core.o.o.ox()) {
                        dq2.remove("free_space");
                    }
                    if (dVar != null && dVar.cd() > 0) {
                        dq2.put("orientation", dVar.cd());
                    }
                    if (n.ox() > 0) {
                        dq2.put("screenshot_time", String.valueOf(n.ox()));
                    }
                    if (com.bytedance.sdk.openadsdk.core.ox.p.dq().o(i)) {
                        dq2.put("wifi_signal", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                        dq2.put("cellular_signal", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    } else {
                        dq2.put("wifi_signal", com.bytedance.sdk.openadsdk.core.ir.o.dq(0));
                        dq2.put("cellular_signal", com.bytedance.sdk.openadsdk.core.ir.o.dq(i4));
                    }
                    if (i2 != 4) {
                        dq2.put("sof_chara", com.bytedance.sdk.openadsdk.core.ir.k.p());
                    }
                    com.bytedance.sdk.openadsdk.core.ir.mp.dq(dq2);
                    dq2.put("cpu_arch", com.bytedance.sdk.openadsdk.core.ir.k.no());
                    dq2.put("direction", com.bytedance.sdk.openadsdk.core.kx.dq.dq().iw());
                }
                jSONObject2.put("device", dq2);
                jSONObject2.put("pan_code_serial", "1000");
                jSONObject2.put("user", dq(dVar, i));
                jSONObject2.put("ua", com.bytedance.sdk.openadsdk.core.ir.c.mn());
                jSONObject2.put("channel", op.iw);
                dq3 = com.bytedance.sdk.openadsdk.core.ox.dq.dq(i);
                if (dq3 != null || dq3.length < 2) {
                    str2 = "";
                    str3 = str2;
                } else {
                    str3 = dq3[0];
                    str2 = dq3[i4];
                }
                jSONObject2.put("ip", str3);
                jSONObject2.put("client_ipv6", str2);
                jSONObject2.put("client_ipv4", com.bytedance.sdk.openadsdk.core.ox.dq.dq(str3, i));
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(dq(dVar, i, nhVar));
                jSONObject2.put("adslots", jSONArray);
                i5 = nhVar.q;
                if (i5 > 0) {
                    jSONObject2.put("load_ad_api", i5);
                }
                com.bytedance.sdk.openadsdk.core.ox.dq.dq(jSONObject2, i);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("start2req_time", SystemClock.elapsedRealtime() - le.s);
                jSONObject3.put("start_type", !le.f3144d.get() ? 1 : 0);
                jSONObject3.put("show_count", com.bytedance.sdk.openadsdk.core.ig.ox.dq);
                jSONObject2.put("ads_parameter", jSONObject3);
                dq(jSONObject2, nhVar);
                long currentTimeMillis2 = System.currentTimeMillis() / 1000;
                jSONObject2.put("ts", currentTimeMillis2);
                jSONObject2.put("req_sign", com.bytedance.sdk.component.utils.s.d((dVar.mn() != null || str == null) ? "" : String.valueOf(currentTimeMillis2).concat(dVar.mn()).concat(str)));
                if (i2 != 4) {
                    long currentTimeMillis3 = System.currentTimeMillis();
                    jSONObject2.putOpt("has_pre_fetch", Boolean.valueOf(wp.d().dq(dVar.mn())));
                    if (wp.d().d(dVar.mn())) {
                        dq(7 == dVar.k(), jSONObject2, dVar.mn());
                        str4 = null;
                    } else {
                        str4 = null;
                        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(dVar.mn(), (String) null, (String) null, true);
                    }
                    kx kxVar = nhVar.jy;
                    if (kxVar != null) {
                        kxVar.dq("precache_time", System.currentTimeMillis() - currentTimeMillis3);
                    }
                } else {
                    str4 = null;
                }
                if (!z) {
                    jSONObject2.put("ad_sdk_version", op.ox);
                } else if (i2 == 3) {
                    JSONObject jSONObject4 = new JSONObject(dVar.wp());
                    int optInt = jSONObject4.optInt("cypher");
                    String optString = jSONObject4.optString("message");
                    if (optInt == 3) {
                        dq4 = com.bytedance.sdk.component.utils.dq.ox(optString);
                    } else {
                        if (optInt == 4) {
                            dq4 = com.bytedance.sdk.component.panglearmor.kk.dq().dq(optString);
                            if (dq4 == null) {
                                str5 = "";
                            }
                        } else {
                            str5 = str4;
                        }
                        optJSONArray = new JSONObject(str5).optJSONArray("creatives");
                        StringBuilder sb = new StringBuilder();
                        if (optJSONArray != null) {
                            for (int i8 = 0; i8 < optJSONArray.length(); i8++) {
                                String optString2 = ((JSONObject) optJSONArray.get(i8)).optString("material_key");
                                if (i8 != 0) {
                                    sb.append("," + optString2);
                                } else {
                                    sb.append(optString2);
                                }
                            }
                        }
                        jSONObject2.put("material_keys", sb.toString());
                    }
                    str5 = dq4;
                    optJSONArray = new JSONObject(str5).optJSONArray("creatives");
                    StringBuilder sb2 = new StringBuilder();
                    if (optJSONArray != null) {
                    }
                    jSONObject2.put("material_keys", sb2.toString());
                }
                return jSONObject2;
            }
        }
        str = com.bytedance.sdk.openadsdk.core.ir.c.ia();
        if (dVar != null) {
            i7 = AnonymousClass18.dq[dVar.kx().ordinal()];
            if (i7 != 1) {
            }
        }
        if (i != 7) {
        }
        s = com.bytedance.sdk.openadsdk.core.ox.p.dq().s();
        iw = com.bytedance.sdk.openadsdk.core.ox.p.dq().iw();
        jSONObject = new JSONObject();
        if (TextUtils.isEmpty(s)) {
        }
        if (dVar == null) {
        }
        if (!TextUtils.isEmpty(iw)) {
        }
        if (TextUtils.isEmpty(s)) {
        }
        jSONObject2.put("abtest", jSONObject);
        jSONObject2.put("request_id", str);
        jSONObject2.put("ad_sdk_version", op.ox);
        jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
        jSONObject2.put("is_plugin", op.dq());
        jSONObject2.put("sdk_boost_type", com.bytedance.sdk.openadsdk.core.ox.s.ox());
        jSONObject2.put("is_use_tt_video", !op.p() ? 1 : 2);
        long currentTimeMillis4 = System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.core.live.d dq52 = com.bytedance.sdk.openadsdk.core.live.d.dq();
        jSONObject2.put("live_sdk_status", dq52.ox());
        jSONObject2.put("live_auth_status", dq52.s());
        jSONObject2.put("live_sdk_config", dq52.ia());
        jSONObject2.put("live_ad_click_count", dq52.iw());
        jSONObject2.put("csj_type", no.ia().n() ? 1 : 0);
        mn = dq52.mn();
        if (!TextUtils.isEmpty(mn)) {
        }
        nhVar.dq("liveInfo", System.currentTimeMillis() - currentTimeMillis4, i2 != 5);
        jSONObject2.put("source_type", "app");
        jSONObject2.put("logsdk_version", com.bytedance.sdk.openadsdk.core.ox.p.dq().iw(i));
        jSONObject2.put("app", com.bytedance.sdk.openadsdk.core.ir.o.d(i));
        dq2 = com.bytedance.sdk.openadsdk.core.ox.dq.dq(this.dq, i);
        if (dq2 != null) {
        }
        jSONObject2.put("device", dq2);
        jSONObject2.put("pan_code_serial", "1000");
        jSONObject2.put("user", dq(dVar, i));
        jSONObject2.put("ua", com.bytedance.sdk.openadsdk.core.ir.c.mn());
        jSONObject2.put("channel", op.iw);
        dq3 = com.bytedance.sdk.openadsdk.core.ox.dq.dq(i);
        if (dq3 != null) {
        }
        str2 = "";
        str3 = str2;
        jSONObject2.put("ip", str3);
        jSONObject2.put("client_ipv6", str2);
        jSONObject2.put("client_ipv4", com.bytedance.sdk.openadsdk.core.ox.dq.dq(str3, i));
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(dq(dVar, i, nhVar));
        jSONObject2.put("adslots", jSONArray2);
        i5 = nhVar.q;
        if (i5 > 0) {
        }
        com.bytedance.sdk.openadsdk.core.ox.dq.dq(jSONObject2, i);
        JSONObject jSONObject32 = new JSONObject();
        jSONObject32.put("start2req_time", SystemClock.elapsedRealtime() - le.s);
        jSONObject32.put("start_type", !le.f3144d.get() ? 1 : 0);
        jSONObject32.put("show_count", com.bytedance.sdk.openadsdk.core.ig.ox.dq);
        jSONObject2.put("ads_parameter", jSONObject32);
        dq(jSONObject2, nhVar);
        long currentTimeMillis22 = System.currentTimeMillis() / 1000;
        jSONObject2.put("ts", currentTimeMillis22);
        jSONObject2.put("req_sign", com.bytedance.sdk.component.utils.s.d((dVar.mn() != null || str == null) ? "" : String.valueOf(currentTimeMillis22).concat(dVar.mn()).concat(str)));
        if (i2 != 4) {
        }
        if (!z) {
        }
        return jSONObject2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(final Bridge bridge) {
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        d2.dq("https://" + no.ia().xz() + "/ad_union_qa/sdk/query_config_list");
        d2.d("x-pglcypher", "4");
        d2.d("x-ad-sdk-version", op.ox);
        d2.d("x-plugin-version", "6.6.0.7");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PluginConstants.KEY_APP_ID, no.ia().mp());
            jSONObject.put("os", "android");
            jSONObject.put("ad_sdk_version", op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
        } catch (Throwable unused) {
        }
        d2.dq("application/octet-stream", com.bytedance.sdk.component.panglearmor.kk.dq().dq(com.bytedance.sdk.openadsdk.core.ir.ig.dq(jSONObject.toString().getBytes(StandardCharsets.UTF_8))));
        d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.14
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                Bridge bridge2 = bridge;
                if (bridge2 == null || dVar == null) {
                    ji.this.dq(bridge2, -1, "response is null");
                    return;
                }
                String d3 = com.bytedance.sdk.openadsdk.core.ir.ig.d((TextUtils.equals(dVar.ox().get("content-type"), "application/octet-stream") || TextUtils.equals(dVar.ox().get("x-pglcypher"), "4")) ? com.bytedance.sdk.component.panglearmor.kk.dq().d(dVar.o()) : dVar.p().getBytes());
                if (TextUtils.isEmpty(d3)) {
                    ji.this.dq(bridge, -3, "response unGzipStr is null");
                    return;
                }
                try {
                    JSONObject jSONObject2 = new JSONObject(d3);
                    int optInt = jSONObject2.optInt(PluginConstants.KEY_ERROR_CODE, -1);
                    String optString = jSONObject2.optString("message");
                    if (optInt != 0) {
                        ji.this.dq(bridge, optInt, optString);
                        return;
                    }
                    String optString2 = jSONObject2.optString("data");
                    if (TextUtils.isEmpty(optString2)) {
                        ji.this.dq(bridge, optInt, "response data is empty");
                    } else {
                        ji.this.dq(bridge, optString2);
                    }
                } catch (JSONException unused2) {
                    ji.this.dq(bridge, -1, "response create json error");
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                ji.this.dq(bridge, -2, "response onFailure");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, List<com.bytedance.sdk.openadsdk.f.d.d.iw> list) {
        JSONObject d2;
        if (com.bytedance.sdk.openadsdk.core.bl.iw.dq() && (d2 = d(dVar, list)) != null) {
            com.bytedance.sdk.openadsdk.core.ir.wn wnVar = new com.bytedance.sdk.openadsdk.core.ir.wn(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
            wnVar.dq(com.bytedance.sdk.openadsdk.core.ir.c.mn("/api/ad/union/dislike_event/"));
            wnVar.ox(d2, "dislike");
            wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.25
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar2) {
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(final io ioVar, final String str, final String str2, final h.ox oxVar, final int i, final long j) {
        if (oxVar == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("get_wlink") { // from class: com.bytedance.sdk.openadsdk.core.ji.9
                @Override // java.lang.Runnable
                public void run() {
                    ji.this.d(ioVar, str, str2, oxVar, i, j);
                }
            });
        } else {
            d(ioVar, str, str2, oxVar, i, j);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(com.bytedance.sdk.openadsdk.core.r.j jVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("user_id", "");
            jSONObject3.put("device_id", i.ox());
            jSONObject3.put("device_id_inner", mn.dq().d());
            jSONObject3.put("phone_number", jVar != null ? jVar.ux() : "");
            jSONObject3.put("third_idfa", com.bytedance.sdk.openadsdk.core.ir.le.dq(false));
            jSONObject3.put("device_model", i.le());
            jSONObject3.put("device_username", "");
            jSONObject3.put("user_agent", com.bytedance.sdk.openadsdk.core.ir.c.mn());
            jSONObject2.put("validate_info", jSONObject3);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("app_base_info", jSONObject.optString("app_base_info"));
            jSONObject4.put("app_custom_info", jSONObject.optString("app_custom_info"));
            jSONObject2.put("app_info", jSONObject4);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            JSONObject jSONObject5 = new JSONObject();
            if (jVar != null) {
                jSONObject5.put(MediationConstant.EXTRA_ADID, Long.parseLong(jVar.fa()));
                jSONObject5.put("device_id", 0);
            }
            jSONObject2.put("ad_info", jSONObject5);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        d2.dq("https://playable.oceanengine.com/web-api/v1/coldstart");
        d2.dq(jSONObject2);
        d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.8
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar, final int i, h.d dVar2) {
        final com.bytedance.sdk.openadsdk.core.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.dq.dq(dVar2);
        dqVar.dq(i);
        if (!(i == 3 && com.bytedance.sdk.openadsdk.core.component.splash.mn.dq(dVar)) && Looper.myLooper() == Looper.getMainLooper()) {
            com.bytedance.sdk.component.o.mn.s(new com.bytedance.sdk.component.o.kk("get_ad") { // from class: com.bytedance.sdk.openadsdk.core.ji.1
                @Override // java.lang.Runnable
                public void run() {
                    ji.this.p(dVar, nhVar, i, dqVar);
                }
            });
        } else {
            p(dVar, nhVar, i, dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(String str) {
        p(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(String str, String str2, final h.dq dqVar) {
        if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            if (dqVar != null) {
                dqVar.dq(false, -1L, 0L);
                return;
            }
            return;
        }
        if (str == null || str2 == null || dqVar == null) {
            return;
        }
        JSONObject d2 = d(str, str2);
        com.bytedance.sdk.openadsdk.core.ir.wn wnVar = new com.bytedance.sdk.openadsdk.core.ir.wn(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
        String mn = com.bytedance.sdk.openadsdk.core.ir.c.mn("/api/ad/union/sdk/material/check/");
        try {
            if (TextUtils.isEmpty(new URL(mn).getQuery())) {
                mn = mn + "?abort_aes=1";
            } else {
                mn = mn + "&abort_aes=1";
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        wnVar.dq(mn);
        wnVar.ox(d2, "check_ad");
        wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.6
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                long j;
                long j2;
                boolean z;
                if (dVar != null) {
                    if (!dVar.ia()) {
                        dqVar.dq(false, dVar.dq() != 0 ? dVar.dq() : -1L, dVar.kk());
                        return;
                    }
                    long j3 = 0;
                    if (dVar.p() != null) {
                        try {
                            d dq2 = d.dq(new JSONObject(dVar.p()));
                            r1 = dq2.dq;
                            j3 = dVar.kk();
                            j = r1;
                            j2 = j3;
                            z = dq2.f3108d;
                        } catch (JSONException e3) {
                            e3.printStackTrace();
                        }
                        dqVar.dq(z, j, j2);
                    }
                    j = r1;
                    j2 = j3;
                    z = false;
                    dqVar.dq(z, j, j2);
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                dqVar.dq(false, 0L, 0L);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(String str, String str2, String str3, String str4, final Bridge bridge) {
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        d2.dq("https://" + no.ia().xz() + "/ad_union_qa/sdk/get_ad_config");
        d2.d("x-pglcypher", "4");
        d2.d("x-ad-sdk-version", op.ox);
        d2.d("x-plugin-version", "6.6.0.7");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PluginConstants.KEY_APP_ID, no.ia().mp());
            jSONObject.put("adtype", str2);
            jSONObject.put("rit", str);
            jSONObject.put("image_mode", str3);
            jSONObject.put("preview_extra", str4);
            jSONObject.put("os", "android");
            jSONObject.put("ad_sdk_version", op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            d2.dq("application/octet-stream", com.bytedance.sdk.component.panglearmor.kk.dq().dq(com.bytedance.sdk.openadsdk.core.ir.ig.dq(jSONObject.toString().getBytes(StandardCharsets.UTF_8))));
            d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.15
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    String d3;
                    String str5;
                    Bridge bridge2 = bridge;
                    int i = -1;
                    if (bridge2 == null || dVar == null) {
                        ji.this.dq(bridge2, -1, "response is null");
                        return;
                    }
                    String str6 = dVar.ox().get("content-type");
                    String str7 = dVar.ox().get("x-pglcypher");
                    String str8 = "";
                    if (TextUtils.equals(str6, "application/octet-stream") || TextUtils.equals(str7, "4")) {
                        d3 = com.bytedance.sdk.openadsdk.core.ir.ig.d(com.bytedance.sdk.component.panglearmor.kk.dq().d(dVar.o()));
                        if (TextUtils.isEmpty(d3)) {
                            str8 = "data is null";
                        } else {
                            i = 0;
                        }
                    } else {
                        try {
                            JSONObject jSONObject2 = new JSONObject(dVar.p());
                            i = jSONObject2.optInt(PluginConstants.KEY_ERROR_CODE);
                            str5 = jSONObject2.optString("message");
                            try {
                                str8 = jSONObject2.optString("data");
                            } catch (JSONException unused) {
                            }
                        } catch (JSONException unused2) {
                            str5 = "";
                        }
                        d3 = str8;
                        str8 = str5;
                    }
                    if (i == 0) {
                        ji.this.dq(bridge, d3);
                    } else {
                        ji.this.dq(bridge, i, str8);
                    }
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    ji.this.dq(bridge, -2, "response onFailure");
                }
            });
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(final JSONObject jSONObject, final h.ox<com.bytedance.sdk.component.kk.d> oxVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.bytedance.sdk.component.o.mn.dq().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ji.13
                @Override // java.lang.Runnable
                public void run() {
                    ji.this.d(jSONObject, (h.ox<com.bytedance.sdk.component.kk.d>) oxVar);
                }
            });
        } else {
            d(jSONObject, oxVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(JSONObject jSONObject, final h.p pVar) {
        if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            if (pVar != null) {
                pVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            }
        } else {
            if (jSONObject == null || pVar == null) {
                return;
            }
            JSONObject dq2 = com.bytedance.sdk.component.utils.dq.dq(jSONObject);
            com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
            d2.dq(com.bytedance.sdk.openadsdk.core.ir.c.mn("/api/ad/union/sdk/reward_video/live_room/reward"));
            d2.ox(dq2.toString());
            d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.4
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar2, com.bytedance.sdk.component.kk.d dVar) {
                    if (dVar != null) {
                        if (!dVar.ia() || TextUtils.isEmpty(dVar.p())) {
                            String dq3 = o.dq(-2);
                            int dq4 = dVar.dq();
                            if (!dVar.ia() && !TextUtils.isEmpty(dVar.d())) {
                                dq3 = dVar.d();
                            }
                            pVar.dq(dq4, dq3);
                            return;
                        }
                        try {
                            JSONObject jSONObject2 = new JSONObject(dVar.p());
                            String ox2 = jSONObject2.optInt("cypher", -1) == 3 ? com.bytedance.sdk.component.utils.dq.ox(jSONObject2.optString("message")) : null;
                            if (!TextUtils.isEmpty(ox2)) {
                                try {
                                    jSONObject2 = new JSONObject(ox2);
                                } catch (Throwable unused) {
                                }
                            }
                            ox dq5 = ox.dq(jSONObject2);
                            int i = dq5.dq;
                            if (i != 20000) {
                                pVar.dq(i, o.dq(i));
                                return;
                            } else if (dq5.ox == null) {
                                ji.this.dq(pVar);
                                return;
                            } else {
                                pVar.dq(dq5);
                                return;
                            }
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                    ji.this.dq(pVar);
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar2, IOException iOException) {
                    pVar.dq(-2, iOException.getMessage());
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void dq(JSONObject jSONObject, final h.s sVar) {
        if (!com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            if (sVar != null) {
                sVar.dq(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            }
        } else {
            if (jSONObject == null || sVar == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.ir.wn wnVar = new com.bytedance.sdk.openadsdk.core.ir.wn(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
            wnVar.dq(com.bytedance.sdk.openadsdk.core.ir.c.mn("/api/ad/union/sdk/reward_video/reward/"));
            wnVar.ox(jSONObject, "verify");
            wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ji.3
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    if (dVar != null) {
                        if (!dVar.ia()) {
                            String dq2 = o.dq(-2);
                            int dq3 = dVar.dq();
                            if (!dVar.ia() && !TextUtils.isEmpty(dVar.d())) {
                                dq2 = dVar.d();
                            }
                            sVar.dq(dq3, dq2);
                            return;
                        }
                        try {
                            Object obj = com.bytedance.sdk.openadsdk.core.ox.iw.dq(dVar, "verify", false).second;
                            p dq4 = p.dq(obj != null ? (JSONObject) obj : new JSONObject(dVar.p()));
                            int i = dq4.dq;
                            if (i != 20000) {
                                sVar.dq(i, o.dq(i));
                                return;
                            } else if (dq4.ox == null) {
                                ji.this.dq(sVar);
                                return;
                            } else {
                                sVar.dq(dq4);
                                return;
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    ji.this.dq(sVar);
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    sVar.dq(-2, iOException.getMessage());
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h
    public void ox(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar, final int i, h.d dVar2) {
        final com.bytedance.sdk.openadsdk.core.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.dq.dq(dVar2);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("bid_g_m") { // from class: com.bytedance.sdk.openadsdk.core.ji.23
                @Override // java.lang.Runnable
                public void run() {
                    ji.this.dq(dVar, nhVar, i, dqVar, "/api/ad/union/server_bidding/get_materials/", 3);
                }
            });
        } else {
            dq(dVar, nhVar, i, dqVar, "/api/ad/union/server_bidding/get_materials/", 3);
        }
    }

    public void p(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, h.d dVar2) {
        d(dVar, nhVar, i, dVar2, "/api/ad/union/sdk/get_ads/", 5);
    }

    public void s(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar, final int i, h.d dVar2) {
        final com.bytedance.sdk.openadsdk.core.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.dq.dq(dVar2);
        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("bid_p_f") { // from class: com.bytedance.sdk.openadsdk.core.ji.22
            @Override // java.lang.Runnable
            public void run() {
                ji.this.dq(dVar, nhVar, i, dqVar, "/api/ad/union/server_bidding/pre_fetch/", 1);
            }
        });
    }
}
