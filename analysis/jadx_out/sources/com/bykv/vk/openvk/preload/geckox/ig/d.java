package com.bykv.vk.openvk.preload.geckox.ig;

import android.os.Build;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "app_version")
    public String f647d;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "aid")
    public long dq;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "device_model")
    public String ia;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "uid")
    public String ig;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "ac")
    public String iw;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "device_platform")
    public String kk;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "os_version")
    public String mn;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "region")
    public String no;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = PluginConstants.KEY_SDK_VERSION)
    public String o;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "os")
    public int ox = 0;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "device_id")
    public String p;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "app_name")
    public String s;

    public d(long j, String str, String str2, String str3, String str4, String str5, String str6) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        this.mn = sb.toString();
        this.ia = Build.MODEL;
        this.kk = "android";
        this.o = "2.0.3-rc.9-pangle";
        this.dq = j;
        this.f647d = str;
        this.p = str2;
        this.s = str3;
        this.iw = str4;
        this.ig = str5;
        this.no = str6;
    }
}
