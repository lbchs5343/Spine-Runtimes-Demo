package g;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import com.google.android.gms.internal.ads.zzftu;
import com.google.android.gms.internal.ads.zzfvm;
import com.google.android.gms.internal.ads.zzfvv;
import com.google.android.gms.internal.ads.zzfxg;
import com.google.android.gms.internal.ads.zzfxk;
import g.fwu;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class fwu {

    /* renamed from: d, reason: collision with root package name */
    public final zzfxg f17545d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17546e;

    /* renamed from: f, reason: collision with root package name */
    public crk f17547f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f17548g;
    public zzftu h;
    public final zzfvv i;
    public final Intent j;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f17544c = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final String f17543b = "OverlayDisplayService";

    /* renamed from: a, reason: collision with root package name */
    public final zzfvm f17542a = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.zzfvm
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            fwu fwuVar = fwu.this;
            fwuVar.i.zzc("%s : Binder has died.", fwuVar.f17543b);
            synchronized (fwuVar.f17544c) {
                fwuVar.f17544c.clear();
            }
        }
    };

    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzfvm] */
    public fwu(Context context, zzfvv zzfvvVar, Intent intent) {
        this.f17548g = context;
        this.i = zzfvvVar;
        final String str = "OverlayDisplayService";
        this.j = intent;
        this.f17545d = zzfxk.zza(new zzfxg(str) { // from class: com.google.android.gms.internal.ads.zzfvl
            public final /* synthetic */ String zza = "OverlayDisplayService";

            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                HandlerThread handlerThread = new HandlerThread(this.zza, 10);
                handlerThread.start();
                return new Handler(handlerThread.getLooper());
            }
        });
    }

    public final void k(final Runnable runnable) {
        ((Handler) this.f17545d.zza()).post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfvn
            @Override // java.lang.Runnable
            public final void run() {
                fwu fwuVar = fwu.this;
                Runnable runnable2 = runnable;
                fwuVar.getClass();
                try {
                    runnable2.run();
                } catch (RuntimeException e2) {
                    fwuVar.i.zza("error caused by ", e2);
                }
            }
        });
    }
}
