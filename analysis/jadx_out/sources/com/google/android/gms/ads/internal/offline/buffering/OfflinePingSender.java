package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbsz;
import g.aif;
import g.bhr;
import g.cbv;
import g.dea;
import g.ph;
import g.yp;

/* loaded from: classes3.dex */
public class OfflinePingSender extends Worker {

    /* renamed from: a, reason: collision with root package name */
    public final zzbsz f3922a;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        ph phVar = cbv.f12612a.f12616e;
        zzbpc zzbpcVar = new zzbpc();
        phVar.getClass();
        this.f3922a = (zzbsz) new yp(context, zzbpcVar).j(context, false);
    }

    @Override // androidx.work.Worker
    public final dea doWork() {
        try {
            this.f3922a.zzh();
            return new aif();
        } catch (RemoteException unused) {
            return new bhr();
        }
    }
}
