package com.bykv.vk.openvk.preload.geckox.ig;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "deployments")
    private Map<String, Object> f648d;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "common")
    private com.bykv.vk.openvk.preload.geckox.ig.d dq;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "local")
    private Map<String, Map<String, d>> ox;

    @com.bykv.vk.openvk.preload.dq.dq.ox(dq = MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM)
    private Map<String, Map<String, Object>> p;

    public static class d {

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "l_v")
        public Long dq;
    }

    /* renamed from: com.bykv.vk.openvk.preload.geckox.ig.dq$dq, reason: collision with other inner class name */
    public static class C0017dq {

        /* renamed from: d, reason: collision with root package name */
        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "group_name")
        public String f649d;

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "target_channels")
        public List<ox> dq;
    }

    public static class ox {

        @com.bykv.vk.openvk.preload.dq.dq.ox(dq = "c")
        public String dq;

        public ox() {
        }

        public ox(String str) {
            this.dq = str;
        }
    }

    public void d(Map<String, Map<String, d>> map) {
        this.ox = map;
    }

    public void dq(com.bykv.vk.openvk.preload.geckox.ig.d dVar) {
        this.dq = dVar;
    }

    public void dq(Map<String, Object> map) {
        this.f648d = map;
    }

    public void ox(Map<String, Map<String, Object>> map) {
        this.p = map;
    }
}
