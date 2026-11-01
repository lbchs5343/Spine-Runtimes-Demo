package com.bytedance.sdk.openadsdk.core.video.p;

import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.s.dq;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.ce;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.core.wp.ia;
import com.bytedance.sdk.openadsdk.core.wp.mp;
import com.bytedance.sdk.openadsdk.core.wp.o;
import com.bytedance.sdk.openadsdk.core.wp.ox;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.iw.ox.ig;
import com.bytedance.sdk.openadsdk.iw.ox.no;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static volatile com.bykv.vk.openvk.component.video.api.s.dq f3682d;
    private static volatile com.bykv.vk.openvk.component.video.api.s.dq dq;

    /* JADX INFO: Access modifiers changed from: private */
    public static ValueSet d(int i, ia iaVar, p pVar, dq.InterfaceC0005dq interfaceC0005dq, long j, j jVar) {
        int i2;
        int i3;
        String str;
        try {
        } catch (Exception e2) {
            e2.getMessage();
        }
        if (iaVar == null) {
            dq(pVar, AVMDLDataLoader.AVMDLErrorIsCreateTask, -2, "resultModel is null", (JSONObject) null, System.currentTimeMillis() - j);
            p(pVar, interfaceC0005dq, jVar);
            return null;
        }
        Result ox = iaVar.ox();
        if (ox == null) {
            dq(pVar, AVMDLDataLoader.AVMDLErrorIsCreateTask, -3, "result is null", (JSONObject) null, System.currentTimeMillis() - j);
            p(pVar, interfaceC0005dq, jVar);
            return null;
        }
        ValueSet values = ox.values();
        if (values == null) {
            dq(pVar, AVMDLDataLoader.AVMDLErrorIsCreateTask, -4, "value is null", (JSONObject) null, System.currentTimeMillis() - j);
            p(pVar, interfaceC0005dq, jVar);
            return null;
        }
        JSONObject jSONObject = (JSONObject) values.objectValue(2, JSONObject.class);
        values.stringValue(5);
        JSONObject jSONObject2 = (JSONObject) values.objectValue(3, JSONObject.class);
        JSONObject jSONObject3 = (JSONObject) values.objectValue(4, JSONObject.class);
        if (!ox.isSuccess() || jSONObject == null) {
            i2 = AVMDLDataLoader.AVMDLErrorIsCreateTask;
            i3 = -5;
            str = null;
        } else {
            i2 = jSONObject.optInt("pitaya_cache_size", -1);
            i3 = jSONObject.optInt("pitaya_code", 200);
            str = "success";
            mp.dq(pVar, jSONObject, i2, i3);
        }
        if (!ox.isSuccess() && jSONObject3 != null) {
            str = jSONObject3.toString();
        }
        dq(pVar, i2, i3, str, jSONObject2, System.currentTimeMillis() - j);
        p(pVar, interfaceC0005dq, jVar);
        return null;
    }

    private static com.bykv.vk.openvk.component.video.api.s.dq d(p pVar) {
        if (pVar.cd() == 1) {
            if (f3682d == null) {
                synchronized (d.class) {
                    try {
                        if (f3682d == null) {
                            f3682d = new com.bytedance.sdk.component.ig.d.d.dq();
                        }
                    } finally {
                    }
                }
            }
            return f3682d;
        }
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new com.bykv.vk.openvk.component.video.dq.dq.d.dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private static void d(p pVar, dq.InterfaceC0005dq interfaceC0005dq, j jVar) {
        if (interfaceC0005dq != null) {
            interfaceC0005dq.dq(pVar, -100);
        }
        if (jVar != null) {
            if (d(c.ia(jVar)) || dq(c.ia(jVar))) {
                dq(pVar, jVar, 0L);
            }
        }
    }

    private static void d(p pVar, j jVar) {
        if (ox(pVar)) {
            long ig = pVar.mp() ? pVar.ig() : pVar.iw();
            String d2 = c.d(jVar);
            JSONObject dq2 = com.bytedance.sdk.openadsdk.iw.d.d.dq(pVar, null, -1, pVar.cd(), jVar);
            ig igVar = new ig(pVar.f(), ig);
            igVar.dq(pVar);
            com.bytedance.sdk.openadsdk.iw.d.d.dq((com.bytedance.sdk.openadsdk.iw.ox.d<ig>) new com.bytedance.sdk.openadsdk.iw.ox.d(jVar, d2, dq2, igVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(p pVar, j jVar, long j, int i, String str) {
        if (ox(pVar)) {
            String d2 = c.d(jVar);
            JSONObject dq2 = com.bytedance.sdk.openadsdk.iw.d.d.dq(pVar, null, -1, pVar.cd(), jVar);
            no noVar = new no();
            noVar.dq(pVar.f());
            noVar.dq(pVar.iw());
            noVar.d(j);
            noVar.dq(i);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            noVar.d(str);
            noVar.ox("");
            noVar.dq(pVar);
            com.bytedance.sdk.openadsdk.iw.d.d.ox((com.bytedance.sdk.openadsdk.iw.ox.d<no>) new com.bytedance.sdk.openadsdk.iw.ox.d(jVar, d2, dq2, noVar));
        }
    }

    private static boolean d(int i) {
        return i == 8 || i == 7;
    }

    public static j dq(p pVar) {
        if (pVar == null) {
            return null;
        }
        Object s = pVar.s("material_meta");
        if (s instanceof j) {
            return (j) s;
        }
        return null;
    }

    private static void dq(p pVar, int i, int i2, String str, JSONObject jSONObject, long j) {
        JSONObject dq2 = pVar.dq();
        try {
            dq2.put("pitaya_cache_size", i);
            dq2.put("pitaya_code", i2);
            dq2.put("pitaya_msg", str);
            dq2.put("ext_plugin_code", ce.d());
            dq2.put("package", jSONObject);
            dq2.put("run_task_mills", j);
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public static void dq(final p pVar, final dq.InterfaceC0005dq interfaceC0005dq) {
        if (pVar == null) {
            d(null, interfaceC0005dq, null);
            return;
        }
        pVar.iw();
        pVar.mp();
        final j dq2 = dq(pVar);
        if (pVar.iw() <= 0 && !pVar.mp()) {
            d(pVar, interfaceC0005dq, dq2);
        } else if (mn.dq()) {
            mn.dq(new kk("csj_vPreload") { // from class: com.bytedance.sdk.openadsdk.core.video.p.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.ox(pVar, interfaceC0005dq, dq2);
                }
            });
        } else {
            ox(pVar, interfaceC0005dq, dq2);
        }
    }

    private static void dq(p pVar, dq.InterfaceC0005dq interfaceC0005dq, j jVar, long j, boolean z) {
        dq(pVar, AVMDLDataLoader.AVMDLErrorIsCreateTask, z ? -6 : -9, "bridge is null", (JSONObject) null, System.currentTimeMillis() - j);
        p(pVar, interfaceC0005dq, jVar);
    }

    public static void dq(p pVar, j jVar, long j) {
        if (ox(pVar)) {
            String d2 = c.d(jVar);
            JSONObject dq2 = com.bytedance.sdk.openadsdk.iw.d.d.dq(pVar, null, -1, pVar.cd(), jVar);
            com.bytedance.sdk.openadsdk.iw.ox.mp mpVar = new com.bytedance.sdk.openadsdk.iw.ox.mp();
            mpVar.dq(pVar.f());
            mpVar.dq(pVar.iw());
            mpVar.d(j);
            mpVar.dq(pVar);
            if (pVar.le() == 1) {
                mpVar.ox(1L);
            } else {
                mpVar.ox(0L);
            }
            com.bytedance.sdk.openadsdk.iw.d.d.d((com.bytedance.sdk.openadsdk.iw.ox.d<com.bytedance.sdk.openadsdk.iw.ox.mp>) new com.bytedance.sdk.openadsdk.iw.ox.d(jVar, d2, dq2, mpVar));
        }
    }

    private static boolean dq(int i) {
        return i == 3 || i == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(final p pVar, final dq.InterfaceC0005dq interfaceC0005dq, final j jVar) {
        try {
            final long currentTimeMillis = System.currentTimeMillis();
            int ia = jVar != null ? c.ia(jVar) : 0;
            boolean dq2 = o.dq();
            if (!d(ia) || !dq2) {
                dq(pVar, interfaceC0005dq, jVar, currentTimeMillis, dq2);
                return;
            }
            if (wp.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB) == null) {
                dq(pVar, interfaceC0005dq, jVar, currentTimeMillis, dq2);
                return;
            }
            ox oxVar = (ox) AutoService.dq(ox.class);
            if (oxVar == null || !oxVar.p()) {
                dq(pVar, AVMDLDataLoader.AVMDLErrorIsCreateTask, -8, "not init", (JSONObject) null, System.currentTimeMillis() - currentTimeMillis);
                p(pVar, interfaceC0005dq, jVar);
            } else {
                final JSONObject dq3 = new mp().dq(pVar);
                oxVar.dq("video_cache", dq3, new com.bytedance.sdk.openadsdk.core.wp.mn() { // from class: com.bytedance.sdk.openadsdk.core.video.p.d.2
                    @Override // com.bytedance.sdk.openadsdk.core.wp.mn
                    public ValueSet dq(int i, ia iaVar) {
                        com.bytedance.sdk.openadsdk.core.gh.ig.dq();
                        com.bytedance.sdk.openadsdk.core.gh.ig.dq(iaVar == null ? null : iaVar.ox(), dq3);
                        return d.d(i, iaVar, pVar, interfaceC0005dq, currentTimeMillis, jVar);
                    }
                });
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d("pit predict error:" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(p pVar, j jVar) {
        if (ox(pVar)) {
            String d2 = c.d(jVar);
            JSONObject dq2 = com.bytedance.sdk.openadsdk.iw.d.d.dq(pVar, null, -1, pVar.cd(), jVar);
            com.bytedance.sdk.openadsdk.iw.ox.o oVar = new com.bytedance.sdk.openadsdk.iw.ox.o(pVar.f(), pVar.iw());
            oVar.dq(pVar);
            com.bytedance.sdk.openadsdk.iw.d.d.p((com.bytedance.sdk.openadsdk.iw.ox.d<com.bytedance.sdk.openadsdk.iw.ox.o>) new com.bytedance.sdk.openadsdk.iw.ox.d(jVar, d2, dq2, oVar));
        }
    }

    private static boolean ox(p pVar) {
        return Build.VERSION.SDK_INT >= 23 || pVar.cd() != 0;
    }

    private static void p(final p pVar, final dq.InterfaceC0005dq interfaceC0005dq, final j jVar) {
        pVar.iw(6000);
        pVar.mn(6000);
        pVar.ia(6000);
        if (jVar != null) {
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
                return;
            }
            if (pVar.ox() == 400) {
                ox(pVar, jVar);
                return;
            }
            d(pVar, jVar);
        }
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        dq.InterfaceC0005dq interfaceC0005dq2 = new dq.InterfaceC0005dq() { // from class: com.bytedance.sdk.openadsdk.core.video.p.d.3
            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void d(p pVar2, int i) {
                dq.InterfaceC0005dq interfaceC0005dq3 = dq.InterfaceC0005dq.this;
                if (interfaceC0005dq3 != null) {
                    interfaceC0005dq3.dq(pVar2, i);
                }
                j jVar2 = jVar;
                if (jVar2 != null) {
                    d.ox(pVar, jVar2);
                }
                com.bytedance.sdk.component.utils.ig.dq("VideoPreloadUtils", "pit cancel: ", pVar.fw());
            }

            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void dq(p pVar2, int i) {
                dq.InterfaceC0005dq interfaceC0005dq3 = dq.InterfaceC0005dq.this;
                if (interfaceC0005dq3 != null) {
                    interfaceC0005dq3.dq(pVar2, i);
                }
                if (jVar != null) {
                    d.dq(pVar, jVar, SystemClock.elapsedRealtime() - elapsedRealtime);
                }
                com.bytedance.sdk.component.utils.ig.dq("VideoPreloadUtils", "pit onVideoPreloadSuccess: ", pVar.fw());
            }

            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void dq(p pVar2, int i, String str) {
                dq.InterfaceC0005dq interfaceC0005dq3 = dq.InterfaceC0005dq.this;
                if (interfaceC0005dq3 != null) {
                    interfaceC0005dq3.dq(pVar2, i, str);
                }
                if (jVar != null) {
                    d.d(pVar, jVar, SystemClock.elapsedRealtime() - elapsedRealtime, i, str);
                }
                com.bytedance.sdk.component.utils.ig.dq("VideoPreloadUtils", "pit onVideoPreloadFail: ", pVar.fw());
            }
        };
        try {
            if (pVar.cd() != 0 || Build.VERSION.SDK_INT >= 23) {
                d(pVar).dq(wp.getContext(), pVar, interfaceC0005dq2);
            } else {
                com.bykv.vk.openvk.component.video.dq.d.iw.dq.dq().dq(pVar);
            }
        } catch (Exception e2) {
            if (interfaceC0005dq != null) {
                com.bytedance.sdk.component.utils.ig.dq("VideoPreloadUtils", "pit exception onVideoPreloadFail: ", pVar.fw());
                interfaceC0005dq.dq(pVar, -1, e2.getMessage());
            }
            if (jVar != null) {
                d(pVar, jVar, SystemClock.elapsedRealtime() - elapsedRealtime, -1, e2.getMessage());
            }
            e2.printStackTrace();
        }
    }
}
