package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzsf implements zzsl {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8876a;

    @Deprecated
    public zzsf() {
        this.f8876a = null;
    }

    public zzsf(Context context) {
        this.f8876a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0097  */
    @Override // com.google.android.gms.internal.ads.zzsl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzsn zzd(zzsk zzskVar) throws IOException {
        MediaCodec createByCodecName;
        Context context;
        int i = zzen.zza;
        if (i >= 23 && (i >= 31 || ((context = this.f8876a) != null && i >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen")))) {
            int zzb = zzbg.zzb(zzskVar.zzc.zzo);
            zzdt.zze("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(zzen.zzD(zzb)));
            zzrv zzrvVar = new zzrv(zzb);
            zzrvVar.zze(true);
            return zzrvVar.zzc(zzskVar);
        }
        MediaCodec mediaCodec = null;
        try {
            String str = zzskVar.zza.zza;
            Trace.beginSection("createCodec:".concat(str));
            createByCodecName = MediaCodec.createByCodecName(str);
            Trace.endSection();
        } catch (IOException e2) {
            e = e2;
        } catch (RuntimeException e3) {
            e = e3;
        }
        try {
            Trace.beginSection("configureCodec");
            Surface surface = zzskVar.zzd;
            int i2 = 0;
            if (surface == null && zzskVar.zza.zzh && i >= 35) {
                i2 = 8;
            }
            createByCodecName.configure(zzskVar.zzb, surface, (MediaCrypto) null, i2);
            Trace.endSection();
            Trace.beginSection("startCodec");
            createByCodecName.start();
            Trace.endSection();
            return new zztn(createByCodecName, zzskVar.zzf);
        } catch (IOException e4) {
            e = e4;
            mediaCodec = createByCodecName;
            if (mediaCodec != null) {
                mediaCodec.release();
            }
            throw e;
        } catch (RuntimeException e5) {
            e = e5;
            mediaCodec = createByCodecName;
            if (mediaCodec != null) {
            }
            throw e;
        }
    }
}
