package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import g.bvm;

/* loaded from: classes3.dex */
public final class zzaal extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final bvm zzd;
    private boolean zze;

    public /* synthetic */ zzaal(bvm bvmVar, SurfaceTexture surfaceTexture, boolean z, zzaak zzaakVar) {
        super(surfaceTexture);
        this.zzd = bvmVar;
        this.zza = z;
    }

    public static zzaal zza(Context context, boolean z) {
        boolean z2 = false;
        zzdb.zzf(!z || zzb(context));
        bvm bvmVar = new bvm("ExoPlayer:PlaceholderSurface");
        int i = z ? zzb : 0;
        bvmVar.start();
        Handler handler = new Handler(bvmVar.getLooper(), bvmVar);
        bvmVar.f12276e = handler;
        bvmVar.f12275d = new zzdi(handler, null);
        synchronized (bvmVar) {
            bvmVar.f12276e.obtainMessage(1, i, 0).sendToTarget();
            while (bvmVar.f12274c == null && bvmVar.f12273b == null && bvmVar.f12272a == null) {
                try {
                    bvmVar.wait();
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = bvmVar.f12273b;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = bvmVar.f12272a;
        if (error != null) {
            throw error;
        }
        zzaal zzaalVar = bvmVar.f12274c;
        zzaalVar.getClass();
        return zzaalVar;
    }

    public static synchronized boolean zzb(Context context) {
        int i;
        synchronized (zzaal.class) {
            try {
                if (!zzc) {
                    zzb = zzdk.zzb(context) ? zzdk.zzc() ? 1 : 2 : 0;
                    zzc = true;
                }
                i = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzd) {
            try {
                if (!this.zze) {
                    Handler handler = this.zzd.f12276e;
                    handler.getClass();
                    handler.sendEmptyMessage(2);
                    this.zze = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
