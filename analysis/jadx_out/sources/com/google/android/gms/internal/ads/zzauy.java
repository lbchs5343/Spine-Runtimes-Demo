package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.edt;
import g.eq;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public abstract class zzauy implements zzaux {

    /* renamed from: a, reason: collision with root package name */
    public static volatile zzawf f4511a;

    /* renamed from: c, reason: collision with root package name */
    public float f4513c;

    /* renamed from: d, reason: collision with root package name */
    public final zzavx f4514d;

    /* renamed from: f, reason: collision with root package name */
    public float f4516f;

    /* renamed from: g, reason: collision with root package name */
    public double f4517g;
    public double i;
    public double j;
    public final DisplayMetrics k;
    public MotionEvent o;
    public float r;
    public float t;
    public final LinkedList q = new LinkedList();
    public long h = 0;
    public long l = 0;
    public long m = 0;
    public long u = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f4515e = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f4512b = 0;
    public long p = 0;
    public boolean s = false;
    public boolean n = false;

    public zzauy(Context context) {
        try {
            eq.h();
            this.k = context.getResources().getDisplayMetrics();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcS)).booleanValue()) {
                this.f4514d = new zzavx();
            }
        } catch (Throwable unused) {
        }
    }

    public abstract zzasf aa(Context context);

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String ab(Context context, String str, int i, View view, Activity activity) {
        zzauw zzauwVar;
        String str2;
        int i2;
        Exception exc;
        int i3;
        byte[] zzaV;
        int i4;
        int i5 = i;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcF)).booleanValue();
        zzasf zzasfVar = null;
        if (booleanValue) {
            zzauwVar = f4511a != null ? f4511a.zzd() : null;
            str2 = "be";
        } else {
            zzauwVar = null;
            str2 = null;
        }
        try {
            if (i5 == 3) {
                zzasfVar = z(context, view, activity);
                try {
                    this.s = true;
                    i4 = 1002;
                } catch (Exception e2) {
                    exc = e2;
                    i2 = 3;
                    if (booleanValue && zzauwVar != null) {
                        if (i5 != i2) {
                            i3 = 1003;
                        } else if (i5 == 2) {
                            i3 = 1009;
                        } else {
                            i5 = 1;
                            i3 = 1001;
                        }
                        zzauwVar.zzc(i3, -1, System.currentTimeMillis() - currentTimeMillis, str2, exc);
                    }
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (zzasfVar != null) {
                    }
                    return Integer.toString(5);
                }
            } else if (i5 == 2) {
                zzasfVar = v(context, view, activity);
                i4 = 1008;
            } else {
                zzasfVar = aa(context);
                i4 = 1000;
            }
            if (!booleanValue || zzauwVar == null) {
                i2 = 3;
            } else {
                i2 = 3;
                try {
                    zzauwVar.zzc(i4, -1, System.currentTimeMillis() - currentTimeMillis, str2, null);
                } catch (Exception e3) {
                    e = e3;
                    exc = e;
                    if (booleanValue) {
                        if (i5 != i2) {
                        }
                        zzauwVar.zzc(i3, -1, System.currentTimeMillis() - currentTimeMillis, str2, exc);
                    }
                    long currentTimeMillis22 = System.currentTimeMillis();
                    if (zzasfVar != null) {
                    }
                    return Integer.toString(5);
                }
            }
        } catch (Exception e4) {
            e = e4;
            i2 = 3;
        }
        long currentTimeMillis222 = System.currentTimeMillis();
        if (zzasfVar != null) {
            try {
                if (((zzata) zzasfVar.zzbr()).zzaY() != 0) {
                    zzata zzataVar = (zzata) zzasfVar.zzbr();
                    boolean z = eq.f15967c;
                    zzato g2 = eq.g(str, zzataVar.zzaV());
                    if (g2 == null) {
                        zzasf zza = zzata.zza();
                        zza.zzD(4096L);
                        zzaV = eq.f(str, ((zzata) zza.zzbr()).zzaV(), true);
                    } else {
                        zzaV = ((zzatp) g2.zzbr()).zzaV();
                    }
                    String zza2 = zzatt.zza(zzaV, true);
                    if (!booleanValue || zzauwVar == null) {
                        return zza2;
                    }
                    zzauwVar.zzc(i5 == i2 ? PluginConstants.ERROR_PLUGIN_SIGN_VERIFY : i5 == 2 ? 1010 : 1004, -1, System.currentTimeMillis() - currentTimeMillis222, str2, null);
                    return zza2;
                }
            } catch (Exception e5) {
                String num = Integer.toString(7);
                if (!booleanValue || zzauwVar == null) {
                    return num;
                }
                zzauwVar.zzc(i5 == i2 ? PluginConstants.ERROR_PLUGIN_FETCH : i5 == 2 ? AVMDLDataLoader.KeyIsGetCostLog : 1005, -1, System.currentTimeMillis() - currentTimeMillis222, str2, e5);
                return num;
            }
        }
        return Integer.toString(5);
    }

    public abstract zzasf v(Context context, View view, Activity activity);

    public abstract zzawh w(MotionEvent motionEvent);

    public abstract long x(StackTraceElement[] stackTraceElementArr);

    public final void y() {
        this.f4515e = 0L;
        this.h = 0L;
        this.l = 0L;
        this.m = 0L;
        this.u = 0L;
        this.f4512b = 0L;
        this.p = 0L;
        LinkedList linkedList = this.q;
        if (linkedList.isEmpty()) {
            MotionEvent motionEvent = this.o;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        } else {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            linkedList.clear();
        }
        this.o = null;
    }

    public abstract zzasf z(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzd(Context context, String str, View view) {
        return ab(context, str, 3, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zze(Context context, String str, View view, Activity activity) {
        return ab(context, str, 3, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzf(Context context) {
        if (zzawi.zzc()) {
            throw new IllegalStateException("The caller must not be called from the UI thread.");
        }
        return ab(context, null, 1, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String zzh(Context context, View view, Activity activity) {
        return ab(context, null, 2, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final synchronized void zzk(MotionEvent motionEvent) {
        Long l;
        try {
            if (this.s) {
                y();
                this.s = false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f4517g = 0.0d;
                this.j = motionEvent.getRawX();
                this.i = motionEvent.getRawY();
            } else if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d2 = rawX - this.j;
                double d3 = rawY - this.i;
                this.f4517g += Math.sqrt((d3 * d3) + (d2 * d2));
                this.j = rawX;
                this.i = rawY;
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 == 1) {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        this.o = obtain;
                        this.q.add(obtain);
                        if (this.q.size() > 6) {
                            ((MotionEvent) this.q.remove()).recycle();
                        }
                        this.m++;
                        this.f4515e = x(new Throwable().getStackTrace());
                    } else if (action2 == 2) {
                        this.l += motionEvent.getHistorySize() + 1;
                        zzawh w = w(motionEvent);
                        Long l2 = w.zzd;
                        if (l2 != null && w.zzg != null) {
                            this.f4512b = l2.longValue() + w.zzg.longValue() + this.f4512b;
                        }
                        if (this.k != null && (l = w.zze) != null && w.zzh != null) {
                            this.p = l.longValue() + w.zzh.longValue() + this.p;
                        }
                    } else if (action2 == 3) {
                        this.u++;
                    }
                } catch (zzavv unused) {
                }
            } else {
                this.t = motionEvent.getX();
                this.r = motionEvent.getY();
                this.f4516f = motionEvent.getRawX();
                this.f4513c = motionEvent.getRawY();
                this.h++;
            }
            this.n = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final synchronized void zzl(int i, int i2, int i3) {
        try {
            if (this.o != null) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcD)).booleanValue()) {
                    y();
                } else {
                    this.o.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.k;
            if (displayMetrics != null) {
                float f2 = displayMetrics.density;
                this.o = MotionEvent.obtain(0L, i3, 1, i * f2, i2 * f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0, 0);
            } else {
                this.o = null;
            }
            this.n = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzavx zzavxVar;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcS)).booleanValue() || (zzavxVar = this.f4514d) == null) {
            return;
        }
        zzavxVar.zzb(Arrays.asList(stackTraceElementArr));
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public void zzo(View view) {
    }
}
