package com.bytedance.sdk.component.kk.ox;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.component.kk.dq;
import com.bytedance.sdk.component.o.o;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.fw;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.tn;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements e.dq {
    private static boolean ia;
    private static ThreadPoolExecutor kk;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f1991d;
    private com.bytedance.sdk.component.kk.dq mp;
    private final Context no;
    private int q;
    private volatile boolean ox = false;
    private boolean p = true;
    private boolean s = false;
    private long iw = 0;
    private long mn = 0;
    private AtomicBoolean o = new AtomicBoolean(false);
    private volatile boolean ig = false;
    final e dq = com.bytedance.sdk.component.o.d.dq.dq().dq(this, "tt-net");

    public dq(Context context, int i) {
        this.no = context;
        this.f1991d = fw.dq(context);
        this.q = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        e eVar = this.dq;
        if (eVar != null) {
            eVar.sendEmptyMessage(i);
        }
    }

    public static void d(boolean z) {
        ia = z;
    }

    private String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return tn.ad("https://", str, "/get_domains/v4/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final int i) {
        String[] iw = iw();
        if (iw == null || iw.length <= i) {
            d(102);
            return;
        }
        String str = iw[i];
        if (TextUtils.isEmpty(str)) {
            d(102);
            return;
        }
        try {
            String dq = dq(str);
            if (TextUtils.isEmpty(dq)) {
                d(102);
                return;
            }
            com.bytedance.sdk.component.kk.d.ox ox = kk().ox();
            ox.dq(dq);
            dq(ox);
            ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.component.kk.ox.dq.3
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    JSONObject jSONObject;
                    if (dVar == null || !dVar.ia()) {
                        dq.this.dq(i + 1);
                        return;
                    }
                    String str2 = null;
                    try {
                        jSONObject = new JSONObject(dVar.p());
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    if (jSONObject == null) {
                        dq.this.dq(i + 1);
                        return;
                    }
                    try {
                        str2 = jSONObject.getString("message");
                    } catch (Exception unused2) {
                    }
                    if (!"success".equals(str2)) {
                        dq.this.dq(i + 1);
                        return;
                    }
                    try {
                        if (dq.this.dq(jSONObject)) {
                            dq.this.d(101);
                        } else {
                            dq.this.dq(i + 1);
                        }
                    } catch (Exception unused3) {
                    }
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    dq.this.dq(i + 1);
                }
            });
        } catch (Throwable th) {
            com.bytedance.sdk.component.kk.p.ox.ox("AppConfig", "try app config exception: ".concat(String.valueOf(th)));
        }
    }

    public static void dq(Context context, int i) {
        dq dq;
        if (ia && (dq = mn.dq().dq(i, context)) != null) {
            if (fw.dq(context)) {
                dq.dq(true);
            } else {
                dq.dq();
            }
        }
    }

    private void dq(com.bytedance.sdk.component.kk.d.ox oxVar) {
        if (oxVar == null) {
            return;
        }
        Address dq = mn.dq().dq(this.q).p() != null ? mn.dq().dq(this.q).p().dq(this.no) : null;
        if (dq != null && dq.hasLatitude() && dq.hasLongitude()) {
            StringBuilder sb = new StringBuilder();
            sb.append(dq.getLatitude());
            oxVar.dq("latitude", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(dq.getLongitude());
            oxVar.dq("longitude", sb2.toString());
            String locality = dq.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                oxVar.dq("city", Uri.encode(locality));
            }
        }
        if (this.ox) {
            oxVar.dq(TTDownloadField.TT_FORCE, "1");
        }
        try {
            oxVar.dq("abi", Build.SUPPORTED_ABIS[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (mn.dq().dq(this.q).p() != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(mn.dq().dq(this.q).p().dq());
            oxVar.dq("aid", sb3.toString());
            oxVar.dq("device_platform", mn.dq().dq(this.q).p().ox());
            oxVar.dq("channel", mn.dq().dq(this.q).p().d());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(mn.dq().dq(this.q).p().p());
            oxVar.dq("version_code", sb4.toString());
            oxVar.dq("custom_info_1", mn.dq().dq(this.q).p().s());
        }
    }

    public static void dq(ThreadPoolExecutor threadPoolExecutor) {
        kk = threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            jSONObject = new JSONObject(str);
            if (!"success".equals(jSONObject.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor edit = com.bytedance.sdk.openadsdk.api.plugin.d.d(this.no, "ss_app_config", 0).edit();
            edit.putLong("last_refresh_time", System.currentTimeMillis());
            edit.apply();
        }
        if (mn.dq().dq(this.q).ia() == null) {
            return true;
        }
        mn.dq().dq(this.q).ia().dq(jSONObject2);
        return true;
    }

    private boolean ia() {
        String[] iw = iw();
        if (iw != null && iw.length != 0) {
            dq(0);
        }
        return false;
    }

    private com.bytedance.sdk.component.kk.dq kk() {
        if (this.mp == null) {
            dq.C0121dq c0121dq = new dq.C0121dq();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.mp = c0121dq.dq(10L, timeUnit).d(10L, timeUnit).ox(10L, timeUnit).dq();
        }
        return this.mp;
    }

    public static ThreadPoolExecutor mn() {
        if (kk == null) {
            synchronized (dq.class) {
                try {
                    if (kk == null) {
                        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new o("tnc/AppConfig"));
                        kk = pVar;
                        pVar.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return kk;
    }

    private void p(boolean z) {
        if (this.s) {
            return;
        }
        if (this.p) {
            this.p = false;
            this.iw = 0L;
            this.mn = 0L;
        }
        long j = z ? 360000L : 43200000L;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.iw > j) {
            if (currentTimeMillis - this.mn > 120000 || !this.ig) {
                ox();
            }
        }
    }

    public synchronized void d() {
        if (System.currentTimeMillis() - this.iw > 3600000) {
            this.iw = System.currentTimeMillis();
            try {
                if (mn.dq().dq(this.q).ia() != null) {
                    mn.dq().dq(this.q).ia().d();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void dq() {
        dq(false);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        if (i == 101) {
            this.s = false;
            this.iw = System.currentTimeMillis();
            com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doRefresh, succ");
            if (this.p) {
                dq();
            }
            this.o.set(false);
            return;
        }
        if (i != 102) {
            return;
        }
        this.s = false;
        if (this.p) {
            dq();
        }
        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doRefresh, error");
        this.o.set(false);
    }

    public synchronized void dq(boolean z) {
        if (this.f1991d) {
            p(z);
            return;
        }
        if (this.iw <= 0) {
            try {
                mn().execute(new Runnable() { // from class: com.bytedance.sdk.component.kk.ox.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.d();
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    public Context getContext() {
        return this.no;
    }

    public String[] iw() {
        String[] iw = mn.dq().dq(this.q).p() != null ? mn.dq().dq(this.q).p().iw() : null;
        return (iw == null || iw.length <= 0) ? new String[0] : iw;
    }

    public void ox(boolean z) {
        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doRefresh, actual request");
        p();
        this.s = true;
        if (!z) {
            this.dq.sendEmptyMessage(102);
            return;
        }
        try {
            ia();
        } catch (Exception unused) {
            this.o.set(false);
        }
    }

    public boolean ox() {
        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doRefresh: updating state " + this.o.get());
        mn().execute(new Runnable() { // from class: com.bytedance.sdk.component.kk.ox.dq.2
            @Override // java.lang.Runnable
            public void run() {
                boolean dq = com.bytedance.sdk.component.kk.p.iw.dq(dq.this.no);
                if (dq) {
                    dq.this.mn = System.currentTimeMillis();
                    if (dq.this.o.compareAndSet(false, true)) {
                        dq.this.ox(dq);
                    } else {
                        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doRefresh, already running");
                    }
                }
            }
        });
        return true;
    }

    public synchronized void p() {
        if (this.ig) {
            return;
        }
        this.ig = true;
        long j = com.bytedance.sdk.openadsdk.api.plugin.d.d(this.no, "ss_app_config", 0).getLong("last_refresh_time", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (j > currentTimeMillis) {
            j = currentTimeMillis;
        }
        this.iw = j;
        try {
            if (mn.dq().dq(this.q).ia() != null) {
                mn.dq().dq(this.q).ia().dq();
            }
        } catch (Exception unused) {
        }
    }

    public void s() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            if (this.f1991d) {
                p();
            } else {
                d();
            }
        } catch (Throwable unused) {
        }
    }
}
