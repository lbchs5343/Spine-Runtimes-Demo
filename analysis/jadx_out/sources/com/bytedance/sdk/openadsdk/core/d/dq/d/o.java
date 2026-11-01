package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o {
    private static volatile boolean ia;

    /* renamed from: d, reason: collision with root package name */
    private final j f2778d;
    private Toast dq;
    private boolean iw;
    private io mn;
    private final Context ox;
    private int p;
    private String s;

    public class d implements h.ox<JSONObject> {

        /* renamed from: d, reason: collision with root package name */
        private final io f2781d;
        private final dq dq;
        private final Toast p;

        public d(dq dqVar, io ioVar, Toast toast) {
            this.dq = dqVar;
            this.f2781d = ioVar;
            this.p = toast;
        }

        @Override // com.bytedance.sdk.openadsdk.core.h.ox
        public void dq(int i, String str) {
            ig.d("WechatClickHandler", "getWechatLink failed:" + i + ", " + str);
            this.f2781d.d(0);
            Toast toast = this.p;
            if (toast != null) {
                toast.cancel();
            }
            dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.d();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.bytedance.sdk.openadsdk.core.h.ox
        public void dq(JSONObject jSONObject) {
            String optString = jSONObject.optString("scheme");
            if (TextUtils.isEmpty(optString)) {
                dq(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, " scheme is null!");
            } else {
                o.this.dq(optString, this.f2781d, this.dq);
            }
        }
    }

    public interface dq {
        void d();

        void dq();
    }

    public o(j jVar, Context context) {
        this.f2778d = jVar;
        this.ox = context;
    }

    private int d(dq dqVar) {
        io gs;
        j jVar = this.f2778d;
        if (jVar == null || (gs = jVar.gs()) == null) {
            return 0;
        }
        if (gs.iw() != 1 || !ia.ox().dq()) {
            return 1;
        }
        if (TextUtils.isEmpty(gs.mn())) {
            return 0;
        }
        dq(dqVar, gs);
        return 2;
    }

    private void d() {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.o.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (o.this.dq != null) {
                        o.this.dq.cancel();
                    }
                    o oVar = o.this;
                    oVar.dq = Toast.makeText(oVar.ox, "即将跳转微信...", 1);
                    o.this.dq.setGravity(17, 0, 0);
                    o.this.dq.show();
                } catch (Throwable th) {
                    ig.d("toast error:" + th.getMessage());
                }
            }
        });
    }

    private void dq(final dq dqVar, io ioVar) {
        d();
        wp.dq().dq(ioVar, this.f2778d.ae(), this.f2778d.dn(), new d(dqVar, ioVar, this.dq) { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.o.1
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.d, com.bytedance.sdk.openadsdk.core.h.ox
            public void dq(JSONObject jSONObject) {
                String optString = jSONObject.optString("userName");
                String optString2 = jSONObject.optString("path");
                if (TextUtils.isEmpty(optString)) {
                    dq(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, " userName or path is null!");
                    return;
                }
                if (o.this.dq != null) {
                    o.this.dq.cancel();
                }
                ia.ox().dq(o.this.f2778d, optString, optString2, dqVar, o.this.s, o.this.iw);
            }
        }, 1, 2000L);
    }

    private void dq(dq dqVar, io ioVar, long j) {
        d();
        wp.dq().dq(ioVar, this.f2778d.ae(), this.f2778d.dn(), new d(dqVar, ioVar, this.dq), 2, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, final io ioVar, final dq dqVar) {
        Toast toast = this.dq;
        if (toast != null) {
            toast.cancel();
        }
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        final String dq2 = i.ox(this.f2778d) ? this.s : c.dq(this.p);
        com.bytedance.sdk.component.utils.d.dq(this.ox, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.o.3
            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq() {
                ioVar.d(1);
                com.bytedance.sdk.openadsdk.core.ig.ox.p(o.this.f2778d, dq2, "deeplink_success_realtime");
                com.bytedance.sdk.openadsdk.core.ig.ox.ia(o.this.f2778d, dq2, "open_url_app", null);
                com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(o.this.f2778d, dq2, false);
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq();
                }
            }

            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq(Throwable th) {
                ioVar.d(0);
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.d();
                }
            }
        }, TextUtils.equals("main", "internal"));
    }

    public static void dq(boolean z) {
        ia = z;
    }

    public static boolean dq() {
        return ia;
    }

    public o d(boolean z) {
        this.iw = z;
        return this;
    }

    public o dq(int i) {
        this.p = i;
        return this;
    }

    public o dq(String str) {
        this.s = str;
        return this;
    }

    public boolean dq(dq dqVar) {
        int d2;
        if (this.mn == null) {
            j jVar = this.f2778d;
            this.mn = jVar != null ? jVar.gs() : null;
        }
        io ioVar = this.mn;
        if (ioVar == null) {
            return false;
        }
        int d3 = ioVar.d();
        if (d3 != 1) {
            if (d3 != 2 || (d2 = d(dqVar)) == 0) {
                return false;
            }
            if (d2 == 2) {
                return true;
            }
            if (TextUtils.isEmpty(this.mn.dq())) {
                return false;
            }
            dq(dqVar, this.mn, 2000L);
            return true;
        }
        if (this.iw && (TextUtils.isEmpty(this.mn.ia()) || d(dqVar) == 2)) {
            return true;
        }
        return false;
    }
}
