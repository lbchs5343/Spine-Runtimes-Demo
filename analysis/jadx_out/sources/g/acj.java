package g;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.internal.ads.zzfpp;
import com.google.android.gms.internal.ads.zzfqw;
import com.google.android.gms.internal.ads.zzfrb;
import com.google.android.gms.internal.ads.zzfrg;
import com.google.android.gms.internal.ads.zzfri;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
public final class acj implements bjb, lb {

    /* renamed from: a, reason: collision with root package name */
    public final int f9970a;

    /* renamed from: b, reason: collision with root package name */
    public final long f9971b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9972c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedBlockingQueue f9973d;

    /* renamed from: e, reason: collision with root package name */
    public final HandlerThread f9974e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfqw f9975f;

    /* renamed from: g, reason: collision with root package name */
    public final String f9976g;
    public final zzfpp h;

    public acj(Context context, int i, String str, String str2, zzfpp zzfppVar) {
        this.f9976g = str;
        this.f9970a = i;
        this.f9972c = str2;
        this.h = zzfppVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f9974e = handlerThread;
        handlerThread.start();
        this.f9971b = System.currentTimeMillis();
        zzfqw zzfqwVar = new zzfqw(context, handlerThread.getLooper(), this, this, 19621000);
        this.f9975f = zzfqwVar;
        this.f9973d = new LinkedBlockingQueue();
        zzfqwVar.checkAvailabilityAndConnect();
    }

    public final void i() {
        zzfqw zzfqwVar = this.f9975f;
        if (zzfqwVar != null) {
            if (zzfqwVar.isConnected() || zzfqwVar.isConnecting()) {
                zzfqwVar.disconnect();
            }
        }
    }

    public final void j(int i, long j, Exception exc) {
        this.h.zzc(i, System.currentTimeMillis() - j, exc);
    }

    @Override // g.bjb
    public final void onConnected(Bundle bundle) {
        zzfrb zzfrbVar;
        long j = this.f9971b;
        HandlerThread handlerThread = this.f9974e;
        try {
            zzfrbVar = this.f9975f.zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            zzfrbVar = null;
        }
        if (zzfrbVar != null) {
            try {
                zzfri zzf = zzfrbVar.zzf(new zzfrg(1, this.f9970a, this.f9976g, this.f9972c));
                j(5011, j, null);
                this.f9973d.put(zzf);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // g.lb
    public final void onConnectionFailed(nk nkVar) {
        try {
            j(4012, this.f9971b, null);
            this.f9973d.put(new zzfri(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    @Override // g.bjb
    public final void onConnectionSuspended(int i) {
        try {
            j(4011, this.f9971b, null);
            this.f9973d.put(new zzfri(null, 1));
        } catch (InterruptedException unused) {
        }
    }
}
