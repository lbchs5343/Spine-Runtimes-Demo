package com.bytedance.msdk.core.admanager.reward.rewardagain;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.msdk.core.admanager.o;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.s.iw;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.adhost.R;
import g.abn;
import g.awf;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.msdk.api.dq.d f835d;
    private final SoftReference<Context> dq;
    private TTAdConstant.RitScenes iw;
    private String mn;
    private com.bytedance.msdk.api.p.dq.ia.dq ox;
    private com.bytedance.msdk.api.p.dq.ia.dq p;
    private Activity s;
    private static final Map<String, d> o = new ConcurrentHashMap();
    private static final Map<String, com.bytedance.msdk.core.admanager.reward.rewardagain.dq> no = new ConcurrentHashMap();
    private static dq ig = new dq();
    private volatile boolean ia = false;
    private volatile boolean kk = false;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public Runnable f841d;
        public d dq;
        public Runnable ox;
    }

    public ox(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ia.dq dqVar, com.bytedance.msdk.api.p.dq.ia.dq dqVar2) {
        this.dq = new SoftReference<>(context);
        this.f835d = dVar;
        if (dqVar != null) {
            this.ox = dqVar;
        }
        if (dqVar2 != null) {
            this.p = dqVar2;
        }
    }

    private void d(final com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar, final String str, final s sVar) {
        dq dqVar2 = new dq();
        ig = dqVar2;
        dqVar2.dq = o.get(dqVar.p());
        ig.f841d = new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.3
            @Override // java.lang.Runnable
            public void run() {
                ox.this.ox(dqVar, str, sVar);
                ox.mn();
            }
        };
        ig.ox = new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.4
            @Override // java.lang.Runnable
            public void run() {
                ox.this.no(str);
                ox.mn();
            }
        };
        Intent intent = new Intent(com.bytedance.msdk.core.dq.getContext(), (Class<?>) GMRewardAgainDialogActivity.class);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        com.bytedance.msdk.core.dq.getContext().startActivity(intent);
    }

    public static void d(String str) {
        bl dq2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext());
        String d2 = dq2.d("ra_show_count");
        if (TextUtils.isEmpty(d2)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, 1);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(s(), jSONObject);
                dq2.dq("ra_show_count", jSONObject2.toString());
                return;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return;
            }
        }
        try {
            JSONObject jSONObject3 = new JSONObject(d2);
            String s = s();
            JSONObject optJSONObject = jSONObject3.optJSONObject(s);
            if (optJSONObject == null) {
                dq2.dq("ra_show_count", "");
                optJSONObject = new JSONObject();
            }
            optJSONObject.put(str, optJSONObject.optInt(str, 0) + 1);
            jSONObject3.put(s, optJSONObject);
            dq2.dq("ra_show_count", jSONObject3.toString());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    public static int dq(String str) {
        String d2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).d("ra_show_count");
        if (!TextUtils.isEmpty(d2)) {
            try {
                JSONObject optJSONObject = new JSONObject(d2).optJSONObject(s());
                if (optJSONObject != null) {
                    return optJSONObject.optInt(str, 0);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    private void dq(o oVar) {
        oVar.dq(new com.bytedance.msdk.api.p.dq.ia.dq() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.7
            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void E_() {
                String k = ox.this.f835d != null ? ox.this.f835d.k() : "";
                ox.d(k);
                ox.p(k);
                ox.s(k);
                if (ox.this.p != null) {
                    ox.this.p.E_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void c_(com.bytedance.msdk.api.dq dqVar) {
                if (ox.this.p != null) {
                    ox.this.p.c_(dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                if (ox.this.p != null) {
                    ox.this.p.dq(dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void iw() {
                if (ox.this.p != null) {
                    ox.this.p.iw();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void s_() {
                if (ox.this.p != null) {
                    ox.this.p.s_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void t_() {
                if (ox.this.ox != null) {
                    ox.this.ox.t_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void u_() {
                if (ox.this.p != null) {
                    ox.this.p.u_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void v_() {
                if (ox.this.p != null) {
                    ox.this.p.v_();
                }
            }
        });
        oVar.d(new com.bytedance.msdk.api.p.dq.ia.dq() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.8
            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void E_() {
                if (ox.this.p != null) {
                    ox.this.p.E_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void c_(com.bytedance.msdk.api.dq dqVar) {
                if (ox.this.p != null) {
                    ox.this.p.c_(dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                if (ox.this.p != null) {
                    ox.this.p.dq(dqVar);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void iw() {
                if (ox.this.p != null) {
                    ox.this.p.iw();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void s_() {
                if (ox.this.p != null) {
                    ox.this.p.s_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void t_() {
                if (ox.this.ox != null) {
                    ox.this.ox.t_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void u_() {
                if (ox.this.p != null) {
                    ox.this.p.u_();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.dq
            public void v_() {
                if (ox.this.p != null) {
                    ox.this.p.v_();
                }
            }
        });
    }

    public static void dq(String str, com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        no.put(str, dqVar);
    }

    public static void dq(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                d dVar = new d();
                dVar.dq(optJSONObject.optString("ra_id"));
                dVar.d(optJSONObject.optString(abn.EXTRA_TITLE));
                dVar.ox(optJSONObject.optString("pic_url"));
                dVar.p(optJSONObject.optString("btn_ok"));
                dVar.s(optJSONObject.optString("btn_cancel"));
                o.put(dVar.dq(), dVar);
            }
        }
    }

    public static double ia(String str) {
        com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar = no.get(str);
        if (dqVar != null) {
            return dqVar.iw();
        }
        return 0.0d;
    }

    public static long iw(String str) {
        String d2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).d("ra_play_rit_ts");
        try {
            if (!TextUtils.isEmpty(d2)) {
                return new JSONObject(d2).optLong(str, -1L);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return -1L;
    }

    private static String iw() {
        return new SimpleDateFormat("dd-MM-yyyy HH", Locale.getDefault()).format(new Date());
    }

    public static com.bytedance.msdk.core.admanager.reward.rewardagain.dq kk(String str) {
        return no.get(str);
    }

    public static double mn(String str) {
        com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar = no.get(str);
        if (dqVar == null) {
            return -1.0d;
        }
        double ox = dqVar.ox();
        if (ox < 0.0d || ox > 1.0d) {
            return -1.0d;
        }
        return ox;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mn() {
        dq dqVar = ig;
        dqVar.dq = null;
        dqVar.f841d = null;
        dqVar.ox = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void no(String str) {
        com.bytedance.msdk.api.p.dq.ia.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.t_();
        }
        iw.d(this.f835d, str);
    }

    public static void o(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        no.remove(str);
    }

    public static int ox(String str) {
        String d2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).d("ra_show_count_in_hour");
        if (!TextUtils.isEmpty(d2)) {
            try {
                JSONObject optJSONObject = new JSONObject(d2).optJSONObject(iw());
                if (optJSONObject != null) {
                    return optJSONObject.optInt(str, 0);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    public static dq ox() {
        return ig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar, String str, s sVar) {
        int dq2 = dq(this.f835d, dqVar, sVar);
        iw.dq(this.f835d, str, dq2);
        if (dq2 == 0) {
            dq();
            return;
        }
        com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.t_();
        }
    }

    public static void p(String str) {
        bl dq2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext());
        String d2 = dq2.d("ra_show_count_in_hour");
        if (TextUtils.isEmpty(d2)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, 1);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(iw(), jSONObject);
                dq2.dq("ra_show_count_in_hour", jSONObject2.toString());
                return;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return;
            }
        }
        try {
            JSONObject jSONObject3 = new JSONObject(d2);
            String iw = iw();
            JSONObject optJSONObject = jSONObject3.optJSONObject(iw);
            if (optJSONObject == null) {
                dq2.dq("ra_show_count_in_hour", "");
                optJSONObject = new JSONObject();
            }
            optJSONObject.put(str, optJSONObject.optInt(str, 0) + 1);
            jSONObject3.put(iw, optJSONObject);
            dq2.dq("ra_show_count_in_hour", jSONObject3.toString());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    private static String s() {
        return new SimpleDateFormat("dd-MM-yyyy", Locale.getDefault()).format(new Date());
    }

    public static void s(String str) {
        bl dq2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext());
        String d2 = dq2.d("ra_play_rit_ts");
        try {
            JSONObject jSONObject = TextUtils.isEmpty(d2) ? new JSONObject() : new JSONObject(d2);
            jSONObject.put(str, System.currentTimeMillis());
            dq2.dq("ra_play_rit_ts", jSONObject.toString());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d() {
        this.kk = true;
    }

    public void d(com.bytedance.msdk.api.p.dq.ia.dq dqVar) {
        if (dqVar != null) {
            this.p = dqVar;
        }
    }

    public int dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar, s sVar) {
        if (!this.kk) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 还未触发rewardVerify");
            return 1;
        }
        String k = dVar.k();
        int s = dqVar.s();
        int dq2 = dq(k);
        if (dq2 >= s) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 激励再得展示次数超过天级别限制，限制: " + s + ", 已经展示: " + dq2);
            return 2;
        }
        if (o.get(dqVar.p()) == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 激励再得样式为空");
            return 3;
        }
        if (com.bytedance.msdk.core.mn.dq.dq().ox()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 命中请求熔断");
            return 4;
        }
        if (!mp.dq().ia(k)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 命中展示频控");
            return 5;
        }
        if (!mp.dq().ox(k)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 命中展示间隔");
            return 6;
        }
        double d2 = p.dq().d(k, dVar);
        if (d2 <= -1.0d) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 激励再得无缓存可用");
            return 7;
        }
        if (d2 < ia(k)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 激励再得有缓存，但是ecpm不符合");
            return 8;
        }
        int dq3 = dqVar.dq();
        int ox = ox(k);
        if (ox >= dq3) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 激励再得展示次数超过小时级别限制，限制: " + dq3 + ", 已经展示: " + ox);
            return 9;
        }
        long d3 = dqVar.d();
        long iw = iw(k);
        long currentTimeMillis = System.currentTimeMillis() - iw;
        if (iw != -1 && currentTimeMillis < d3) {
            StringBuilder l = awf.l(d3, "--==--ra: 激励再得展示间隔超过限制，config间隔: ", ", 实际间隔: ");
            l.append(currentTimeMillis);
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", l.toString());
            return 10;
        }
        double mn = mn(k);
        if (sVar == null || mn == -1.0d || d2 >= sVar.dk() * mn) {
            return 0;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--ra: 激励再得ecpm下探期间不满足");
        return 11;
    }

    public void dq() {
        Context context = this.dq.get();
        if (context != null) {
            final o oVar = new o(context, this.f835d.k());
            dq(oVar);
            this.f835d.s(1);
            oVar.d(this.f835d, new com.bytedance.msdk.api.p.dq.ia.d() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.5
                @Override // com.bytedance.msdk.api.p.dq.ia.d
                public void d() {
                    if (ox.this.ia) {
                        return;
                    }
                    ox.this.ia = true;
                    oVar.dq(ox.this.s, ox.this.iw, ox.this.mn);
                }

                @Override // com.bytedance.msdk.api.p.dq.ia.d
                public void dq() {
                    if (ox.this.ia) {
                        return;
                    }
                    ox.this.ia = true;
                    oVar.dq(ox.this.s, ox.this.iw, ox.this.mn);
                }

                @Override // com.bytedance.msdk.api.p.dq.ia.d
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                    if (ox.this.ia) {
                        return;
                    }
                    ox.this.ia = true;
                    if (ox.this.ox != null) {
                        ox.this.ox.t_();
                    }
                }
            });
            com.bytedance.msdk.dq.s.iw.d(new Runnable() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.6
                @Override // java.lang.Runnable
                public void run() {
                    if (ox.this.ia) {
                        return;
                    }
                    ox.this.ia = true;
                    if (ox.this.ox != null) {
                        ox.this.ox.t_();
                    }
                }
            }, 500L);
        }
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        this.s = activity;
        this.iw = ritScenes;
        this.mn = str;
    }

    public void dq(com.bytedance.msdk.api.p.dq.ia.dq dqVar) {
        if (dqVar != null) {
            this.ox = dqVar;
        }
    }

    public void dq(final com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar, final String str, final s sVar) {
        Activity activity = this.s;
        if (activity == null || activity.isFinishing() || this.s.isDestroyed()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- reward again show activity dialog");
            d(dqVar, str, sVar);
            return;
        }
        final Dialog dialog = new Dialog(this.s);
        View inflate = LayoutInflater.from(this.s.getApplicationContext()).inflate(R.layout.reward_again_dialog, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.ra_pic);
        TextView textView = (TextView) inflate.findViewById(R.id.ra_title);
        TextView textView2 = (TextView) inflate.findViewById(R.id.ra_btn_ok);
        TextView textView3 = (TextView) inflate.findViewById(R.id.ra_btn_cancel);
        d dVar = o.get(dqVar.p());
        if (dVar != null) {
            textView.setText(dVar.d());
            textView2.setText(dVar.p());
            textView3.setText(dVar.s());
            if (!TextUtils.isEmpty(dVar.ox())) {
                new com.bytedance.msdk.dq.s.d(imageView).dq((Object[]) new String[]{dVar.ox()});
            }
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ox.this.ox(dqVar, str, sVar);
                dialog.dismiss();
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.ox.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ox.this.no(str);
                dialog.dismiss();
            }
        });
        dialog.setContentView(inflate);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
        dialog.show();
    }
}
