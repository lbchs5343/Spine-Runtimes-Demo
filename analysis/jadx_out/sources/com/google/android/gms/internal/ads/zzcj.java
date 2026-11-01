package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzcj {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5300a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfzo f5301b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f5302c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public ByteBuffer[] f5303d = new ByteBuffer[0];

    public zzcj(zzfzo zzfzoVar) {
        this.f5301b = zzfzoVar;
        zzck zzckVar = zzck.zza;
        this.f5300a = false;
    }

    public final int e() {
        return this.f5303d.length - 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcj)) {
            return false;
        }
        zzcj zzcjVar = (zzcj) obj;
        zzfzo zzfzoVar = this.f5301b;
        if (zzfzoVar.size() != zzcjVar.f5301b.size()) {
            return false;
        }
        for (int i = 0; i < zzfzoVar.size(); i++) {
            if (zzfzoVar.get(i) != zzcjVar.f5301b.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final void f(ByteBuffer byteBuffer) {
        boolean z;
        do {
            int i = 0;
            z = false;
            while (i <= e()) {
                if (!this.f5303d[i].hasRemaining()) {
                    ArrayList arrayList = this.f5302c;
                    zzcm zzcmVar = (zzcm) arrayList.get(i);
                    if (!zzcmVar.zzh()) {
                        ByteBuffer byteBuffer2 = i > 0 ? this.f5303d[i - 1] : byteBuffer.hasRemaining() ? byteBuffer : zzcm.zza;
                        long remaining = byteBuffer2.remaining();
                        zzcmVar.zze(byteBuffer2);
                        this.f5303d[i] = zzcmVar.zzb();
                        boolean z2 = true;
                        if (remaining - byteBuffer2.remaining() <= 0 && !this.f5303d[i].hasRemaining()) {
                            z2 = false;
                        }
                        z |= z2;
                    } else if (!this.f5303d[i].hasRemaining() && i < e()) {
                        ((zzcm) arrayList.get(i + 1)).zzd();
                    }
                }
                i++;
            }
        } while (z);
    }

    public final int hashCode() {
        return this.f5301b.hashCode();
    }

    public final zzck zza(zzck zzckVar) throws zzcl {
        if (zzckVar.equals(zzck.zza)) {
            throw new zzcl("Unhandled input format:", zzckVar);
        }
        int i = 0;
        while (true) {
            zzfzo zzfzoVar = this.f5301b;
            if (i >= zzfzoVar.size()) {
                return zzckVar;
            }
            zzcm zzcmVar = (zzcm) zzfzoVar.get(i);
            zzck zza = zzcmVar.zza(zzckVar);
            if (zzcmVar.zzg()) {
                zzdb.zzf(!zza.equals(zzck.zza));
                zzckVar = zza;
            }
            i++;
        }
    }

    public final ByteBuffer zzb() {
        if (!zzh()) {
            return zzcm.zza;
        }
        ByteBuffer byteBuffer = this.f5303d[e()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        f(zzcm.zza);
        return this.f5303d[e()];
    }

    public final void zzc() {
        ArrayList arrayList = this.f5302c;
        arrayList.clear();
        this.f5300a = false;
        int i = 0;
        while (true) {
            zzfzo zzfzoVar = this.f5301b;
            if (i >= zzfzoVar.size()) {
                break;
            }
            zzcm zzcmVar = (zzcm) zzfzoVar.get(i);
            zzcmVar.zzc();
            if (zzcmVar.zzg()) {
                arrayList.add(zzcmVar);
            }
            i++;
        }
        this.f5303d = new ByteBuffer[arrayList.size()];
        for (int i2 = 0; i2 <= e(); i2++) {
            this.f5303d[i2] = ((zzcm) arrayList.get(i2)).zzb();
        }
    }

    public final void zzd() {
        if (!zzh() || this.f5300a) {
            return;
        }
        this.f5300a = true;
        ((zzcm) this.f5302c.get(0)).zzd();
    }

    public final void zze(ByteBuffer byteBuffer) {
        if (!zzh() || this.f5300a) {
            return;
        }
        f(byteBuffer);
    }

    public final void zzf() {
        int i = 0;
        while (true) {
            zzfzo zzfzoVar = this.f5301b;
            if (i >= zzfzoVar.size()) {
                this.f5303d = new ByteBuffer[0];
                zzck zzckVar = zzck.zza;
                this.f5300a = false;
                return;
            } else {
                zzcm zzcmVar = (zzcm) zzfzoVar.get(i);
                zzcmVar.zzc();
                zzcmVar.zzf();
                i++;
            }
        }
    }

    public final boolean zzg() {
        return this.f5300a && ((zzcm) this.f5302c.get(e())).zzh() && !this.f5303d[e()].hasRemaining();
    }

    public final boolean zzh() {
        return !this.f5302c.isEmpty();
    }
}
