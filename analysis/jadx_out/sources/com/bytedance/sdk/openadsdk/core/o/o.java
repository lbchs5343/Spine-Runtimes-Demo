package com.bytedance.sdk.openadsdk.core.o;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import g.hat;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o {
    public static JSONObject d() {
        com.bytedance.sdk.openadsdk.core.bl.mn d2 = wp.d();
        return (d2 == null || d2.xz() == null) ? new JSONObject() : d2.xz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final com.bytedance.sdk.openadsdk.core.ir.dq dqVar, final j jVar, String str, String str2, final String str3) {
        if (dqVar != null && c.ox(wp.getContext(), str3)) {
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            String fx = jVar.fx();
            com.bytedance.sdk.openadsdk.core.ir.iw.dq(wp.getContext(), fx, str, str2, "立即打开", "退出", new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.o.3
                @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
                public void d() {
                    com.bytedance.sdk.openadsdk.core.ir.dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.ox();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
                public void dq() {
                    o.ox(j.this, str3);
                    com.bytedance.sdk.openadsdk.core.ir.dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.ox();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
                public void ox() {
                    com.bytedance.sdk.openadsdk.core.ir.dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.ox();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(j jVar, long j, com.bytedance.sdk.openadsdk.core.ir.dq dqVar, String str) {
        if (jVar == null) {
            return;
        }
        if (System.currentTimeMillis() - j < r.kk(jVar) * 1000) {
            ox(jVar, str);
        } else {
            String ox = jVar.gm() != null ? jVar.gm().ox() : "";
            d(dqVar, jVar, ox, TextUtils.isEmpty(ox) ? "应用安装完成，是否立即打开 ？" : "安装完成，是否立即打开 ？", str);
        }
    }

    private static void d(final j jVar, final String str) {
        final com.bytedance.sdk.openadsdk.core.ir.dq p;
        if (dq(jVar) || (p = no.ia().p()) == null) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        p.dq(new dq.InterfaceC0164dq() { // from class: com.bytedance.sdk.openadsdk.core.o.o.1
            @Override // com.bytedance.sdk.openadsdk.core.ir.dq.InterfaceC0164dq
            public void dq() {
                if (!ce.dq()) {
                    com.bytedance.sdk.openadsdk.core.ir.dq dqVar = com.bytedance.sdk.openadsdk.core.ir.dq.this;
                    if (dqVar != null) {
                        dqVar.ox();
                        return;
                    }
                    return;
                }
                if (!com.bytedance.sdk.openadsdk.jy.d.dq(str)) {
                    o.d(jVar, currentTimeMillis, com.bytedance.sdk.openadsdk.core.ir.dq.this, str);
                }
                com.bytedance.sdk.openadsdk.core.ir.dq dqVar2 = com.bytedance.sdk.openadsdk.core.ir.dq.this;
                if (dqVar2 != null) {
                    dqVar2.ox();
                }
            }
        });
    }

    public static String dq() {
        String ox = com.bytedance.sdk.openadsdk.jy.d.ox();
        com.bytedance.sdk.openadsdk.f.d.ox.p kk = no.ia().kk();
        if (kk == null || kk.s()) {
            return ox;
        }
        try {
            return s();
        } catch (Throwable unused) {
            return ox;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0065 A[Catch: all -> 0x0069, TRY_LEAVE, TryCatch #0 {all -> 0x0069, blocks: (B:23:0x0003, B:25:0x0009, B:4:0x0021, B:6:0x0027, B:8:0x0033, B:10:0x003f, B:11:0x0043, B:13:0x0049, B:14:0x005f, B:16:0x0065), top: B:22:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0027 A[Catch: all -> 0x0069, TryCatch #0 {all -> 0x0069, blocks: (B:23:0x0003, B:25:0x0009, B:4:0x0021, B:6:0x0027, B:8:0x0033, B:10:0x003f, B:11:0x0043, B:13:0x0049, B:14:0x005f, B:16:0x0065), top: B:22:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(boolean z) {
        String path;
        File dq;
        if (z) {
            if (!ox()) {
                File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext()), Environment.DIRECTORY_DOWNLOADS);
                file.mkdirs();
                path = file.getPath();
                if (TextUtils.isEmpty(path)) {
                    if ("mounted".equals(com.bytedance.sdk.openadsdk.h.ox.dq()) && (dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(wp.getContext(), Environment.DIRECTORY_DOWNLOADS)) != null) {
                        path = dq.getPath();
                    }
                    if (TextUtils.isEmpty(path)) {
                        File file2 = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(wp.getContext()), Environment.DIRECTORY_DOWNLOADS);
                        file2.mkdirs();
                        path = file2.getPath();
                    }
                }
                if (!TextUtils.isEmpty(path)) {
                    com.bytedance.sdk.openadsdk.core.ir.no.dq();
                    return path;
                }
                return null;
            }
        }
        path = null;
        if (TextUtils.isEmpty(path)) {
        }
        if (!TextUtils.isEmpty(path)) {
        }
        return null;
    }

    private static void dq(Context context, final j jVar, final String str) {
        if (context == null || jVar == null || dq(jVar)) {
            return;
        }
        final String ox = jVar.gm() != null ? jVar.gm().ox() : "";
        final String str2 = TextUtils.isEmpty(ox) ? "应用安装完成，是否立即打开 ？" : "安装完成，是否立即打开 ？";
        final com.bytedance.sdk.openadsdk.core.ir.dq p = no.ia().p();
        if (p == null) {
            return;
        }
        p.dq(new dq.InterfaceC0164dq() { // from class: com.bytedance.sdk.openadsdk.core.o.o.2
            @Override // com.bytedance.sdk.openadsdk.core.ir.dq.InterfaceC0164dq
            public void dq() {
                try {
                    if (!ce.dq()) {
                        com.bytedance.sdk.openadsdk.core.ir.dq dqVar = com.bytedance.sdk.openadsdk.core.ir.dq.this;
                        if (dqVar != null) {
                            dqVar.ox();
                            return;
                        }
                        return;
                    }
                    if (!com.bytedance.sdk.openadsdk.jy.d.dq(str)) {
                        o.d(com.bytedance.sdk.openadsdk.core.ir.dq.this, jVar, ox, str2, str);
                    }
                    com.bytedance.sdk.openadsdk.core.ir.dq dqVar2 = com.bytedance.sdk.openadsdk.core.ir.dq.this;
                    if (dqVar2 != null) {
                        dqVar2.ox();
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void dq(Runnable runnable, j jVar) {
        if (jVar == null || runnable == null) {
            return;
        }
        if (!r.fw(jVar)) {
            com.bytedance.sdk.openadsdk.h.mn.dq(runnable);
        } else {
            com.bytedance.sdk.openadsdk.h.mn.dq((Runnable) new com.bytedance.sdk.component.o.kk("tt_download_toast") { // from class: com.bytedance.sdk.openadsdk.core.o.o.4
                @Override // java.lang.Runnable
                public void run() {
                    Toast makeText = Toast.makeText(wp.getContext(), "", 1);
                    makeText.setText("即将跳转到应用商店...");
                    makeText.show();
                }
            });
            le.iw().postDelayed(runnable, 500L);
        }
    }

    public static void dq(String str, j jVar) {
        boolean mn;
        try {
            if (wp.getContext() != null && !TextUtils.isEmpty(str) && (mn = r.mn(jVar))) {
                fw kf = jVar.kf();
                if (kf != null && !TextUtils.isEmpty(kf.dq())) {
                    ig.p("TTDownload-Util", "含有deepLink");
                    if (r.p(jVar) != 0) {
                        ig.p("TTDownload-Util", "deepLink过滤 DownConfig.getDownConfigAutoOpen(materialMeta) " + r.p(jVar));
                        return;
                    }
                }
                if (mn) {
                    if (com.bytedance.sdk.openadsdk.jy.d.dq(str)) {
                        ig.p("TTDownload-Util", "该app已被激活 pkgName ".concat(String.valueOf(str)));
                    } else if (r.ia(jVar)) {
                        dq(wp.getContext(), jVar, str);
                    } else {
                        d(jVar, str);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean dq(j jVar) {
        if (jVar == null || !dq(d())) {
            return false;
        }
        int y = jVar.y();
        String gn = jVar.gn();
        com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ox.dq();
        if ((TextUtils.isEmpty(gn) || y != 4) && !dq.d("is_landing_page_open_market", false)) {
            return false;
        }
        dq.dq("is_landing_page_open_market", false);
        return true;
    }

    private static boolean dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optInt("enable_open_app_dialog") == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(j jVar, String str) {
        if (jVar == null) {
            return;
        }
        c.dq(wp.getContext(), str);
    }

    public static boolean ox() {
        if (Build.VERSION.SDK_INT >= 23) {
            return com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE");
        }
        return true;
    }

    public static String p() {
        try {
            Bridge h = no.ia().h();
            return h != null ? (String) h.call(1, hat.f19147b, String.class) : "0.0.0";
        } catch (Exception unused) {
            return "0.0.0";
        }
    }

    private static String s() {
        File dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(wp.getContext(), Environment.DIRECTORY_DOWNLOADS);
        if (dq == null) {
            return null;
        }
        if (!dq.exists()) {
            dq.mkdirs();
        }
        if (dq.exists()) {
            return dq.getAbsolutePath();
        }
        return null;
    }
}
