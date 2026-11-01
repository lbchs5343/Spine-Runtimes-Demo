package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import g.agd;
import g.cro;
import g.dcy;
import g.edt;
import g.ti;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class zzcef extends zzfw {

    /* renamed from: a, reason: collision with root package name */
    public final int f5228a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5229b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5230c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5231d;

    /* renamed from: e, reason: collision with root package name */
    public Uri f5232e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f5233f;

    /* renamed from: g, reason: collision with root package name */
    public final zzceq f5234g;
    public final zzgd h;
    public dcy i;
    public boolean j;
    public volatile zzbax k;
    public final boolean l;
    public InputStream m;
    public boolean n;
    public final AtomicLong o;
    public final String p;
    public long q;

    public zzcef(Context context, zzgd zzgdVar, String str, int i, zzhd zzhdVar, zzceq zzceqVar) {
        super(false);
        this.f5233f = context;
        this.h = zzgdVar;
        this.f5234g = zzceqVar;
        this.p = str;
        this.f5228a = i;
        this.f5231d = false;
        this.f5230c = false;
        this.j = false;
        this.n = false;
        this.q = 0L;
        this.o = new AtomicLong(-1L);
        this.i = null;
        this.l = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue();
        zzf(zzhdVar);
    }

    public final boolean r() {
        if (!this.l) {
            return false;
        }
        zzbce zzbceVar = zzbcn.zzes;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() || this.j) {
            return ((Boolean) edtVar.f15379d.zza(zzbcn.zzet)).booleanValue() && !this.n;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f5229b) {
            throw new IOException("Attempt to read closed GcacheDataSource.");
        }
        InputStream inputStream = this.m;
        int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.h.zza(bArr, i, i2);
        if (this.l && this.m == null) {
            return read;
        }
        zzg(read);
        return read;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f4  */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.concurrent.Future] */
    /* JADX WARN: Type inference failed for: r3v20, types: [long] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v46 */
    @Override // com.google.android.gms.internal.ads.zzgd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzb(zzgi zzgiVar) throws IOException {
        zzbau zzbauVar;
        Long l;
        boolean z;
        boolean z2;
        long elapsedRealtime;
        StringBuilder sb;
        zzbbj zzbbjVar;
        if (this.f5229b) {
            throw new IOException("Attempt to open an already open GcacheDataSource.");
        }
        boolean z3 = true;
        this.f5229b = true;
        this.f5232e = zzgiVar.zza;
        if (!this.l) {
            y(zzgiVar);
        }
        this.k = zzbax.zza(zzgiVar.zza);
        zzbce zzbceVar = zzbcn.zzep;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (this.k != null) {
                this.k.zzh = zzgiVar.zze;
                this.k.zzi = zzfxf.zzc(this.p);
                this.k.zzj = this.f5228a;
                zzbauVar = ti.f20033a.t.zzb(this.k);
            } else {
                zzbauVar = null;
            }
            if (zzbauVar != null && zzbauVar.zze()) {
                this.f5231d = zzbauVar.zzd();
                this.j = zzbauVar.zzg();
                this.n = zzbauVar.zzf();
                this.q = zzbauVar.zza();
                this.f5230c = true;
                if (!r()) {
                    this.m = zzbauVar.zzc();
                    if (this.l) {
                        y(zzgiVar);
                    }
                    return -1L;
                }
            }
        } else if (this.k != null) {
            this.k.zzh = zzgiVar.zze;
            this.k.zzi = zzfxf.zzc(this.p);
            this.k.zzj = this.f5228a;
            if (this.k.zzg) {
                l = (Long) edtVar.f15379d.zza(zzbcn.zzer);
            } else {
                l = (Long) edtVar.f15379d.zza(zzbcn.zzeq);
            }
            ?? longValue = l.longValue();
            ti tiVar = ti.f20033a;
            tiVar.v.getClass();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            ?? zza = zzbbi.zza(this.f5233f, this.k);
            try {
                try {
                    zzbbjVar = (zzbbj) zza.get(longValue, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    th = th;
                    z3 = longValue;
                }
                try {
                    this.f5231d = zzbbjVar.zzd();
                    this.j = zzbbjVar.zzf();
                    this.n = zzbbjVar.zze();
                    this.q = zzbbjVar.zza();
                } catch (InterruptedException unused) {
                    z2 = true;
                    zza.cancel(true);
                    Thread.currentThread().interrupt();
                    ti.f20033a.v.getClass();
                    elapsedRealtime = SystemClock.elapsedRealtime() - elapsedRealtime2;
                    zzcbv zzcbvVar = this.f5234g.zza.k;
                    if (zzcbvVar != null) {
                        zzcbvVar.zzi(z2, elapsedRealtime);
                    }
                    this.f5230c = z2;
                    sb = new StringBuilder("Cache connection took ");
                    longValue = z2;
                    sb.append(elapsedRealtime);
                    sb.append("ms");
                    agd.e(sb.toString());
                    this.f5230c = false;
                    if (this.k != null) {
                    }
                    return this.h.zzb(zzgiVar);
                } catch (ExecutionException | TimeoutException unused2) {
                    z = true;
                    zza.cancel(true);
                    ti.f20033a.v.getClass();
                    elapsedRealtime = SystemClock.elapsedRealtime() - elapsedRealtime2;
                    zzcbv zzcbvVar2 = this.f5234g.zza.k;
                    if (zzcbvVar2 != null) {
                        zzcbvVar2.zzi(z, elapsedRealtime);
                    }
                    this.f5230c = z;
                    sb = new StringBuilder("Cache connection took ");
                    longValue = z;
                    sb.append(elapsedRealtime);
                    sb.append("ms");
                    agd.e(sb.toString());
                    this.f5230c = false;
                    if (this.k != null) {
                    }
                    return this.h.zzb(zzgiVar);
                } catch (Throwable th2) {
                    th = th2;
                    ti.f20033a.v.getClass();
                    long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime2;
                    zzcbv zzcbvVar3 = this.f5234g.zza.k;
                    if (zzcbvVar3 != null) {
                        zzcbvVar3.zzi(z3, elapsedRealtime3);
                    }
                    this.f5230c = z3;
                    agd.e("Cache connection took " + elapsedRealtime3 + "ms");
                    throw th;
                }
            } catch (InterruptedException unused3) {
                z2 = false;
            } catch (ExecutionException | TimeoutException unused4) {
                z = false;
            } catch (Throwable th3) {
                th = th3;
                z3 = false;
            }
            if (!r()) {
                this.m = zzbbjVar.zzc();
                if (this.l) {
                    y(zzgiVar);
                }
                tiVar.v.getClass();
                long elapsedRealtime4 = SystemClock.elapsedRealtime() - elapsedRealtime2;
                zzcbv zzcbvVar4 = this.f5234g.zza.k;
                if (zzcbvVar4 != null) {
                    zzcbvVar4.zzi(true, elapsedRealtime4);
                }
                this.f5230c = true;
                agd.e("Cache connection took " + elapsedRealtime4 + "ms");
                return -1L;
            }
            tiVar.v.getClass();
            long elapsedRealtime5 = SystemClock.elapsedRealtime() - elapsedRealtime2;
            zzcbv zzcbvVar5 = this.f5234g.zza.k;
            if (zzcbvVar5 != null) {
                zzcbvVar5.zzi(true, elapsedRealtime5);
            }
            this.f5230c = true;
            sb = new StringBuilder("Cache connection took ");
            sb.append(elapsedRealtime5);
            sb.append("ms");
            agd.e(sb.toString());
        }
        this.f5230c = false;
        if (this.k != null) {
            zzgg zza2 = zzgiVar.zza();
            zza2.zzd(Uri.parse(this.k.zza));
            zzgiVar = zza2.zze();
        }
        return this.h.zzb(zzgiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f5232e;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws IOException {
        if (!this.f5229b) {
            throw new IOException("Attempt to close an already closed GcacheDataSource.");
        }
        this.f5229b = false;
        this.f5232e = null;
        boolean z = (this.l && this.m == null) ? false : true;
        InputStream inputStream = this.m;
        if (inputStream != null) {
            cro.al(inputStream);
            this.m = null;
        } else {
            this.h.zzd();
        }
        if (z) {
            w();
        }
    }

    public final long zzk() {
        return this.q;
    }

    public final long zzl() {
        if (this.k != null) {
            if (this.o.get() != -1) {
                return this.o.get();
            }
            synchronized (this) {
                try {
                    if (this.i == null) {
                        this.i = zzcaj.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcee
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                zzcef zzcefVar = zzcef.this;
                                zzcefVar.getClass();
                                return Long.valueOf(ti.f20033a.t.zza(zzcefVar.k));
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.i.isDone()) {
                try {
                    this.o.compareAndSet(-1L, ((Long) this.i.get()).longValue());
                    return this.o.get();
                } catch (InterruptedException | ExecutionException unused) {
                }
            }
        }
        return -1L;
    }

    public final boolean zzn() {
        return this.f5231d;
    }

    public final boolean zzo() {
        return this.n;
    }

    public final boolean zzp() {
        return this.j;
    }

    public final boolean zzq() {
        return this.f5230c;
    }
}
