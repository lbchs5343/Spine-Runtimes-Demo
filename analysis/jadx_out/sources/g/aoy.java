package g;

import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.Surface;
import android.view.View;
import android.view.Window;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import cn.trinea.android.developertools.R;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzaai;
import com.google.android.gms.internal.ads.zzabi;
import com.google.android.gms.internal.ads.zzabl;
import com.google.android.gms.internal.ads.zzapt;
import com.google.android.gms.internal.ads.zzapy;
import com.google.android.gms.internal.ads.zzaqk;
import com.google.android.gms.internal.ads.zzbsl;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcav;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzdpm;
import com.google.android.gms.internal.ads.zzgee;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.PrintWriter;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class aoy implements caf, apv, ghx, jn, bcz, bmm, btp, awd, hdb, hax, gpv, zzabi, zzaqk, zzapt, bic, zzgee, bez, zzbsl {

    /* renamed from: d, reason: collision with root package name */
    public static final Object f10595d = new Object();

    /* renamed from: f, reason: collision with root package name */
    public static volatile aoy f10596f;

    /* renamed from: g, reason: collision with root package name */
    public static volatile aoy f10597g;
    public Object h;

    public aoy(int i) {
        switch (i) {
            case 11:
                this.h = new LinkedHashMap(0, 0.75f, true);
                break;
            case 16:
                this.h = new LinkedHashSet();
                break;
            default:
                this.h = new ConcurrentHashMap();
                break;
        }
    }

    public /* synthetic */ aoy(Object obj) {
        this.h = obj;
    }

    public static aoy m() {
        if (f10596f == null) {
            synchronized (f10595d) {
                try {
                    if (f10596f == null) {
                        f10596f = new aoy(1);
                    }
                } finally {
                }
            }
        }
        aoy aoyVar = f10596f;
        ckd.k(aoyVar);
        return aoyVar;
    }

    public static aoy n(efx efxVar) {
        if (f10597g == null) {
            synchronized (aoy.class) {
                try {
                    if (f10597g == null) {
                        aoy aoyVar = new aoy();
                        aoyVar.h = new vh(efxVar, "dt.db", null, 1, 0).getWritableDatabase();
                        f10597g = aoyVar;
                    }
                } finally {
                }
            }
        }
        return f10597g;
    }

    @Override // g.jn
    public void _bl(Object obj) {
        boolean z;
        Dialog dialog;
        Dialog dialog2;
        Dialog dialog3;
        iz izVar = (iz) obj;
        androidx.fragment.app.b bVar = (androidx.fragment.app.b) this.h;
        if (izVar != null) {
            z = bVar.mShowsDialog;
            if (z) {
                View requireView = bVar.requireView();
                if (requireView.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                dialog = bVar.mDialog;
                if (dialog != null) {
                    if (androidx.fragment.app.v.ao(3)) {
                        dialog3 = bVar.mDialog;
                        Objects.toString(dialog3);
                    }
                    dialog2 = bVar.mDialog;
                    dialog2.setContentView(requireView);
                }
            }
        }
    }

    @Override // g.hdb
    public boolean _bz(Context context, ert ertVar) {
        dgk dgkVar = (dgk) this.h;
        if (!TextUtils.isEmpty(dgkVar.getCopyText())) {
            fso.ae(context, "", dgkVar.getCopyText(), false);
        }
        if (!TextUtils.isEmpty(dgkVar.getToast())) {
            gm.d(context, dgkVar.getToast(), 1);
        }
        if (byh.bc() && "alipay".equals(dgkVar.getId())) {
            dgkVar.setCopyText("783653502");
            dgkVar.setPath(dgkVar.getPath().replace("836477706", "783653502"));
        }
        if (1 == dgkVar.getPathType() && (context instanceof Activity)) {
            dov.d((Activity) context, dgkVar.getPath(), "", "", "", null);
        } else if (!fgj.e().g(context, ffi.f(context, dgkVar), true, false, true) && "alipay".equals(dgkVar.getId())) {
            String copyText = dgkVar.getCopyText();
            fso.ae(context, "", copyText, false);
            gm.d(context, context.getString(eyt.ab(context, "com.eg.android.AlipayGphone", true) ? R.string.red_packet_copy_success : R.string.red_packet_copy_success_no_alipay, copyText), 1);
            fgj.e().g(context, context.getPackageManager().getLaunchIntentForPackage("com.eg.android.AlipayGphone"), false, false, true);
        }
        acw.s(context, ffi.e(dgkVar), System.currentTimeMillis());
        if (ertVar.f16054c) {
            String id = dgkVar.getId();
            String[] strArr = {awf.c(id, "_1"), awf.c(id, "_16"), awf.c(id, "_256")};
            ArrayList arrayList = new ArrayList();
            Iterator it = new ArrayList(Arrays.asList(strArr)).iterator();
            while (it.hasNext()) {
                ert ae = acr.ae(context, (String) it.next());
                if (ae != null) {
                    arrayList.add(ae);
                }
            }
            if (!acw.u(arrayList)) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ert ertVar2 = (ert) it2.next();
                    if (ertVar2 != null) {
                        ertVar2.f16054c = false;
                    }
                }
                String e2 = ffi.e(dgkVar);
                SimpleDateFormat simpleDateFormat = dlb.f14354a;
                acw.s(context, e2, System.currentTimeMillis());
                fzn.l(context).q(new Intent("cn.trinea.android.lib.ACTION_TOOL_UPDATE"));
            }
        }
        return true;
    }

    public void aa(int i, cyb cybVar) {
        ((p) this.h).u(i, cybVar);
    }

    public void ab(Serializable serializable) {
        ((PrintWriter) this.h).println(serializable);
    }

    @Override // g.gpv
    public boolean ac() {
        return ((c.a.a) this.h).j;
    }

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        gsn gsnVar = (gsn) this.h;
        if (anxVar.f10539a.p()) {
            gsnVar._z(anxVar.f10540b);
        } else {
            gsnVar._z(eg.i(new hbk(anxVar)));
        }
    }

    @Override // g.gpv
    public void ae() {
        c.a.a aVar = (c.a.a) this.h;
        if (aVar.isFinishing() || aVar.isDestroyed() || !aVar.j) {
            return;
        }
        aVar.w();
    }

    public void af(int i, long j) {
        ((p) this.h).o(i, (j >> 63) ^ (j + j));
    }

    public void ag(ebh ebhVar, ebh ebhVar2, final bfb bfbVar) {
        cci declaringClass = ebhVar instanceof cci ? (cci) ebhVar : ebhVar.getDeclaringClass();
        final cci declaringClass2 = ebhVar2 instanceof cci ? (cci) ebhVar2 : ebhVar2.getDeclaringClass();
        if (declaringClass.equals(declaringClass2) || declaringClass.bd().equals(declaringClass2.bd())) {
            return;
        }
        if (declaringClass.f12635g.equals(declaringClass2.f12635g)) {
            do {
                if (ebhVar.ay().al()) {
                    bfbVar.f(ebhVar, 0);
                }
                ebhVar = ebhVar.getDeclaringClass();
            } while (ebhVar != null);
            return;
        }
        Consumer consumer = new Consumer() { // from class: g.iq
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                dwg dwgVar = (dwg) aoy.this.h;
                gut gutVar = (gut) obj;
                gqc ay = gutVar.ay();
                int i = ay.f18566ab;
                gqc gqcVar = new gqc(i & 7, (frh) ay.z, 1);
                if (gqcVar.an()) {
                    return;
                }
                boolean al = gqcVar.al();
                cci cciVar = declaringClass2;
                bfb bfbVar2 = bfbVar;
                int i2 = 1;
                if (al || (i & 7) == 0) {
                    cci declaringClass3 = gutVar.getDeclaringClass();
                    if (declaringClass3 != null && Collection.b.stream(dwgVar.l.g(cciVar.bn())).anyMatch(new cpa(declaringClass3, 3))) {
                        i2 = 4;
                    }
                    bfbVar2.f(gutVar, i2);
                    return;
                }
                if (!gqcVar.ao()) {
                    throw new gck(gqcVar + " is not supported");
                }
                cci declaringClass4 = gutVar.getDeclaringClass();
                if (declaringClass4 == null || !Collection.b.stream(dwgVar.l.g(cciVar.bn())).anyMatch(new cpa(declaringClass4, 3))) {
                    bfbVar2.f(gutVar, 1);
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                return j$.util.function.j.$default$andThen(this, consumer2);
            }
        };
        do {
            consumer.n(ebhVar);
            ebhVar = ebhVar.getDeclaringClass();
        } while (ebhVar != null);
    }

    public void ah(int i, Object obj, ciw ciwVar) {
        p pVar = (p) this.h;
        cir cirVar = (cir) obj;
        pVar.r((i << 3) | 2);
        cys cysVar = (cys) cirVar;
        int i2 = cysVar.zzd;
        if (i2 == -1) {
            i2 = ciwVar.zza(cirVar);
            cysVar.zzd = i2;
        }
        pVar.r(i2);
        ciwVar.e(cirVar, pVar.f19791f);
    }

    @Override // g.awd
    public float b() {
        return -((NestedScrollView) this.h).getVerticalScrollFactorCompat();
    }

    @Override // g.awd
    public boolean c(float f2) {
        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return false;
        }
        e();
        ((NestedScrollView) this.h).aj((int) f2);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.bcz
    public void close() {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.h;
        if (contentProviderClient != 0) {
            if (contentProviderClient instanceof AutoCloseable) {
                contentProviderClient.close();
            } else if (contentProviderClient instanceof ExecutorService) {
                o.ad((ExecutorService) contentProviderClient);
            } else {
                contentProviderClient.release();
            }
        }
    }

    @Override // g.awd
    public void e() {
        ((NestedScrollView) this.h).r.abortAnimation();
    }

    @Override // g.btp
    public void i(x xVar) {
        dmr dmrVar = (dmr) this.h;
        dmr.k(dmrVar, true);
        dzm.ao(dmrVar.f14439d, "vs");
    }

    @Override // g.apv
    public void j(ftn ftnVar, far farVar) {
        ezq ezqVar = (ezq) this.h;
        Handler handler = ezqVar.ao;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = ezqVar.i;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ftnVar == ((czb) arrayList.get(i)).f13801b) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        handler.postAtTime(new chq(this, i2 < arrayList.size() ? (czb) arrayList.get(i2) : null, farVar, ftnVar, 0), ftnVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        dif difVar = anpVar.f10526b;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.h;
        if (!Objects.equals(coordinatorLayout.u, anpVar)) {
            coordinatorLayout.u = anpVar;
            boolean z = anpVar.e() > 0;
            coordinatorLayout.i = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            if (!difVar.c()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    WeakHashMap weakHashMap = goi.f18490c;
                    if (childAt.getFitsSystemWindows() && ((eu) childAt.getLayoutParams()).h != null && difVar.c()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return anpVar;
    }

    @Override // g.apv
    public void l(ftn ftnVar, MenuItem menuItem) {
        ((ezq) this.h).ao.removeCallbacksAndMessages(ftnVar);
    }

    @Override // g.btp
    public void o(int i) {
        dmr dmrVar = (dmr) this.h;
        dmr.j(dmrVar, false, i);
        dzm.ao(dmrVar.f14439d, "vf");
    }

    public void p(int i, int i2) {
        p pVar = (p) this.h;
        pVar.r(i << 3);
        pVar.r((i2 >> 31) ^ (i2 + i2));
    }

    @Override // g.gpv
    public void q(ejn ejnVar) {
        c.a.a aVar = (c.a.a) this.h;
        aVar.t.onReceive(aVar, new Intent().putExtra("alternative_window_event", true).putExtra("accessibility_event_simple", ejnVar));
    }

    @Override // g.caf
    public boolean r(ftn ftnVar) {
        Window.Callback callback = ((dre) this.h).au.getCallback();
        if (callback == null) {
            return true;
        }
        callback.onMenuOpened(108, ftnVar);
        return true;
    }

    public void s(Context context, ServiceConnection serviceConnection) {
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.h;
        if ((serviceConnection instanceof enc) || !concurrentHashMap.containsKey(serviceConnection)) {
            try {
                context.unbindService(serviceConnection);
            } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
            }
        } else {
            try {
                try {
                    context.unbindService((ServiceConnection) concurrentHashMap.get(serviceConnection));
                } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused2) {
                }
            } finally {
                concurrentHashMap.remove(serviceConnection);
            }
        }
    }

    @Override // g.bcz
    public Cursor t(Uri uri, String[] strArr, String[] strArr2) {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.h;
        if (contentProviderClient == null) {
            return null;
        }
        try {
            return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean u(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, Executor executor) {
        boolean bindService;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.h;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((chk.c(context).b(0, packageName).flags & 2097152) != 0) {
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (serviceConnection instanceof enc) {
            if (executor == null) {
                executor = null;
            }
            if (Build.VERSION.SDK_INT < 29 || executor == null) {
                return context.bindService(intent, serviceConnection, i);
            }
            bindService = context.bindService(intent, i, executor, serviceConnection);
            return bindService;
        }
        ServiceConnection serviceConnection2 = (ServiceConnection) concurrentHashMap.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction());
        }
        if (executor == null) {
            executor = null;
        }
        try {
            boolean bindService2 = (Build.VERSION.SDK_INT < 29 || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
            if (bindService2) {
                return bindService2;
            }
            return false;
        } finally {
            concurrentHashMap.remove(serviceConnection, serviceConnection);
        }
    }

    @Override // g.bez
    public void v(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.h;
        etm etmVar = (etm) obj;
        proxyBillingActivityV2.getClass();
        Intent data = etmVar.getData();
        Bundle extras = data == null ? null : data.getExtras();
        if (etmVar.getResultCode() != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            etmVar.getResultCode();
            int i = gbs.f17875a;
            extras.putInt("INTERNAL_LOG_ERROR_REASON", hm.ERROR_IN_ACTIVITY_RESULT.zza());
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "External offer flow finished with error resultCode: " + etmVar.getResultCode());
        }
        int i2 = gbs.d(data, "ProxyBillingActivityV2").f15636a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.h;
        if (resultReceiver != null) {
            resultReceiver.send(i2, extras);
        }
        proxyBillingActivityV2.finish();
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        ((gsn) this.h)._z(eg.i(th));
    }

    @Override // g.caf
    public void x(ftn ftnVar, boolean z) {
        ((dre) this.h).cq(ftnVar);
    }

    public synchronized void y(ego egoVar) {
        bff.p(egoVar, "route");
        ((LinkedHashSet) this.h).remove(egoVar);
    }

    public void z(int i, Object obj, ciw ciwVar) {
        p pVar = (p) this.h;
        pVar.n(i, 3);
        ciwVar.e((cir) obj, pVar.f19791f);
        pVar.n(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public File zza() {
        return (File) this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzbsl
    public void zza(int i, int i2, int i3, int i4) {
        ((zzdpm) this.h).p.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public void zza(zzabl zzablVar) {
        zzaai zzaaiVar = (zzaai) this.h;
        Surface surface = zzaaiVar.i;
        if (surface != null) {
            zzaaiVar.u.zzq(surface);
            zzaaiVar.n = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapt
    public void zza(zzapy zzapyVar) {
        ((zzcao) this.h).zzd(zzapyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        ((zzcav) this.h).f5138g.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzbsl
    public void zzb() {
        ((zzdpm) this.h).p.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public void zzb(zzabl zzablVar) {
        zzaai zzaaiVar = (zzaai) this.h;
        if (zzaaiVar.i != null) {
            zzaaiVar.bg(0, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        ((zzcav) this.h).f5138g.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzbsl
    public void zzc() {
        ((zzdpm) this.h).k.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public void zzc(zzabl zzablVar, zzci zzciVar) {
    }
}
