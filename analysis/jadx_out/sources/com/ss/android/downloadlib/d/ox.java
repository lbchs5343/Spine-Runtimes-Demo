package com.ss.android.downloadlib.d;

import android.os.Build;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.dq.dq;

/* loaded from: classes.dex */
public class ox {
    public static void dq(final com.ss.android.downloadad.api.dq.d dVar, final com.ss.android.downloadlib.guide.install.dq dqVar) {
        boolean d2 = com.ss.android.socialbase.downloader.dq.dq.dq().d();
        if (!d2 && Build.VERSION.SDK_INT >= 29) {
            mp.ox();
        }
        boolean d3 = com.ss.android.socialbase.downloader.dq.dq.dq().d();
        if (!d2 && d3 && dVar != null) {
            dVar.ig(true);
        }
        dqVar.dq();
        com.ss.android.socialbase.downloader.ox.dq.d("AppInstallOptimiseHelper", "AppInstallOptimiseHelper-->isAppForegroundSecond:::".concat(String.valueOf(d3)));
        if (d3) {
            return;
        }
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(new dq.InterfaceC0248dq() { // from class: com.ss.android.downloadlib.d.ox.1
            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void d() {
                com.ss.android.socialbase.downloader.ox.dq.d("AppInstallOptimiseHelper", "AppInstallOptimiseHelper-->onAppForeground");
                com.ss.android.socialbase.downloader.dq.dq.dq().d(this);
                if (mp.d(com.ss.android.downloadad.api.dq.d.this)) {
                    return;
                }
                com.ss.android.downloadad.api.dq.d.this.mp(true);
                com.ss.android.downloadlib.p.dq.dq().dq("install_delay_invoke", com.ss.android.downloadad.api.dq.d.this);
                dqVar.dq();
            }

            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void ox() {
            }
        });
    }
}
