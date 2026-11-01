package com.bykv.vk.openvk.component.video.dq.d;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bykv.vk.openvk.component.video.dq.d.dq.ox;
import java.util.Set;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    static volatile com.bykv.vk.openvk.component.video.dq.d.dq.ox f553d;
    static volatile com.bykv.vk.openvk.component.video.dq.d.dq.d dq;
    static volatile boolean iw;
    public static volatile Integer kk;

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context no;
    private static volatile com.bykv.vk.openvk.component.video.dq.d.d.ox o;
    public static volatile boolean p;
    public static final boolean ox = com.bytedance.sdk.component.utils.ig.ox();
    static volatile boolean s = true;
    static volatile int mn = 0;
    public static volatile int ia = 3;

    public static com.bykv.vk.openvk.component.video.dq.d.dq.d d() {
        return dq;
    }

    public static void d(boolean z) {
        iw = z;
    }

    public static com.bykv.vk.openvk.component.video.dq.d.dq.ox dq() {
        return f553d;
    }

    public static void dq(int i) {
        mn = i;
    }

    public static void dq(com.bykv.vk.openvk.component.video.dq.d.dq.ox oxVar, Context context) {
        if (oxVar == null || context == null) {
            throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
        }
        no = context.getApplicationContext();
        if (f553d != null) {
            return;
        }
        com.bykv.vk.openvk.component.video.dq.d.dq.d dVar = dq;
        if (dVar != null && dVar.dq.getAbsolutePath().equals(oxVar.dq.getAbsolutePath())) {
            throw new IllegalArgumentException("DiskLruCache and DiskCache can't use the same dir");
        }
        f553d = oxVar;
        o = com.bykv.vk.openvk.component.video.dq.d.d.ox.dq(context);
        f553d.dq(new ox.dq() { // from class: com.bykv.vk.openvk.component.video.dq.d.s.1
            @Override // com.bykv.vk.openvk.component.video.dq.d.dq.ox.dq
            public void dq(String str) {
                if (s.ox) {
                    "new cache created: ".concat(String.valueOf(str));
                }
            }

            @Override // com.bykv.vk.openvk.component.video.dq.d.dq.ox.dq
            public void dq(Set<String> set) {
                s.o.dq(set, 0);
                if (s.ox) {
                    "cache file removed, ".concat(String.valueOf(set));
                }
            }
        });
        iw dq2 = iw.dq();
        dq2.dq(oxVar);
        dq2.dq(o);
        p ox2 = p.ox();
        ox2.dq(oxVar);
        ox2.dq(o);
    }

    public static void dq(boolean z) {
        s = z;
    }

    public static Context getContext() {
        return no;
    }
}
