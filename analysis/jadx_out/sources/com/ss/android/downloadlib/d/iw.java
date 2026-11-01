package com.ss.android.downloadlib.d;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.dq.dq;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private static Handler dq = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final com.ss.android.downloadad.api.dq.d dVar, final int i) {
        if (i <= 0) {
            return;
        }
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.d.iw.2
            @Override // java.lang.Runnable
            public void run() {
                int i2 = 1;
                if (!mp.ox(com.ss.android.downloadad.api.dq.d.this.s())) {
                    iw.d(com.ss.android.downloadad.api.dq.d.this, i - 1);
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!com.ss.android.downloadad.api.dq.d.this.cv()) {
                        i2 = 2;
                    }
                    jSONObject.putOpt("deeplink_source", Integer.valueOf(i2));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                com.ss.android.downloadlib.p.dq.dq().dq("deeplink_success_2", jSONObject, com.ss.android.downloadad.api.dq.d.this);
            }
        }, kk(dVar) * 1000);
    }

    public static boolean d(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).d("app_link_opt_install_switch") == 1;
    }

    public static void dq(final com.ss.android.downloadad.api.dq.d dVar, final ia iaVar) {
        boolean d2 = com.ss.android.socialbase.downloader.dq.dq.dq().d();
        if (!d2 && Build.VERSION.SDK_INT >= 29) {
            mp.ox();
        }
        boolean d3 = com.ss.android.socialbase.downloader.dq.dq.dq().d();
        boolean z = !d2 && d3;
        if (dVar != null) {
            dVar.ig(z);
        }
        iaVar.dq(z);
        if (dVar == null) {
            return;
        }
        d(dVar, o(dVar));
        if (d3) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(new dq.InterfaceC0248dq() { // from class: com.ss.android.downloadlib.d.iw.1
            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void d() {
                com.ss.android.socialbase.downloader.dq.dq.dq().d(this);
                com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.d.iw.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean ox = mp.ox(com.ss.android.downloadad.api.dq.d.this.s());
                        long s = iw.s(com.ss.android.downloadad.api.dq.d.this);
                        if (!ox || s >= System.currentTimeMillis() - currentTimeMillis) {
                            long ia = iw.ia(com.ss.android.downloadad.api.dq.d.this);
                            long currentTimeMillis2 = System.currentTimeMillis();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            if (currentTimeMillis2 - currentTimeMillis > ia) {
                                com.ss.android.downloadlib.p.dq.dq().dq("deeplink_delay_timeout", com.ss.android.downloadad.api.dq.d.this);
                                return;
                            }
                            com.ss.android.downloadad.api.dq.d.this.ig(true);
                            com.ss.android.downloadlib.p.dq.dq().dq("deeplink_delay_invoke", com.ss.android.downloadad.api.dq.d.this);
                            iaVar.dq(true);
                            com.ss.android.downloadad.api.dq.d dVar2 = com.ss.android.downloadad.api.dq.d.this;
                            iw.d(dVar2, iw.o(dVar2));
                        }
                    }
                });
            }

            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void ox() {
            }
        });
    }

    public static boolean dq(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).d("app_link_opt_switch") == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long ia(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("app_link_check_timeout", 300000L);
    }

    private static int kk(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("app_link_check_delay", 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("app_link_check_count", 10);
    }

    public static boolean ox(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).d("app_link_opt_invoke_switch") == 1;
    }

    public static boolean p(com.ss.android.downloadad.api.dq.d dVar) {
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).d("app_link_opt_dialog_switch") == 1;
    }

    public static long s(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return 3000L;
        }
        return com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dVar).dq("app_link_opt_back_time_limit", 3) * 1000;
    }
}
