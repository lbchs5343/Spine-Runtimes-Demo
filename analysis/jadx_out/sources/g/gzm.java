package g;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzavc;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;

/* loaded from: classes.dex */
public final class gzm implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19061a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19062b;

    public /* synthetic */ gzm(int i, Object obj) {
        this.f19061a = i;
        this.f19062b = obj;
    }

    public gzm(zs zsVar, ctf ctfVar, String str) {
        this.f19061a = 5;
        this.f19062b = zsVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle;
        agh aghVar;
        atp atpVar = null;
        boolean z = true;
        switch (this.f19061a) {
            case 0:
                JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) this.f19062b;
                cvv cvvVar = new cvv();
                cvvVar.f13610a = jsReplyProxyBoundaryInterface;
                return cvvVar;
            case 1:
                ezv ezvVar = (ezv) this.f19062b;
                ezvVar.f16431g.set(true);
                try {
                    Process.setThreadPriority(10);
                    atpVar = ezvVar.f16428d.p();
                    Binder.flushPendingCommands();
                    return atpVar;
                } finally {
                }
            case 2:
                aaa aaaVar = (aaa) this.f19062b;
                tq tqVar = aaaVar.f9833b;
                synchronized (tqVar.k) {
                    try {
                        if (tqVar.t != 3) {
                            boolean z2 = tqVar.t == 1;
                            if (TextUtils.isEmpty(null)) {
                                bundle = null;
                            } else {
                                bundle = new Bundle();
                                bundle.putString("accountName", null);
                                gbs.g(tqVar.w.longValue(), bundle, tqVar.y, tqVar.f20061g);
                            }
                            hm hmVar = hm.REASON_UNSPECIFIED;
                            synchronized (tqVar.k) {
                                aghVar = tqVar.s;
                            }
                            if (aghVar == null) {
                                tq tqVar2 = aaaVar.f9833b;
                                tqVar2.ai(0);
                                hm hmVar2 = hm.SERVICE_RESET_TO_NULL;
                                ejd ejdVar = edc.n;
                                tqVar2.bc(ejdVar, hmVar2);
                                aaaVar.g(ejdVar);
                            } else {
                                tq tqVar3 = aaaVar.f9833b;
                                String packageName = tqVar3.aa.getPackageName();
                                int i = 25;
                                int i2 = 3;
                                while (true) {
                                    if (i >= 3) {
                                        if (bundle == null) {
                                            try {
                                                eaw eawVar = (eaw) aghVar;
                                                Parcel _cc = eawVar._cc();
                                                _cc.writeInt(i);
                                                _cc.writeString(packageName);
                                                _cc.writeString("subs");
                                                Parcel h = eawVar.h(_cc, 1);
                                                i2 = h.readInt();
                                                h.recycle();
                                            } catch (Exception e2) {
                                                int i3 = gbs.f17875a;
                                                boolean z3 = e2 instanceof DeadObjectException;
                                                hm hmVar3 = z3 ? hm.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION : e2 instanceof RemoteException ? hm.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION : e2 instanceof SecurityException ? hm.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION : hm.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
                                                String b2 = hmVar3.equals(hm.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION) ? cgl.b(e2) : null;
                                                aaaVar.f9833b.ai(0);
                                                aaaVar.f(z3 ? edc.n : edc.f15337a, hmVar3, b2, z2);
                                                aaaVar.g(z3 ? edc.n : edc.f15337a);
                                            }
                                        } else {
                                            i2 = ((eaw) aghVar).o(i, packageName, "subs", bundle);
                                        }
                                        if (i2 == 0) {
                                            gbs.i("BillingClient", "highestLevelSupportedForSubs: " + i);
                                        } else {
                                            i--;
                                        }
                                    } else {
                                        i = 0;
                                    }
                                }
                                tqVar3.f20057c = i >= 3;
                                if (i < 3) {
                                    hmVar = hm.SUBSCRIPTIONS_NOT_SUPPORTED;
                                    gbs.i("BillingClient", "In-app billing API does not support subscription on this device.");
                                }
                                int i4 = 25;
                                while (true) {
                                    if (i4 >= 3) {
                                        if (bundle == null) {
                                            eaw eawVar2 = (eaw) aghVar;
                                            Parcel _cc2 = eawVar2._cc();
                                            _cc2.writeInt(i4);
                                            _cc2.writeString(packageName);
                                            _cc2.writeString("inapp");
                                            Parcel h2 = eawVar2.h(_cc2, 1);
                                            int readInt = h2.readInt();
                                            h2.recycle();
                                            i2 = readInt;
                                        } else {
                                            i2 = ((eaw) aghVar).o(i4, packageName, "inapp", bundle);
                                        }
                                        if (i2 == 0) {
                                            tqVar3.i = i4;
                                            gbs.i("BillingClient", "mHighestLevelSupportedForInApp: " + i4);
                                        } else {
                                            i4--;
                                        }
                                    }
                                }
                                int i5 = tqVar3.i;
                                tqVar3.i = i5;
                                tqVar3.n = i5 >= 26;
                                tqVar3.m = i5 >= 24;
                                tqVar3.l = i5 >= 21;
                                tqVar3.x = i5 >= 20;
                                tqVar3.p = i5 >= 19;
                                tqVar3.f20055ab = i5 >= 17;
                                tqVar3.v = i5 >= 16;
                                tqVar3.q = i5 >= 15;
                                tqVar3.f20058d = i5 >= 14;
                                tqVar3.f20060f = i5 >= 9;
                                if (i5 < 6) {
                                    z = false;
                                }
                                tqVar3.r = z;
                                if (i5 < 3) {
                                    hmVar = hm.ONE_TIME_PRODUCT_NOT_SUPPORTED;
                                    int i6 = gbs.f17875a;
                                }
                                tq.ac(tqVar3, i2);
                                if (i2 != 0) {
                                    ejd ejdVar2 = edc.m;
                                    aaaVar.f(ejdVar2, hmVar, null, z2);
                                    aaaVar.g(ejdVar2);
                                } else {
                                    try {
                                        Long e3 = aaaVar.e(z2);
                                        if (z2) {
                                            gza b3 = eag.b();
                                            b3.f();
                                            eag.e((eag) b3.f14803d, 6);
                                            eip e4 = dmh.e();
                                            e4.a(false);
                                            e4.b();
                                            if (e3 != null) {
                                                long longValue = e3.longValue();
                                                e4.f();
                                                dmh.c((dmh) e4.f14803d, longValue);
                                            }
                                            tq tqVar4 = aaaVar.f9833b;
                                            b3.f();
                                            eag.d((eag) b3.f14803d, (dmh) e4.g());
                                            tqVar4.ba((eag) b3.g());
                                        } else {
                                            bnn c2 = efn.c();
                                            gwg c3 = aho.c();
                                            c3.f();
                                            aho.f((aho) c3.f14803d, 0);
                                            c2.f();
                                            efn.b((efn) c2.f14803d, (aho) c3.g());
                                            if (e3 != null) {
                                                long longValue2 = e3.longValue();
                                                c2.f();
                                                efn.a((efn) c2.f14803d, longValue2);
                                            }
                                            aaaVar.f9833b.f20056b.aa((efn) c2.g());
                                        }
                                    } catch (Throwable unused) {
                                        int i7 = gbs.f17875a;
                                    }
                                    aaaVar.g(edc.l);
                                }
                            }
                        }
                    } finally {
                    }
                }
                return null;
            case 3:
                return ((ad) this.f19062b).getViewSignals();
            case 4:
                return new auf(((dqu) this.f19062b).k);
            case 5:
                bsz bszVar = ((zs) this.f19062b).f20414b;
                bszVar.ay();
                fit fitVar = bszVar.f12156b;
                bsz.ag(fitVar);
                fitVar._e();
                throw new IllegalStateException("Unexpected call on client side");
            case 6:
                gfx gfxVar = esy.f16117a;
                esy esyVar = ti.f20033a.z;
                return esy.u((Uri) this.f19062b);
            default:
                gbf gbfVar = (gbf) this.f19062b;
                return new zzavc(zzavb.zzu(gbfVar.f17856d, new zzauz(gbfVar.f17858f.afmaVersion, false)));
        }
    }
}
