package g;

import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.provider.Settings;
import android.view.View;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbpc;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class ctl {

    /* renamed from: a, reason: collision with root package name */
    public Object f13466a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13467b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f13468c;

    /* renamed from: d, reason: collision with root package name */
    public Object f13469d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f13470e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13471f;

    /* renamed from: g, reason: collision with root package name */
    public Object f13472g;
    public final Object h;
    public Object i;
    public final Object j;
    public Object k;
    public final Object l;
    public Object m;

    /* JADX WARN: Multi-variable type inference failed */
    public ctl(Context context, cp cpVar, Handler handler, evf evfVar, fnq fnqVar, yk ykVar) {
        eed eedVar = new eed("Picasso-Dispatcher", 10);
        eedVar.start();
        Looper looper = eedVar.getLooper();
        StringBuilder sb = dxc.f14999a;
        int i = 2;
        Object[] objArr = 0;
        dae daeVar = new dae(looper, i, false);
        daeVar.sendMessageDelayed(daeVar.obtainMessage(), 1000L);
        this.j = context;
        this.l = cpVar;
        this.f13470e = new LinkedHashMap();
        this.f13472g = new WeakHashMap();
        this.m = new WeakHashMap();
        this.f13466a = new LinkedHashSet();
        this.i = new eqi(eedVar.getLooper(), (Object) this, (int) (0 == true ? 1 : 0));
        this.f13468c = evfVar;
        this.k = handler;
        this.f13467b = fnqVar;
        this.f13469d = ykVar;
        this.h = new ArrayList(4);
        try {
            Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0);
        } catch (NullPointerException | SecurityException unused) {
        }
        this.f13471f = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
        sr srVar = new sr(this, i, objArr == true ? 1 : 0);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        ctl ctlVar = (ctl) srVar.f20006c;
        if (ctlVar.f13471f) {
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        ((Context) ctlVar.j).registerReceiver(srVar, intentFilter);
    }

    public ctl(cgp cgpVar) {
        ao aoVar = ao.af;
        this.j = new zzbpc();
        this.f13468c = new hl();
        this.f13470e = new cza(this);
        this.h = cgpVar;
        this.l = aoVar;
        this.k = null;
        new AtomicBoolean(false);
    }

    public static eno n(Context context, gin[] ginVarArr) {
        for (gin ginVar : ginVarArr) {
            if (ginVar.equals(gin.f18201c)) {
                return new eno("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
            }
        }
        eno enoVar = new eno(context, ginVarArr);
        enoVar.zzj = false;
        return enoVar;
    }

    public void o(gin... ginVarArr) {
        cgp cgpVar = (cgp) this.h;
        this.f13466a = ginVarArr;
        try {
            deq deqVar = (deq) this.k;
            if (deqVar != null) {
                deqVar.zzF(n(cgpVar.getContext(), (gin[]) this.f13466a));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        cgpVar.requestLayout();
    }

    public void p(fgs fgsVar, boolean z) {
        fgs fgsVar2;
        awa awaVar;
        ctl ctlVar;
        cp cpVar = (cp) this.l;
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.f13470e;
        LinkedHashSet linkedHashSet = (LinkedHashSet) this.f13466a;
        fgs fgsVar3 = fgsVar.f16752b;
        fpu fpuVar = fgsVar.f16755e;
        String str = fgsVar.f16751a;
        if (linkedHashSet.contains(fgsVar3)) {
            ((WeakHashMap) this.m).put(fgsVar.h(), fgsVar);
            return;
        }
        awa awaVar2 = (awa) linkedHashMap.get(str);
        if (awaVar2 != null) {
            awaVar2.r.getClass();
            if (awaVar2.i == null) {
                awaVar2.i = fgsVar;
                return;
            }
            if (awaVar2.l == null) {
                awaVar2.l = new ArrayList(3);
            }
            awaVar2.l.add(fgsVar);
            je jeVar = fpuVar.f17214c;
            if (jeVar.ordinal() > awaVar2.o.ordinal()) {
                awaVar2.o = jeVar;
                return;
            }
            return;
        }
        if (cpVar.isShutdown()) {
            return;
        }
        akf akfVar = fgsVar.f16753c;
        fnq fnqVar = (fnq) this.f13467b;
        yk ykVar = (yk) this.f13469d;
        Object obj = awa.f10959d;
        List list = akfVar.f10378f;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                fgsVar2 = fgsVar;
                ctlVar = this;
                awaVar = new awa(akfVar, ctlVar, fnqVar, ykVar, fgsVar2, awa.f10957b);
                break;
            } else {
                gsp gspVar = (gsp) list.get(i);
                if (gspVar.d(fpuVar)) {
                    ctlVar = this;
                    fgsVar2 = fgsVar;
                    awaVar = new awa(akfVar, ctlVar, fnqVar, ykVar, fgsVar2, gspVar);
                    break;
                }
                i++;
            }
        }
        awaVar.u = cpVar.submit(awaVar);
        linkedHashMap.put(str, awaVar);
        if (z) {
            ((WeakHashMap) ctlVar.f13472g).remove(fgsVar2.h());
        }
    }

    public void q(awa awaVar) {
        eqi eqiVar = (eqi) this.i;
        Future future = awaVar.u;
        if (future == null || !future.isCancelled()) {
            Bitmap bitmap = awaVar.k;
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
            ((ArrayList) this.h).add(awaVar);
            if (eqiVar.hasMessages(7)) {
                return;
            }
            eqiVar.sendEmptyMessageDelayed(7, 200L);
        }
    }

    public void r(qo qoVar) {
        cgp cgpVar = (cgp) this.h;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (((deq) this.k) == null) {
                if (((gin[]) this.f13466a) == null || ((String) this.f13469d) == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = cgpVar.getContext();
                eno n = n(context, (gin[]) this.f13466a);
                deq deqVar = "search_v2".equals(n.zza) ? (deq) new hbn(cbv.f12612a.f12616e, context, n, (String) this.f13469d).j(context, false) : (deq) new gnr(cbv.f12612a.f12616e, context, n, (String) this.f13469d, (zzbpc) this.j).j(context, false);
                this.k = deqVar;
                deqVar.zzD(new fnu((cza) this.f13470e));
                evo evoVar = (evo) this.f13472g;
                if (evoVar != null) {
                    ((deq) this.k).zzC(new bqy(evoVar));
                }
                eus eusVar = (eus) this.i;
                if (eusVar != null) {
                    ((deq) this.k).zzG(new zzaza(eusVar));
                }
                cxt cxtVar = (cxt) this.f13467b;
                if (cxtVar != null) {
                    ((deq) this.k).zzU(new cpm(cxtVar));
                }
                ((deq) this.k).zzP(new bmt());
                ((deq) this.k).zzN(this.f13471f);
                deq deqVar2 = (deq) this.k;
                if (deqVar2 != null) {
                    try {
                        bjq zzn = deqVar2.zzn();
                        if (zzn != null) {
                            if (((Boolean) zzbel.zzf.zze()).booleanValue()) {
                                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                                    mx.f19684e.post(new efr(29, this, zzn, false));
                                }
                            }
                            cgpVar.addView((View) bpp.b(zzn));
                        }
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                    }
                }
            }
            if (qoVar != null) {
                qoVar.h = currentTimeMillis;
            }
            deq deqVar3 = (deq) this.k;
            if (deqVar3 == null) {
                throw null;
            }
            ao aoVar = (ao) this.l;
            Context context2 = cgpVar.getContext();
            aoVar.getClass();
            deqVar3.zzab(ao.ai(context2, qoVar));
        } catch (RemoteException e3) {
            agd.g("#007 Could not call remote method.", e3);
        }
    }

    public void s(eus eusVar) {
        try {
            this.i = eusVar;
            deq deqVar = (deq) this.k;
            if (deqVar != null) {
                deqVar.zzG(eusVar != null ? new zzaza(eusVar) : null);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public void t(awa awaVar) {
        eqi eqiVar = (eqi) this.i;
        eqiVar.sendMessage(eqiVar.obtainMessage(4, awaVar));
    }

    public void u(awa awaVar, boolean z) {
        awaVar.r.getClass();
        ((LinkedHashMap) this.f13470e).remove(awaVar.v);
        q(awaVar);
    }

    public void v(evo evoVar) {
        try {
            this.f13472g = evoVar;
            deq deqVar = (deq) this.k;
            if (deqVar != null) {
                deqVar.zzC(evoVar != null ? new bqy(evoVar) : null);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
