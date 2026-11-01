package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.Map;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public a f467a;

    /* renamed from: b, reason: collision with root package name */
    public String f468b;

    /* renamed from: g, reason: collision with root package name */
    public String f473g;

    /* renamed from: c, reason: collision with root package name */
    public String f469c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f470d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f471e = "";
    public int h = Integer.MIN_VALUE;

    /* renamed from: f, reason: collision with root package name */
    public String f472f = com.bykv.vk.component.ttvideo.utils.b.a(null);

    public c(a aVar, Context context) {
        this.f467a = aVar;
    }

    public void a() {
        b();
    }

    public void a(String str) {
        this.f468b = str;
        this.f472f = com.bykv.vk.component.ttvideo.utils.b.b(str);
    }

    public void b() {
        Map versionInfo;
        a aVar = this.f467a;
        if (aVar == null || (versionInfo = aVar.versionInfo()) == null) {
            return;
        }
        this.f469c = (String) versionInfo.get("pc");
        this.f470d = (String) versionInfo.get("sv");
        this.f471e = (String) versionInfo.get(PluginConstants.KEY_SDK_VERSION);
    }

    public void b(String str) {
    }
}
