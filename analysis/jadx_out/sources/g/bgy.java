package g;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.HandlerThread;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzhj;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class bgy implements csw {

    /* renamed from: c, reason: collision with root package name */
    public eqi f11557c;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f11558e;
    public final zzdf h;
    public final MediaCodec i;
    public final HandlerThread j;
    public boolean k;

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayDeque f11556b = new ArrayDeque();

    /* renamed from: a, reason: collision with root package name */
    public static final Object f11555a = new Object();

    public bgy(MediaCodec mediaCodec, HandlerThread handlerThread) {
        zzdf zzdfVar = new zzdf(zzdc.zza);
        this.i = mediaCodec;
        this.j = handlerThread;
        this.h = zzdfVar;
        this.f11558e = new AtomicReference();
    }

    public static cte l() {
        ArrayDeque arrayDeque = f11556b;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new cte();
                }
                return (cte) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.csw
    public final void d(int i, zzhj zzhjVar, long j) {
        int length;
        int length2;
        int length3;
        int length4;
        zzc();
        cte l = l();
        l.f13462c = i;
        l.f13463d = 0;
        l.f13460a = j;
        l.f13461b = 0;
        MediaCodec.CryptoInfo cryptoInfo = l.f13464e;
        cryptoInfo.numSubSamples = zzhjVar.zzf;
        int[] iArr = zzhjVar.zzd;
        int[] iArr2 = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArr2 == null || iArr2.length < (length4 = iArr.length)) {
                iArr2 = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArr2, 0, length4);
            }
        }
        cryptoInfo.numBytesOfClearData = iArr2;
        int[] iArr3 = zzhjVar.zze;
        int[] iArr4 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 != null) {
            if (iArr4 == null || iArr4.length < (length3 = iArr3.length)) {
                iArr4 = Arrays.copyOf(iArr3, iArr3.length);
            } else {
                System.arraycopy(iArr3, 0, iArr4, 0, length3);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArr4;
        byte[] bArr = zzhjVar.zzb;
        byte[] bArr2 = cryptoInfo.key;
        if (bArr != null) {
            if (bArr2 == null || bArr2.length < (length2 = bArr.length)) {
                bArr2 = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, length2);
            }
        }
        bArr2.getClass();
        cryptoInfo.key = bArr2;
        byte[] bArr3 = zzhjVar.zza;
        byte[] bArr4 = cryptoInfo.iv;
        if (bArr3 != null) {
            if (bArr4 == null || bArr4.length < (length = bArr3.length)) {
                bArr4 = Arrays.copyOf(bArr3, bArr3.length);
            } else {
                System.arraycopy(bArr3, 0, bArr4, 0, length);
            }
        }
        bArr4.getClass();
        cryptoInfo.iv = bArr4;
        cryptoInfo.mode = zzhjVar.zzc;
        if (zzen.zza >= 24) {
            fid.g();
            cryptoInfo.setPattern(fid.o(zzhjVar.zzg, zzhjVar.zzh));
        }
        this.f11557c.obtainMessage(2, l).sendToTarget();
    }

    @Override // g.csw
    public final void f(Bundle bundle) {
        zzc();
        eqi eqiVar = this.f11557c;
        int i = zzen.zza;
        eqiVar.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // g.csw
    public final void g(int i, int i2, int i3, long j) {
        zzc();
        cte l = l();
        l.f13462c = i;
        l.f13463d = i2;
        l.f13460a = j;
        l.f13461b = i3;
        eqi eqiVar = this.f11557c;
        int i4 = zzen.zza;
        eqiVar.obtainMessage(1, l).sendToTarget();
    }

    @Override // g.csw
    public final void zzb() {
        zzdf zzdfVar = this.h;
        if (this.k) {
            try {
                eqi eqiVar = this.f11557c;
                if (eqiVar == null) {
                    throw null;
                }
                eqiVar.removeCallbacksAndMessages(null);
                zzdfVar.zzc();
                eqi eqiVar2 = this.f11557c;
                if (eqiVar2 == null) {
                    throw null;
                }
                eqiVar2.obtainMessage(3).sendToTarget();
                zzdfVar.zza();
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e2);
            }
        }
    }

    @Override // g.csw
    public final void zzc() {
        RuntimeException runtimeException = (RuntimeException) this.f11558e.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override // g.csw
    public final void zzg() {
        if (this.k) {
            zzb();
            this.j.quit();
        }
        this.k = false;
    }

    @Override // g.csw
    public final void zzh() {
        if (this.k) {
            return;
        }
        HandlerThread handlerThread = this.j;
        handlerThread.start();
        this.f11557c = new eqi(this, handlerThread.getLooper(), 10);
        this.k = true;
    }
}
