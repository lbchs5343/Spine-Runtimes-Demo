package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import g.cro;
import g.edt;
import g.ti;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class zzccz implements zzgd {

    /* renamed from: a, reason: collision with root package name */
    public Uri f5194a;

    /* renamed from: c, reason: collision with root package name */
    public final int f5196c;

    /* renamed from: d, reason: collision with root package name */
    public zzgi f5197d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5198e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f5199f;

    /* renamed from: g, reason: collision with root package name */
    public InputStream f5200g;
    public volatile zzbax h;
    public final zzgd i;
    public final String k;
    public boolean l;
    public boolean j = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5195b = false;

    public zzccz(Context context, zzgd zzgdVar, String str, int i, zzhd zzhdVar, zzccy zzccyVar) {
        this.f5199f = context;
        this.i = zzgdVar;
        this.k = str;
        this.f5196c = i;
        new AtomicLong(-1L);
        this.f5198e = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue();
    }

    public final boolean m() {
        if (!this.f5198e) {
            return false;
        }
        zzbce zzbceVar = zzbcn.zzes;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() || this.j) {
            return ((Boolean) edtVar.f15379d.zza(zzbcn.zzet)).booleanValue() && !this.f5195b;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        if (!this.l) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.f5200g;
        return inputStream != null ? inputStream.read(bArr, i, i2) : this.i.zza(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws IOException {
        Long l;
        if (this.l) {
            throw new IOException("Attempt to open an already open CacheDataSource.");
        }
        this.l = true;
        Uri uri = zzgiVar.zza;
        this.f5194a = uri;
        this.f5197d = zzgiVar;
        this.h = zzbax.zza(uri);
        zzbce zzbceVar = zzbcn.zzep;
        edt edtVar = edt.f15376a;
        zzbau zzbauVar = null;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (this.h != null) {
                this.h.zzh = zzgiVar.zze;
                this.h.zzi = zzfxf.zzc(this.k);
                this.h.zzj = this.f5196c;
                zzbauVar = ti.f20033a.t.zzb(this.h);
            }
            if (zzbauVar != null && zzbauVar.zze()) {
                this.j = zzbauVar.zzg();
                this.f5195b = zzbauVar.zzf();
                if (!m()) {
                    this.f5200g = zzbauVar.zzc();
                    return -1L;
                }
            }
        } else if (this.h != null) {
            this.h.zzh = zzgiVar.zze;
            this.h.zzi = zzfxf.zzc(this.k);
            this.h.zzj = this.f5196c;
            if (this.h.zzg) {
                l = (Long) edtVar.f15379d.zza(zzbcn.zzer);
            } else {
                l = (Long) edtVar.f15379d.zza(zzbcn.zzeq);
            }
            long longValue = l.longValue();
            ti.f20033a.v.getClass();
            SystemClock.elapsedRealtime();
            Future zza = zzbbi.zza(this.f5199f, this.h);
            try {
                try {
                    try {
                        zzbbj zzbbjVar = (zzbbj) zza.get(longValue, TimeUnit.MILLISECONDS);
                        zzbbjVar.zzd();
                        this.j = zzbbjVar.zzf();
                        this.f5195b = zzbbjVar.zze();
                        zzbbjVar.zza();
                        if (!m()) {
                            this.f5200g = zzbbjVar.zzc();
                        }
                    } catch (ExecutionException | TimeoutException unused) {
                        zza.cancel(false);
                    }
                } catch (InterruptedException unused2) {
                    zza.cancel(false);
                    Thread.currentThread().interrupt();
                }
            } catch (Throwable unused3) {
            }
            ti.f20033a.v.getClass();
            SystemClock.elapsedRealtime();
            throw null;
        }
        if (this.h != null) {
            zzgg zza2 = zzgiVar.zza();
            zza2.zzd(Uri.parse(this.h.zza));
            this.f5197d = zza2.zze();
        }
        return this.i.zzb(this.f5197d);
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f5194a;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws IOException {
        if (!this.l) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.l = false;
        this.f5194a = null;
        InputStream inputStream = this.f5200g;
        if (inputStream == null) {
            this.i.zzd();
        } else {
            cro.al(inputStream);
            this.f5200g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final /* synthetic */ Map zze() {
        return Collections.EMPTY_MAP;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzf(zzhd zzhdVar) {
    }
}
