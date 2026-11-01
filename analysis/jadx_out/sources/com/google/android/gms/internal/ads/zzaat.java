package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.Surface;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.bvi;
import g.ccl;
import g.dht;
import g.ebn;
import g.ny;

/* loaded from: classes3.dex */
public final class zzaat {

    /* renamed from: a, reason: collision with root package name */
    public float f4023a;

    /* renamed from: b, reason: collision with root package name */
    public long f4024b;

    /* renamed from: c, reason: collision with root package name */
    public long f4025c;

    /* renamed from: d, reason: collision with root package name */
    public long f4026d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4027e;

    /* renamed from: f, reason: collision with root package name */
    public long f4028f;

    /* renamed from: g, reason: collision with root package name */
    public Surface f4029g;
    public final bvi h;
    public float i;
    public long j;
    public long k;
    public float l;
    public final ccl m;
    public int n;
    public long o;
    public final ny p;
    public float q;

    public zzaat(Context context) {
        DisplayManager displayManager;
        bvi bviVar = new bvi();
        bviVar.f12264a = new dht();
        bviVar.f12265b = new dht();
        bviVar.f12267d = -9223372036854775807L;
        this.h = bviVar;
        ccl cclVar = (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : new ccl(this, displayManager);
        this.m = cclVar;
        this.p = cclVar != null ? ny.f19739a : null;
        this.f4024b = -9223372036854775807L;
        this.f4028f = -9223372036854775807L;
        this.i = -1.0f;
        this.l = 1.0f;
        this.n = 0;
    }

    public static /* bridge */ /* synthetic */ void r(zzaat zzaatVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            zzaatVar.f4024b = refreshRate;
            zzaatVar.f4028f = (refreshRate * 80) / 100;
        } else {
            zzdt.zzf("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            zzaatVar.f4024b = -9223372036854775807L;
            zzaatVar.f4028f = -9223372036854775807L;
        }
    }

    public final void s(boolean z) {
        Surface surface;
        if (zzen.zza < 30 || (surface = this.f4029g) == null || this.n == Integer.MIN_VALUE) {
            return;
        }
        boolean z2 = this.f4027e;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (z2) {
            float f3 = this.q;
            if (f3 != -1.0f) {
                f2 = this.l * f3;
            }
        }
        if (z || this.f4023a != f2) {
            this.f4023a = f2;
            ebn.a(surface, f2);
        }
    }

    public final void t() {
        Surface surface;
        if (zzen.zza < 30 || (surface = this.f4029g) == null || this.n == Integer.MIN_VALUE || this.f4023a == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        this.f4023a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        ebn.a(surface, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    public final void u() {
        float f2;
        if (zzen.zza < 30 || this.f4029g == null) {
            return;
        }
        bvi bviVar = this.h;
        if (!((dht) bviVar.f12264a).k()) {
            f2 = this.i;
        } else if (((dht) bviVar.f12264a).k()) {
            f2 = (float) (1.0E9d / (((dht) bviVar.f12264a).f14201c != 0 ? r2.f14203e / r4 : 0L));
        } else {
            f2 = -1.0f;
        }
        float f3 = this.q;
        if (f2 != f3) {
            if (f2 != -1.0f && f3 != -1.0f) {
                float f4 = 1.0f;
                if (((dht) bviVar.f12264a).k()) {
                    if ((((dht) bviVar.f12264a).k() ? ((dht) bviVar.f12264a).f14203e : -9223372036854775807L) >= 5000000000L) {
                        f4 = 0.02f;
                    }
                }
                if (Math.abs(f2 - this.q) < f4) {
                    return;
                }
            } else if (f2 == -1.0f && bviVar.f12268e < 30) {
                return;
            }
            this.q = f2;
            s(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zza(long j) {
        long j2;
        ny nyVar;
        long j3;
        long j4;
        long j5;
        if (this.j != -1 && ((dht) this.h.f12264a).k()) {
            bvi bviVar = this.h;
            if (((dht) bviVar.f12264a).k()) {
                dht dhtVar = (dht) bviVar.f12264a;
                long j6 = dhtVar.f14201c;
                j5 = j6 == 0 ? 0L : dhtVar.f14203e / j6;
            } else {
                j5 = -9223372036854775807L;
            }
            j2 = this.o + ((long) (((this.k - this.j) * j5) / this.l));
            if (Math.abs(j - j2) > 20000000) {
                this.k = 0L;
                this.j = -1L;
                this.f4026d = -1L;
            }
            this.f4026d = this.k;
            this.f4025c = j2;
            nyVar = this.p;
            if (nyVar != null && this.f4024b != -9223372036854775807L) {
                j3 = nyVar.f19742d;
                if (j3 != -9223372036854775807L) {
                    long j7 = this.f4024b;
                    long j8 = (((j2 - j3) / j7) * j7) + j3;
                    if (j2 <= j8) {
                        j4 = j8 - j7;
                    } else {
                        j4 = j8;
                        j8 = j7 + j8;
                    }
                    long j9 = this.f4028f;
                    if (j8 - j2 >= j2 - j4) {
                        j8 = j4;
                    }
                    return j8 - j9;
                }
            }
            return j2;
        }
        j2 = j;
        this.f4026d = this.k;
        this.f4025c = j2;
        nyVar = this.p;
        if (nyVar != null) {
            j3 = nyVar.f19742d;
            if (j3 != -9223372036854775807L) {
            }
        }
        return j2;
    }

    public final void zzc(float f2) {
        this.i = f2;
        bvi bviVar = this.h;
        ((dht) bviVar.f12264a).j();
        ((dht) bviVar.f12265b).j();
        bviVar.f12266c = false;
        bviVar.f12267d = -9223372036854775807L;
        bviVar.f12268e = 0;
        u();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
    
        if ((r6 == 0 ? false : r1.h[(int) ((r6 - 1) % 15)]) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(long j) {
        long j2 = this.f4026d;
        if (j2 != -1) {
            this.j = j2;
            this.o = this.f4025c;
        }
        this.k++;
        long j3 = j * 1000;
        bvi bviVar = this.h;
        ((dht) bviVar.f12264a).i(j3);
        if (((dht) bviVar.f12264a).k()) {
            bviVar.f12266c = false;
        } else if (bviVar.f12267d != -9223372036854775807L) {
            if (bviVar.f12266c) {
                dht dhtVar = (dht) bviVar.f12265b;
                long j4 = dhtVar.f14200b;
            }
            ((dht) bviVar.f12265b).j();
            ((dht) bviVar.f12265b).i(bviVar.f12267d);
            bviVar.f12266c = true;
            ((dht) bviVar.f12265b).i(j3);
        }
        if (bviVar.f12266c && ((dht) bviVar.f12265b).k()) {
            dht dhtVar2 = (dht) bviVar.f12264a;
            bviVar.f12264a = (dht) bviVar.f12265b;
            bviVar.f12265b = dhtVar2;
            bviVar.f12266c = false;
        }
        bviVar.f12267d = j3;
        bviVar.f12268e = ((dht) bviVar.f12264a).k() ? 0 : bviVar.f12268e + 1;
        u();
    }

    public final void zze(float f2) {
        this.l = f2;
        this.k = 0L;
        this.j = -1L;
        this.f4026d = -1L;
        s(false);
    }

    public final void zzf() {
        this.k = 0L;
        this.j = -1L;
        this.f4026d = -1L;
    }

    public final void zzg() {
        this.f4027e = true;
        this.k = 0L;
        this.j = -1L;
        this.f4026d = -1L;
        ccl cclVar = this.m;
        if (cclVar != null) {
            DisplayManager displayManager = cclVar.f12642a;
            ny nyVar = this.p;
            nyVar.getClass();
            nyVar.f19743e.sendEmptyMessage(2);
            displayManager.registerDisplayListener(cclVar, zzen.zzy(null));
            r(cclVar.f12643b, displayManager.getDisplay(0));
        }
        s(false);
    }

    public final void zzh() {
        this.f4027e = false;
        ccl cclVar = this.m;
        if (cclVar != null) {
            cclVar.f12642a.unregisterDisplayListener(cclVar);
            ny nyVar = this.p;
            nyVar.getClass();
            nyVar.f19743e.sendEmptyMessage(3);
        }
        t();
    }

    public final void zzi(Surface surface) {
        if (this.f4029g == surface) {
            return;
        }
        t();
        this.f4029g = surface;
        s(true);
    }

    public final void zzj(int i) {
        if (this.n == i) {
            return;
        }
        this.n = i;
        s(true);
    }
}
