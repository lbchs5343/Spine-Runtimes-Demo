package com.bykv.vk.component.ttvideo.log;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public long f489a = -2147483648L;

    /* renamed from: b, reason: collision with root package name */
    public long f490b = -2147483648L;

    /* renamed from: c, reason: collision with root package name */
    public long f491c = -2147483648L;

    /* renamed from: d, reason: collision with root package name */
    public long f492d = -2147483648L;

    /* renamed from: e, reason: collision with root package name */
    public long f493e = -2147483648L;

    /* renamed from: f, reason: collision with root package name */
    public long f494f = -2147483648L;

    /* renamed from: g, reason: collision with root package name */
    public int f495g = Integer.MIN_VALUE;
    public int h = Integer.MIN_VALUE;
    public int i = Integer.MIN_VALUE;
    public int j = Integer.MIN_VALUE;
    public String k = "";
    public String l = "";
    public int m = Integer.MIN_VALUE;
    public String n = "";
    public String o = "";
    public String p = "";

    public static void a(Map map, String str, int i) {
        if (i != Integer.MIN_VALUE) {
            map.put(str, Integer.valueOf(i));
        }
    }

    public static void a(Map map, String str, long j) {
        if (j != -2147483648L) {
            map.put(str, Long.valueOf(j));
        }
    }

    public static void a(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    public JSONObject a(c cVar) {
        if (cVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        a(hashMap, "player_sessionid", this.n);
        a(hashMap, "log_type", "video_playq");
        a(hashMap, PluginConstants.KEY_SDK_VERSION, cVar.f471e);
        a(hashMap, "sv", cVar.f470d);
        a(hashMap, "pc", cVar.f469c);
        a(hashMap, "pt", this.f491c);
        a(hashMap, "vt", this.f492d);
        a(hashMap, "et", this.f493e);
        a(hashMap, "lt", this.f494f);
        a((Map) hashMap, "bc", this.f495g);
        a((Map) hashMap, "br", this.h);
        a((Map) hashMap, "vd", cVar.h);
        a(hashMap, "initial_url", this.k);
        a(hashMap, "init_audio_url", this.l);
        a((Map) hashMap, "watch_dur", this.m);
        a((Map) hashMap, "errt", this.i);
        a((Map) hashMap, "errc", this.j);
        a(hashMap, "ps_t", this.f489a);
        a(hashMap, "pt_new", this.f490b);
        a(hashMap, "play_log_id", this.o);
        a(hashMap, "last_sessionid", this.p);
        return new JSONObject(hashMap);
    }
}
