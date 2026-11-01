package g;

import android.media.MediaCodec;
import android.os.Build;
import com.google.android.gms.internal.ads.zzgdc;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class fid {
    public static void d(dld dldVar) {
        boolean isTerminated;
        ExecutorService executorService = (ExecutorService) dldVar.f18279c;
        if ((Build.VERSION.SDK_INT <= 23 || dldVar != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            dldVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        dldVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void f(zzgdc zzgdcVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || zzgdcVar != ForkJoinPool.commonPool()) && !(isTerminated = zzgdcVar.isTerminated())) {
            zzgdcVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = zzgdcVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        zzgdcVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void g() {
    }

    public static /* synthetic */ void k(arw arwVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || arwVar != ForkJoinPool.commonPool()) && !(isTerminated = arwVar.isTerminated())) {
            arwVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = arwVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        arwVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern m() {
        return new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern o(int i, int i2) {
        return new MediaCodec.CryptoInfo.Pattern(i, i2);
    }
}
