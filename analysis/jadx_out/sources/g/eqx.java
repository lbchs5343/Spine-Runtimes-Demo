package g;

import android.os.Build;
import android.os.DeadSystemException;
import android.os.LocaleList;
import android.util.AndroidException;
import java.util.Locale;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract /* synthetic */ class eqx {
    public static /* synthetic */ LocaleList ac(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    public static /* synthetic */ void ad(cp cpVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || cpVar != ForkJoinPool.commonPool()) && !(isTerminated = cpVar.isTerminated())) {
            cpVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = cpVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        cpVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void c() {
    }

    public static /* bridge */ /* synthetic */ boolean l(AndroidException androidException) {
        return androidException instanceof DeadSystemException;
    }

    public static /* bridge */ /* synthetic */ LocaleList q(Object obj) {
        return (LocaleList) obj;
    }
}
