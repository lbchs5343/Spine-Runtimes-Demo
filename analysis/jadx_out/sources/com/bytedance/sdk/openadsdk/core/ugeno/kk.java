package com.bytedance.sdk.openadsdk.core.ugeno;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.q;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.wp;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    private static final HashSet<String> f3595d;
    private static AtomicInteger dq = new AtomicInteger();

    static {
        HashSet<String> hashSet = new HashSet<>();
        f3595d = hashSet;
        hashSet.add("1473");
        hashSet.add("3682");
        hashSet.add("4760");
    }

    public static int d(Context context, j jVar, String str) {
        if (jVar == null) {
            return -1;
        }
        wp ev = jVar.ev();
        if (ev == null) {
            return -2;
        }
        if (TextUtils.isEmpty(str)) {
            return -3;
        }
        if (str.length() > 15) {
            return 4;
        }
        if (context != null && context.getResources().getConfiguration().orientation != 1) {
            return 9;
        }
        String d2 = ev.d();
        if (d(ev.ox(), d2) == null) {
            return TextUtils.isEmpty(d2) ? 2 : 3;
        }
        return 1;
    }

    public static JSONObject d(String str, String str2) {
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        if (dq2 == null) {
            return null;
        }
        try {
            return new JSONObject(dq2.d(str, ""));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean d(j jVar) {
        com.bytedance.sdk.openadsdk.core.ugeno.o.dq r;
        JSONObject ox;
        return (jVar == null || (r = jVar.r()) == null || (ox = r.ox()) == null || ox.optInt("reward_slide_type", 0) != 1) ? false : true;
    }

    public static int dq(j jVar) {
        com.bytedance.sdk.openadsdk.core.ugeno.o.dq r;
        JSONObject ox;
        int optInt;
        if (jVar == null || (r = jVar.r()) == null || (ox = r.ox()) == null || (optInt = ox.optInt("pre_request_ad_num", 4)) <= 0) {
            return 4;
        }
        return optInt;
    }

    public static String dq(Context context, String str, j jVar, String str2) {
        wp ev = jVar.ev();
        JSONObject fi = jVar.fi();
        if (str == null) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("icon_url", str2);
            }
            String gl = jVar.gl();
            if (!TextUtils.isEmpty(gl)) {
                jSONObject.put("description", gl);
            }
            if (fi != null) {
                jSONObject.put("easy_pl_material", fi.toString());
            }
            if (ev != null) {
                jSONObject.put("ugen_dialog_url", ev.d());
                jSONObject.put("ugen_dialog_md5", ev.ox());
            }
            if (context != null) {
                if (context.getResources().getConfiguration().orientation == 1) {
                    jSONObject.put("vertical", "true");
                } else {
                    jSONObject.put("vertical", "false");
                }
            }
            return jSONObject.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "android");
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public static JSONObject dq(j jVar, View view) {
        JSONObject ve = jVar.ve();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            com.bytedance.sdk.openadsdk.core.bl.dq gh = com.bytedance.sdk.openadsdk.core.wp.d().gh(String.valueOf(c.kk(jVar)));
            int i = com.bytedance.sdk.openadsdk.core.component.reward.p.p.dq(jVar) == 4 ? gh.ox : gh.no;
            if (c.s(jVar)) {
                i = gh.ox;
            }
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            jSONObject.put("voice_control", z);
            Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
            jSONObject3.put(MediaFormat.KEY_WIDTH, ce.p(context, ce.p(context)));
            jSONObject3.put(MediaFormat.KEY_HEIGHT, ce.p(context, ce.s(context)));
            if (view != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(MediaFormat.KEY_WIDTH, ce.p(context, width));
                jSONObject4.put(MediaFormat.KEY_HEIGHT, ce.p(context, height));
                jSONObject2.put("content_size", jSONObject4);
            }
            jSONObject2.put("screen_size", jSONObject3);
            ve.put("env_info", jSONObject2);
            ve.put("setting", jSONObject);
            return ve;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return ve;
        }
    }

    public static void dq(j.dq dqVar) {
        com.bytedance.sdk.component.mn.dq dq2;
        if (dqVar == null) {
            return;
        }
        final String kk = dqVar.kk();
        final String o = dqVar.o();
        if ((TextUtils.isEmpty(kk) && TextUtils.isEmpty(o)) || (dq2 = com.bytedance.sdk.openadsdk.core.ox.dq()) == null) {
            return;
        }
        if (TextUtils.isEmpty(o) || TextUtils.isEmpty(dq2.d(o, ""))) {
            com.bytedance.sdk.component.o.mn.dq(new com.bytedance.sdk.component.o.kk("saveUGenoTemplate") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.1
                @Override // java.lang.Runnable
                public void run() {
                    kk.p(o, kk);
                }
            }, 10);
        }
    }

    private static void dq(j.dq dqVar, q qVar) {
        String kk = dqVar.kk();
        String o = dqVar.o();
        if (TextUtils.isEmpty(kk) && TextUtils.isEmpty(o)) {
            if (qVar != null) {
                qVar.d();
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(o)) {
            o = kk;
        }
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        if (dq2 == null) {
            if (qVar != null) {
                qVar.d();
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(dq2.d(o, ""))) {
                if (TextUtils.isEmpty(kk)) {
                    qVar.d();
                }
                dq(o, kk, qVar);
            } else if (qVar != null) {
                qVar.dq();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (qVar != null) {
                qVar.d();
            }
        }
    }

    public static void dq(String str, String str2) {
        com.bytedance.sdk.component.mn.dq dq2;
        if ((TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || (dq2 = com.bytedance.sdk.openadsdk.core.ox.dq()) == null) {
            return;
        }
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(dq2.d(str2, ""))) {
            p(str2, str);
        }
    }

    public static void dq(final String str, final String str2, final q qVar) {
        if (com.bytedance.sdk.openadsdk.core.ox.dq() == null) {
            qVar.d();
        } else {
            com.bytedance.sdk.component.o.mn.dq(new com.bytedance.sdk.component.o.kk("saveUGenoTemplate") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.4
                @Override // java.lang.Runnable
                public void run() {
                    kk.ox(str, str2, qVar);
                }
            }, 10);
        }
    }

    public static void dq(final String str, String str2, final ox oxVar) {
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        com.bytedance.sdk.component.kk.d.ox ox = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
        if (ox == null) {
            return;
        }
        ox.dq(str2);
        ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.3
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                String str3 = "tt_ugen_tpl";
                if (dVar != null) {
                    try {
                        if (dVar.ia() && dVar.p() != null) {
                            com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
                            final String p = dVar.p();
                            dq2.dq(str, p);
                            com.bytedance.sdk.component.utils.ia.d().post(new com.bytedance.sdk.component.o.kk(str3) { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    oxVar.dq(p);
                                }
                            });
                            return;
                        }
                    } catch (Exception unused) {
                        com.bytedance.sdk.component.utils.ia.d().post(new com.bytedance.sdk.component.o.kk(str3) { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.3.3
                            @Override // java.lang.Runnable
                            public void run() {
                            }
                        });
                        return;
                    }
                }
                com.bytedance.sdk.component.utils.ia.d().post(new com.bytedance.sdk.component.o.kk(str3) { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                });
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                com.bytedance.sdk.component.utils.ia.d().post(new com.bytedance.sdk.component.o.kk("tt_ugen_tpl") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.3.4
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                });
            }
        });
    }

    public static void dq(List<j> list, q qVar) {
        if (list == null || list.size() <= 0) {
            if (qVar != null) {
                qVar.d();
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (j jVar : list) {
            if (jVar != null && jVar.tv() != null && kk(jVar) && (!TextUtils.isEmpty(jVar.tv().kk()) || !TextUtils.isEmpty(jVar.tv().o()))) {
                arrayList.add(jVar.tv());
            }
        }
        if (arrayList.size() <= 0) {
            qVar.d();
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            dq((j.dq) it.next(), qVar);
        }
    }

    public static boolean dq(Context context, j jVar, String str) {
        return d(context, jVar, str) == 1;
    }

    public static boolean ia(j jVar) {
        return jVar != null && jVar.no() > 0;
    }

    public static boolean ig(j jVar) {
        return (jVar == null || jVar.ev() == null) ? false : true;
    }

    public static boolean iw(j jVar) {
        if (jVar == null) {
            return false;
        }
        return mn(jVar) || ia(jVar);
    }

    public static boolean kk(j jVar) {
        return jVar != null && jVar.dr() == 7;
    }

    public static boolean mn(j jVar) {
        return (jVar == null || jVar.cd() != 1 || gh.dq(jVar)) ? false : true;
    }

    public static boolean no(j jVar) {
        return (jVar == null || jVar.tv() == null || d(jVar.tv().o(), jVar.tv().kk()) == null) ? false : true;
    }

    public static boolean o(j jVar) {
        return jVar != null && jVar.dr() == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(String str, String str2, q qVar) {
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        com.bytedance.sdk.component.kk.d.ox ox = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
        if (ox == null) {
            if (qVar != null) {
                qVar.d();
                return;
            }
            return;
        }
        ox.dq(str2);
        com.bytedance.sdk.component.kk.d dq2 = ox.dq();
        if (dq2 != null) {
            try {
                if (dq2.ia() && dq2.p() != null) {
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq(str, dq2.p());
                    if (qVar != null) {
                        qVar.dq();
                        return;
                    }
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                if (qVar != null) {
                    qVar.d();
                    return;
                }
                return;
            }
        }
        if (qVar != null) {
            qVar.d();
        }
    }

    public static boolean ox(j jVar) {
        if (jVar == null) {
            return false;
        }
        int cd = jVar.cd();
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq gh = jVar.gh();
        return gh != null && cd == 1 && gh.p() == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(final String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        com.bytedance.sdk.component.kk.d.ox ox = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
        if (ox == null) {
            return;
        }
        ox.dq(str2);
        ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.kk.2
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar != null) {
                    try {
                        if (!dVar.ia() || dVar.p() == null) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.core.ox.dq().dq(str, dVar.p());
                    } catch (Exception unused) {
                    }
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
            }
        });
    }

    public static boolean p(j jVar) {
        if (jVar == null) {
            return false;
        }
        int cd = jVar.cd();
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq gh = jVar.gh();
        return gh != null && cd == 1 && gh.p() == 3;
    }

    public static boolean s(j jVar) {
        if (jVar == null) {
            return false;
        }
        int cd = jVar.cd();
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq gh = jVar.gh();
        return gh != null && cd == 1 && gh.p() == 2;
    }
}
