package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import g.agd;
import g.awf;
import g.edt;
import g.fmk;
import g.mx;
import g.ti;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class zzcdx extends zzcdr implements zzhd {

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicInteger f5215e = new AtomicInteger(0);

    /* renamed from: f, reason: collision with root package name */
    public final zzcdb f5216f;

    /* renamed from: g, reason: collision with root package name */
    public final fmk f5217g;
    public boolean h;
    public final String i;
    public final Object j;
    public String k;
    public final zzcce l;
    public ByteBuffer m;
    public boolean n;
    public final int o;
    public boolean p;

    public zzcdx(zzccf zzccfVar, zzcce zzcceVar) {
        super(zzccfVar);
        this.l = zzcceVar;
        this.f5217g = new fmk(3);
        this.f5216f = new zzcdb();
        this.j = new Object();
        this.i = (String) zzfwo.zzd(zzccfVar != null ? zzccfVar.zzr() : null).zzb("");
        this.o = zzccfVar != null ? zzccfVar.zzf() : 0;
        f5215e.incrementAndGet();
    }

    public static int zzi() {
        return f5215e.get();
    }

    public final void q() {
        fmk fmkVar = this.f5217g;
        Iterator it = ((ArrayList) fmkVar.f17035c).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            for (Map.Entry entry : ((zzgq) it.next()).zze().entrySet()) {
                try {
                    if ("content-length".equalsIgnoreCase((String) entry.getKey())) {
                        fmkVar.f17034b = Math.max(fmkVar.f17034b, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                    }
                } catch (RuntimeException unused) {
                }
            }
            it.remove();
        }
        int i = (int) fmkVar.f17034b;
        int zza = (int) this.f5216f.zza(this.m);
        int position = this.m.position();
        int round = Math.round((position / i) * zza);
        int zzs = zzcbw.zzs();
        int zzu = zzcbw.zzu();
        String str = this.k;
        zzn(str, "cache:".concat(String.valueOf(mx.m(str, "MD5"))), position, i, round, zza, round > 0, zzs, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void release() {
        f5215e.decrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zza(zzgd zzgdVar, zzgi zzgiVar, boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzb(zzgd zzgdVar, zzgi zzgiVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzc(zzgd zzgdVar, zzgi zzgiVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzd(zzgd zzgdVar, zzgi zzgiVar, boolean z) {
        if (zzgdVar instanceof zzgq) {
            ((ArrayList) this.f5217g.f17035c).add((zzgq) zzgdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzf() {
        this.p = true;
    }

    public final String zzk() {
        return this.k;
    }

    public final ByteBuffer zzl() {
        synchronized (this.j) {
            try {
                ByteBuffer byteBuffer = this.m;
                if (byteBuffer != null && !this.h) {
                    byteBuffer.flip();
                    this.h = true;
                }
                this.p = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.m;
    }

    public final boolean zzm() {
        return this.n;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:? -> B:52:0x00df). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzcdr
    public final boolean zzt(String str) {
        String str2;
        this.k = str;
        String str3 = AVErrorInfo.ERROR;
        String concat = "cache:".concat(String.valueOf(mx.m(str, "MD5")));
        int i = 0;
        try {
            zzgl zzglVar = new zzgl();
            zzglVar.zzf(this.f5211c);
            zzglVar.zzc(this.l.zzd);
            zzglVar.zzd(this.l.zze);
            zzglVar.zzb(true);
            zzglVar.zze(this);
            zzgd zza = zzglVar.zza();
            if (this.l.zzi) {
                zza = new zzccz(this.f5210b, zza, this.i, this.o, null, null);
            }
            zza.zzb(new zzgi(Uri.parse(str), 0L, -1L, null));
            zzccf zzccfVar = (zzccf) this.f5209a.get();
            if (zzccfVar != null) {
                zzccfVar.zzt(concat, this);
            }
            ti.f20033a.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            zzbce zzbceVar = zzbcn.zzI;
            edt edtVar = edt.f15376a;
            long longValue = ((Long) edtVar.f15379d.zza(zzbceVar)).longValue();
            long longValue2 = ((Long) edtVar.f15379d.zza(zzbcn.zzH)).longValue();
            this.m = ByteBuffer.allocate(this.l.zzc);
            int i2 = 8192;
            byte[] bArr = new byte[8192];
            long j = currentTimeMillis;
            while (true) {
                int zza2 = zza.zza(bArr, i, Math.min(this.m.remaining(), i2));
                if (zza2 == -1) {
                    this.n = true;
                    zzj(str, concat, (int) this.f5216f.zza(this.m));
                    return true;
                }
                synchronized (this.j) {
                    try {
                        if (this.p) {
                            str2 = str3;
                        } else {
                            str2 = str3;
                            str3 = null;
                            try {
                                this.m.put(bArr, 0, zza2);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        try {
                            if (this.m.remaining() <= 0) {
                                q();
                                return true;
                            }
                            try {
                                if (this.p) {
                                    throw new IOException("Precache abort at " + this.m.limit() + " bytes");
                                }
                                long currentTimeMillis2 = System.currentTimeMillis();
                                if (currentTimeMillis2 - j >= longValue) {
                                    q();
                                    j = currentTimeMillis2;
                                }
                                if (currentTimeMillis2 - currentTimeMillis > 1000 * longValue2) {
                                    throw new IOException("Timeout exceeded. Limit: " + longValue2 + " sec");
                                }
                                str3 = str2;
                                i2 = 8192;
                                i = 0;
                            } catch (Exception e2) {
                                e = e2;
                                String i3 = awf.i(e.getClass().getCanonicalName(), ":", e.getMessage());
                                agd.b("Failed to preload url " + str + " Exception: " + i3);
                                zzg(str, concat, str3, i3);
                                return false;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str3 = str2;
                            String i32 = awf.i(e.getClass().getCanonicalName(), ":", e.getMessage());
                            agd.b("Failed to preload url " + str + " Exception: " + i32);
                            zzg(str, concat, str3, i32);
                            return false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
            }
        } catch (Exception e4) {
            e = e4;
            str2 = str3;
        }
    }
}
