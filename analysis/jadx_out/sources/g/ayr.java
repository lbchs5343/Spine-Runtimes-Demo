package g;

import android.app.job.JobInfo;
import android.net.Uri;
import android.os.Build;
import com.bytedance.sdk.component.o.ox;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SNIHostName;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class ayr {
    public static /* synthetic */ JobInfo.TriggerContentUri aa(Uri uri, int i) {
        return new JobInfo.TriggerContentUri(uri, i);
    }

    public static /* synthetic */ void c() {
    }

    public static /* synthetic */ void l(com.bytedance.sdk.component.o.ox.dq dqVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || dqVar != ForkJoinPool.commonPool()) && !(isTerminated = dqVar.isTerminated())) {
            dqVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = dqVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        dqVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void n() {
    }

    public static /* synthetic */ void o(com.bytedance.sdk.component.o.p.dq dqVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || dqVar != ForkJoinPool.commonPool()) && !(isTerminated = dqVar.isTerminated())) {
            dqVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = dqVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        dqVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void p(com.bytedance.sdk.component.o.p.s sVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || sVar != ForkJoinPool.commonPool()) && !(isTerminated = sVar.isTerminated())) {
            sVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = sVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        sVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void r(ox.d dVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || dVar != ForkJoinPool.commonPool()) && !(isTerminated = dVar.isTerminated())) {
            dVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = dVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        dVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ SNIHostName w(String str) {
        return new SNIHostName(str);
    }

    public static /* synthetic */ void z(ox.dq dqVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || dqVar != ForkJoinPool.commonPool()) && !(isTerminated = dqVar.isTerminated())) {
            dqVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = dqVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        dqVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
