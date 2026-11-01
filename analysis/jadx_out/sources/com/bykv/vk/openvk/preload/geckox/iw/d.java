package com.bykv.vk.openvk.preload.geckox.iw;

import android.content.Context;
import android.text.TextUtils;
import g.awf;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class d {
    public String ox;
    private String p;
    public final Map<String, dq> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public AtomicBoolean f656d = new AtomicBoolean(false);

    public d(Context context, String str, File file) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        this.p = str;
        if (file == null) {
            this.ox = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context), awf.ad(new StringBuilder("gecko_offline_res_x"), File.separator, str)).getAbsolutePath();
        } else {
            this.ox = new File(file, str).getAbsolutePath();
        }
    }

    public final dq dq(String str) {
        dq dqVar;
        int indexOf = str.indexOf("/");
        if (indexOf == -1) {
            new RuntimeException("channel：".concat(str));
        }
        String substring = str.substring(0, indexOf);
        synchronized (this.dq) {
            try {
                dqVar = this.dq.get(substring);
                if (dqVar == null) {
                    dqVar = new dq(this.ox, substring);
                    this.dq.put(substring, dqVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dqVar;
    }
}
