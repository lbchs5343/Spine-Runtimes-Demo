package g;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseIntArray;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

/* loaded from: classes3.dex */
public final class fbd implements fwr, dko {

    /* renamed from: a, reason: collision with root package name */
    public final aan f16501a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16502b;

    /* renamed from: d, reason: collision with root package name */
    public final dzu f16504d;

    /* renamed from: g, reason: collision with root package name */
    public final clx f16507g;
    public boolean k;
    public final cqh l;
    public final /* synthetic */ ecd m;
    public final LinkedList i = new LinkedList();
    public final HashSet h = new HashSet();
    public final HashMap n = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16503c = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public nk f16506f = null;

    /* renamed from: e, reason: collision with root package name */
    public int f16505e = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public fbd(ecd ecdVar, bxx bxxVar) {
        this.m = ecdVar;
        dae daeVar = ecdVar.q;
        Looper looper = daeVar.getLooper();
        fpd j = bxxVar.j();
        daw dawVar = new daw((String) j.f17187c, (String) j.f17188d, (glm) j.f17190f);
        egh eghVar = (egh) bxxVar.f12418d.h;
        ckd.k(eghVar);
        cqh bk = eghVar.bk(bxxVar.f12421g, looper, dawVar, bxxVar.f12419e, this, this);
        String str = bxxVar.h;
        if (str != null && (bk instanceof adw)) {
            ((adw) bk).setAttributionTag(str);
        }
        if (str != null && (bk instanceof gtq)) {
            awf.e(bk);
            throw null;
        }
        this.l = bk;
        this.f16504d = bxxVar.f12420f;
        this.f16507g = new clx(12);
        this.f16502b = bxxVar.i;
        if (!bk.requiresSignIn()) {
            this.f16501a = null;
            return;
        }
        Context context = ecdVar.l;
        fpd j2 = bxxVar.j();
        this.f16501a = new aan(context, daeVar, new daw((String) j2.f17187c, (String) j2.f17188d, (glm) j2.f17190f));
    }

