package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.wp;
import com.bytedance.sdk.openadsdk.core.d.dq.d.o;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ia {
    private static volatile ia dq;

    /* renamed from: d, reason: collision with root package name */
    private boolean f2769d;
    private Object ox;
    private AtomicBoolean p = new AtomicBoolean(false);
    private AtomicInteger s = new AtomicInteger(3);
    private AtomicBoolean iw = new AtomicBoolean(false);

    private ia() {
        this.f2769d = false;
        try {
            Object obj = Class.forName("com.tencent.mm.opensdk.constants.Build").getDeclaredField("SDK_VERSION_NAME").get(null);
            if (obj instanceof String) {
                Locale locale = Locale.ROOT;
                this.f2769d = "android 5.3.1".toLowerCase(locale).compareTo(((String) obj).toLowerCase(locale)) <= 0;
            }
        } catch (Throwable unused) {
            this.f2769d = false;
        }
    }

    private void dq(String str) {
        Method dq2;
        if (!this.p.get() && this.s.getAndDecrement() > 0) {
            if (TextUtils.isEmpty(str)) {
                dq("wc_init_fail", "error_appid");
                return;
            }
            if (!p()) {
                dq("wc_init_fail", "error_permission");
                return;
            }
            if (!this.f2769d) {
                dq("wc_init_fail", "error_sdk");
                return;
            }
            try {
                Method dq3 = wp.dq("com.tencent.mm.opensdk.openapi.WXAPIFactory", "createWXAPI", Context.class, String.class);
                if (dq3 != null) {
                    Bridge nh = no.ia().nh();
                    Object call = nh != null ? nh.call(3, null, Context.class) : null;
                    if (call == null) {
                        call = com.bytedance.sdk.openadsdk.core.wp.getContext();
                    }
                    if (call == null && (dq2 = wp.dq("com.bytedance.sdk.openadsdk.TTAppContextHolder", "getContext", new Class[0])) != null) {
                        call = dq2.invoke(null, null);
                    }
                    if (call == null) {
                        dq("wc_init_fail", "error_sdk");
                        return;
                    }
                    this.ox = dq3.invoke(null, call, str);
                    dq("wc_init_suc", "");
                    this.p.set(true);
                }
            } catch (Throwable unused) {
                dq("wc_init_fail", "error_sdk");
            }
        }
    }

    private void dq(String str, String str2) {
        try {
            final com.bytedance.sdk.openadsdk.core.gh.dq.ox<com.bytedance.sdk.openadsdk.core.gh.dq.ox> d2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d();
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("error_message", str2);
                d2.d(jSONObject.toString());
            }
            d2.dq(str);
            ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.ia.1
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() {
                    return d2;
                }
            }, str);
        } catch (Throwable unused) {
        }
    }

    public static ia ox() {
        if (dq == null) {
            synchronized (ia.class) {
                try {
                    if (dq == null) {
                        dq = new ia();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private boolean p() {
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage("com.tencent.mm");
        return packageManager.queryIntentActivities(intent, 0).size() > 0 || c.iw(context);
    }

    private void s() {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.ia.2
            @Override // java.lang.Runnable
            public void run() {
                Toast makeText = Toast.makeText(com.bytedance.sdk.openadsdk.core.wp.getContext(), "跳转微信失败。", 1);
                makeText.setGravity(17, 0, 0);
                makeText.show();
            }
        });
    }

    public int d() {
        return this.f2769d ? 1 : 0;
    }

    public void dq(j jVar, String str, String str2, final o.dq dqVar, String str3, boolean z) {
        try {
            if (jVar == null) {
                dqVar.d();
                s();
                return;
            }
            io gs = jVar.gs();
            if (gs == null) {
                dqVar.d();
                s();
                return;
            }
            dq(gs.ia());
            if (this.ox == null) {
                dqVar.d();
                s();
                return;
            }
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object newInstance = cls.newInstance();
            Field declaredField = cls.getDeclaredField("userName");
            declaredField.setAccessible(true);
            declaredField.set(newInstance, str);
            Field declaredField2 = cls.getDeclaredField("path");
            declaredField2.setAccessible(true);
            declaredField2.set(newInstance, str2);
            Field declaredField3 = cls.getDeclaredField("miniprogramType");
            declaredField3.setAccessible(true);
            try {
                declaredField3.set(newInstance, cls.getDeclaredField("MINIPTOGRAM_TYPE_RELEASE").get(null));
            } catch (Throwable unused) {
                declaredField3.set(newInstance, 0);
            }
            this.ox.getClass().getMethod("sendReq", cls.getSuperclass()).invoke(this.ox, newInstance);
            gs.d(2);
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.ia.3
                @Override // java.lang.Runnable
                public void run() {
                    dqVar.dq();
                }
            });
            com.bytedance.sdk.openadsdk.core.ig.ox.p(jVar, str3, "deeplink_success_realtime");
            com.bytedance.sdk.openadsdk.core.ig.ox.ia(jVar, str3, "open_url_app", null);
            com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(jVar, str3, z);
        } catch (Throwable unused2) {
            dqVar.d();
            s();
        }
    }

    public boolean dq() {
        return this.f2769d;
    }
}
