package com.bykv.vk.openvk.preload.dq;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class mn {
    public String ia;
    public com.bykv.vk.openvk.preload.dq.d.p dq = com.bykv.vk.openvk.preload.dq.d.p.dq;

    /* renamed from: d, reason: collision with root package name */
    public gh f630d = gh.DEFAULT;
    public s ox = p.IDENTITY;
    public final Map<Type, ia<?>> p = new HashMap();
    public final List<i> s = new ArrayList();
    public final List<i> iw = new ArrayList();
    public boolean mn = false;
    public int kk = 2;
    public int o = 2;
    public boolean no = false;
    public boolean ig = false;
    public boolean mp = true;
    public boolean q = false;
    public boolean jy = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f631f = false;

    public final mn dq(Type type, Object obj) {
        com.bykv.vk.openvk.preload.dq.d.dq.dq(true);
        this.s.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(com.bykv.vk.openvk.preload.dq.ox.dq.dq(type), (r) obj));
        return this;
    }
}
