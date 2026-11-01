package g;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzarh;
import com.google.android.gms.internal.ads.zzarj;
import com.google.android.gms.internal.ads.zzauq;
import com.google.android.gms.internal.ads.zzauu;
import com.google.android.gms.internal.ads.zzaux;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzfpp;
import com.google.android.gms.internal.ads.zzfqr;
import com.google.android.gms.internal.ads.zzfrl;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzgei;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class gvq implements Runnable, zzaux {

    /* renamed from: a, reason: collision with root package name */
    public final zzfpp f18826a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f18827b;

    /* renamed from: c, reason: collision with root package name */
    public int f18828c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f18829d;

    /* renamed from: f, reason: collision with root package name */
    public final akx f18831f;

    /* renamed from: g, reason: collision with root package name */
    public akx f18832g;
    public boolean h;
    public final boolean i;
    public Context k;
    public final boolean n;
    public final boolean o;
    public final Vector j = new Vector();
    public final AtomicReference l = new AtomicReference();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f18830e = new AtomicReference();
    public final CountDownLatch m = new CountDownLatch(1);

    public gvq(Context context, akx akxVar) {
        this.k = context;
        this.f18829d = context;
        this.f18832g = akxVar;
        this.f18831f = akxVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.f18827b = newCachedThreadPool;
        zzbce zzbceVar = zzbcn.zzcx;
        edt edtVar = edt.f15376a;
        boolean booleanValue = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
        this.n = booleanValue;
        this.f18826a = zzfpp.zza(context, newCachedThreadPool, booleanValue);
        zzbce zzbceVar2 = zzbcn.zzcu;
        zzbcl zzbclVar = edtVar.f15379d;
        this.i = ((Boolean) zzbclVar.zza(zzbceVar2)).booleanValue();
        this.o = ((Boolean) zzbclVar.zza(zzbcn.zzcy)).booleanValue();
        if (((Boolean) zzbclVar.zza(zzbcn.zzcw)).booleanValue()) {
            this.f18828c = 2;
        } else {
            this.f18828c = 1;
        }
        if (!((Boolean) zzbclVar.zza(zzbcn.zzdz)).booleanValue()) {
            this.h = s();
        }
        if (((Boolean) zzbclVar.zza(zzbcn.zzdt)).booleanValue()) {
            zzcaj.zza.execute(this);
            return;
        }
        mx mxVar = cbv.f12612a.f12615d;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzcaj.zza.execute(this);
        } else {
            run();
        }
    }

    public final void p() {
        zzaux t = t();
        Vector vector = this.j;
        if (vector.isEmpty() || t == null) {
            return;
        }
        Iterator it = vector.iterator();
        while (it.hasNext()) {
            Object[] objArr = (Object[]) it.next();
            int length = objArr.length;
            if (length == 1) {
                t.zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                t.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        vector.clear();
    }

    public final void q(boolean z) {
        String str = this.f18832g.afmaVersion;
        Context context = this.k;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        zzarh zza = zzarj.zza();
        zza.zza(z);
        zza.zzb(str);
        this.l.set(zzavb.zzu(context, new zzauz((zzarj) zza.zzbr())));
    }

    public final String r(Context context) {
        try {
            this.m.await();
            zzaux t = t();
            if (t == null) {
                return "";
            }
            p();
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            return t.zzf(context);
        } catch (InterruptedException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return "";
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch = this.m;
        try {
            zzbce zzbceVar = zzbcn.zzdz;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                this.h = s();
            }
            boolean z = this.f18832g.isClientJar;
            boolean z2 = false;
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzbd)).booleanValue() && z) {
                z2 = true;
            }
            if (((!this.i || this.h) ? this.f18828c : 1) == 1) {
                q(z2);
                if (this.f18828c == 2) {
                    this.f18827b.execute(new asy(this, 4, z2));
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    Context context = this.k;
                    akx akxVar = this.f18832g;
                    boolean z3 = this.n;
                    zzarh zza = zzarj.zza();
                    zza.zza(z2);
                    zza.zzb(akxVar.afmaVersion);
                    zzarj zzarjVar = (zzarj) zza.zzbr();
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    zzauu zza2 = zzauu.zza(context, zzarjVar, z3);
                    this.f18830e.set(zza2);
                    if (this.o && !zza2.zzr()) {
                        this.f18828c = 1;
                        q(z2);
                    }
                } catch (NullPointerException e2) {
                    this.f18828c = 1;
                    q(z2);
                    this.f18826a.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e2);
                }
            }
            countDownLatch.countDown();
            this.k = null;
            this.f18832g = null;
        } catch (Throwable th) {
            countDownLatch.countDown();
            this.k = null;
            this.f18832g = null;
            throw th;
        }
    }

    public final boolean s() {
        Context context = this.k;
        dnb dnbVar = new dnb(this);
        return new zzfrl(context, zzfqr.zzb(context, this.f18826a), dnbVar, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcv)).booleanValue()).zzd(1);
    }

    public final zzaux t() {
        return ((!this.i || this.h) ? this.f18828c : 1) == 2 ? (zzaux) this.f18830e.get() : (zzaux) this.l.get();
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zze(Context context, String str, View view, Activity activity) {
        try {
            this.m.await();
            zzaux t = t();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzko)).booleanValue()) {
                esy esyVar = ti.f20033a.z;
                esy.m(4, view);
            }
            if (t == null) {
                return "";
            }
            p();
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            return t.zze(context, str, view, activity);
        } catch (InterruptedException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return "";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzf(Context context) {
        return r(context);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzg(Context context) {
        try {
            return (String) zzgei.zzj(new fal(6, this, context, false), this.f18827b).get(((Integer) edt.f15376a.f15379d.zza(zzbcn.zzcO)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            return Integer.toString(17);
        } catch (TimeoutException unused2) {
            return zzauq.zza(context, this.f18831f.afmaVersion, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzh(Context context, View view, Activity activity) {
        zzbce zzbceVar = zzbcn.zzkn;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (!((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            zzaux t = t();
            if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
                esy esyVar = ti.f20033a.z;
                esy.m(2, view);
            }
            return t != null ? t.zzh(context, view, activity) : "";
        }
        try {
            this.m.await();
            zzaux t2 = t();
            if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
                esy esyVar2 = ti.f20033a.z;
                esy.m(2, view);
            }
            return t2 != null ? t2.zzh(context, view, activity) : "";
        } catch (InterruptedException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return "";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzk(MotionEvent motionEvent) {
        zzaux t = t();
        if (t == null) {
            this.j.add(new Object[]{motionEvent});
        } else {
            p();
            t.zzk(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzl(int i, int i2, int i3) {
        zzaux t = t();
        if (t == null) {
            this.j.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        } else {
            p();
            t.zzl(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzaux t;
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcT)).booleanValue();
        CountDownLatch countDownLatch = this.m;
        if (booleanValue) {
            if (countDownLatch.getCount() != 0 || (t = t()) == null) {
                return;
            }
            t.zzn(stackTraceElementArr);
            return;
        }
        try {
            countDownLatch.await();
            zzaux t2 = t();
            if (t2 != null) {
                t2.zzn(stackTraceElementArr);
            }
        } catch (InterruptedException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzo(View view) {
        zzaux t = t();
        if (t != null) {
            t.zzo(view);
        }
    }
}
