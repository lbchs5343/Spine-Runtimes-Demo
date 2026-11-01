package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.aot;
import g.edt;
import g.efr;
import g.fpf;
import g.ti;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzazl extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final int f4635a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4636b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4637c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4638d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f4639e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4640f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4641g;
    public final zzazc h;
    public final int i;
    public boolean j;
    public final int k;
    public boolean l;
    public final boolean m;
    public final String n;
    public final int o;

    public zzazl() {
        zzazc zzazcVar = new zzazc();
        this.j = false;
        this.l = false;
        this.h = zzazcVar;
        this.f4639e = new Object();
        this.o = ((Long) zzbee.zzd.zze()).intValue();
        this.f4636b = ((Long) zzbee.zza.zze()).intValue();
        this.f4635a = ((Long) zzbee.zze.zze()).intValue();
        this.k = ((Long) zzbee.zzc.zze()).intValue();
        zzbce zzbceVar = zzbcn.zzab;
        edt edtVar = edt.f15376a;
        this.f4638d = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        this.f4641g = ((Integer) edtVar.f15379d.zza(zzbcn.zzac)).intValue();
        this.f4640f = ((Integer) edtVar.f15379d.zza(zzbcn.zzad)).intValue();
        this.i = ((Long) zzbee.zzf.zze()).intValue();
        this.n = (String) edtVar.f15379d.zza(zzbcn.zzaf);
        this.m = ((Boolean) edtVar.f15379d.zza(zzbcn.zzag)).booleanValue();
        this.f4637c = ((Boolean) edtVar.f15379d.zza(zzbcn.zzah)).booleanValue();
        ((Boolean) edtVar.f15379d.zza(zzbcn.zzai)).getClass();
        setName("ContentFetchTask");
    }

    public final aot p(View view, zzazb zzazbVar) {
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            if ((view instanceof TextView) && !(view instanceof EditText)) {
                CharSequence text = ((TextView) view).getText();
                if (!TextUtils.isEmpty(text)) {
                    zzazbVar.zzh(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                    return new aot(1, 0, 6);
                }
            } else {
                if ((view instanceof WebView) && !(view instanceof zzcfk)) {
                    WebView webView = (WebView) view;
                    zzazbVar.zzf();
                    webView.post(new fpf(this, zzazbVar, webView, globalVisibleRect));
                    return new aot(0, 1, 6);
                }
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int i = 0;
                    int i2 = 0;
                    for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                        aot p = p(viewGroup.getChildAt(i3), zzazbVar);
                        i += p.f10586b;
                        i2 += p.f10587c;
                    }
                    return new aot(i, i2, 6);
                }
            }
        }
        return new aot(0, 0, 6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0042, code lost:
    
        if (r3.importance != 100) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0048, code lost:
    
        if (r2.inKeyguardRestrictedInputMode() != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004a, code lost:
    
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0052, code lost:
    
        if (r0 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0058, code lost:
    
        if (r0.isScreenOn() == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x005a, code lost:
    
        r0 = g.ti.f20033a.p.zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0062, code lost:
    
        if (r0 != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0064, code lost:
    
        g.agd.c("ContentFetchThread: no activity. Sleeping.");
        zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0071, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0076, code lost:
    
        if (r0.getWindow() == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0080, code lost:
    
        if (r0.getWindow().getDecorView() == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0082, code lost:
    
        r1 = r0.getWindow().getDecorView().findViewById(android.R.id.content);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0092, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0093, code lost:
    
        g.ti.f20033a.f20034ab.zzw(r0, "ContentFetchTask.extractContent");
        g.agd.c("Failed getting root view of activity. Content not extracted.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x006f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d8, code lost:
    
        g.agd.f("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x006d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c9, code lost:
    
        g.agd.f("Error in ContentFetchTask", r0);
        g.ti.f20033a.f20034ab.zzw(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00e0 A[EXC_TOP_SPLITTER, LOOP:1: B:9:0x00e0->B:16:0x00e0, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        View view;
        while (true) {
            try {
                Context zzb = ti.f20033a.p.zzb();
                if (zzb != null) {
                    ActivityManager activityManager = (ActivityManager) zzb.getSystemService(TTDownloadField.TT_ACTIVITY);
                    KeyguardManager keyguardManager = (KeyguardManager) zzb.getSystemService("keyguard");
                    if (activityManager != null && keyguardManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ActivityManager.RunningAppProcessInfo next = it.next();
                            if (Process.myPid() == next.pid) {
                                break;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                ti.f20033a.f20034ab.zzw(th, "ContentFetchTask.isInForeground");
            }
            agd.c("ContentFetchTask: sleeping");
            zze();
            Thread.sleep(this.i * 1000);
            synchronized (this.f4639e) {
                while (this.l) {
                    try {
                        agd.c("ContentFetchTask: waiting");
                        this.f4639e.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        if (view != null) {
            view.post(new efr(this, 20, view));
        }
        Thread.sleep(this.i * 1000);
        synchronized (this.f4639e) {
        }
    }

    public final void zzd() {
        synchronized (this.f4639e) {
            try {
                if (this.j) {
                    agd.c("Content hash thread already started, quitting...");
                } else {
                    this.j = true;
                    start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze() {
        synchronized (this.f4639e) {
            this.l = true;
            agd.c("ContentFetchThread: paused, pause = true");
        }
    }
}
