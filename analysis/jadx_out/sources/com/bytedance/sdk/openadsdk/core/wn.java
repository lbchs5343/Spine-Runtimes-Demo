package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.activity.base.TTMiddlePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class wn {
    private static boolean dq;

    private static boolean d(String str) {
        return !TextUtils.isEmpty(str) && str.equals("feed_video_middle_page");
    }

    private static Intent dq(Context context, com.bytedance.sdk.openadsdk.core.r.j jVar, int i, String str, Object obj) {
        com.bytedance.sdk.openadsdk.core.multipro.d.dq no;
        Intent intent = new Intent(context, (Class<?>) TTPlayableWebPageActivity.class);
        if (com.bytedance.sdk.openadsdk.core.r.j.d(jVar)) {
            if (obj != null) {
                com.bytedance.sdk.openadsdk.core.multipro.d.dq op = obj instanceof dq.InterfaceC0174dq ? ((dq.InterfaceC0174dq) obj).op() : null;
                if (op != null) {
                    intent.putExtra("multi_process_data", op.dq().toString());
                }
            }
            if ((obj instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.d) && (no = ((com.bytedance.sdk.openadsdk.core.nativeexpress.d) obj).no()) != null) {
                intent.putExtra("multi_process_data", no.dq().toString());
            }
        }
        dq(context, com.bytedance.sdk.openadsdk.core.ir.i.d(jVar), jVar, i, str, intent);
        return intent;
    }

    private static Intent dq(Context context, String str, com.bytedance.sdk.openadsdk.core.r.j jVar, int i, Object obj, String str2, Map<String, Object> map, boolean z) {
        Context context2;
        com.bytedance.sdk.openadsdk.core.r.j jVar2;
        String str3;
        Intent intent;
        String str4;
        com.bytedance.sdk.openadsdk.core.r.j jVar3;
        int i2;
        if (obj instanceof com.bytedance.sdk.openadsdk.f.d.d.o) {
            context2 = context;
            str3 = str;
            jVar3 = jVar;
            i2 = i;
            intent = com.bytedance.sdk.openadsdk.core.ugeno.kk.iw(jVar) ? new Intent(context, (Class<?>) TTNativePageActivity.class) : new Intent(context, (Class<?>) TTWebPageActivity.class);
            str4 = str2;
        } else {
            if (!com.bytedance.sdk.openadsdk.core.r.j.d(jVar) || dq || dq(obj) || !com.bytedance.sdk.openadsdk.core.ir.c.s(jVar)) {
                context2 = context;
                jVar2 = jVar;
                str3 = str;
                intent = com.bytedance.sdk.openadsdk.core.ugeno.kk.iw(jVar2) ? new Intent(context2, (Class<?>) TTNativePageActivity.class) : new Intent(context2, (Class<?>) TTWebPageActivity.class);
                str4 = str2;
            } else {
                jVar2 = jVar;
                Intent intent2 = com.bytedance.sdk.openadsdk.core.ugeno.kk.iw(jVar) ? new Intent(context, (Class<?>) TTNativePageActivity.class) : (jVar == null || !jVar.d()) ? new Intent(context, (Class<?>) TTVideoWebPageActivity.class) : new Intent(context, (Class<?>) TTWebPageActivity.class);
                dq(context, jVar2, obj, map, z, intent2);
                str3 = str;
                intent = intent2;
                str4 = str2;
                context2 = context;
            }
            jVar3 = jVar2;
            i2 = i;
        }
        dq(context2, str3, jVar3, i2, str4, intent);
        return intent;
    }

    private static void dq(Context context, com.bytedance.sdk.openadsdk.core.r.j jVar, Object obj, Map<String, Object> map, boolean z, Intent intent) {
        int i;
        if (com.bytedance.sdk.openadsdk.core.r.j.d(jVar)) {
            if (obj != null) {
                r1 = obj instanceof dq.InterfaceC0174dq ? ((dq.InterfaceC0174dq) obj).op() : null;
                if (r1 != null) {
                    intent.putExtra("multi_process_data", r1.dq().toString());
                }
            }
            if ((obj instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.d) && (r1 = ((com.bytedance.sdk.openadsdk.core.nativeexpress.d) obj).no()) != null) {
                intent.putExtra("multi_process_data", r1.dq().toString());
            }
            if (r1 != null) {
                intent.putExtra("video_is_auto_play", r1.p);
                com.bytedance.sdk.component.utils.ig.dq("videoDataModel", "videoDataModel=" + r1.dq().toString());
            }
            if (TTVideoWebPageActivity.dq(intent)) {
                if (r1 != null || z) {
                    try {
                        if (r1 != null) {
                            i = (int) ((r1.mn / r1.s) * 100.0f);
                        } else {
                            com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
                            dqVar.mn = 100L;
                            dqVar.dq = true;
                            dqVar.p = com.bytedance.sdk.openadsdk.core.ir.c.i(jVar);
                            intent.putExtra("multi_process_data", dqVar.dq().toString());
                            i = 100;
                        }
                        if (map == null) {
                            map = new HashMap<>();
                        }
                        map.put("play_percent", Integer.valueOf(i));
                        if (jVar.fp() == 0) {
                            intent.setComponent(new ComponentName(context, (Class<?>) TTVideoScrollWebPageActivity.class));
                        } else {
                            if (jVar.fp() <= 0 || i <= jVar.fp() || !com.bytedance.sdk.openadsdk.core.ir.c.i(jVar)) {
                                return;
                            }
                            intent.setComponent(new ComponentName(context, (Class<?>) TTVideoScrollWebPageActivity.class));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private static void dq(Context context, String str, com.bytedance.sdk.openadsdk.core.r.j jVar, int i, String str2, Intent intent) {
        if (!new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(context, jVar).p(false)) {
            jVar.dq(true);
        }
        intent.putExtra(abn.EXTRA_URL, str);
        intent.putExtra("gecko_id", jVar.rp());
        intent.putExtra(abn.EXTRA_TITLE, jVar.lk());
        intent.putExtra(PluginConstants.KEY_SDK_VERSION, op.f3334d);
        intent.putExtra(MediationConstant.EXTRA_ADID, jVar.fx());
        intent.putExtra("log_extra", jVar.dn());
        intent.putExtra("icon_url", jVar.wq() == null ? null : jVar.wq().dq());
        intent.putExtra("event_tag", str2);
        intent.putExtra(abn.EXTRA_SOURCE, i);
        intent.putExtra("is_outer_click", true);
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        com.bytedance.sdk.openadsdk.core.ir.c.dq(intent, jVar);
    }

    public static void dq(boolean z) {
        dq = z;
    }

    private static boolean dq(Context context, com.bytedance.sdk.openadsdk.core.r.j jVar, int i, Object obj, String str, Map<String, Object> map, boolean z, boolean z2, String str2) {
        if (z2 && dq(jVar, obj)) {
            com.bytedance.sdk.component.utils.d.dq(context, dq(context, jVar, i, str, obj), null);
            dq = false;
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (jVar.y() != 2) {
            com.bytedance.sdk.component.utils.d.dq(context, dq(context, str2, jVar, i, obj, str, map, z), null);
            dq = false;
            return true;
        }
        if (!com.bytedance.sdk.component.utils.q.dq(str2)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(str2));
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.bytedance.sdk.component.utils.d.dq(context, intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean dq(Context context, com.bytedance.sdk.openadsdk.core.r.j jVar, int i, String str, String str2) {
        try {
            Intent intent = new Intent(context, (Class<?>) TTNativePageActivity.class);
            intent.putExtra("is_replace_dialog", true);
            dq(context, (String) null, jVar, i, str, intent);
            if (com.bytedance.sdk.openadsdk.core.r.j.d(jVar) && !TextUtils.isEmpty(str2)) {
                intent.putExtra("multi_process_data", str2);
            }
            return com.bytedance.sdk.component.utils.d.dq(context, intent, null);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean dq(Context context, String str, com.bytedance.sdk.openadsdk.core.r.j jVar, int i, String str2, Map<String, Object> map) {
        try {
            return com.bytedance.sdk.component.utils.d.dq(context, dq(context, str, jVar, i, null, str2, map, false), null);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.iw iwVar, String str, boolean z, boolean z2, boolean z3) {
        String ae;
        boolean z4 = false;
        if (iwVar == null) {
            return false;
        }
        Context context = iwVar.getContext();
        com.bytedance.sdk.openadsdk.core.r.j d2 = iwVar.d();
        int kk = iwVar.kk();
        Object mp = iwVar.mp();
        com.bytedance.sdk.openadsdk.core.o.d.ox ia = iwVar.ia();
        Map<String, Object> o = iwVar.o();
        boolean ig = iwVar.ig();
        if (context == null || d2 == null || kk == -1) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.r.fw kf = d2.kf();
        if (dq(str) && !d(str) && !z && kf == null && TTMiddlePageActivity.dq(context, d2)) {
            return false;
        }
        if (iwVar.cd() != null && iwVar.cd().dq()) {
            return true;
        }
        if (l.bl(d2) && z2 && dq(d2, mp)) {
            z4 = true;
        }
        if (kf == null || z4) {
            ae = d2.ae();
        } else {
            com.bytedance.sdk.openadsdk.core.o.ox oxVar = new com.bytedance.sdk.openadsdk.core.o.ox(d2, str, context);
            Boolean dq2 = oxVar.dq(kk, o);
            if (dq2 != null) {
                return dq2.booleanValue();
            }
            if (oxVar.dq(ia, z, z3)) {
                return true;
            }
            ae = oxVar.dq();
        }
        return dq(context, d2, kk, mp, str, o, ig, z2, ae);
    }

    public static boolean dq(com.bytedance.sdk.openadsdk.core.r.j jVar, Object obj) {
        if (com.bytedance.sdk.openadsdk.core.ir.i.p(jVar)) {
            return !(obj == null && jVar.es() == 100.0f) && l.i(jVar);
        }
        return false;
    }

    private static boolean dq(Object obj) {
        if (obj == null || !(obj instanceof dq.InterfaceC0174dq)) {
            return false;
        }
        try {
            return ((dq.InterfaceC0174dq) obj).bl();
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals("embeded_ad") || str.equals("embeded_ad_landingpage");
    }
}
