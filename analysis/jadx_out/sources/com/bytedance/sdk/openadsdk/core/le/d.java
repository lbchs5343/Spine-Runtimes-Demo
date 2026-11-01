package com.bytedance.sdk.openadsdk.core.le;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.ugeno.mn;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: com.bytedance.sdk.openadsdk.core.le.d$d, reason: collision with other inner class name */
    public interface InterfaceC0169d {
        void dq();

        void dq(JSONObject jSONObject);
    }

    public interface dq {
        void dq(int i, String str);

        void dq(JSONObject jSONObject);
    }

    public static void dq(j jVar, JSONObject jSONObject, final com.bytedance.sdk.openadsdk.core.fw.ox oxVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (oxVar == null) {
            return;
        }
        if (jVar != null) {
            try {
                if (!TextUtils.isEmpty(jVar.dn())) {
                    int ia = c.ia(jVar);
                    com.bytedance.sdk.openadsdk.f.d.ox.d ds = jVar.ds();
                    if (ds != null) {
                        dVar = ds;
                    }
                    nh nhVar = new nh();
                    nhVar.s = 2;
                    if (jVar.tv() != null) {
                        nhVar.mn = 2;
                    }
                    JSONObject td = jVar.td();
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        Iterator<String> keys = td.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            jSONObject2.put(next, td.opt(next));
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    if (jSONObject != null) {
                        Iterator<String> keys2 = jSONObject.keys();
                        while (keys2.hasNext()) {
                            String next2 = keys2.next();
                            jSONObject2.put(next2, jSONObject.opt(next2));
                        }
                    }
                    nhVar.mp = jSONObject2;
                    wp.dq().dq(dVar, nhVar, ia, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.le.d.2
                        @Override // com.bytedance.sdk.openadsdk.core.h.d
                        public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                            com.bytedance.sdk.openadsdk.core.fw.ox.this.dq(false, null, false);
                            dVar2.dq(i);
                            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.h.d
                        public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                            if (dqVar.d() != null && !dqVar.d().isEmpty()) {
                                com.bytedance.sdk.openadsdk.core.fw.ox.this.dq(true, dqVar.d(), false);
                                return;
                            }
                            com.bytedance.sdk.openadsdk.core.fw.ox.this.dq(false, null, false);
                            dVar2.dq(-3);
                            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                        }
                    });
                    return;
                }
            } catch (Exception e3) {
                ig.d("PageNetUtils", "get ads error", e3);
                return;
            }
        }
        oxVar.dq(false, null, false);
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar, InterfaceC0169d interfaceC0169d) {
        if (dqVar != null) {
            dq(dqVar.ox(), dqVar.dq(), dqVar.d(), interfaceC0169d);
        } else if (interfaceC0169d != null) {
            interfaceC0169d.dq();
        }
    }

    public static void dq(String str, final dq dqVar) {
        com.bytedance.sdk.component.kk.d.ox ox = s.dq().d().ox();
        ox.dq(str);
        ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.le.d.3
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar == null || !dVar.ia()) {
                    dq dqVar2 = dq.this;
                    if (dqVar2 == null || dVar == null) {
                        return;
                    }
                    dqVar2.dq(dVar.dq(), dVar.d());
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(dVar.p());
                    dq dqVar3 = dq.this;
                    if (dqVar3 != null) {
                        dqVar3.dq(jSONObject);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                dq dqVar2 = dq.this;
                if (dqVar2 != null) {
                    dqVar2.dq(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
                }
            }
        });
    }

    public static void dq(String str, final String str2, final String str3, final InterfaceC0169d interfaceC0169d) {
        if (TextUtils.isEmpty(str)) {
            if (interfaceC0169d != null) {
                interfaceC0169d.dq();
            }
        } else {
            com.bytedance.sdk.component.kk.d.ox ox = s.dq().d().ox();
            ox.dq(str);
            ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.le.d.1
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    if (dVar == null) {
                        return;
                    }
                    if (!dVar.ia()) {
                        InterfaceC0169d interfaceC0169d2 = interfaceC0169d;
                        if (interfaceC0169d2 != null) {
                            interfaceC0169d2.dq();
                            return;
                        }
                        return;
                    }
                    String p = dVar.p();
                    mn.dq().dq(str2, str3, p);
                    if (interfaceC0169d != null) {
                        try {
                            interfaceC0169d.dq(new JSONObject(p));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            interfaceC0169d.dq();
                        }
                    }
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    InterfaceC0169d interfaceC0169d2 = interfaceC0169d;
                    if (interfaceC0169d2 != null) {
                        interfaceC0169d2.dq();
                    }
                }
            });
        }
    }
}
