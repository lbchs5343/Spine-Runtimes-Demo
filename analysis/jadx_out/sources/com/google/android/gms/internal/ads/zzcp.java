package com.google.android.gms.internal.ads;

import g.abd;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* loaded from: classes3.dex */
public final class zzcp implements zzcm {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5466a;

    /* renamed from: b, reason: collision with root package name */
    public ShortBuffer f5467b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5468c;

    /* renamed from: d, reason: collision with root package name */
    public long f5469d;

    /* renamed from: e, reason: collision with root package name */
    public zzck f5470e;

    /* renamed from: f, reason: collision with root package name */
    public ByteBuffer f5471f;

    /* renamed from: g, reason: collision with root package name */
    public zzck f5472g;
    public int h;
    public zzck i;
    public long j;
    public abd k;
    public ByteBuffer m;
    public zzck o;
    public float l = 1.0f;
    public float n = 1.0f;

    public zzcp() {
        zzck zzckVar = zzck.zza;
        this.f5470e = zzckVar;
        this.f5472g = zzckVar;
        this.i = zzckVar;
        this.o = zzckVar;
        ByteBuffer byteBuffer = zzcm.zza;
        this.m = byteBuffer;
        this.f5467b = byteBuffer.asShortBuffer();
        this.f5471f = byteBuffer;
        this.h = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final zzck zza(zzck zzckVar) throws zzcl {
        if (zzckVar.zzd != 2) {
            throw new zzcl("Unhandled input format:", zzckVar);
        }
        int i = this.h;
        if (i == -1) {
            i = zzckVar.zzb;
        }
        this.f5470e = zzckVar;
        zzck zzckVar2 = new zzck(i, zzckVar.zzc, 2);
        this.f5472g = zzckVar2;
        this.f5466a = true;
        return zzckVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final ByteBuffer zzb() {
        int i;
        int i2;
        int i3;
        abd abdVar = this.k;
        if (abdVar != null && (i3 = (i2 = abdVar.n * (i = abdVar.p)) + i2) > 0) {
            if (this.m.capacity() < i3) {
                ByteBuffer order = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder());
                this.m = order;
                this.f5467b = order.asShortBuffer();
            } else {
                this.m.clear();
                this.f5467b.clear();
            }
            ShortBuffer shortBuffer = this.f5467b;
            int min = Math.min(shortBuffer.remaining() / i, abdVar.n);
            int i4 = min * i;
            shortBuffer.put(abdVar.f9909f, 0, i4);
            int i5 = abdVar.n - min;
            abdVar.n = i5;
            short[] sArr = abdVar.f9909f;
            System.arraycopy(sArr, i4, sArr, 0, i5 * i);
            this.f5469d += i3;
            this.m.limit(i3);
            this.f5471f = this.m;
        }
        ByteBuffer byteBuffer = this.f5471f;
        this.f5471f = zzcm.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zzc() {
        if (zzg()) {
            zzck zzckVar = this.f5470e;
            this.i = zzckVar;
            zzck zzckVar2 = this.f5472g;
            this.o = zzckVar2;
            if (this.f5466a) {
                this.k = new abd(zzckVar.zzb, zzckVar.zzc, this.l, this.n, zzckVar2.zzb);
            } else {
                abd abdVar = this.k;
                if (abdVar != null) {
                    abdVar.f9905b = 0;
                    abdVar.n = 0;
                    abdVar.f9906c = 0;
                    abdVar.m = 0;
                    abdVar.r = 0;
                    abdVar.v = 0;
                    abdVar.l = 0;
                    abdVar.s = 0;
                    abdVar.i = 0;
                    abdVar.j = 0;
                }
            }
        }
        this.f5471f = zzcm.zza;
        this.j = 0L;
        this.f5469d = 0L;
        this.f5468c = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zzd() {
        abd abdVar = this.k;
        if (abdVar != null) {
            int i = abdVar.f9905b;
            int i2 = abdVar.n;
            float f2 = abdVar.f9906c;
            float f3 = abdVar.t;
            float f4 = abdVar.f9910g;
            float f5 = abdVar.f9908e;
            int i3 = i2 + ((int) ((((i / (f3 / f5)) + f2) / (f4 * f5)) + 0.5f));
            int i4 = abdVar.f9904a;
            int i5 = i4 + i4;
            abdVar.q = abdVar.z(abdVar.q, i, i5 + i);
            int i6 = 0;
            while (true) {
                int i7 = abdVar.p;
                if (i6 >= i5 * i7) {
                    break;
                }
                abdVar.q[(i7 * i) + i6] = 0;
                i6++;
            }
            abdVar.f9905b += i5;
            abdVar.x();
            if (abdVar.n > i3) {
                abdVar.n = i3;
            }
            abdVar.f9905b = 0;
            abdVar.v = 0;
            abdVar.f9906c = 0;
        }
        this.f5468c = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zze(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            abd abdVar = this.k;
            abdVar.getClass();
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.j += remaining;
            int remaining2 = asShortBuffer.remaining();
            int i = abdVar.p;
            int i2 = remaining2 / i;
            int i3 = i2 * i;
            short[] z = abdVar.z(abdVar.q, abdVar.f9905b, i2);
            abdVar.q = z;
            asShortBuffer.get(z, abdVar.f9905b * i, (i3 + i3) / 2);
            abdVar.f9905b += i2;
            abdVar.x();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zzf() {
        this.l = 1.0f;
        this.n = 1.0f;
        zzck zzckVar = zzck.zza;
        this.f5470e = zzckVar;
        this.f5472g = zzckVar;
        this.i = zzckVar;
        this.o = zzckVar;
        ByteBuffer byteBuffer = zzcm.zza;
        this.m = byteBuffer;
        this.f5467b = byteBuffer.asShortBuffer();
        this.f5471f = byteBuffer;
        this.h = -1;
        this.f5466a = false;
        this.k = null;
        this.j = 0L;
        this.f5469d = 0L;
        this.f5468c = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final boolean zzg() {
        if (this.f5472g.zzb != -1) {
            return Math.abs(this.l + (-1.0f)) >= 1.0E-4f || Math.abs(this.n + (-1.0f)) >= 1.0E-4f || this.f5472g.zzb != this.f5470e.zzb;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final boolean zzh() {
        if (!this.f5468c) {
            return false;
        }
        abd abdVar = this.k;
        if (abdVar == null) {
            return true;
        }
        int i = abdVar.n * abdVar.p;
        return i + i == 0;
    }

    public final long zzi(long j) {
        long j2 = this.f5469d;
        if (j2 < 1024) {
            return (long) (this.l * j);
        }
        long j3 = this.j;
        abd abdVar = this.k;
        abdVar.getClass();
        int i = abdVar.f9905b * abdVar.p;
        long j4 = j3 - (i + i);
        int i2 = this.o.zzb;
        int i3 = this.i.zzb;
        return i2 == i3 ? zzen.zzu(j, j4, j2, RoundingMode.FLOOR) : zzen.zzu(j, j4 * i2, j2 * i3, RoundingMode.FLOOR);
    }

    public final void zzj(float f2) {
        if (this.n != f2) {
            this.n = f2;
            this.f5466a = true;
        }
    }

    public final void zzk(float f2) {
        if (this.l != f2) {
            this.l = f2;
            this.f5466a = true;
        }
    }
}
