package g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzata;
import com.google.android.gms.internal.ads.zzawf;
import com.google.android.gms.internal.ads.zzfpx;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public final class dj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f14262a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14263b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14264c;

    public dj(int i, LinkedBlockingQueue linkedBlockingQueue) {
        this.f14263b = 6;
        this.f14264c = i;
        this.f14262a = linkedBlockingQueue;
    }

    public /* synthetic */ dj(Object obj, int i, int i2) {
        this.f14263b = i2;
        this.f14262a = obj;
        this.f14264c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view;
        Runnable runnable;
        zzata zzataVar = null;
        switch (this.f14263b) {
            case 0:
                ((fyx) this.f14262a).showTipMessageInner(this.f14264c);
                return;
            case 1:
                fnq fnqVar = (fnq) this.f14262a;
                int i = this.f14264c;
                dzm dzmVar = (dzm) fnqVar.f17099f;
                if (dzmVar != null) {
                    dzmVar.c(i);
                    return;
                }
                return;
            case 2:
                elf elfVar = (elf) this.f14262a;
                androidx.recyclerview.widget.p findViewHolderForAdapterPosition = elfVar.u.findViewHolderForAdapterPosition(this.f14264c);
                if (findViewHolderForAdapterPosition == null || (view = findViewHolderForAdapterPosition.n) == null) {
                    return;
                }
                boolean z = elfVar.m;
                int i2 = elfVar.p;
                view.performClick();
                elfVar.v = null;
                elfVar.m = z;
                elfVar.p = i2;
                return;
            case 3:
                ((ebb) this.f14262a).o.smoothScrollToPosition(this.f14264c);
                return;
            case 4:
                int i3 = this.f14264c;
                c.b.b bVar = (c.b.b) this.f14262a;
                try {
                    bVar.openOptionsMenu();
                } catch (Exception e2) {
                    if (i3 <= 3) {
                        int i4 = c.b.b.f378d;
                        bVar.z(i3 + 1);
                    } else {
                        erl.ac(e2);
                    }
                }
                new Handler().postDelayed(new byd(21, this), i3 == 0 ? 800L : 500L);
                return;
            case 5:
                fpd fpdVar = (fpd) this.f14262a;
                elf elfVar2 = (elf) fpdVar.f17187c;
                cdy cdyVar = (cdy) fpdVar.f17188d;
                cdy cdyVar2 = cdyVar.f12719e;
                if (eyt.ab(cdyVar2, "com.android.vending", true) && eyt.ab(cdyVar2, "com.google.android.gms", true)) {
                    cdy cdyVar3 = cdyVar.f12719e;
                    gm.d(cdyVar3, cdyVar3.getString(R.string.google_play_to_alipay, cdy.g(elfVar2, this.f14264c)), 1);
                }
                if (cdyVar.f12717c.g((fnq) fpdVar.f17190f, true)) {
                    return;
                }
                kj.t(elfVar2, new ajf(), null, true);
                return;
            case 6:
                break;
            case 7:
                ((fbd) this.f14262a).v(this.f14264c);
                return;
            default:
                int i5 = this.f14264c;
                zzawf zzawfVar = (zzawf) this.f14262a;
                if (i5 > 0) {
                    try {
                        Thread.sleep(i5 * 1000);
                    } catch (InterruptedException unused) {
                    }
                }
                try {
                    PackageInfo packageInfo = zzawfVar.h.getPackageManager().getPackageInfo(zzawfVar.h.getPackageName(), 0);
                    Context context = zzawfVar.h;
                    zzataVar = zzfpx.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
                } catch (Throwable unused2) {
                }
                ((zzawf) this.f14262a).n = zzataVar;
                if (this.f14264c < 4) {
                    if (zzataVar != null && zzataVar.zzaj() && !zzataVar.zzh().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzataVar.zzak() && zzataVar.zzf().zzg() && zzataVar.zzf().zza() != -2) {
                        return;
                    }
                    zzawf zzawfVar2 = (zzawf) this.f14262a;
                    int i6 = this.f14264c + 1;
                    if (zzawfVar2.f4533c) {
                        Future<?> submit = zzawfVar2.m.submit(new dj(zzawfVar2, i6, 8));
                        if (i6 == 0) {
                            zzawfVar2.f4532b = submit;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
        for (int i7 = 0; i7 < this.f14264c && (runnable = (Runnable) ((LinkedBlockingQueue) this.f14262a).poll()) != null; i7++) {
            runnable.run();
        }
    }
}
