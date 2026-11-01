package com.bykv.vk.openvk.preload.geckox.q;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.q.dq.dq;
import com.bykv.vk.openvk.preload.geckox.utils.kk;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class p {
    private static com.bykv.vk.openvk.preload.geckox.q.dq.dq d(com.bykv.vk.openvk.preload.geckox.p pVar, d dVar) {
        ArrayList arrayList = new ArrayList();
        for (com.bykv.vk.openvk.preload.geckox.q.dq.d dVar2 : dVar.dq()) {
            if (dVar2.p != null || dVar2.iw != 0) {
                if (dVar2.ia && dVar2.kk) {
                    dq.C0018dq c0018dq = new dq.C0018dq();
                    arrayList.add(c0018dq);
                    c0018dq.f677d = 100;
                    c0018dq.ia = dVar2.f673d;
                    c0018dq.mn = dVar2.dq;
                    c0018dq.iw = dVar2.ox;
                    c0018dq.kk = dVar2.f675f;
                    c0018dq.dq = dVar2.cd;
                    c0018dq.ox = dVar2.fw;
                    c0018dq.o = dq(dVar2.s);
                    c0018dq.no = dVar2.p;
                    c0018dq.ig = d(dVar2.s);
                    c0018dq.q = Long.valueOf(dVar2.mn - dVar2.iw);
                    if (!dVar2.o) {
                        dq.C0018dq c0018dq2 = new dq.C0018dq();
                        arrayList.add(c0018dq2);
                        c0018dq2.f677d = 100;
                        c0018dq2.iw = dVar2.ox;
                        c0018dq2.p = "403";
                        c0018dq2.s = dVar2.r;
                        c0018dq2.kk = dVar2.f675f;
                        c0018dq2.ox = dVar2.fw;
                        c0018dq2.dq = dVar2.cd;
                        c0018dq2.o = dq(dVar2.s);
                        c0018dq2.no = dVar2.p;
                        c0018dq2.ig = d(dVar2.s);
                    } else if (dVar2.no) {
                        dq.C0018dq c0018dq3 = new dq.C0018dq();
                        arrayList.add(c0018dq3);
                        c0018dq3.mn = dVar2.dq;
                        c0018dq3.ia = dVar2.f673d;
                        c0018dq3.f677d = 102;
                        c0018dq3.ox = dVar2.fw;
                        c0018dq3.dq = dVar2.cd;
                        c0018dq3.iw = dVar2.ox;
                        c0018dq3.jy = Long.valueOf(dVar2.q - dVar2.mn);
                        c0018dq3.f678f = Long.valueOf(dVar2.jy - dVar2.q);
                    } else {
                        dq.C0018dq c0018dq4 = new dq.C0018dq();
                        arrayList.add(c0018dq4);
                        c0018dq4.mn = dVar2.dq;
                        c0018dq4.ia = dVar2.f673d;
                        c0018dq4.f677d = 103;
                        c0018dq4.p = "501";
                        c0018dq4.iw = dVar2.ox;
                        c0018dq4.ox = dVar2.fw;
                        c0018dq4.dq = dVar2.cd;
                        c0018dq4.s = dVar2.i;
                        dq(dVar2, arrayList);
                    }
                } else {
                    dq.C0018dq c0018dq5 = new dq.C0018dq();
                    arrayList.add(c0018dq5);
                    c0018dq5.f677d = 101;
                    c0018dq5.mn = dVar2.dq;
                    c0018dq5.ia = dVar2.f673d;
                    c0018dq5.iw = dVar2.ox;
                    c0018dq5.kk = dVar2.f675f;
                    c0018dq5.ox = dVar2.fw;
                    c0018dq5.dq = dVar2.cd;
                    c0018dq5.o = dq(dVar2.s);
                    c0018dq5.no = dVar2.p;
                    c0018dq5.ig = d(dVar2.s);
                    if (!dVar2.ia) {
                        c0018dq5.p = "301";
                        List<dq.C0018dq.C0019dq> list = dVar2.s;
                        if (list != null && !list.isEmpty()) {
                            c0018dq5.s = dVar2.s.get(0).f679d;
                        }
                    } else if (!dVar2.kk) {
                        c0018dq5.p = "402";
                        c0018dq5.s = dVar2.gh;
                    }
                    dq(dVar2, arrayList);
                }
            }
            dq(dVar2, arrayList);
        }
        Context context = pVar.dq;
        arrayList.addAll(com.bykv.vk.openvk.preload.geckox.dq.d.dq(context).dq());
        if (arrayList.isEmpty()) {
            return null;
        }
        com.bykv.vk.openvk.preload.geckox.ig.d dVar3 = new com.bykv.vk.openvk.preload.geckox.ig.d(pVar.ia.longValue(), pVar.kk, pVar.o, com.bykv.vk.openvk.preload.geckox.utils.d.d(context), kk.dq(context), pVar.mp, pVar.ig);
        com.bykv.vk.openvk.preload.geckox.q.dq.dq dqVar = new com.bykv.vk.openvk.preload.geckox.q.dq.dq();
        dqVar.dq = dVar3;
        dqVar.f676d = arrayList;
        String uuid = UUID.randomUUID().toString();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((dq.C0018dq) it.next()).mp = uuid;
        }
        return dqVar;
    }

    private static List<dq.C0018dq.C0019dq> d(List<dq.C0018dq.C0019dq> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    private static JSONObject d(com.bykv.vk.openvk.preload.geckox.p pVar, com.bykv.vk.openvk.preload.geckox.q.dq.ox oxVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("device_id", pVar.o);
        jSONObject.put("os", 0);
        jSONObject.put("app_version", pVar.kk);
        jSONObject.put("api_version", "v3");
        jSONObject.put("aid", pVar.ia.longValue());
        jSONObject.put("x_tt_logid", oxVar.s);
        jSONObject.put("http_status", oxVar.mn);
        jSONObject.put("err_msg", oxVar.p);
        if (TextUtils.isEmpty(oxVar.s)) {
            jSONObject.put("deployments_info", oxVar.f680d);
            jSONObject.put("local_info", oxVar.dq);
            jSONObject.put("custom_info", oxVar.ox);
        } else {
            jSONObject.put("deployments_info", "");
            jSONObject.put("local_info", "");
            jSONObject.put("custom_info", "");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        jSONObject.put("os_version", sb.toString());
        jSONObject.put("device_platform", "android");
        jSONObject.put("device_model", Build.MODEL);
        jSONObject.put("ac", oxVar.iw);
        return jSONObject;
    }

    private static Integer dq(List<dq.C0018dq.C0019dq> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    private static JSONObject dq(dq.C0018dq c0018dq, com.bykv.vk.openvk.preload.geckox.ig.d dVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("region", dVar.no);
        jSONObject.put("err_code", c0018dq.p);
        jSONObject.put("err_msg", c0018dq.s);
        jSONObject.put(PluginConstants.KEY_SDK_VERSION, dVar.o);
        jSONObject.put("access_key", c0018dq.mn);
        jSONObject.put("stats_type", c0018dq.f677d);
        jSONObject.put("device_id", dVar.p);
        Long l = c0018dq.ox;
        jSONObject.put("patch_id", l == null ? 0L : l.longValue());
        jSONObject.put("group_name", c0018dq.ia);
        jSONObject.put("os", dVar.ox);
        jSONObject.put("app_version", dVar.f647d);
        jSONObject.put("device_model", dVar.ia);
        jSONObject.put("channel", c0018dq.iw);
        Long l2 = c0018dq.dq;
        jSONObject.put(TTDownloadField.TT_ID, l2 == null ? 0L : l2.longValue());
        jSONObject.put("ac", dVar.iw);
        Integer num = c0018dq.o;
        jSONObject.put("download_retry_times", num == null ? 0 : num.intValue());
        String str = c0018dq.no;
        if (str == null) {
            str = "";
        }
        jSONObject.put("download_url", str);
        jSONObject.put("download_duration", c0018dq.q);
        List<dq.C0018dq.C0019dq> list = c0018dq.ig;
        jSONObject.put("download_fail_records", list != null ? list : "");
        jSONObject.put("log_id", c0018dq.mp);
        Long l3 = c0018dq.jy;
        jSONObject.put("active_check_duration", l3 == null ? 0L : l3.longValue());
        Long l4 = c0018dq.f678f;
        jSONObject.put("apply_duration", l4 != null ? l4.longValue() : 0L);
        return jSONObject;
    }

    public static void dq(com.bykv.vk.openvk.preload.geckox.p pVar, d dVar) {
        List<dq.C0018dq> list;
        com.bykv.vk.openvk.preload.geckox.q.dq.dq d2 = d(pVar, dVar);
        if (d2 == null || (list = d2.f676d) == null) {
            return;
        }
        dq dqVar = pVar.ox;
        if (dqVar != null) {
            try {
                Iterator<dq.C0018dq> it = list.iterator();
                while (it.hasNext()) {
                    dqVar.dq("geckosdk_update_stats", dq(it.next(), d2.dq));
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
        if (pVar.jy) {
            try {
                String dq = com.bykv.vk.openvk.preload.geckox.p.d.dq().dq.dq(d2);
                if (TextUtils.isEmpty(dq)) {
                    return;
                }
                dq(pVar, dq);
            } catch (Throwable unused) {
            }
        }
    }

    public static void dq(com.bykv.vk.openvk.preload.geckox.p pVar, com.bykv.vk.openvk.preload.geckox.q.dq.ox oxVar) {
        dq dqVar = pVar.ox;
        if (dqVar != null) {
            try {
                dqVar.dq("geckosdk_query_pkgs", d(pVar, oxVar));
            } catch (Throwable th) {
                com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
    }

    private static void dq(final com.bykv.vk.openvk.preload.geckox.p pVar, final String str) {
        final String ad = awf.ad(new StringBuilder("https://"), pVar.no, "/gecko/server/packages/stats");
        com.bykv.vk.openvk.preload.geckox.p.dq().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.q.p.1
            @Override // java.lang.Runnable
            public final void run() {
                com.bykv.vk.openvk.preload.geckox.mp.d dq;
                for (int i = 0; i < 3; i++) {
                    try {
                        dq = com.bykv.vk.openvk.preload.geckox.p.this.p.dq(ad, str);
                    } catch (Exception e2) {
                        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "upload statistic:", e2);
                    }
                    if (dq.ox != 200) {
                        throw new NetworkErrorException("net work get failed, code: " + dq.ox + ", url:" + ad);
                    }
                    if (new JSONObject(dq.f661d).getInt("status") == 0) {
                        return;
                    }
                }
            }
        });
    }

    private static void dq(com.bykv.vk.openvk.preload.geckox.q.dq.d dVar, List<dq.C0018dq> list) {
        if (!dVar.ji || !dVar.bl) {
            dq.C0018dq c0018dq = new dq.C0018dq();
            list.add(c0018dq);
            c0018dq.f677d = 1;
            c0018dq.mn = dVar.dq;
            c0018dq.ia = dVar.f673d;
            c0018dq.iw = dVar.ox;
            c0018dq.kk = dVar.f675f;
            c0018dq.dq = dVar.cd;
            c0018dq.o = dq(dVar.k);
            c0018dq.no = dVar.le;
            c0018dq.ig = d(dVar.k);
            if (dVar.ji) {
                if (dVar.bl) {
                    return;
                }
                c0018dq.p = "450";
                c0018dq.s = dVar.op;
                return;
            }
            c0018dq.p = "300";
            List<dq.C0018dq.C0019dq> list2 = dVar.k;
            if (list2 == null || list2.isEmpty()) {
                return;
            }
            c0018dq.s = dVar.k.get(0).f679d;
            return;
        }
        dq.C0018dq c0018dq2 = new dq.C0018dq();
        list.add(c0018dq2);
        c0018dq2.f677d = 0;
        c0018dq2.mn = dVar.dq;
        c0018dq2.ia = dVar.f673d;
        c0018dq2.iw = dVar.ox;
        c0018dq2.kk = dVar.f675f;
        c0018dq2.dq = dVar.cd;
        c0018dq2.o = dq(dVar.k);
        c0018dq2.no = dVar.le;
        c0018dq2.ig = d(dVar.k);
        c0018dq2.q = Long.valueOf(dVar.f674e - dVar.wp);
        if (dVar.n) {
            dq.C0018dq c0018dq3 = new dq.C0018dq();
            list.add(c0018dq3);
            c0018dq3.mn = dVar.dq;
            c0018dq3.ia = dVar.f673d;
            c0018dq3.f677d = 2;
            c0018dq3.dq = dVar.cd;
            c0018dq3.iw = dVar.ox;
            c0018dq3.jy = Long.valueOf(dVar.kx - dVar.f674e);
            c0018dq3.f678f = Long.valueOf(dVar.h - dVar.kx);
            return;
        }
        dq.C0018dq c0018dq4 = new dq.C0018dq();
        list.add(c0018dq4);
        c0018dq4.f677d = 3;
        c0018dq4.mn = dVar.dq;
        c0018dq4.ia = dVar.f673d;
        c0018dq4.p = "500";
        c0018dq4.dq = dVar.cd;
        c0018dq4.iw = dVar.ox;
        c0018dq4.s = dVar.ir;
    }
}
