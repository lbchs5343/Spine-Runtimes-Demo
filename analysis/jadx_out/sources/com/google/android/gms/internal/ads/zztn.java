package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class zztn implements zzsn {

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec f8881a;

    /* renamed from: b, reason: collision with root package name */
    public final zzsj f8882b;

    public /* synthetic */ zztn(MediaCodec mediaCodec, zzsj zzsjVar) {
        this.f8881a = mediaCodec;
        this.f8882b = zzsjVar;
        if (zzen.zza < 35 || zzsjVar == null) {
            return;
        }
        zzsjVar.zza(mediaCodec);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final int zza() {
        return this.f8881a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f8881a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final MediaFormat zzc() {
        return this.f8881a.getOutputFormat();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final ByteBuffer zzf(int i) {
        return this.f8881a.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final ByteBuffer zzg(int i) {
        return this.f8881a.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzi() {
        this.f8881a.detachOutputSurface();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzj() {
        this.f8881a.flush();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzk(int i, int i2, int i3, long j, int i4) {
        this.f8881a.queueInputBuffer(i, 0, i3, j, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzl(int i, int i2, zzhj zzhjVar, long j, int i3) {
        this.f8881a.queueSecureInputBuffer(i, 0, zzhjVar.zza(), j, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzm() {
        zzsj zzsjVar = this.f8882b;
        MediaCodec mediaCodec = this.f8881a;
        try {
            int i = zzen.zza;
            if (i >= 30 && i < 33) {
                mediaCodec.stop();
            }
            if (i >= 35 && zzsjVar != null) {
                zzsjVar.zzc(mediaCodec);
            }
            mediaCodec.release();
        } catch (Throwable th) {
            if (zzen.zza >= 35 && zzsjVar != null) {
                zzsjVar.zzc(mediaCodec);
            }
            mediaCodec.release();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzn(int i, long j) {
        this.f8881a.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzo(int i, boolean z) {
        this.f8881a.releaseOutputBuffer(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzp(Surface surface) {
        this.f8881a.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzq(Bundle bundle) {
        this.f8881a.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzr(int i) {
        this.f8881a.setVideoScalingMode(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final /* synthetic */ boolean zzs(zzsm zzsmVar) {
        return false;
    }
}
