package com.bytedance.sdk.openadsdk.core.component.reward.dq.dq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.iw;
import com.bytedance.sdk.openadsdk.core.component.reward.dq.p;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.File;
import java.io.FileFilter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private final Context f2581d;
    private final ox ox;
    private long p;

    private d(Context context) {
        this.f2581d = context == null ? wp.getContext() : context.getApplicationContext();
        this.ox = new ox();
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d(wp.getContext());
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private JSONObject dq(j jVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("req_id", jVar.i());
            jSONObject.put("aid", Long.valueOf(jVar.fa()));
            jSONObject.put("cid", Long.valueOf(jVar.fx()));
            jSONObject.put("price", jVar.kx());
            jSONObject.put("material_key", jVar.wp());
            jSONObject.put("s_send_ts", jVar.h());
            jSONObject.put("cache_time", jVar.f());
            jSONObject.put("ext", jVar.fw());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public synchronized j d(boolean z, String str) {
        j ox = p.dq(z, false).ox(str);
        if (ox == null) {
            return null;
        }
        if (i.s(ox)) {
            if (TextUtils.isEmpty(str) || !str.endsWith("again")) {
                return ox;
            }
            return null;
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(ox)) {
            return ox;
        }
        if (pa.q(ox) == null) {
            return null;
        }
        return ox;
    }

    public void d() {
        File[] listFiles;
        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(7).dq();
        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(8).dq();
        File ox = (("mounted".equals(com.bytedance.sdk.openadsdk.h.ox.dq()) || !Environment.isExternalStorageRemovable()) && com.bytedance.sdk.openadsdk.api.plugin.d.ox(this.f2581d) != null) ? com.bytedance.sdk.openadsdk.api.plugin.d.ox(this.f2581d) : com.bytedance.sdk.openadsdk.api.plugin.d.d(this.f2581d);
        if (ox == null || !ox.exists() || !ox.isDirectory() || (listFiles = ox.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                if (file != null) {
                    return file.getName().contains("reward_video_cache");
                }
                return false;
            }
        })) == null || listFiles.length <= 0) {
            return;
        }
        for (File file : listFiles) {
            try {
                iw.ox(file);
            } catch (Throwable unused) {
            }
        }
    }

    public void d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dq(dVar, str);
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.d dq(String str) {
        return this.ox.dq(str);
    }

    public String dq(boolean z, String str) {
        long ox = wp.d().ox(str);
        if (ox > 0 && System.currentTimeMillis() - this.p < ox) {
            return "1";
        }
        int i = z ? 7 : 8;
        j d2 = d(z, str);
        if (d2 == null) {
            return "0";
        }
        if (d2.h() + d2.f() < System.currentTimeMillis()) {
            com.bytedance.sdk.openadsdk.core.p.ox.p.dq(i).dq(str);
            return "1";
        }
        JSONObject dq2 = dq(d2);
        if (dq2 == null) {
            return "0";
        }
        this.p = System.currentTimeMillis();
        return dq2.toString();
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        this.ox.dq(str, dVar);
    }
}