    public final void aa(Status status, Exception exc, boolean z) {
        ckd.x(this.m.q);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            alm almVar = (alm) it.next();
            if (!z || almVar.f10444a == 2) {
                if (status != null) {
                    almVar.h(status);
                } else {
                    almVar.c(exc);
                }
                it.remove();
            }
        }
    }

    public final void ab() {
        ecd ecdVar = this.m;
        dae daeVar = ecdVar.q;
        dzu dzuVar = this.f16504d;
        daeVar.removeMessages(12, dzuVar);
        daeVar.sendMessageDelayed(daeVar.obtainMessage(12, dzuVar), ecdVar.m);
    }

    @Override // g.fwr
    public final void j() {
        Looper myLooper = Looper.myLooper();
        dae daeVar = this.m.q;
        if (myLooper == daeVar.getLooper()) {
            t();
        } else {
            daeVar.post(new dyn(18, this));
        }
    }

    public final boolean o(alm almVar) {
        cqg cqgVar;
        if (almVar == null) {
            clx clxVar = this.f16507g;
            cqh cqhVar = this.l;
            almVar.f(clxVar, cqhVar.requiresSignIn());
            try {
                almVar.d(this);
                return true;
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                cqhVar.disconnect("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        cqg[] g2 = almVar.g(this);
        if (g2 != null && g2.length != 0) {
            cqg[] availableFeatures = this.l.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new cqg[0];
            }
            tl tlVar = new tl(availableFeatures.length);
            for (cqg cqgVar2 : availableFeatures) {
                tlVar.put(cqgVar2.getName(), Long.valueOf(cqgVar2.getVersion()));
            }
            int length = g2.length;
            for (int i = 0; i < length; i++) {
                cqgVar = g2[i];
                Long l = (Long) tlVar.get(cqgVar.getName());
                if (l == null || l.longValue() < cqgVar.getVersion()) {
                    break;
                }
            }
        }
        cqgVar = null;
        if (cqgVar == null) {
            clx clxVar2 = this.f16507g;
            cqh cqhVar2 = this.l;
            almVar.f(clxVar2, cqhVar2.requiresSignIn());
            try {
                almVar.d(this);
                return true;
            } catch (DeadObjectException unused2) {
                onConnectionSuspended(1);
                cqhVar2.disconnect("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        this.l.getClass();
        cqgVar.getName();
        cqgVar.getVersion();
        if (!this.m.p || !almVar.e(this)) {
            almVar.c(new dkf(cqgVar));
            return true;
        }
        ccg ccgVar = new ccg(this.f16504d, cqgVar);
        int indexOf = this.f16503c.indexOf(ccgVar);
        if (indexOf >= 0) {
            ccg ccgVar2 = (ccg) this.f16503c.get(indexOf);
            this.m.q.removeMessages(15, ccgVar2);
            dae daeVar = this.m.q;
            daeVar.sendMessageDelayed(Message.obtain(daeVar, 15, ccgVar2), PushUIConfig.dismissTime);
        } else {
            this.f16503c.add(ccgVar);
            dae daeVar2 = this.m.q;
            daeVar2.sendMessageDelayed(Message.obtain(daeVar2, 15, ccgVar), PushUIConfig.dismissTime);
            dae daeVar3 = this.m.q;
            daeVar3.sendMessageDelayed(Message.obtain(daeVar3, 16, ccgVar), 120000L);
            nk nkVar = new nk(2, null);
            if (!x(nkVar)) {
                this.m.x(nkVar, this.f16502b);
            }
        }
        return false;
    }

    @Override // g.dko
    public final void onConnectionFailed(nk nkVar) {
        s(nkVar, null);
    }

    @Override // g.fwr
    public final void onConnectionSuspended(int i) {
        Looper myLooper = Looper.myLooper();
        dae daeVar = this.m.q;
        if (myLooper == daeVar.getLooper()) {
            v(i);
        } else {
            daeVar.post(new dj(this, i, 7));
        }
    }

    public final void p(alm almVar) {
        ckd.x(this.m.q);
        boolean isConnected = this.l.isConnected();
        LinkedList linkedList = this.i;
        if (isConnected) {
            if (o(almVar)) {
                ab();
                return;
            } else {
                linkedList.add(almVar);
                return;
            }
        }
        linkedList.add(almVar);
        nk nkVar = this.f16506f;
        if (nkVar == null || !nkVar.hasResolution()) {
            z();
        } else {
            s(this.f16506f, null);
        }
    }

    public final void q() {
        ckd.x(this.m.q);
        Status status = ecd.f15289b;
        y(status);
        clx clxVar = this.f16507g;
        clxVar.getClass();
        clxVar.l(false, status);
        for (gnp gnpVar : (gnp[]) this.n.keySet().toArray(new gnp[0])) {
            p(new azs(new eeo()));
        }
        u(new nk(4));
        cqh cqhVar = this.l;
        if (cqhVar.isConnected()) {
            cqhVar.onUserSignOut(new evf(22, this));
        }
    }

    public final void r() {
        LinkedList linkedList = this.i;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            alm almVar = (alm) arrayList.get(i);
            if (!this.l.isConnected()) {
                return;
            }
            if (o(almVar)) {
                linkedList.remove(almVar);
            }
        }
    }

    public final void s(nk nkVar, RuntimeException runtimeException) {
        cdq cdqVar;
        ckd.x(this.m.q);
        aan aanVar = this.f16501a;
        if (aanVar != null && (cdqVar = aanVar.f9859d) != null) {
            cdqVar.disconnect();
        }
        ckd.x(this.m.q);
        this.f16506f = null;
        ((SparseIntArray) this.m.f15293f.f16634c).clear();
        u(nkVar);
        if ((this.l instanceof aka) && nkVar.getErrorCode() != 24) {
            ecd ecdVar = this.m;
            ecdVar.o = true;
            dae daeVar = ecdVar.q;
            daeVar.sendMessageDelayed(daeVar.obtainMessage(19), 300000L);
        }
        if (nkVar.getErrorCode() == 4) {
            y(ecd.f15288a);
            return;
        }
        if (this.i.isEmpty()) {
            this.f16506f = nkVar;
            return;
        }
        if (runtimeException != null) {
            ckd.x(this.m.q);
            aa(null, runtimeException, false);
            return;
        }
        if (!this.m.p) {
            y(ecd.t(this.f16504d, nkVar));
            return;
        }
        aa(ecd.t(this.f16504d, nkVar), null, true);
        if (this.i.isEmpty() || x(nkVar) || this.m.x(nkVar, this.f16502b)) {
            return;
        }
        if (nkVar.getErrorCode() == 18) {
            this.k = true;
        }
        if (!this.k) {
            y(ecd.t(this.f16504d, nkVar));
            return;
        }
        ecd ecdVar2 = this.m;
        dzu dzuVar = this.f16504d;
        dae daeVar2 = ecdVar2.q;
        daeVar2.sendMessageDelayed(Message.obtain(daeVar2, 9, dzuVar), PushUIConfig.dismissTime);
    }

    public final void t() {
        ecd ecdVar = this.m;
        ckd.x(ecdVar.q);
        this.f16506f = null;
        u(nk.RESULT_SUCCESS);
        dae daeVar = ecdVar.q;
        if (this.k) {
            dzu dzuVar = this.f16504d;
            daeVar.removeMessages(11, dzuVar);
            daeVar.removeMessages(9, dzuVar);
            this.k = false;
        }
        Iterator it = this.n.values().iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        r();
        ab();
    }

    public final void u(nk nkVar) {
        HashSet hashSet = this.h;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
        } else {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (ffb.w(nkVar, nk.RESULT_SUCCESS)) {
                this.l.getEndpointPackageName();
            }
            throw null;
        }
    }

    public final void v(int i) {
        ecd ecdVar = this.m;
        dae daeVar = ecdVar.q;
        ckd.x(ecdVar.q);
        this.f16506f = null;
        this.k = true;
        String lastDisconnectMessage = this.l.getLastDisconnectMessage();
        clx clxVar = this.f16507g;
        clxVar.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (lastDisconnectMessage != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(lastDisconnectMessage);
        }
        clxVar.l(true, new Status(20, sb.toString()));
        dzu dzuVar = this.f16504d;
        daeVar.sendMessageDelayed(Message.obtain(daeVar, 9, dzuVar), PushUIConfig.dismissTime);
        daeVar.sendMessageDelayed(Message.obtain(daeVar, 11, dzuVar), 120000L);
        ((SparseIntArray) ecdVar.f15293f.f16634c).clear();
        Iterator it = this.n.values().iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
    }

    public final void w(nk nkVar) {
        ckd.x(this.m.q);
        cqh cqhVar = this.l;
        cqhVar.disconnect("onSignInFailed for " + cqhVar.getClass().getName() + " with " + String.valueOf(nkVar));
        s(nkVar, null);
    }

    public final boolean x(nk nkVar) {
        synchronized (ecd.f15291d) {
        }
        return false;
    }

    public final void y(Status status) {
        ckd.x(this.m.q);
        aa(status, null, false);
    }

    public final void z() {
        ecd ecdVar = this.m;
        ckd.x(ecdVar.q);
        cqh cqhVar = this.l;
        if (cqhVar.isConnected() || cqhVar.isConnecting()) {
            return;
        }
        try {
            fdy fdyVar = ecdVar.f15293f;
            Context context = ecdVar.l;
            SparseIntArray sparseIntArray = (SparseIntArray) fdyVar.f16634c;
            ckd.k(context);
            int i = 0;
            if (cqhVar.requiresGooglePlayServices()) {
                int minApkVersion = cqhVar.getMinApkVersion();
                int i2 = ((SparseIntArray) fdyVar.f16634c).get(minApkVersion, -1);
                if (i2 != -1) {
                    i = i2;
                } else {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= sparseIntArray.size()) {
                            i = -1;
                            break;
                        }
                        int keyAt = sparseIntArray.keyAt(i3);
                        if (keyAt > minApkVersion && sparseIntArray.get(keyAt) == 0) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i == -1) {
                        i = ((awe) fdyVar.f16632a).l(context, minApkVersion);
                    }
                    sparseIntArray.put(minApkVersion, i);
                }
            }
            if (i != 0) {
                nk nkVar = new nk(i, null);
                nkVar.toString();
                s(nkVar, null);
                return;
            }
            axs axsVar = new axs();
            axsVar.f11039f = ecdVar;
            axsVar.f11038e = null;
            axsVar.h = null;
            axsVar.f11040g = false;
            axsVar.f11036a = cqhVar;
            axsVar.f11037d = this.f16504d;
            if (cqhVar.requiresSignIn()) {
                aan aanVar = this.f16501a;
                ckd.k(aanVar);
                Handler handler = aanVar.f9860e;
                daw dawVar = aanVar.i;
                cdq cdqVar = aanVar.f9859d;
                if (cdqVar != null) {
                    cdqVar.disconnect();
                }
                dawVar.f13888g = Integer.valueOf(System.identityHashCode(aanVar));
                aanVar.f9859d = (cdq) aanVar.f9861f.bk(aanVar.h, handler.getLooper(), dawVar, (axa) dawVar.f13885d, aanVar, aanVar);
                aanVar.f9858b = axsVar;
                Set set = aanVar.f9862g;
                if (set == null || set.isEmpty()) {
                    handler.post(new dyn(20, aanVar));
                } else {
                    cdq cdqVar2 = aanVar.f9859d;
                    cdqVar2.getClass();
                    cdqVar2.connect(new dcq(5, cdqVar2));
                }
            }
            try {
                cqhVar.connect(axsVar);
            } catch (SecurityException e2) {
                s(new nk(10), e2);
            }
        } catch (IllegalStateException e3) {
            s(new nk(10), e3);
        }
    }
}
