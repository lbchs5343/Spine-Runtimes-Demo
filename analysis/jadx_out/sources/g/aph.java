package g;

import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class aph extends cgp {
    public gin[] getAdSizes() {
        return (gin[]) this.f12849a.f13466a;
    }

    public eus getAppEventListener() {
        return (eus) this.f12849a.i;
    }

    public hl getVideoController() {
        return (hl) this.f12849a.f13468c;
    }

    public cxt getVideoOptions() {
        return (cxt) this.f12849a.f13467b;
    }

    public void setAdSizes(gin... ginVarArr) {
        if (ginVarArr == null || ginVarArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f12849a.o(ginVarArr);
    }

    public void setAppEventListener(eus eusVar) {
        this.f12849a.s(eusVar);
    }

    public void setManualImpressionsEnabled(boolean z) {
        ctl ctlVar = this.f12849a;
        ctlVar.f13471f = z;
        try {
            deq deqVar = (deq) ctlVar.k;
            if (deqVar != null) {
                deqVar.zzN(z);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public void setVideoOptions(cxt cxtVar) {
        ctl ctlVar = this.f12849a;
        ctlVar.f13467b = cxtVar;
        try {
            deq deqVar = (deq) ctlVar.k;
            if (deqVar != null) {
                deqVar.zzU(cxtVar == null ? null : new cpm(cxtVar));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
