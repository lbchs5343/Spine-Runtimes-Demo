package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbsz;
import g.agd;
import g.cbv;
import g.ph;
import g.yp;

/* loaded from: classes3.dex */
public final class NotificationHandlerActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            ph phVar = cbv.f12612a.f12616e;
            zzbpc zzbpcVar = new zzbpc();
            phVar.getClass();
            zzbsz zzbszVar = (zzbsz) new yp(this, zzbpcVar).j(this, false);
            if (zzbszVar == null) {
                agd.d("OfflineUtils is null");
            } else {
                zzbszVar.zze(getIntent());
            }
        } catch (RemoteException e2) {
            agd.d("RemoteException calling handleNotificationIntent: ".concat(e2.toString()));
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        finish();
    }
}
