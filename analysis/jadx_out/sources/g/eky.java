package g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzyy;
import com.google.android.gms.internal.ads.zzyz;
import com.google.android.gms.internal.ads.zzzb;
import com.google.android.gms.internal.ads.zzze;
import com.google.android.gms.internal.ads.zzzg;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public final class eky extends Handler implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f15721a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15722b;

    /* renamed from: c, reason: collision with root package name */
    public zzyy f15723c;

    /* renamed from: d, reason: collision with root package name */
    public IOException f15724d;

    /* renamed from: e, reason: collision with root package name */
    public int f15725e;

    /* renamed from: f, reason: collision with root package name */
    public final zzzb f15726f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ zzzg f15727g;
    public final long h;
    public Thread i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eky(zzzg zzzgVar, Looper looper, zzzb zzzbVar, zzyy zzyyVar, long j) {
        super(looper);
        this.f15727g = zzzgVar;
        this.f15726f = zzzbVar;
        this.f15723c = zzyyVar;
        this.h = j;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f15721a) {
            return;
        }
        int i = message.what;
        if (i == 1) {
            SystemClock.elapsedRealtime();
            this.f15723c.getClass();
            this.f15724d = null;
            zzzg zzzgVar = this.f15727g;
            ExecutorService executorService = zzzgVar.f8971b;
            eky ekyVar = zzzgVar.f8973d;
            ekyVar.getClass();
            executorService.execute(ekyVar);
            return;
        }
        if (i == 4) {
            throw ((Error) message.obj);
        }
        this.f15727g.f8973d = null;
        long j = this.h;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = elapsedRealtime - j;
        zzyy zzyyVar = this.f15723c;
        zzyyVar.getClass();
        if (this.f15722b) {
            zzyyVar.zzJ(this.f15726f, elapsedRealtime, j2, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 2) {
            try {
                zzyyVar.zzK(this.f15726f, elapsedRealtime, j2);
                return;
            } catch (RuntimeException e2) {
                zzdt.zzd("LoadTask", "Unexpected exception handling load completed", e2);
                this.f15727g.f8970a = new zzze(e2);
                return;
            }
        }
        if (i2 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f15724d = iOException;
        int i3 = this.f15725e + 1;
        this.f15725e = i3;
        zzyz zzu = zzyyVar.zzu(this.f15726f, elapsedRealtime, j2, iOException, i3);
        int i4 = zzu.f8967a;
        if (i4 == 3) {
            this.f15727g.f8970a = this.f15724d;
            return;
        }
        if (i4 != 2) {
            if (i4 == 1) {
                this.f15725e = 1;
            }
            long j3 = zzu.f8968b;
            if (j3 == -9223372036854775807L) {
                j3 = Math.min((this.f15725e - 1) * 1000, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
            }
            zzzg zzzgVar2 = this.f15727g;
            zzdb.zzf(zzzgVar2.f8973d == null);
            zzzgVar2.f8973d = this;
            if (j3 > 0) {
                sendEmptyMessageDelayed(1, j3);
                return;
            }
            SystemClock.elapsedRealtime();
            this.f15723c.getClass();
            this.f15724d = null;
            ExecutorService executorService2 = zzzgVar2.f8971b;
            eky ekyVar2 = zzzgVar2.f8973d;
            ekyVar2.getClass();
            executorService2.execute(ekyVar2);
        }
    }

    public final void j(boolean z) {
        this.f15721a = z;
        this.f15724d = null;
        if (hasMessages(1)) {
            this.f15722b = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.f15722b = true;
                    this.f15726f.zzg();
                    Thread thread = this.i;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.f15727g.f8973d = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zzyy zzyyVar = this.f15723c;
            zzyyVar.getClass();
            zzyyVar.zzJ(this.f15726f, elapsedRealtime, elapsedRealtime - this.h, true);
            this.f15723c = null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.f15722b;
                this.i = Thread.currentThread();
            }
            if (!z) {
                Trace.beginSection("load:".concat(this.f15726f.getClass().getSimpleName()));
                try {
                    this.f15726f.zzh();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.i = null;
                Thread.interrupted();
            }
            if (this.f15721a) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e2) {
            if (this.f15721a) {
                return;
            }
            obtainMessage(3, e2).sendToTarget();
        } catch (Exception e3) {
            if (this.f15721a) {
                return;
            }
            zzdt.zzd("LoadTask", "Unexpected exception loading stream", e3);
            obtainMessage(3, new zzze(e3)).sendToTarget();
        } catch (OutOfMemoryError e4) {
            if (this.f15721a) {
                return;
            }
            zzdt.zzd("LoadTask", "OutOfMemory error loading stream", e4);
            obtainMessage(3, new zzze(e4)).sendToTarget();
        } catch (Error e5) {
            if (!this.f15721a) {
                zzdt.zzd("LoadTask", "Unexpected error loading stream", e5);
                obtainMessage(4, e5).sendToTarget();
            }
            throw e5;
        }
    }
}
