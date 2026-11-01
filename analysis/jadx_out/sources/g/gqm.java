package g;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzaqb;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class gqm {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f18579a = zzaqb.zzb;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18580b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public boolean f18581c = false;

    public final synchronized void d(long j, String str) {
        if (this.f18581c) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.f18580b.add(new fda(j, SystemClock.elapsedRealtime(), str));
    }

    public final synchronized void e(String str) {
        long j;
        this.f18581c = true;
        if (this.f18580b.size() == 0) {
            j = 0;
        } else {
            j = ((fda) this.f18580b.get(r1.size() - 1)).f16592c - ((fda) this.f18580b.get(0)).f16592c;
        }
        if (j > 0) {
            long j2 = ((fda) this.f18580b.get(0)).f16592c;
            zzaqb.zza("(%-4d ms) %s", Long.valueOf(j), str);
            Iterator it = this.f18580b.iterator();
            while (it.hasNext()) {
                fda fdaVar = (fda) it.next();
                long j3 = fdaVar.f16592c;
                zzaqb.zza("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(fdaVar.f16591b), fdaVar.f16590a);
                j2 = j3;
            }
        }
    }

    public final void finalize() {
        if (this.f18581c) {
            return;
        }
        e("Request on the loose");
        zzaqb.zzb("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
}
