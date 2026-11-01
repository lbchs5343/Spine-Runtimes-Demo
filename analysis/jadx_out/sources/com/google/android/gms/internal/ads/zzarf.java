package com.google.android.gms.internal.ads;

import g.tn;
import java.nio.ByteBuffer;
import java.util.Date;

/* loaded from: classes3.dex */
public final class zzarf extends zzhfg {

    /* renamed from: a, reason: collision with root package name */
    public zzhfq f4476a;

    /* renamed from: b, reason: collision with root package name */
    public float f4477b;

    /* renamed from: c, reason: collision with root package name */
    public Date f4478c;

    /* renamed from: d, reason: collision with root package name */
    public long f4479d;

    /* renamed from: e, reason: collision with root package name */
    public Date f4480e;

    /* renamed from: f, reason: collision with root package name */
    public double f4481f;

    /* renamed from: g, reason: collision with root package name */
    public long f4482g;
    public long h;

    public zzarf() {
        super("mvhd");
        this.f4481f = 1.0d;
        this.f4477b = 1.0f;
        this.f4476a = zzhfq.zza;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MovieHeaderBox[creationTime=");
        sb.append(this.f4478c);
        sb.append(";modificationTime=");
        sb.append(this.f4480e);
        sb.append(";timescale=");
        sb.append(this.f4479d);
        sb.append(";duration=");
        sb.append(this.h);
        sb.append(";rate=");
        sb.append(this.f4481f);
        sb.append(";volume=");
        sb.append(this.f4477b);
        sb.append(";matrix=");
        sb.append(this.f4476a);
        sb.append(";nextTrackId=");
        return tn.f(this.f4482g, "]", sb);
    }

    public final long zzc() {
        return this.h;
    }

    public final long zzd() {
        return this.f4479d;
    }

    @Override // com.google.android.gms.internal.ads.zzhfe
    public final void zze(ByteBuffer byteBuffer) {
        this.r = zzarb.zzc(byteBuffer.get());
        zzarb.zzd(byteBuffer);
        byteBuffer.get();
        if (zzg() == 1) {
            this.f4478c = zzhfl.zza(zzarb.zzf(byteBuffer));
            this.f4480e = zzhfl.zza(zzarb.zzf(byteBuffer));
            this.f4479d = zzarb.zze(byteBuffer);
            this.h = zzarb.zzf(byteBuffer);
        } else {
            this.f4478c = zzhfl.zza(zzarb.zze(byteBuffer));
            this.f4480e = zzhfl.zza(zzarb.zze(byteBuffer));
            this.f4479d = zzarb.zze(byteBuffer);
            this.h = zzarb.zze(byteBuffer);
        }
        this.f4481f = zzarb.zzb(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.f4477b = ((short) ((r1[1] & 255) | ((short) (65280 & (r1[0] << 8))))) / 256.0f;
        zzarb.zzd(byteBuffer);
        zzarb.zze(byteBuffer);
        zzarb.zze(byteBuffer);
        this.f4476a = new zzhfq(zzarb.zzb(byteBuffer), zzarb.zzb(byteBuffer), zzarb.zzb(byteBuffer), zzarb.zzb(byteBuffer), zzarb.zza(byteBuffer), zzarb.zza(byteBuffer), zzarb.zza(byteBuffer), zzarb.zzb(byteBuffer), zzarb.zzb(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.f4482g = zzarb.zze(byteBuffer);
    }
}
