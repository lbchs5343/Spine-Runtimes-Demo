package g;

import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class bqs implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dbb f12039a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12040b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ afh f12041c;

    public /* synthetic */ bqs(dbb dbbVar, afh afhVar, int i) {
        this.f12040b = i;
        this.f12039a = dbbVar;
        this.f12041c = afhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12040b) {
            case 0:
                afh afhVar = this.f12041c;
                dbb dbbVar = this.f12039a;
                cyg cygVar = (cyg) dbbVar.z;
                ake akeVar = dbbVar.l;
                if (akeVar != null) {
                    try {
                        akeVar.k(afhVar);
                    } catch (RemoteException e2) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(e2, "Failed to reset data on the service: remote exception");
                    }
                    dbbVar.x();
                    break;
                } else {
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.h("Failed to reset data on the service: not connected to service");
                    break;
                }
            case 1:
                afh afhVar2 = this.f12041c;
                dbb dbbVar2 = this.f12039a;
                cyg cygVar2 = (cyg) dbbVar2.z;
                ake akeVar2 = dbbVar2.l;
                if (akeVar2 == null) {
                    bgm bgmVar3 = cygVar2.z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11518b.h("Discarding data. Failed to send app launch");
                    break;
                } else {
                    try {
                        akeVar2.o(afhVar2);
                        cygVar2.an().k();
                        dbbVar2.al(akeVar2, null, afhVar2);
                        dbbVar2.x();
                        break;
                    } catch (RemoteException e3) {
                        bgm bgmVar4 = cygVar2.z;
                        cyg.ak(bgmVar4);
                        bgmVar4.f11518b.i(e3, "Failed to send app launch to the service");
                        return;
                    }
                }
            case 2:
                afh afhVar3 = this.f12041c;
                dbb dbbVar3 = this.f12039a;
                cyg cygVar3 = (cyg) dbbVar3.z;
                ake akeVar3 = dbbVar3.l;
                if (akeVar3 == null) {
                    bgm bgmVar5 = cygVar3.z;
                    cyg.ak(bgmVar5);
                    bgmVar5.f11518b.h("Failed to send measurementEnabled to service");
                    break;
                } else {
                    try {
                        akeVar3.r(afhVar3);
                        dbbVar3.x();
                        break;
                    } catch (RemoteException e4) {
                        bgm bgmVar6 = cygVar3.z;
                        cyg.ak(bgmVar6);
                        bgmVar6.f11518b.i(e4, "Failed to send measurementEnabled to the service");
                        return;
                    }
                }
            default:
                afh afhVar4 = this.f12041c;
                dbb dbbVar4 = this.f12039a;
                cyg cygVar4 = (cyg) dbbVar4.z;
                ake akeVar4 = dbbVar4.l;
                if (akeVar4 == null) {
                    bgm bgmVar7 = cygVar4.z;
                    cyg.ak(bgmVar7);
                    bgmVar7.f11518b.h("Failed to send consent settings to service");
                    break;
                } else {
                    try {
                        akeVar4.m(afhVar4);
                        dbbVar4.x();
                        break;
                    } catch (RemoteException e5) {
                        bgm bgmVar8 = cygVar4.z;
                        cyg.ak(bgmVar8);
                        bgmVar8.f11518b.i(e5, "Failed to send consent settings to the service");
                    }
                }
        }
    }
}
