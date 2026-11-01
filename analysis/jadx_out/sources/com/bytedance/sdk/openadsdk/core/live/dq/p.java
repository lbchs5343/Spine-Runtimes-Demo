package com.bytedance.sdk.openadsdk.core.live.dq;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface p {
    int b_(j jVar);

    int d();

    int d(Context context, j jVar, Map<String, Object> map);

    int dq(Context context, j jVar, Map<String, Object> map);

    int dq(com.bytedance.sdk.openadsdk.core.live.d.d dVar, boolean z);

    int dq(j jVar, ox oxVar, String str);

    int dq(String str);

    void dq();

    void dq(Bridge bridge);

    void dq(String str, j jVar, long j);

    void dq(String str, boolean z);

    boolean dq(j jVar);

    boolean dq(String str, int i);

    String iw();

    JSONObject mn();

    void ox();

    int p();

    boolean s();
}
