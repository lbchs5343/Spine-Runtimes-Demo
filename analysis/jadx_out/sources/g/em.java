package g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.ads.zzdl;
import com.google.android.gms.internal.ads.zzdm;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class em implements zzdm {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f15788a = new ArrayList(50);

    /* renamed from: b, reason: collision with root package name */
    public final Handler f15789b;

    public em(Handler handler) {
        this.f15789b = handler;
    }

    public static /* bridge */ /* synthetic */ void c(cnz cnzVar) {
        ArrayList arrayList = f15788a;
        synchronized (arrayList) {
            try {
                if (arrayList.size() < 50) {
                    arrayList.add(cnzVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static cnz d() {
        cnz cnzVar;
        ArrayList arrayList = f15788a;
        synchronized (arrayList) {
            try {
                cnzVar = arrayList.isEmpty() ? new cnz() : (cnz) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return cnzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final Looper zza() {
        return this.f15789b.getLooper();
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final zzdl zzb(int i) {
        cnz d2 = d();
        d2.f13212a = this.f15789b.obtainMessage(i);
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final zzdl zzc(int i, Object obj) {
        cnz d2 = d();
        d2.f13212a = this.f15789b.obtainMessage(i, obj);
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final zzdl zzd(int i, int i2, int i3) {
        cnz d2 = d();
        d2.f13212a = this.f15789b.obtainMessage(1, i2, i3);
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final void zze(Object obj) {
        this.f15789b.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final void zzf(int i) {
        this.f15789b.removeMessages(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final boolean zzg(int i) {
        return this.f15789b.hasMessages(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final boolean zzh(Runnable runnable) {
        return this.f15789b.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final boolean zzi(int i) {
        return this.f15789b.sendEmptyMessage(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final boolean zzj(int i, long j) {
        return this.f15789b.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdm
    public final boolean zzk(zzdl zzdlVar) {
        cnz cnzVar = (cnz) zzdlVar;
        Message message = cnzVar.f13212a;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = this.f15789b.sendMessageAtFrontOfQueue(message);
        cnzVar.f13212a = null;
        c(cnzVar);
        return sendMessageAtFrontOfQueue;
    }
}
