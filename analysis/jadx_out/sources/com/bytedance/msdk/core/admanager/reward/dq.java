package com.bytedance.msdk.core.admanager.reward;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.msdk.d.p;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.jy;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private int f826d;
    private int dq;

    /* renamed from: f, reason: collision with root package name */
    private d f827f;
    private com.bytedance.msdk.api.dq.d ig;
    private com.bytedance.msdk.api.ox.dq iw;
    private String jy;
    private s mp;
    private long q;
    private boolean ox = false;
    private boolean p = false;
    private long s = -1;
    private boolean mn = false;
    private boolean ia = false;
    private boolean kk = true;
    private int o = -1;
    private String no = "";

    /* renamed from: com.bytedance.msdk.core.admanager.reward.dq$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dq.this.ox) {
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，已经destroy, 直接return");
                return;
            }
            dq.this.mn = true;
            if (dq.this.iw != null) {
                if (dq.this.f827f == null || dq.this.ia) {
                    return;
                }
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，已经有结果，直接给开发者回调");
                dq.this.ia = true;
                dq.this.f827f.dq(dq.this.iw);
                return;
            }
            if (dq.this.s == -1) {
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，先进来发起请求");
                dq.this.s = SystemClock.elapsedRealtime();
                if (dq.this.kk) {
                    dq.this.mn();
                } else {
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来准备请求，但是不能重试");
                }
            } else if (SystemClock.elapsedRealtime() - dq.this.s > 2000) {
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，后进来但大于2s，发起请求");
                if (dq.this.kk) {
                    dq.this.mn();
                } else {
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来准备请求，但是不能重试");
                }
            }
            iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (dq.this.ox) {
                        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调兜底进来，已经destroy了, 直接return");
                        return;
                    }
                    if (dq.this.f827f == null || dq.this.ia) {
                        return;
                    }
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调兜底进来，给开发者verify回调");
                    dq.this.ia = true;
                    com.bytedance.msdk.api.ox.dq dqVar = new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.admanager.reward.dq.3.1.1
                        @Override // com.bytedance.msdk.api.ox.dq
                        public float d() {
                            return dq.this.ig != null ? dq.this.ig.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public boolean dq() {
                            return false;
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public String ox() {
                            return dq.this.ig != null ? dq.this.ig.bl() : "";
                        }

                        @Override // com.bytedance.msdk.api.ox.dq
                        public Map<String, Object> p() {
                            HashMap hashMap = new HashMap();
                            hashMap.put(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
                            hashMap.put(MediationConstant.KEY_TRANS_ID, dq.this.jy);
                            hashMap.put(MediationConstant.KEY_REASON, 0);
                            hashMap.put("gromoreExtra", (dq.this.ig == null || dq.this.ig.wn() == null) ? "" : dq.this.ig.wn().get("gromoreExtra"));
                            hashMap.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(dq.this.o));
                            hashMap.put(MediationConstant.KEY_ERROR_MSG, dq.this.no);
                            com.bytedance.msdk.api.ox dq = jy.dq(dq.this.ig, dq.this.mp, true);
                            hashMap.put(MediationConstant.KEY_ADN_NAME, dq != null ? dq.ig() : "");
                            hashMap.put(MediationConstant.KEY_ECPM, dq != null ? dq.mp() : "");
                            return hashMap;
                        }
                    };
                    d dVar = dq.this.f827f;
                    if (dq.this.iw != null) {
                        dqVar = dq.this.iw;
                    }
                    dVar.dq(dqVar);
                }
            }, 3000L);
        }
    }

    public interface d {
        void dq(com.bytedance.msdk.api.ox.dq dqVar);
    }

    /* renamed from: com.bytedance.msdk.core.admanager.reward.dq$dq, reason: collision with other inner class name */
    public class RunnableC0045dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final int f832d;

        public RunnableC0045dq(int i) {
            this.f832d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dq.this.iw != null || dq.this.ia || !dq.this.kk || dq.this.ox || dq.this.p) {
                return;
            }
            ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide reward verify 进行第" + this.f832d + "次重试请求");
            dq.this.mn();
        }
    }

    public dq(String str) {
        com.bytedance.msdk.core.no.d dq;
        com.bytedance.msdk.core.f.ox d2 = com.bytedance.msdk.core.dq.d();
        if (d2 != null && (dq = d2.dq(str, 7, 101)) != null) {
            this.dq = dq.vf();
            this.f826d = dq.ob();
        }
        if (this.dq < 0) {
            this.dq = 15000;
        }
    }

    private String dq(boolean z) {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, p.d());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, p.p());
            jSONObject.put("user_agent", p.dq);
            jSONObject.put("network", e.s());
            jSONObject.put("play_start_ts", this.q);
            jSONObject.put("play_end_ts", System.currentTimeMillis());
            com.bytedance.msdk.api.dq.d dVar = this.ig;
            jSONObject.put("user_id", dVar != null ? dVar.ir() : "");
            if (TextUtils.isEmpty(this.jy)) {
                str = UUID.randomUUID().toString();
                this.jy = str;
            } else {
                str = this.jy;
            }
            jSONObject.put("trans_id", str);
            com.bytedance.msdk.api.dq.d dVar2 = this.ig;
            jSONObject.put("link_id", dVar2 != null ? dVar2.dq() : "");
            com.bytedance.msdk.api.dq.d dVar3 = this.ig;
            jSONObject.put(MediationConstant.KEY_GM_PRIME_RIT, dVar3 != null ? dVar3.k() : "");
            s sVar = this.mp;
            jSONObject.put("adn_rit", sVar != null ? sVar.b() : "");
            com.bytedance.msdk.api.dq.d dVar4 = this.ig;
            jSONObject.put(MediationConstant.REWARD_NAME, dVar4 != null ? dVar4.bl() : "");
            com.bytedance.msdk.api.dq.d dVar5 = this.ig;
            jSONObject.put(MediationConstant.REWARD_AMOUNT, dVar5 != null ? dVar5.n() : 0);
            com.bytedance.msdk.api.dq.d dVar6 = this.ig;
            jSONObject.put("media_extra", (dVar6 == null || dVar6.wn() == null) ? "" : this.ig.wn().get("gromoreExtra"));
            com.bytedance.msdk.api.dq.d dVar7 = this.ig;
            if (dVar7 != null && dVar7.wp() != null) {
                jSONObject.put("scenario_id", this.ig.wp());
            }
            com.bytedance.msdk.api.ox dq = jy.dq(this.ig, this.mp, true);
            jSONObject.put(MediationConstant.EXTRA_ADN_NAME, dq != null ? dq.ig() : "");
            jSONObject.put(MediationConstant.KEY_ECPM, dq != null ? dq.mp() : "");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return z ? jSONObject.toString() : c.dq(jSONObject).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str, boolean z) {
        bl.dq(z ? "v4Enc_reward" : "v2Enc_reward", false, 0L, "code = " + i + "，msg = " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.kk.d dVar, boolean z, long j) {
        if (this.ox) {
            return;
        }
        if (dVar == null) {
            ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify netResponse is null");
            dq(-1, "response is null", z);
            return;
        }
        int dq = dVar.dq();
        if (c.dq(dVar)) {
            String dq2 = c.dq(dVar.o());
            if (TextUtils.isEmpty(dq2)) {
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify data v4 is null");
                dq(dq, "data is empty", z);
                return;
            }
            try {
                dq(new JSONObject(dq2), z, j);
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                dq(-1, th.getMessage(), z);
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(dVar.p());
            int optInt = jSONObject.optInt("cypher", -1);
            String optString = jSONObject.optString("message");
            this.o = jSONObject.optInt(PluginConstants.KEY_ERROR_CODE);
            this.no = jSONObject.optString("desc");
            int i = this.o;
            if (i == 50001) {
                this.kk = true;
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify code: 50001，请求媒体服务端失败，需要重试");
                dq(this.o, this.no, z);
                return;
            }
            if (i != 0 && i != 20000) {
                this.kk = false;
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify code: " + this.o + ", msg: " + this.no + "，不能再重试");
                dq(this.o, this.no, z);
                return;
            }
            if (optInt < 0 || TextUtils.isEmpty(optString)) {
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify cypher error or message is null");
                dq(dq, "message is null", z);
                return;
            }
            JSONObject jSONObject2 = null;
            if (optInt == 2) {
                String dq3 = c.dq(optString);
                if (!TextUtils.isEmpty(dq3)) {
                    jSONObject2 = new JSONObject(dq3);
                }
            } else if (optInt == 1) {
                String d2 = com.bytedance.msdk.ia.dq.d(optString, com.bytedance.msdk.ia.d.dq());
                if (!TextUtils.isEmpty(d2)) {
                    jSONObject2 = new JSONObject(d2);
                }
            } else if (optInt == 0) {
                jSONObject2 = new JSONObject(optString);
            }
            dq(jSONObject2, z, j);
        } catch (Throwable th2) {
            dq(-1, th2.getMessage(), z);
        }
    }

    private void dq(JSONObject jSONObject, boolean z, long j) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (jSONObject == null) {
            ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify data is null");
            dq(-1, "data is null", z);
            return;
        }
        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- data: " + jSONObject.toString());
        final boolean optBoolean = jSONObject.optBoolean("is_verify");
        final int optInt = jSONObject.optInt(MediationConstant.KEY_REASON);
        final String optString = jSONObject.optString(MediationConstant.REWARD_NAME);
        final int optInt2 = jSONObject.optInt(MediationConstant.REWARD_AMOUNT);
        this.iw = new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.admanager.reward.dq.5
            @Override // com.bytedance.msdk.api.ox.dq
            public float d() {
                return optInt2;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public boolean dq() {
                return optBoolean;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public String ox() {
                return optString;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public Map<String, Object> p() {
                HashMap hashMap = new HashMap();
                hashMap.put(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
                hashMap.put(MediationConstant.KEY_TRANS_ID, dq.this.jy);
                hashMap.put(MediationConstant.KEY_REASON, Integer.valueOf(optInt));
                hashMap.put("gromoreExtra", (dq.this.ig == null || dq.this.ig.wn() == null) ? "" : dq.this.ig.wn().get("gromoreExtra"));
                hashMap.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(dq.this.o));
                hashMap.put(MediationConstant.KEY_ERROR_MSG, dq.this.no);
                com.bytedance.msdk.api.ox dq = jy.dq(dq.this.ig, dq.this.mp, true);
                hashMap.put(MediationConstant.KEY_ADN_NAME, dq != null ? dq.ig() : "");
                hashMap.put(MediationConstant.KEY_ECPM, dq != null ? dq.mp() : "");
                return hashMap;
            }
        };
        if (this.mn && this.f827f != null && !this.ia) {
            ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- verify接口请求回来，给开发者verify回调");
            this.ia = true;
            this.f827f.dq(this.iw);
        }
        dq(z, currentTimeMillis);
    }

    private void dq(boolean z, long j) {
        bl.dq(z ? "v4Enc_reward" : "v2Enc_reward", true, j, "");
    }

    private void iw() {
        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- showListen回调进来，开始计时");
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.6
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.s != -1 || dq.this.ox || dq.this.p) {
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- showListen计时到时间，已经destroy，或者skip，或者比complete/verify回调还晚，直接return");
                    return;
                }
                ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- showListen计时到时间，发起请求");
                dq.this.mn();
                iw.dq(dq.this.new RunnableC0045dq(1), 3000L);
                iw.dq(dq.this.new RunnableC0045dq(2), 6000L);
                iw.dq(dq.this.new RunnableC0045dq(3), 9000L);
            }
        }, this.dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn() {
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.msdk.p.d.dq().d().d();
        d2.dq(com.bytedance.msdk.core.ox.p());
        final long currentTimeMillis = System.currentTimeMillis();
        String ia = com.bytedance.msdk.core.d.no().ia();
        if (!TextUtils.isEmpty(ia)) {
            d2.d("X-Tt-Env", ia);
            d2.d("x-use-ppe", "1");
        }
        d2.d("User-Agent", p.dq);
        final boolean ox = com.bytedance.msdk.core.dq.d().ox();
        if (ox) {
            d2.d("x-pglcypher", "4");
            d2.dq("application/octet-stream", c.d(dq(true)));
        } else {
            d2.ox(dq(false));
        }
        d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.msdk.core.admanager.reward.dq.7
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, final com.bytedance.sdk.component.kk.d dVar) {
                iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        dq.this.dq(dVar, ox, currentTimeMillis);
                    }
                });
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, final IOException iOException) {
                iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify http error: " + iOException.toString());
                        dq.this.dq(-2, "request error" + iOException.getMessage(), ox);
                    }
                });
            }
        });
    }

    public void d() {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.1
            @Override // java.lang.Runnable
            public void run() {
                dq.this.p = true;
            }
        });
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, s sVar) {
        this.q = System.currentTimeMillis();
        this.ig = dVar;
        this.mp = sVar;
        iw();
    }

    public void dq(d dVar) {
        this.f827f = dVar;
    }

    public boolean dq() {
        boolean z = this.f826d == 1;
        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- 判断是否开启了M服务端激励验证： ".concat(String.valueOf(z)));
        return z;
    }

    public void ox() {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.2
            @Override // java.lang.Runnable
            public void run() {
                dq.this.ox = true;
            }
        });
    }

    public void p() {
        iw.dq(new AnonymousClass3());
    }

    public void s() {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.dq.4
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.ox) {
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，已经destroy, 直接return");
                    return;
                }
                if (dq.this.iw != null || dq.this.ia) {
                    StringBuilder sb = new StringBuilder("--==-- complete回调进来，已经有响应(");
                    sb.append(dq.this.iw != null);
                    sb.append(")或已经给出开发者回调(");
                    sb.append(dq.this.ia);
                    sb.append("), 直接return");
                    ox.dq("GROMORE_SS_REWARD_VERIFY", sb.toString());
                    return;
                }
                if (dq.this.s == -1) {
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，先进来发起请求");
                    dq.this.s = SystemClock.elapsedRealtime();
                    if (dq.this.kk) {
                        dq.this.mn();
                        return;
                    } else {
                        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来准备请求，但是不能重试");
                        return;
                    }
                }
                if (SystemClock.elapsedRealtime() - dq.this.s > 2000) {
                    ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，后进来但大于2s，发起请求");
                    if (dq.this.kk) {
                        dq.this.mn();
                    } else {
                        ox.dq("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来准备请求，但是不能重试");
                    }
                }
            }
        });
    }
}
