package g;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.android.gms.internal.ads.zzaal;
import com.google.android.gms.internal.ads.zzdi;
import com.google.android.gms.internal.ads.zzdj;
import com.google.android.gms.internal.ads.zzdt;

/* loaded from: classes3.dex */
public final class bvm extends HandlerThread implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public Error f12272a;

    /* renamed from: b, reason: collision with root package name */
    public RuntimeException f12273b;

    /* renamed from: c, reason: collision with root package name */
    public zzaal f12274c;

    /* renamed from: d, reason: collision with root package name */
    public zzdi f12275d;

    /* renamed from: e, reason: collision with root package name */
    public Handler f12276e;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        zzdi zzdiVar;
        int i = message.what;
        try {
            if (i == 1) {
                try {
                    int i2 = message.arg1;
                    zzdi zzdiVar2 = this.f12275d;
                    if (zzdiVar2 == null) {
                        throw null;
                    }
                    zzdiVar2.zzb(i2);
                    this.f12274c = new zzaal(this, this.f12275d.zza(), i2 != 0, null);
                    synchronized (this) {
                        notify();
                    }
                } catch (zzdj e2) {
                    zzdt.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                    this.f12273b = new IllegalStateException(e2);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e3) {
                    zzdt.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                    this.f12272a = e3;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e4) {
                    zzdt.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e4);
                    this.f12273b = e4;
                    synchronized (this) {
                        notify();
                    }
                }
            } else if (i == 2) {
                try {
                    zzdiVar = this.f12275d;
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                if (zzdiVar == null) {
                    throw null;
                }
                zzdiVar.zzc();
                return true;
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }
}
