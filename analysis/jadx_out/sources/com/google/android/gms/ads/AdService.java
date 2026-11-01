package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbsz;
import g.agd;
import g.cbv;
import g.ph;
import g.yp;

/* loaded from: classes3.dex */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    public final void onHandleIntent(Intent intent) {
        try {
            ph phVar = cbv.f12612a.f12616e;
            zzbpc zzbpcVar = new zzbpc();
            phVar.getClass();
            ((zzbsz) new yp(this, zzbpcVar).j(this, false)).zze(intent);
        } catch (RemoteException e2) {
            agd.d("RemoteException calling handleNotificationIntent: ".concat(e2.toString()));
        }
    }
}
