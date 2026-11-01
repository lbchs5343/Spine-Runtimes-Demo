package com.bytedance.sdk.openadsdk.core;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.nh;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface h<T> {

    public interface d {
        void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar);

        void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar);
    }

    public interface dq {
        void dq(boolean z, long j, long j2);
    }

    public interface ox<T> {
        void dq(int i, String str);

        void dq(T t);
    }

    public interface p {
        void dq(int i, String str);

        void dq(ji.ox oxVar);
    }

    public interface s {
        void dq(int i, String str);

        void dq(ji.p pVar);
    }

    void d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, d dVar2);

    com.bytedance.sdk.component.adexpress.dq.ox.dq dq(int i);

    com.bytedance.sdk.openadsdk.core.r.ox dq(com.bytedance.sdk.openadsdk.core.r.j jVar, String str);

    String dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar);

    String dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z, int i);

    void dq(Bridge bridge);

    void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, List<com.bytedance.sdk.openadsdk.f.d.d.iw> list);

    void dq(io ioVar, String str, String str2, ox oxVar, int i, long j);

    void dq(com.bytedance.sdk.openadsdk.core.r.j jVar, JSONObject jSONObject);

    void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, d dVar2);

    void dq(String str);

    void dq(String str, String str2, dq dqVar);

    void dq(String str, String str2, String str3, String str4, Bridge bridge);

    void dq(JSONObject jSONObject, ox<com.bytedance.sdk.component.kk.d> oxVar);

    void dq(JSONObject jSONObject, p pVar);

    void dq(JSONObject jSONObject, s sVar);

    void ox(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, d dVar2);
}
