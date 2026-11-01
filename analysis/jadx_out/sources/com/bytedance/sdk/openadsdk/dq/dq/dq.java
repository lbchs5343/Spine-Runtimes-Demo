package com.bytedance.sdk.openadsdk.dq.dq;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.ox.p;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import g.cad;
import g.coa;
import g.fqa;
import g.fvb;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import ms.bz.bd.c.Pgl.m0;
import ms.bz.bd.c.Pgl.n0;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes3.dex */
public class dq {
    private static volatile dq dq = null;
    private static volatile String iw = "";

    /* renamed from: d, reason: collision with root package name */
    private cad f3745d;
    private volatile int ia;
    private final AtomicBoolean mn = new AtomicBoolean(false);
    private volatile boolean ox;
    private final String p;
    private volatile String s;

    private dq(String str, p pVar) {
        this.ia = 99999;
        if (pVar != null) {
            if (!pVar.ox() || !pVar.p() || !pVar.s()) {
                this.ia = MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET;
            } else if (!pVar.d()) {
                this.ia = MediaPlayer.MEDIA_PLAYER_OPTION_RTC_STAT_INFO;
            }
            if (op.f3334d >= 4600 && !pVar.iw()) {
                this.ia = MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET;
            }
        }
        this.s = null;
        this.p = str;
        this.ox = ox();
    }

    public static String d() {
        if (TextUtils.isEmpty(iw)) {
            iw = com.bytedance.sdk.openadsdk.core.ox.p.dq().ji();
        }
        return iw;
    }

    public static dq dq() {
        return dq;
    }

    public static dq dq(String str, p pVar) {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq(str, pVar);
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private boolean ox() {
        try {
            Context context = wp.getContext();
            String str = this.p;
            int i = this.ia;
            coa coaVar = new coa();
            coaVar.f21154g = "1371";
            coaVar.h = str;
            coaVar.f21149b = "THYFfhd167Y/Etj/JFI+OYhGnAsIhCvIXKQbbKuslfRMO6XQmCuZImqOyljyF6dQ900Hy8ecQzUcHu72ks7Xvvncqt7BZjf4VSth/OzZbJlDJqtayy2lcb5mqCQUzE5fIvFXAZkyxl+SRzGnzUojBcyqITZ3bGRvteMi+qu/15oKM3BWY0IDJ9Ry5FUGfzt+FyCqvZI8PFQNAzvZXcWHlJoRXydZUjUbtEy/AFUvusIO1HDx";
            coaVar.f21152e = i;
            if (TextUtils.isEmpty("1371") || TextUtils.isEmpty(str) || TextUtils.isEmpty("THYFfhd167Y/Etj/JFI+OYhGnAsIhCvIXKQbbKuslfRMO6XQmCuZImqOyljyF6dQ900Hy8ecQzUcHu72ks7Xvvncqt7BZjf4VSth/OzZbJlDJqtayy2lcb5mqCQUzE5fIvFXAZkyxl+SRzGnzUojBcyqITZ3bGRvteMi+qu/15oKM3BWY0IDJ9Ry5FUGfzt+FyCqvZI8PFQNAzvZXcWHlJoRXydZUjUbtEy/AFUvusIO1HDx")) {
                throw new IllegalArgumentException("sdkID or license must be set.");
            }
            coaVar.f21153f.add(new PglITokenObserver() { // from class: com.bytedance.sdk.openadsdk.dq.dq.dq.1
                @Override // com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver
                public void onTokenLoaded(String str2) {
                    String unused = dq.iw = str2;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.ox.p.dq().h(str2);
                }
            });
            if (!no.ia().mn()) {
                coaVar.f21148a.put("kOA1", "1");
            }
            if (!no.ia().s()) {
                coaVar.f21148a.put("kS1", "1");
            }
            coaVar.f21151d = this.s;
            coaVar.f21150c = 1;
            fvb fvbVar = new fvb(coaVar);
            synchronized (fqa.class) {
                n0.d(context, fvbVar.k);
            }
            fqa.b();
            p();
            return true;
        } catch (Throwable th) {
            ig.dq("MSSdkImpl", "appid 为空，初始化失败！", th);
            return false;
        }
    }

    private void p() {
        if (this.f3745d == null) {
            this.f3745d = fqa.a();
        }
    }

    public void d(String str) {
        if (this.ox) {
            p();
            cad cadVar = this.f3745d;
            if (cadVar != null) {
                cadVar.b(str);
            }
        }
    }

    public Map<String, String> dq(String str, byte[] bArr) {
        if (!this.ox) {
            return new HashMap();
        }
        p();
        cad cadVar = this.f3745d;
        if (cadVar == null) {
            return new HashMap();
        }
        m0 m0Var = cadVar.f12537a;
        m0Var.getClass();
        HashMap hashMap = new HashMap();
        if (str != null && str.length() != 0) {
            long j = m0Var.f21168a;
            SparseArray sparseArray = pblb.f21187a;
            String[] strArr = (String[]) pblk.a(33554438, 0, j, str, bArr);
            if (strArr != null && strArr.length % 2 == 0) {
                for (int i = 0; i < strArr.length; i += 2) {
                    String str2 = strArr[i];
                    String str3 = strArr[i + 1];
                    if (str2 != null && str3 != null) {
                        hashMap.put(str2, str3);
                    }
                }
            }
        }
        return hashMap;
    }

    public void dq(String str) {
        if (this.ox) {
            p();
            if (TextUtils.isEmpty(str) || str.equals(this.s) || this.f3745d == null) {
                return;
            }
            this.s = str;
            m0 m0Var = this.f3745d.f12537a;
            m0Var.f21170c.f21151d = str;
            long j = m0Var.f21168a;
            if (j != -1) {
                Context context = m0Var.f21169b;
                SparseArray sparseArray = pblb.f21187a;
                pblk.a(33554434, 0, j, str, context);
            }
        }
    }
}
