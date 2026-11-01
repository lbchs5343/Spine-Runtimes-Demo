package com.bytedance.sdk.openadsdk.h;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;
import java.io.File;

/* loaded from: classes3.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    public static volatile com.bykv.vk.openvk.component.video.api.dq.d f3761d = null;
    public static String dq = null;
    private static int iw = 1;
    public static volatile com.bykv.vk.openvk.component.video.api.dq.d ox;
    private static String p;
    private static String s;

    private static String d(int i) {
        File dq2;
        Context context = wp.getContext();
        if (i == 1) {
            ig.dq("CacheDirConstants", "使用内部存储");
            dq2 = com.bytedance.sdk.component.utils.iw.d(context, com.bytedance.sdk.openadsdk.core.multipro.d.ox(), "tt_ad");
        } else {
            ig.dq("CacheDirConstants", "使用外部存储");
            dq2 = com.bytedance.sdk.component.utils.iw.dq(context, com.bytedance.sdk.openadsdk.core.multipro.d.ox(), "tt_ad");
        }
        if (dq2.isFile()) {
            dq2.delete();
        }
        if (!dq2.exists()) {
            dq2.mkdirs();
        }
        return dq2.getAbsolutePath();
    }

    public static String[] d() {
        String d2 = d(1);
        com.bytedance.sdk.component.ig.d.dq.dq dqVar = new com.bytedance.sdk.component.ig.d.dq.dq();
        dqVar.dq(d2);
        String d3 = d(0);
        com.bytedance.sdk.component.ig.d.dq.dq dqVar2 = new com.bytedance.sdk.component.ig.d.dq.dq();
        dqVar2.dq(d3);
        return new String[]{dqVar.d(), dqVar.ox(), dqVar.dq(), dqVar.p(), dqVar2.d(), dqVar2.ox(), dqVar2.dq(), dqVar2.p()};
    }

    public static com.bykv.vk.openvk.component.video.api.dq.d dq(int i) {
        return i == 1 ? ia() : mn();
    }

    public static String dq() {
        StringBuilder sb = new StringBuilder();
        sb.append(kk());
        return awf.ad(sb, File.separator, "video_brand");
    }

    public static String dq(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(kk());
        return awf.ad(sb, File.separator, str);
    }

    private static com.bykv.vk.openvk.component.video.api.dq.d ia() {
        if (ox == null) {
            synchronized (kk.class) {
                try {
                    if (ox == null) {
                        com.bytedance.sdk.component.ig.d.dq.dq dqVar = new com.bytedance.sdk.component.ig.d.dq.dq();
                        ox = dqVar;
                        dqVar.dq(kk());
                        ox.s();
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    public static String iw() {
        if (s == null) {
            s = dq("image");
        }
        return s;
    }

    private static String kk() {
        if (!TextUtils.isEmpty(dq)) {
            return dq;
        }
        int g2 = wp.d().g();
        iw = g2;
        String d2 = d(g2);
        dq = d2;
        return d2;
    }

    private static com.bykv.vk.openvk.component.video.api.dq.d mn() {
        if (f3761d == null) {
            synchronized (kk.class) {
                try {
                    if (f3761d == null) {
                        com.bykv.vk.openvk.component.video.dq.dq.dq.dq dqVar = new com.bykv.vk.openvk.component.video.dq.dq.dq.dq();
                        f3761d = dqVar;
                        dqVar.dq(kk());
                        f3761d.s();
                    }
                } finally {
                }
            }
        }
        return f3761d;
    }

    public static long[] ox() {
        return new long[]{10485760, 20971520, 31457280, 20971520, 10485760, 20971520, 31457280, 20971520};
    }

    public static int p() {
        return iw;
    }

    public static String s() {
        if (p == null) {
            p = dq("splash_image");
        }
        return p;
    }
}
