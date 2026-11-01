package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.o;
import java.io.File;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {
    private static ThreadPoolExecutor cd;
    private static d fw;

    /* renamed from: d, reason: collision with root package name */
    final com.bykv.vk.openvk.preload.geckox.kk.dq f668d;
    public final Context dq;

    /* renamed from: f, reason: collision with root package name */
    public JSONObject f669f;
    public final Long ia;
    public final String ig;
    public final List<String> iw;
    public final boolean jy;
    public final String kk;
    final com.bykv.vk.openvk.preload.geckox.dq.dq.dq mn;
    public final String mp;
    public final String no;
    public final String o;
    public final com.bykv.vk.openvk.preload.geckox.q.dq ox;
    public final com.bykv.vk.openvk.preload.geckox.mp.dq p;
    public final File q;
    public final List<String> s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        List<String> f671d;
        com.bykv.vk.openvk.preload.geckox.mp.dq dq;
        com.bykv.vk.openvk.preload.geckox.dq.dq.dq ia;
        String ig;
        com.bykv.vk.openvk.preload.geckox.q.dq iw;
        String jy;
        Long kk;
        boolean mn = true;
        File mp;
        String no;
        String o;
        List<String> ox;
        Context p;
        String q;
        com.bykv.vk.openvk.preload.geckox.kk.dq s;

        public dq(Context context) {
            this.p = context.getApplicationContext();
        }
    }

    private p(dq dqVar) {
        Context context = dqVar.p;
        this.dq = context;
        if (context == null) {
            throw new IllegalArgumentException("context == null");
        }
        List<String> list = dqVar.f671d;
        this.s = list;
        this.iw = dqVar.ox;
        this.f668d = dqVar.s;
        this.mn = dqVar.ia;
        Long l = dqVar.kk;
        this.ia = l;
        if (TextUtils.isEmpty(dqVar.o)) {
            this.kk = com.bykv.vk.openvk.preload.geckox.utils.d.dq(context);
        } else {
            this.kk = dqVar.o;
        }
        String str = dqVar.no;
        this.o = str;
        this.ig = dqVar.q;
        this.mp = dqVar.jy;
        File file = dqVar.mp;
        if (file == null) {
            this.q = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context), "gecko_offline_res_x");
        } else {
            this.q = file;
        }
        String str2 = dqVar.ig;
        this.no = str2;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("host == null");
        }
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        if (l == null) {
            throw new IllegalArgumentException("appId == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("deviceId key empty");
        }
        this.p = dqVar.dq;
        this.ox = dqVar.iw;
        this.jy = dqVar.mn;
    }

    public /* synthetic */ p(dq dqVar, byte b2) {
        this(dqVar);
    }

    public static Executor d() {
        return ox();
    }

    public static Executor dq() {
        return ox();
    }

    public static void dq(d dVar) {
        fw = dVar;
    }

    public static ExecutorService ox() {
        d dVar = fw;
        ExecutorService dq2 = dVar != null ? dVar.dq() : null;
        if (dq2 != null) {
            return dq2;
        }
        if (cd == null) {
            synchronized (p.class) {
                try {
                    if (cd == null) {
                        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new o("load/geckox/b"));
                        cd = pVar;
                        pVar.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return cd;
    }
}
